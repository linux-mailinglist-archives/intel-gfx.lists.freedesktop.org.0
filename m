Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2D822F16
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 10:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACD17892B6;
	Mon, 20 May 2019 08:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C29358918D;
 Mon, 20 May 2019 08:37:55 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 39A50AF8E;
 Mon, 20 May 2019 08:37:54 +0000 (UTC)
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
 <20190520082216.26273-11-daniel.vetter@ffwll.ch>
 <423eba4b-15e1-f10b-ae2d-855b8a585688@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNKFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmNvbT7CwJQEEwEIAD4W
 IQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznTtgIbAwUJA8JnAAULCQgHAgYVCgkICwIEFgID
 AQIeAQIXgAAKCRBoDcEdUwt6I7D7CACBK42XW+7mCiK8ioXMEy1NzGbXC51RzGea8N83oEJS
 1KVUtQxrkDxgrW/WLSl/TfqHFsJpdEFOv1XubWbleun3uKPy0e5vZCd5UjZPkeNjnqfCYTDy
 hVVsdOuFbtWDppJyJrThLqr9AgSFmoCNNUt1SVpYEEOLNE6C32BhlnSq21VLC+YXTgO/ZHTa
 YXkq54hHj63jwrcjkBSCkXLh37kHeqnl++GHpN+3R+o3w2OpwHAlvVjdKPT27v1tVkiydsFG
 65Vd0n3m/ft+IOrGgxQM1C20uqKvsZGB4r3OGR50ekAybO7sjEJJ1Obl4ge/6RRqcvKz4LMb
 tGs85D6tPIeFzsBNBFs50uABCADGJj+DP1fk+UWOWrf4O61HTbC4Vr9QD2K4fUUHnzg2B6zU
 R1BPXqLGG0+lzK8kfYU/F5RjmEcClsIkAaFkg4kzKP14tvY1J5+AV3yNqcdg018HNtiyrSwI
 E0Yz/qm1Ot2NMZ0DdvVBg22IMsiudQ1tx9CH9mtyTbIXgACvl3PW2o9CxiHPE/bohFhwZwh/
 kXYYAE51lhinQ3oFEeQZA3w4OTvxSEspiQR8dg8qJJb+YOAc5IKk6sJmmM7JfFMWSr22satM
 23oQ3WvJb4RV6HTRTAIEyyZS7g2DhiytgMG60t0qdABG5KXSQW+OKlZRpuWwKWaLh3if/p/u
 69dvpanbABEBAAHCwHwEGAEIACYWIQRyF/usjOnPY0ShaOVoDcEdUwt6IwUCWznS4AIbDAUJ
 A8JnAAAKCRBoDcEdUwt6I6X3CACJ8D+TpXBCqJE5xwog08+Dp8uBpx0T9n1wE0GQisZruACW
 NofYn8PTX9k4wmegDLwt7YQDdKxQ4+eTfZeLNQqWg6OCftH5Kx7sjWnJ09tOgniVdROzWJ7c
 VJ/i0okazncsJ+nq48UYvRGE1Swh3A4QRIyphWX4OADOBmTFl9ZYNPnh23eaC9WrNvFr7yP7
 iGjMlfEW8l6Lda//EC5VpXVNza0xeae0zFNst2R9pn+bLkihwDLWxOIyifGRxTqNxoS4I1aw
 VhxPSVztPMSpIA/sOr/N/p6JrBLn+gui2K6mP7bGb8hF+szfArYqz3T1rv1VzUWAJf5Wre5U
 iNx9uqqx
Message-ID: <8aecc0d8-83a3-8144-a266-441a5c1d5db5@suse.de>
Date: Mon, 20 May 2019 10:37:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <423eba4b-15e1-f10b-ae2d-855b8a585688@suse.de>
Subject: Re: [Intel-gfx] [PATCH 10/33] fbcon: call fbcon_fb_(un)registered
 directly
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: linux-fbdev@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Yisheng Xie <ysxie@foxmail.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Mikulas Patocka <mpatocka@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Peter Rosin <peda@axentia.se>
Content-Type: multipart/mixed; boundary="===============1544719417=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============1544719417==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="QdOG6VnP6yygaSD5tqNtZtllH9oo2Rfnp"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--QdOG6VnP6yygaSD5tqNtZtllH9oo2Rfnp
Content-Type: multipart/mixed; boundary="wYKLRIK9QH5G6TuclSMFvx1Hwt9S3IzqB";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Daniel Vetter
 <daniel.vetter@intel.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 Yisheng Xie <ysxie@foxmail.com>, Peter Rosin <peda@axentia.se>,
 =?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>,
 Mikulas Patocka <mpatocka@redhat.com>, linux-fbdev@vger.kernel.org
Message-ID: <8aecc0d8-83a3-8144-a266-441a5c1d5db5@suse.de>
Subject: Re: [PATCH 10/33] fbcon: call fbcon_fb_(un)registered directly
References: <20190520082216.26273-1-daniel.vetter@ffwll.ch>
 <20190520082216.26273-11-daniel.vetter@ffwll.ch>
 <423eba4b-15e1-f10b-ae2d-855b8a585688@suse.de>
In-Reply-To: <423eba4b-15e1-f10b-ae2d-855b8a585688@suse.de>

--wYKLRIK9QH5G6TuclSMFvx1Hwt9S3IzqB
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 20.05.19 um 10:33 schrieb Thomas Zimmermann:
> Hi
>=20
> Am 20.05.19 um 10:21 schrieb Daniel Vetter:
> ...
>> diff --git a/drivers/video/fbdev/core/fbmem.c b/drivers/video/fbdev/co=
re/fbmem.c
>> index fc3d34a8ea5b..ae2db31eeba7 100644
>> --- a/drivers/video/fbdev/core/fbmem.c
>> +++ b/drivers/video/fbdev/core/fbmem.c
>> @@ -1660,7 +1660,6 @@ MODULE_PARM_DESC(lockless_register_fb,
>>  static int do_register_framebuffer(struct fb_info *fb_info)
>>  {
>>  	int i, ret;
>> -	struct fb_event event;
>>  	struct fb_videomode mode;
>> =20
>>  	if (fb_check_foreignness(fb_info))
>> @@ -1723,7 +1722,6 @@ static int do_register_framebuffer(struct fb_inf=
o *fb_info)
>>  	fb_add_videomode(&mode, &fb_info->modelist);
>>  	registered_fb[i] =3D fb_info;
>> =20
>> -	event.info =3D fb_info;
>>  	if (!lockless_register_fb)
>>  		console_lock();
>>  	else
>> @@ -1732,9 +1730,8 @@ static int do_register_framebuffer(struct fb_inf=
o *fb_info)
>>  		ret =3D -ENODEV;
>>  		goto unlock_console;
>>  	}
>> -	ret =3D 0;
>> =20
>> -	fb_notifier_call_chain(FB_EVENT_FB_REGISTERED, &event);
>> +	ret =3D fbcon_fb_registered(fb_info);
>=20
> What about backlight drivers? [1] Apparently these also use the
> notifiers. [2] From my understanding, backlight drivers would stop
> working with this change.

I just saw that backlight drivers only care about blanking and
unblanking. Never mind then.

Best regards
Thomas

>=20
> Best regards
> Thomas
>=20
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/video/backlight
> [2]
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/video/backlight/backlight.c#n40
>=20
>>  	unlock_fb_info(fb_info);
>>  unlock_console:
>>  	if (!lockless_register_fb)
>> @@ -1771,7 +1768,6 @@ static int __unlink_framebuffer(struct fb_info *=
fb_info);
>> =20
>>  static int do_unregister_framebuffer(struct fb_info *fb_info)
>>  {
>> -	struct fb_event event;
>>  	int ret;
>> =20
>>  	ret =3D unbind_console(fb_info);
>> @@ -1789,9 +1785,8 @@ static int do_unregister_framebuffer(struct fb_i=
nfo *fb_info)
>>  	registered_fb[fb_info->node] =3D NULL;
>>  	num_registered_fb--;
>>  	fb_cleanup_device(fb_info);
>> -	event.info =3D fb_info;
>>  	console_lock();
>> -	fb_notifier_call_chain(FB_EVENT_FB_UNREGISTERED, &event);
>> +	fbcon_fb_unregistered(fb_info);
>>  	console_unlock();
>> =20
>>  	/* this may free fb info */
>> diff --git a/include/linux/fb.h b/include/linux/fb.h
>> index f52ef0ad6781..701abaf79c87 100644
>> --- a/include/linux/fb.h
>> +++ b/include/linux/fb.h
>> @@ -136,10 +136,6 @@ struct fb_cursor_user {
>>  #define FB_EVENT_RESUME			0x03
>>  /*      An entry from the modelist was removed */
>>  #define FB_EVENT_MODE_DELETE            0x04
>> -/*      A driver registered itself */
>> -#define FB_EVENT_FB_REGISTERED          0x05
>> -/*      A driver unregistered itself */
>> -#define FB_EVENT_FB_UNREGISTERED        0x06
>>  /*      CONSOLE-SPECIFIC: get console to framebuffer mapping */
>>  #define FB_EVENT_GET_CONSOLE_MAP        0x07
>>  /*      CONSOLE-SPECIFIC: set console to framebuffer mapping */
>> diff --git a/include/linux/fbcon.h b/include/linux/fbcon.h
>> index f68a7db14165..94a71e9e1257 100644
>> --- a/include/linux/fbcon.h
>> +++ b/include/linux/fbcon.h
>> @@ -4,9 +4,13 @@
>>  #ifdef CONFIG_FRAMEBUFFER_CONSOLE
>>  void __init fb_console_init(void);
>>  void __exit fb_console_exit(void);
>> +int fbcon_fb_registered(struct fb_info *info);
>> +void fbcon_fb_unregistered(struct fb_info *info);
>>  #else
>>  static inline void fb_console_init(void) {}
>>  static inline void fb_console_exit(void) {}
>> +static inline int fbcon_fb_registered(struct fb_info *info) { return =
0; }
>> +static inline void fbcon_fb_unregistered(struct fb_info *info) {}
>>  #endif
>> =20
>>  #endif /* _LINUX_FBCON_H */
>>
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Linux GmbH, Maxfeldstrasse 5, 90409 Nuernberg, Germany
GF: Felix Imend=C3=B6rffer, Mary Higgins, Sri Rasiah
HRB 21284 (AG N=C3=BCrnberg)


--wYKLRIK9QH5G6TuclSMFvx1Hwt9S3IzqB--

--QdOG6VnP6yygaSD5tqNtZtllH9oo2Rfnp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAlziZ2EACgkQaA3BHVML
eiM4rwf/fn2WYKjt/UOwz//xdRihpc2AoE9WseTOm0xdRHv9z7jlgEYpXxj0uS4D
S/Vn5hua0IALZTgaGV9spWDinYCudNMNvTrpP1cPKbWknPKLyiOWy+nq6n4zMl6n
jKKOpGNT9PAISpL4dyzrNE0sb+DKDE4O1V5BlPuiOygNjew4iCdqvwRtHwWIWaSf
9nLCHEmqnXDS8G4fXaeb0LUtVvVH3K5ACOFv7thuLdTtqpbSE7KT57KBc+clqEXX
PknuFWt/hEmyzJhiSQ9XVXD9SfwcyKOaDXGEkhvokf72Wb3ki7rXe3i8Vr6tD1s7
+U3Q+WHNtvLRVoZI61S7CHV8NCDGZw==
=WBMw
-----END PGP SIGNATURE-----

--QdOG6VnP6yygaSD5tqNtZtllH9oo2Rfnp--

--===============1544719417==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1544719417==--
