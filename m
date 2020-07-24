Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D939322BBC7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 03:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904FC6E8CA;
	Fri, 24 Jul 2020 01:55:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com
 [IPv6:2607:f8b0:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6D46E8CA
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 01:55:16 +0000 (UTC)
Received: by mail-il1-x12a.google.com with SMTP id j9so2632385ilc.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jul 2020 18:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=pDtZHlgS/fdzHOKrMN9FvOHNUw5Bk42S9SbCsdmezuU=;
 b=t8MHrk+8UxxQBk/ZSfuA3Mz67APWsxQQzhZRr2ZotRWn1TQBWBxCG/ZNnWPcR5Q6En
 +SXyDGgbZZcb4S3GK4RjIGxl53w0kPiotwbEKIjL1EJFcL25rCVAEr8Fx+6IldWKRgI0
 ucFpDO6scC5MI4rczyf3lcE/ArAVd7yfGZVeXbp72+cjFtZj0zXg83ZpmWVgVA1gQvoH
 Bn5Ci/Qcau7fQFJ/eaUk97D3r9xFjb5Df3Cu9eQUWHEkwBXYvgw2b9BJVf11KEGdCx4d
 rXrJJtmSl/3imNI0j36U1VtEOqFpbR8TM5t/p73g8C/xqZIc+5RoeIzNT+TILPhnAonJ
 Bgeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=pDtZHlgS/fdzHOKrMN9FvOHNUw5Bk42S9SbCsdmezuU=;
 b=gGMhZzkm1wZ95scuskJ6os6Dx8BDcbXsYj1izDGVq2Wt+PAs8UXGMsbXa6g/NiGPtl
 ZSmhr9zply7FWzk+rMt9MdVlY/svZOt1gqTSxSjKZ3VZN7PWVbn3xOfWbyB4ymp4LOUF
 IiZ/RTbfwmi2CKAD/TsJZxLqCXgqAz2fyZUhHTeSzWSLxO1nwRYMM5ekBp5JQQgp7Ero
 EkCgO0m++EkfAGOMt2XIUCt7gyDiOptw6AJF6nK/TR7bij0zYaYUTMGjhlBECFNEiSiZ
 HR7kdLvYCpZ0eflP429XUov/RlZ7EMe8DUKC++ppoPBe3YBSKmsKcJ2PSgCk6GOrDPIU
 nP7g==
X-Gm-Message-State: AOAM531GGdn2ex0gv5eoVVDu5I2lY7257fgFBVvDMuS5IPmeH8gSzeIV
 d4iH+W5YxflR3UZ2mWPtO9l6cbKclKHlWBDIv3wIdnf5
X-Google-Smtp-Source: ABdhPJzlurS6NxCdS/tiu2AESfSzivOv726E7HMF0tuqNyZ0RWkmNRlDECaLkyXiTNmkuK8xBU3aK75xDsfCIcMhi1U=
X-Received: by 2002:a92:cd10:: with SMTP id z16mr8184904iln.77.1595555715394; 
 Thu, 23 Jul 2020 18:55:15 -0700 (PDT)
MIME-Version: 1.0
From: Andrew Parsons <parsonsandrew1@gmail.com>
Date: Thu, 23 Jul 2020 21:55:04 -0400
Message-ID: <CAKZBjpsz7huH0R5VzK2gQQ7wtQ9N2b4sxSNpJ=kjaBbFv5qCgw@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [Question] More CRTCs than supported displays;
 questions about intel-virtual-output and VIRTUAL1
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============2099582347=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2099582347==
Content-Type: multipart/alternative; boundary="000000000000a2b12c05ab26438a"

--000000000000a2b12c05ab26438a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,

TL;DR: my questions concern the following two topics:
- CRTCs and Intel integrated GPUs
- intel-virtual-output utility

I have a laptop with both an Intel integrated GPU and an AMD discrete GPU.

```
=E2=9E=9C  ~ xrandr --listproviders
Providers: number : 2
Provider 0: id: 0x70 cap: 0x9, Source Output, Sink Offload crtcs: 4
outputs: 8 associated providers: 1 name:Intel
Provider 1: id: 0x44 cap: 0x6, Sink Output, Source Offload crtcs: 5
outputs: 0 associated providers: 1 name:AMD Radeon Pro WX3100 @
pci:0000:3b:00.0
```

I am certain that both are configured correctly:

```
=E2=9E=9C  ~ DRI_PRIME=3D0 glxinfo | grep "OpenGL renderer"
OpenGL renderer string: Mesa DRI Intel(R) UHD Graphics 620 (WHL GT2)
=E2=9E=9C  ~ DRI_PRIME=3D1 glxinfo | grep "OpenGL renderer"
OpenGL renderer string: AMD Radeon Pro WX3100 (POLARIS12, DRM 3.33.0,
5.3.0-53-generic, LLVM 9.0.1)
```

I had hoped to configure a four-way multihead configuration (3 monitors
using the dGPU, and the built-in display driven by the iGPU). Alas, this
seems to be impossible with my hardware; the AMD device lacks an output and
merely serves as an offloading device.
While investigating this, I came across something I didn't quite
understand. Officially, the Intel UHD 620 supports three displays. However,
`xrandr` shows that there are four CTRCs available on Provider 0 (Intel).

```
=E2=9E=9C  ~ xrandr --verbose | grep CRTC
CRTC:       0
CRTCs:      1 0 2
CRTCs:      1 0 2
CRTC:       1
CRTCs:      1 0 2
CRTC:       2
CRTCs:      1 0 2
CRTCs:      1 0 2
CRTCs:      1 0 2
CRTCs:      1 0 2
CRTCs:      3
```

It seems that the fourth CRTC ("third" when zero-indexed) is used by
VIRTUAL1 output.

```
=E2=9E=9C  ~ xrandr --verbose | tail
VIRTUAL1 disconnected (normal left inverted right x axis y axis)
Identifier: 0x6f
Timestamp:  22792
Subpixel:   no subpixels
Clones:
CRTCs:      3
Transform:  1.000000 0.000000 0.000000
           0.000000 1.000000 0.000000
           0.000000 0.000000 1.000000
          filter:
```

Out of curiosity, I thought to move CRTC 3 to a connected but disabled
monitor (DP2). However, this doesn't seem to work.

```
=E2=9E=9C  ~ xrandr --output DP2 --crtc 3
xrandr: output DP2 cannot use crtc 0x67
```

After some Googling, I've come to believe that the VIRTUAL1 output has been
created by the intel-virtual-output utility. To be honest, I find the man
page for this package vague. "The tool connects local VirtualHeads to a
remote output, allowing the primary display to extend onto the remote
outputs."
I'm admittedly (and probably quite clearly) a newbie when it comes to
graphics, so this description tells me very little. Moreover, the help menu
lists options for starting Bumblebee, something I believe is
Nvidia-specific.  Every forum thread I've read mentioning this utility
involves an Nvidia card.

My questions are:
1. Why or how can I have more CRTCs than officially supported outputs for
the Intel UHD 620?
2. What does the intel-virtual-output utility do for me, a hybrid Intel/AMD
user?
3. Why do I need VIRTUAL1?
4. What would happen if I removed the intel-virtual-output utility?

Thank you in advance,
Andrew Parsons

--000000000000a2b12c05ab26438a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><=
div><br></div><div>TL;DR: my questions concern the following two topics:<br=
></div><div>- CRTCs and Intel integrated GPUs</div><div>- intel-virtual-out=
put utility<br></div><div><br></div><div>I have a laptop with both an Intel=
 integrated GPU and an AMD discrete GPU.</div><div><br></div><div>```</div>=
<div>=E2=9E=9C =C2=A0~ xrandr --listproviders<br>Providers: number : 2<br>P=
rovider 0: id: 0x70 cap: 0x9, Source Output, Sink Offload crtcs: 4 outputs:=
 8 associated providers: 1 name:Intel<br>Provider
 1: id: 0x44 cap: 0x6, Sink Output, Source Offload crtcs: 5 outputs: 0=20
associated providers: 1 name:AMD Radeon Pro WX3100 @ pci:0000:3b:00.0<br></=
div><div>```</div><div><br></div><div>I am certain that both are configured=
 correctly:</div><div><br></div><div>```</div><div>=E2=9E=9C =C2=A0~ DRI_PR=
IME=3D0 glxinfo | grep &quot;OpenGL renderer&quot;<br>OpenGL renderer strin=
g: Mesa DRI Intel(R) UHD Graphics 620 (WHL GT2)<br>=E2=9E=9C =C2=A0~ DRI_PR=
IME=3D1 glxinfo | grep &quot;OpenGL renderer&quot;<br>OpenGL renderer strin=
g: AMD Radeon Pro WX3100 (POLARIS12, DRM 3.33.0, 5.3.0-53-generic, LLVM 9.0=
.1)</div><div>```<br></div><div><br></div><div>I
 had hoped to configure a four-way multihead configuration (3 monitors=20
using the dGPU, and the built-in display driven by the iGPU). Alas, this
 seems to be impossible with my hardware; the AMD device lacks an output
 and merely serves as an offloading device.</div><div>While=20
investigating this, I came across something I didn&#39;t quite understand.=
=20
Officially, the Intel UHD 620 supports three displays. However, `xrandr`
 shows that there are four CTRCs available on Provider 0 (Intel). </div><di=
v><br></div><div>```</div><div>=E2=9E=9C =C2=A0~ xrandr --verbose | grep CR=
TC =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>	CRTC: =C2=A0=
 =C2=A0 =C2=A0 0<br>	CRTCs: =C2=A0 =C2=A0 =C2=A01 0 2<br>	CRTCs: =C2=A0 =C2=
=A0 =C2=A01 0 2<br>	CRTC: =C2=A0 =C2=A0 =C2=A0 1<br>	CRTCs: =C2=A0 =C2=A0 =
=C2=A01 0 2<br>	CRTC: =C2=A0 =C2=A0 =C2=A0 2<br>	CRTCs: =C2=A0 =C2=A0 =C2=
=A01 0 2<br>	CRTCs: =C2=A0 =C2=A0 =C2=A01 0 2<br>	CRTCs: =C2=A0 =C2=A0 =C2=
=A01 0 2<br>	CRTCs: =C2=A0 =C2=A0 =C2=A01 0 2<br>	CRTCs: =C2=A0 =C2=A0 =C2=
=A03<br></div><div>```</div><div><br></div><div>It seems that the fourth CR=
TC (&quot;third&quot; when zero-indexed) is used by VIRTUAL1 output.</div><=
div><br></div><div>```</div>=E2=9E=9C =C2=A0~ xrandr --verbose | tail<br>VI=
RTUAL1 disconnected (normal left inverted right x axis y axis)<br>	Identifi=
er: 0x6f<br>	Timestamp: =C2=A022792<br>	Subpixel: =C2=A0 no subpixels<br>	C=
lones: =C2=A0 =C2=A0<br>	CRTCs: =C2=A0 =C2=A0 =C2=A03<br>	Transform: =C2=A0=
1.000000 0.000000 0.000000<br>	 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.=
000000 1.000000 0.000000<br>	 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A00.00=
0000 0.000000 1.000000<br>	 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 filter: <br>=
<div>```<br></div><div><br></div><div>Out of curiosity, I thought to move C=
RTC 3 to a connected but disabled monitor (DP2). However, this doesn&#39;t =
seem to work.</div><div><br></div><div>```</div><div>=E2=9E=9C =C2=A0~ xran=
dr --output DP2 --crtc 3 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>xrand=
r: output DP2 cannot use crtc 0x67</div><div>```</div><div><br></div><div>A=
fter
 some Googling, I&#39;ve come to believe that the VIRTUAL1 output has been=
=20
created by the intel-virtual-output utility. To be honest, I find the=20
man page for this package vague. &quot;The tool connects local VirtualHeads=
=20
to a remote output, allowing the primary display to extend onto the=20
remote outputs.&quot;</div><div>I&#39;m admittedly (and probably quite clea=
rly) a
 newbie when it comes to graphics, so this description tells me very=20
little. Moreover, the help menu lists options for starting Bumblebee,=20
something I believe is Nvidia-specific.=C2=A0 Every forum thread I&#39;ve r=
ead=20
mentioning this utility involves an Nvidia card.<br></div><div><br></div><d=
iv>My questions are:</div><div>1. Why or how can I have more CRTCs than off=
icially supported outputs for the Intel UHD 620?</div><div>2. What does the=
 intel-virtual-output utility do for me, a hybrid Intel/AMD user?</div><div=
>3. Why do I need VIRTUAL1?<br></div><div>4. What would happen if I removed=
 the intel-virtual-output utility?<br></div><div><br></div><div>Thank you i=
n advance,<br></div><div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D=
"ltr"><div>Andrew Parsons</div></div></div></div></div></div></div></div></=
div></div></div></div>

--000000000000a2b12c05ab26438a--

--===============2099582347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2099582347==--
