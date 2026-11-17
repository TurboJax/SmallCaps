# SmallCaps!

Easy-to-use font to help convert regular text to the popular small caps font!  
This resource pack works for 1.16 and up!  

## Usage
Simply change the `font` of a text component to "small_caps".  
Before 1.20.2, you cannot use non-letter characters inside of the text with the small caps font.  
This is because pre-1.20.2, you couldn't add existing fonts into a new font without copying the entire thing, and that brings up legal issues and probably requires me to have more than one release.  
If you use this resource pack in versions 1.20.2 and after, you'll be able to use non-letter characters in the new block.  

For example, let's broadcast "Hello!" to everyone.  
In 1.16-1.20:  
```
/tellraw @a [{"text":"Hello","font":"small_caps"},{"text":"!","font":"default"}]
```
In 1.20.2+:  
```
/tellraw @a {"text":"Hello!","font":"small_caps"}
```

Note: on versions 1.16-1.20, it will say the pack may fail because it was made for a newer version of minecraft.  It will not.  I have tested every major version from 1.16 onwards, and they all work.  
Fun fact: This feature is available in 1.20, but resource pack overlays weren't a thing until 1.20.2.  

### TODO:
- [ ]: Add pack.png
