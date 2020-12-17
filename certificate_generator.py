from PIL import Image,ImageDraw, ImageFont
import os

stud = ['Angappan','Manikandan','Ram']

def create_certificate(stud_names):
    static = os.path.join('static')
    img = os.path.join(static,'img')
    fonts = os.path.join(static,'fonts')
    generated_certificate = os.path.join(static,'certificates')
    certificate_template_path = os.path.join(img,'certificate01.jpg')
    font_file_path = os.path.join(fonts,'ArialMdm.ttf')
    student_names = stud_names
    font = ImageFont.truetype(font_file_path,120)
    for s in student_names:
        # print(s)
        img = Image.open(certificate_template_path)
        draw = ImageDraw.Draw(img)
        draw.text(xy=(1200,1100),text='{}'.format(s,fill=(0,0,0)),font=font)
        img.save(os.path.join(generated_certificate,'{}.jpg'.format(s)))

