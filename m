Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 807B51439EA
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 10:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E2B6EC27;
	Tue, 21 Jan 2020 09:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 782F06EC24
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 09:54:43 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DC06AAC4A;
 Tue, 21 Jan 2020 09:54:41 +0000 (UTC)
To: Jani Nikula <jani.nikula@linux.intel.com>
References: <20200120082314.14756-1-tzimmermann@suse.de>
 <157951691186.679.1929122645769239737@emeril.freedesktop.org>
 <87a76hf9eo.fsf@intel.com>
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 mQENBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAG0J1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPokBVAQTAQgAPhYh
 BHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsDBQkDwmcABQsJCAcCBhUKCQgLAgQWAgMB
 Ah4BAheAAAoJEGgNwR1TC3ojR80H/jH+vYavwQ+TvO8ksXL9JQWc3IFSiGpuSVXLCdg62AmR
 irxW+qCwNncNQyb9rd30gzdectSkPWL3KSqEResBe24IbA5/jSkPweJasgXtfhuyoeCJ6PXo
 clQQGKIoFIAEv1s8l0ggPZswvCinegl1diyJXUXmdEJRTWYAtxn/atut1o6Giv6D2qmYbXN7
 mneMC5MzlLaJKUtoH7U/IjVw1sx2qtxAZGKVm4RZxPnMCp9E1MAr5t4dP5gJCIiqsdrVqI6i
 KupZstMxstPU//azmz7ZWWxT0JzgJqZSvPYx/SATeexTYBP47YFyri4jnsty2ErS91E6H8os
 Bv6pnSn7eAq5AQ0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRH
 UE9eosYbT6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgT
 RjP+qbU63Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+R
 dhgATnWWGKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zb
 ehDda8lvhFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r
 12+lqdsAEQEAAYkBPAQYAQgAJhYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJbOdLgAhsMBQkD
 wmcAAAoJEGgNwR1TC3ojpfcIAInwP5OlcEKokTnHCiDTz4Ony4GnHRP2fXATQZCKxmu4AJY2
 h9ifw9Nf2TjCZ6AMvC3thAN0rFDj55N9l4s1CpaDo4J+0fkrHuyNacnT206CeJV1E7NYntxU
 n+LSiRrOdywn6erjxRi9EYTVLCHcDhBEjKmFZfg4AM4GZMWX1lg0+eHbd5oL1as28WvvI/uI
 aMyV8RbyXot1r/8QLlWldU3NrTF5p7TMU2y3ZH2mf5suSKHAMtbE4jKJ8ZHFOo3GhLgjVrBW
 HE9JXO08xKkgD+w6v83+nomsEuf6C6LYrqY/tsZvyEX6zN8CtirPdPWu/VXNRYAl/lat7lSI
 3H26qrE=
Message-ID: <f8be8e09-d611-7667-4fe4-1791b237d6b6@suse.de>
Date: Tue, 21 Jan 2020 10:54:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <87a76hf9eo.fsf@intel.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLlNQQVJTRTogd2FybmluZyBmb3Ig?=
 =?utf-8?q?drm=3A_Clean_up_VBLANK_callbacks_in_struct_drm=5Fdriver_=28rev8?=
 =?utf-8?q?=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============0095026592=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0095026592==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="91Eg2D0k2gmxCOlLt3z0lqhzRSxqwQEI8"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--91Eg2D0k2gmxCOlLt3z0lqhzRSxqwQEI8
Content-Type: multipart/mixed; boundary="fPSn5lbCX4w7NrVGbjSlDNR1dVJNNGHO7";
 protected-headers="v1"
From: Thomas Zimmermann <tzimmermann@suse.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <f8be8e09-d611-7667-4fe4-1791b237d6b6@suse.de>
Subject: =?UTF-8?B?UmU6IFtJbnRlbC1nZnhdIOKclyBGaS5DSS5TUEFSU0U6IHdhcm5pbmcg?=
 =?UTF-8?Q?for_drm=3a_Clean_up_VBLANK_callbacks_in_struct_drm=5fdriver_=28re?=
 =?UTF-8?B?djgp?=
References: <20200120082314.14756-1-tzimmermann@suse.de>
 <157951691186.679.1929122645769239737@emeril.freedesktop.org>
 <87a76hf9eo.fsf@intel.com>
In-Reply-To: <87a76hf9eo.fsf@intel.com>

--fPSn5lbCX4w7NrVGbjSlDNR1dVJNNGHO7
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi

Am 21.01.20 um 10:25 schrieb Jani Nikula:
>=20
> Thomas, please fix the sparse/build warnings.
>=20
> BR,
> Jani.
>=20
>=20
> On Mon, 20 Jan 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote=
:
>> =3D=3D Series Details =3D=3D
>>
>> Series: drm: Clean up VBLANK callbacks in struct drm_driver (rev8)
>> URL   : https://patchwork.freedesktop.org/series/71873/
>> State : warning
>>
>> =3D=3D Summary =3D=3D
>>
>> $ dim sparse origin/drm-tip
>> Sparse version: v0.6.0
>> Commit: drm: Remove internal setup of struct drm_device.vblank_disable=
_immediate
>> Okay!
>>
>> Commit: drm: Add get_scanout_position() to struct drm_crtc_helper_func=
s
>> Okay!
>>
>> Commit: drm: Add get_vblank_timestamp() to struct drm_crtc_funcs
>> +              ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> +drivers/gpu/drm/drm_vblank.c:1869:19: warning: suggest parentheses ar=
ound =E2=80=98&&=E2=80=99 within =E2=80=98||=E2=80=99 [-Wparentheses]
>> +drivers/gpu/drm/drm_vblank.c: In function =E2=80=98drm_handle_vblank_=
events=E2=80=99:
>> +  high_prec =3D crtc && crtc->funcs->get_vblank_timestamp ||

Yeah, Ville also mentioned this. I'll change this code to something more
readable.

>>
>> Commit: drm/amdgpu: Convert to struct drm_crtc_helper_funcs.get_scanou=
t_position()
>> -drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5057:6: w=
arning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it b=
e static?
>> +drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5058:6: w=
arning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it b=
e static?
>> -drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8393:6: w=
arning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be stat=
ic?
>> -drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8397:50: =
warning: missing braces around initializer
>> +drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8394:6: w=
arning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be stat=
ic?
>> +drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8398:50: =
warning: missing braces around initializer
>>
>> Commit: drm/amdgpu: Convert to CRTC VBLANK callbacks
>> -drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5058:6: w=
arning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it b=
e static?
>> +drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:5060:6: w=
arning: symbol 'dm_drm_plane_destroy_state' was not declared. Should it b=
e static?
>> -drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8394:6: w=
arning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be stat=
ic?
>> -drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8398:50: =
warning: missing braces around initializer
>> +drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8396:6: w=
arning: symbol 'amdgpu_dm_psr_enable' was not declared. Should it be stat=
ic?
>> +drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:8400:50: =
warning: missing braces around initializer

Those are not my warnings, but I'll see if there's a simple fix that I
can submit.

Best regards
Thomas

>>
>> Commit: drm/gma500: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/i915: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/nouveau: Convert to struct drm_crtc_helper_funcs.get_scano=
ut_position()
>> Okay!
>>
>> Commit: drm/nouveau: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/radeon: Convert to struct drm_crtc_helper_funcs.get_scanou=
t_position()
>> Okay!
>>
>> Commit: drm/radeon: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/msm: Convert to struct drm_crtc_helper_funcs.get_scanout_p=
osition()
>> Okay!
>>
>> Commit: drm/msm: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/stm: Convert to struct drm_crtc_helper_funcs.get_scanout_p=
osition()
>> Okay!
>>
>> Commit: drm/stm: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/sti: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/vc4: Convert to struct drm_crtc_helper_funcs.get_scanout_p=
osition()
>> Okay!
>>
>> Commit: drm/vc4: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/vkms: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm/vmwgfx: Convert to CRTC VBLANK callbacks
>> Okay!
>>
>> Commit: drm: Clean-up VBLANK-related callbacks in struct drm_driver
>> -              ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> -drivers/gpu/drm/drm_vblank.c: In function =E2=80=98drm_handle_vblank_=
events=E2=80=99:
>> -  high_prec =3D crtc && crtc->funcs->get_vblank_timestamp ||
>> -O:drivers/gpu/drm/drm_vblank.c:1869:19: warning: suggest parentheses =
around =E2=80=98&&=E2=80=99 within =E2=80=98||=E2=80=99 [-Wparentheses]
>>
>> Commit: drm: Remove legacy version of get_scanout_position()
>> Okay!
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>=20

--=20
Thomas Zimmermann
Graphics Driver Developer
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 N=C3=BCrnberg, Germany
(HRB 36809, AG N=C3=BCrnberg)
Gesch=C3=A4ftsf=C3=BChrer: Felix Imend=C3=B6rffer


--fPSn5lbCX4w7NrVGbjSlDNR1dVJNNGHO7--

--91Eg2D0k2gmxCOlLt3z0lqhzRSxqwQEI8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEchf7rIzpz2NEoWjlaA3BHVMLeiMFAl4myl0ACgkQaA3BHVML
eiMl5ggAuymcK0JEiKOAAQHSfTjDS1SqYr1Y3+sIMPFHRKgjEPOQj2wwnzyY0lFP
WuNpVINfoh14lUM3mhpeoc6Yq4TV9UGUDcyra71pFYL0E6J4swqIIWetMx2fyIQp
/pTbqEDNiKk613kewTFuwGuJ2vZ2XraQEV1CgwjpSqw5Nx26hhFG+ycjipxMv6U8
pKzpExD4IQts1OTmoK309LB53j+yuBsqM/D/oRyrAsLTUuAq9PmTEhN79wMews65
kpVDPqoLnfHg/MQa6CV390CD5Z/IH9UE7/Il3CmxpHFDik9QJ4Ku03YyGxC0FSCa
LY1Vt0XOcj0Etr3QC3OL2F7zpKdXXw==
=ywmc
-----END PGP SIGNATURE-----

--91Eg2D0k2gmxCOlLt3z0lqhzRSxqwQEI8--

--===============0095026592==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0095026592==--
