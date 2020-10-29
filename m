Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8920729F4AD
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 20:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443F46E8E5;
	Thu, 29 Oct 2020 19:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DCB86E8D0;
 Thu, 29 Oct 2020 19:15:54 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 41613B80A;
 Thu, 29 Oct 2020 19:15:53 +0000 (UTC)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
 <20201029101428.4058311-2-daniel.vetter@ffwll.ch>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <a2dc73bf-0385-4aee-9779-1a2f2aa57b85@suse.de>
Date: Thu, 29 Oct 2020 20:15:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <20201029101428.4058311-2-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 2/3] fbcon: Drop EXPORT_SYMBOL
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
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Helge Deller <deller@gmx.de>, Daniel Vetter <daniel.vetter@intel.com>,
 Jiri Slaby <jirislaby@kernel.org>, Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: multipart/mixed; boundary="===============0976295002=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0976295002==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="qNf1VZdj1EWP3Vxj3yPYOQPak3aurh5oG"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--qNf1VZdj1EWP3Vxj3yPYOQPak3aurh5oG
Content-Type: multipart/mixed; boundary="xrmx4BmzuNRbQAbWEcQ48WKh5oAp49hcS";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Peilin Ye <yepeilin.cs@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Jiri Slaby <jirislaby@kernel.org>,
 Helge Deller <deller@gmx.de>
Message-ID: <a2dc73bf-0385-4aee-9779-1a2f2aa57b85@suse.de>
Subject: Re: [PATCH 2/3] fbcon: Drop EXPORT_SYMBOL
References: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
 <20201029101428.4058311-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20201029101428.4058311-2-daniel.vetter@ffwll.ch>

--xrmx4BmzuNRbQAbWEcQ48WKh5oAp49hcS
Content-Type: multipart/mixed;
 boundary="------------885F3C2B0B98341265DA9BA7"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------885F3C2B0B98341265DA9BA7
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



Am 29.10.20 um 11:14 schrieb Daniel Vetter:
> Every since
>=20
> commit 6104c37094e729f3d4ce65797002112735d49cd1
> Author: Daniel Vetter <daniel.vetter@ffwll.ch>
> Date:   Tue Aug 1 17:32:07 2017 +0200
>=20
>     fbcon: Make fbcon a built-time depency for fbdev
>=20
> these are no longer distinct loadable modules, so exporting symbols is
> kinda pointless.
>=20
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Jiri Slaby <jirislaby@kernel.org>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Peilin Ye <yepeilin.cs@gmail.com>

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>

> ---
>  drivers/video/fbdev/core/bitblit.c      | 3 ---
>  drivers/video/fbdev/core/fbcon_ccw.c    | 1 -
>  drivers/video/fbdev/core/fbcon_cw.c     | 1 -
>  drivers/video/fbdev/core/fbcon_rotate.c | 1 -
>  drivers/video/fbdev/core/fbcon_ud.c     | 1 -
>  drivers/video/fbdev/core/softcursor.c   | 2 --
>  drivers/video/fbdev/core/tileblit.c     | 2 --
>  7 files changed, 11 deletions(-)
>=20
> diff --git a/drivers/video/fbdev/core/bitblit.c b/drivers/video/fbdev/c=
ore/bitblit.c
> index 9725ecd1255b..f98e8f298bc1 100644
> --- a/drivers/video/fbdev/core/bitblit.c
> +++ b/drivers/video/fbdev/core/bitblit.c
> @@ -404,6 +404,3 @@ void fbcon_set_bitops(struct fbcon_ops *ops)
>  	if (ops->rotate)
>  		fbcon_set_rotate(ops);
>  }
> -
> -EXPORT_SYMBOL(fbcon_set_bitops);
> -
> diff --git a/drivers/video/fbdev/core/fbcon_ccw.c b/drivers/video/fbdev=
/core/fbcon_ccw.c
> index bbd869efd03b..9cd2c4b05c32 100644
> --- a/drivers/video/fbdev/core/fbcon_ccw.c
> +++ b/drivers/video/fbdev/core/fbcon_ccw.c
> @@ -409,4 +409,3 @@ void fbcon_rotate_ccw(struct fbcon_ops *ops)
>  	ops->cursor =3D ccw_cursor;
>  	ops->update_start =3D ccw_update_start;
>  }
> -EXPORT_SYMBOL(fbcon_rotate_ccw);
> diff --git a/drivers/video/fbdev/core/fbcon_cw.c b/drivers/video/fbdev/=
core/fbcon_cw.c
> index a34cbe8e9874..88d89fad3f05 100644
> --- a/drivers/video/fbdev/core/fbcon_cw.c
> +++ b/drivers/video/fbdev/core/fbcon_cw.c
> @@ -392,4 +392,3 @@ void fbcon_rotate_cw(struct fbcon_ops *ops)
>  	ops->cursor =3D cw_cursor;
>  	ops->update_start =3D cw_update_start;
>  }
> -EXPORT_SYMBOL(fbcon_rotate_cw);
> diff --git a/drivers/video/fbdev/core/fbcon_rotate.c b/drivers/video/fb=
dev/core/fbcon_rotate.c
> index ac72d4f85f7d..df6b469aa2c2 100644
> --- a/drivers/video/fbdev/core/fbcon_rotate.c
> +++ b/drivers/video/fbdev/core/fbcon_rotate.c
> @@ -110,4 +110,3 @@ void fbcon_set_rotate(struct fbcon_ops *ops)
>  		break;
>  	}
>  }
> -EXPORT_SYMBOL(fbcon_set_rotate);
> diff --git a/drivers/video/fbdev/core/fbcon_ud.c b/drivers/video/fbdev/=
core/fbcon_ud.c
> index 199cbc7abe35..8d5e66b1bdfb 100644
> --- a/drivers/video/fbdev/core/fbcon_ud.c
> +++ b/drivers/video/fbdev/core/fbcon_ud.c
> @@ -436,4 +436,3 @@ void fbcon_rotate_ud(struct fbcon_ops *ops)
>  	ops->cursor =3D ud_cursor;
>  	ops->update_start =3D ud_update_start;
>  }
> -EXPORT_SYMBOL(fbcon_rotate_ud);
> diff --git a/drivers/video/fbdev/core/softcursor.c b/drivers/video/fbde=
v/core/softcursor.c
> index fc93f254498e..29e5b21cf373 100644
> --- a/drivers/video/fbdev/core/softcursor.c
> +++ b/drivers/video/fbdev/core/softcursor.c
> @@ -74,5 +74,3 @@ int soft_cursor(struct fb_info *info, struct fb_curso=
r *cursor)
>  	info->fbops->fb_imageblit(info, image);
>  	return 0;
>  }
> -
> -EXPORT_SYMBOL(soft_cursor);
> diff --git a/drivers/video/fbdev/core/tileblit.c b/drivers/video/fbdev/=
core/tileblit.c
> index 628fe5e010c0..7539ae9040f8 100644
> --- a/drivers/video/fbdev/core/tileblit.c
> +++ b/drivers/video/fbdev/core/tileblit.c
> @@ -151,5 +151,3 @@ void fbcon_set_tileops(struct vc_data *vc, struct f=
b_info *info)
>  		info->tileops->fb_settile(info, &map);
>  	}
>  }
> -
> -EXPORT_SYMBOL(fbcon_set_tileops);
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer

--------------885F3C2B0B98341265DA9BA7
Content-Type: application/pgp-keys;
 name="OpenPGP_0x680DC11D530B7A23.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0x680DC11D530B7A23.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdgX=
H47
fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0BeB5B=
bqP
5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4YchdHm3bkPj=
z9E
ErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB9GluwvIhSezPg=
nEm
imZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEBAAHNKFRob21hcyBaa=
W1t
ZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmNvbT7CwI4EEwEIADgCGwMFCwkIBwIGFQoJCAsCB=
BYC
AwECHgECF4AWIQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCXvxIWAAKCRBoDcEdUwt6I+aZB/9ih=
Onf
G4Lgf1L87cvoXh95/bnaJ6aQhP6/ZeRleuCXflnyDajlm3c9loQr0r2bQUi7JeYwUKbBab2QS=
GJm
DMRGlLMnmzWB8mHmZ6bHAu+2Sth8SraE42p6BB9d8dlYEID+dl/D/xUBeulfkck5rloGtYqDi=
+1Q
DfkEZJaxVSZ6FFkXuQi/G9qcI4iklN2nv02iQ7mZe8WYAysix6s/6vIobhirEBreclSNxXqis=
p8n
91+v855JC11EgRdUXMRK81IAaCKXP8zLx3ixku7mvP9Om61yerHSbeU2HZbIggZYQlFh6llJm=
zF1
CjCWgPTJyk4t4kMTcNOw5ykD47vU/KW+wl0EEBECAB0WIQQn6OOmnzvP/7ktjmoud6EwEfXTw=
gUC
WzodVwAKCRAud6EwEfXTwidvAKDkOADDHfI0QNXqAZcg6i1kOndAYACeLXHBwpjnumkPSyoab=
IiL
+he8r3zCwHMEEAEIAB0WIQQeXZghmQijlU7YzFiqUDvJrg9HpwUCWznxsQAKCRCqUDvJrg9Hp=
42f
CADIvsZcAd04PDFclRltHr2huy6s7+ZZA6PgYlMblEBh4bJA+dNPBTvzpJ7FJv/bmHOa+phWy=
Urj
EpfFGuOKGuWAfzgVAEu52fMrW3/mm+O26z1AKIu8hiZ/x9OAe4AM71ZO2lZrV1/53ZdzWnRuO=
45N
GQcotU8oeVfT9okAfmozmWMmIMq7Q0K6bV8W3qiD5XfDNxjr2caxc/9WX1bZPUo3n0H23MNaA=
Tpy
Oz732UtDh6sKUAB1RfzBBd/REbjHD7+quwJGAdRScyDRncX1vNb2+wihy0ipA69XY3bkhR5iD=
u5r
A9enuiMe6J1IBMI1PZh+vOufB/M6cd2D9RULIJaJwsBzBBABCAAdFiEEuyNtt7Ge78bIRx1op=
/N8
GYw5MYEFAls6MrsACgkQp/N8GYw5MYEnLQf/dwqlDJVQL2q+i8FFaqTMAm0n9jLRV6pN8JxFH=
j0g
voyWUOnQuNdAFgtKd26ZhN8NkLoSMO8E19eBPfLoBIFK5yNNVmRHAZm07MzGbA0uNWINJhmdR=
bZM
RMh0nneXjcEU/IvUmd8TPFTAd24X2mbzHgcaHMLJSVx1ohd4alRJXHIqDobKmiVwekyPnInJn=
zWw
iuZUkIotTkQple1PT/dF3S+KtPXBL6ldQ4NkAeCjsz4wnzSa9+VKOxEhiHM0PMzXSbkCMP+4m=
Xy9
RMplBw9Dm9hN2PSouBPifIrSodiiSWZYXOEkzLiBAB0frCKR63Dnx9kvjCD9Pz5wLd/70rjqI=
c0n
VGhvbWFzIFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+wsCOBBMBCAA4AhsDBQsJC=
AcC
BhUKCQgLAgQWAgMBAh4BAheAFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl78SF4ACgkQaA3BH=
VML
eiOpGAgAih6C1OnWms/N8eBMC4Q93y/nyywe5vCL22Dr1rwgn6Iw2jOGziJSi7zhY4sEk2NKJ=
5cd
lFrx8mP//b+xO4AGffwBD0Vwpf38Hj2Gt0KjpzRYccqqU+tJPO5c0pjI52ZIV3+kOEFvYGfkN=
PHE
flE+b81T8L2dSXCLtj4WAGUM1rmHn3bCYl+/RwkB+8XnoL5AvrmMcU4Uhb3FJpM4DHExccYkd=
eSL
ojBppOCztBCUpBx3le+8QPVvAvJDuur4wRmjk3sjKClAwzeqoYyUKcN3JDdb3mt3QcJal9rSh=
VEI
7B25IvfmEbs42oGm8GPzPkaNJu3gcska+l5PSTfurNETGsJdBBARAgAdFiEEJ+jjpp87z/+5L=
Y5q
LnehMBH108IFAls6HVcACgkQLnehMBH108LTkACgjLQdDYMENi6BDjY/gd/LF9lMi8oAnR+o0=
FwE
Vb1K1tEMQ/1x+k1U6/xgwsBzBBABCAAdFiEEHl2YIZkIo5VO2MxYqlA7ya4PR6cFAls58bMAC=
gkQ
qlA7ya4PR6cvTAgAzY1N5QMKh8ECRtYcZNmilyV59uHTEY9hAR+203JqWnSGfUKtU7s6xfl5O=
NGq
DI5rULk4Cw2CEIzg9Sat+/lxn36w2f1tEznS5Vb0gVGWrzDAFjj7tB6MnmCzsNb/S1kgxnqJM=
Yor
RYQ7uB3Yr2Fdp08FJxN0ipd5YfzaZ6KoSWcRAv4r1R4ZQGuS77URAg7HDOIrBMOVO+HIn7GYQ=
qPS
5ZFw5yXbvEtL1c5Y8Zdw1AG2VmEXx78TWQVG3kI8/lQF1QI3yrJ1Rp2x5eK9I0OJihv13IlIW=
3sb
QGrj9pxF63kA20ZFaynzFglBGiyxExYvTD0/xKIhzYhj8mtCunPb2cLAcwQQAQgAHRYhBLsjb=
bex
nu/GyEcdaKfzfBmMOTGBBQJbOjLAAAoJEKfzfBmMOTGBBoMIALIW4EtBY28tPwZMOpN/+ARPO=
a2g
Qzpivw7iNtiDTnGIXMCoxly1CybfMdqTHYmuKbEO9AlFAlDOnkgInsn8E65IvgUTVI95Ah+Ob=
iPI
FkYc/9a+AexPl7f5kI9489k77eKtqtMpWFpo/vROmRroSw4JnM7ovwPq1QOSHExfTKbLunzD1=
i3V
4PShSZ6bGsp1LW6Wk0lRMHDuAk3xsyjBWfJwSbrCe3E6OsLG7BuQqEUt2fR6NxdDRSR9tQUp9=
Tri
AYG5LndmUzxeU6FAQjD8Wt1ezOFH5ODcCDXfRyYmE6uCGA4EvO8l9R3o68NPlUjPRAZsCbxJa=
UAg
iazX1nyQGwvOwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHU=
E9e
osYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+q=
bU6
3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWWG=
KdD
egUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lvhFXod=
NFM
AgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsAEQEAAcLAf=
AQY
AQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkDwmcAAAoJEGgNwR1TC3ojp=
fcI
AInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2h9ifw9Nf2TjCZ6AMvC3thAN0r=
FDj
55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxUn+LSiRrOdywn6erjxRi9EYTVLCHcD=
hBE
jKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uIaMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU=
2y3
ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBWHE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/t=
sZv
yEX6zN8CtirPdPWu/VXNRYAl/lat7lSI3H26qrE=3D
=3DmxFq
-----END PGP PUBLIC KEY BLOCK-----

--------------885F3C2B0B98341265DA9BA7--

--xrmx4BmzuNRbQAbWEcQ48WKh5oAp49hcS--

--qNf1VZdj1EWP3Vxj3yPYOQPak3aurh5oG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl+bFOgFAwAAAAAACgkQaA3BHVMLeiPA
SQgAhb1BDzMFJgzVcYtyraODs3M24M+JKJJHO7i973Ruhvl9QW4hHyeFY7sVSJOM8JhgeXANDZk5
Yiw+RZO9LD/lpk5Jwle9cuw7Xveqc4LFEcRP2ZLu1KXXuZlQMeDfglJGcP3XzPdRtEZvqF5pfgWp
TXT+laPx3Q6AtCrj/o8WXbooUrQtOZ5mME6A2C5LU08QQ8uRTftKYhBvU0tMDcRwblBR+rXYB4ll
S2r/vXUHJFXpa0OFZ8/NTRgZ8+yCEhIYx5wJykYZhMJZxrfMNmn0Mz8IKKHO1pDr26C54RLyc9zj
jcmbqudtUtMzjPr7OlSgcwNOBvlnGotWuPCYCNJz+A==
=Uj2s
-----END PGP SIGNATURE-----

--qNf1VZdj1EWP3Vxj3yPYOQPak3aurh5oG--

--===============0976295002==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0976295002==--
