Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC25969E62
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 14:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B887110E58E;
	Tue,  3 Sep 2024 12:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LJ93DXy6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
 [209.85.166.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA8FE10E14C
 for <intel-gfx@lists.freedesktop.org>; Sun,  1 Sep 2024 09:56:19 +0000 (UTC)
Received: by mail-io1-f49.google.com with SMTP id
 ca18e2360f4ac-82a151ac935so135003939f.3
 for <intel-gfx@lists.freedesktop.org>; Sun, 01 Sep 2024 02:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725184579; x=1725789379; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
 :date:message-id:reply-to;
 bh=dZPIqS3fCXYzyMiSKidYI1vfhTu3J8wlsxhW+eVJooI=;
 b=LJ93DXy6yTbdLjyWukUlLf8A1A1qwkd4r28OwpFpnVd26x0cOZ3pSWC5M+WRBjmEM0
 tQa8KttrTuvN/vyiFsQqoGGeilBfkWdxh4ecx5ymrQgPsqrSUPVMPX4IGoK90zaZIxmj
 LZnxCLYRwYMQH3QhbuLF9bhl5fJWq2+NuWCXKC4Z5X+3+JjnaIvJb9dCh79ShjShhZS6
 ouEruxxZshhxiu6vgteQC4JBmMgRDxsFBhFFOGn+oWi38vzSK2VCuOAqqA3TAYt6l+XL
 c0P6pW48xSYdAZm8QD07wMr3XkOkcMpBXUrCXRfbZ2zCgu+Bf1574ktdg4XtP6LbGkSj
 b4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725184579; x=1725789379;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=dZPIqS3fCXYzyMiSKidYI1vfhTu3J8wlsxhW+eVJooI=;
 b=LmVUUMyteUIvWabGeUpewAy5iA+HggXlK+zFfc54iaziDgqsOAp2fJn913/xsKntsl
 P5jmKo40kHWZ4bVfk9fHyfHh+xj4VeD4VI0P4ziKM2Hj1xFmgkl/VkWIsMFJLGsLpr+7
 3XR9nduVBr5Z74wwezzrgX33U3c9oVi5jemwpdSCJ0iAnKVw1YRXYbKYy40dOgTQ6tCp
 qZMj81bDLg9uftdydH+Ws1HwRLISo719SJ6645XN18kcNgpDlENRnFUMnwyVqtU3pZG1
 n687LtpagWF4DAEVaq9ENnwPP6mxZVmDO69QarazuGkgazQnDV3N4Xgf+7cacnkbvm9a
 3Zzw==
X-Gm-Message-State: AOJu0Yyw+1o6PqOCnA4716EqzJYb9NQvNcdzROywemDu5KJ7TmpofYgh
 cXFBYUO5tW/pLsKsj4ou4XpFj43gOlFx2FJ6D4xeznRlAXoxKlrqf+FffRpp42hQqLajTUxD6v3
 n3Ot/Oa2pIwa35WELkhdUyZ7D22A=
X-Google-Smtp-Source: AGHT+IEiQcS4gl4+8PfEhIlB610NOOz/m0FzOErhVPGAr5cO5J0ZfxYvo076ZMN9b5InSlS+PegiBaPh3q8u/dPb2n0=
X-Received: by 2002:a05:6602:3420:b0:825:2a43:27e7 with SMTP id
 ca18e2360f4ac-82a3730a727mr575254739f.4.1725184578869; Sun, 01 Sep 2024
 02:56:18 -0700 (PDT)
MIME-Version: 1.0
From: Andrey Toloknev <andreyhack@gmail.com>
Date: Sun, 1 Sep 2024 14:56:07 +0500
Message-ID: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
Subject: i915 | Bug in virtual PCH detection
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>
Cc: intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="000000000000ff087806210bd5f1"
X-Mailman-Approved-At: Tue, 03 Sep 2024 12:52:48 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--000000000000ff087806210bd5f1
Content-Type: multipart/alternative; boundary="000000000000ff087606210bd5ef"

--000000000000ff087606210bd5ef
Content-Type: text/plain; charset="UTF-8"

Hello!

I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500 series of
Intel chipsets).
For that configuration there was a patch for adding support for Tiger Lake
PCH with CometLake CPU in 2021 -
https://patchwork.freedesktop.org/patch/412664/
This patch made possible correct detection of such chipset and cpu
configuration for i915 kernel module. Without it there was no output to any
display (HDMI/DP/DVI, even VGA).

But this patch doesn't touch intel_virt_detect_pch method, when you
passthrough iGPU to a virtual machine.
So, virtual PCH incorrectly detects as Cannon Lake and you have no output
to a physical display with i915 driver:

[    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
Assuming PCH ID a300
[    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Cannon
Lake PCH (CNP)


The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in method
intel_virt_detect_pch:

else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))

id = INTEL_PCH_TGP_DEVICE_ID_TYPE;

It must be:

else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
IS_GEN9_BC(dev_priv))

id = INTEL_PCH_TGP_DEVICE_ID_TYPE;


After that small change you get correct detection of PCH and have output to
a physical display in VM with passthrough iGPU:

[   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
Assuming PCH ID a080
[   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Tiger
Lake LP PCH


All kernel versions in any distro since 2021 are affected by this small bug.
The patch for i915 module of the actual kernel version is in attachment.

-- 
Best regards, Andrey Toloknev

--000000000000ff087606210bd5ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<div><br></div><div>I have 2 machines with Comet Lak=
e CPUs on Tiger Lake PCH (500 series of Intel chipsets).</div><div>For that=
 configuration there was a patch for adding support for Tiger Lake PCH with=
 CometLake CPU in 2021 -=C2=A0<a href=3D"https://patchwork.freedesktop.org/=
patch/412664/">https://patchwork.freedesktop.org/patch/412664/</a></div><di=
v>This patch made possible correct detection of such chipset and cpu config=
uration for i915 kernel module. Without it there was no output to any displ=
ay (HDMI/DP/DVI, even VGA).=C2=A0</div><div><br></div><div>But this patch d=
oesn&#39;t touch intel_virt_detect_pch method, when you passthrough iGPU to=
 a virtual machine.=C2=A0</div><div>So, virtual PCH incorrectly detects as =
Cannon Lake and you have no output to a physical display with i915 driver:=
=C2=A0</div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"=
><div><div>[ =C2=A0 =C2=A02.933139] i915 0000:00:02.0: [drm:intel_virt_dete=
ct_pch [i915]] Assuming PCH ID a300</div></div><div><div>[ =C2=A0 =C2=A02.9=
33308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Cannon Lake PCH=
 (CNP)</div></div></blockquote><div><div><br></div><div>The bug is on line=
=C2=A0173 in drivers/gpu/drm/i915/soc/intel_pch.c in method intel_virt_dete=
ct_pch:</div></div><blockquote style=3D"margin:0 0 0 40px;border:none;paddi=
ng:0px"><div><div>else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv=
))</div></div></blockquote><blockquote style=3D"margin:0 0 0 40px;border:no=
ne;padding:0px"><blockquote style=3D"margin:0 0 0 40px;border:none;padding:=
0px"><div><div>		id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;</div></div></blockquo=
te></blockquote><div><div>It must be:</div></div><blockquote style=3D"margi=
n:0 0 0 40px;border:none;padding:0px"><div><div>else if (IS_TIGERLAKE(dev_p=
riv) || IS_ROCKETLAKE(dev_priv) || IS_GEN9_BC(dev_priv))</div></div></block=
quote><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><bloc=
kquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><div>id =3D=
 INTEL_PCH_TGP_DEVICE_ID_TYPE;</div></div></blockquote></blockquote><div><d=
iv><br></div><div>After that small change you get correct detection of PCH =
and have output to a physical display in VM with passthrough=C2=A0iGPU:</di=
v></div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><di=
v><div>[ =C2=A0 16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i=
915]] Assuming PCH ID a080</div></div><div><div>[ =C2=A0 16.261151] i915 00=
00:00:02.0: [drm:intel_pch_type [i915]] Found Tiger Lake LP PCH</div></div>=
</blockquote><div><div><br></div><div>All kernel versions in any distro sin=
ce 2021 are affected by this small bug.</div><div>The patch for i915 module=
 of the actual kernel version is in attachment.=C2=A0</div><div><br></div><=
span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">Best regards, Andre=
y Toloknev</div></div></div>

--000000000000ff087606210bd5ef--

--000000000000ff087806210bd5f1
Content-Type: application/octet-stream; name="tgl_vpch_fix.patch"
Content-Disposition: attachment; filename="tgl_vpch_fix.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m0jdmb290>
X-Attachment-Id: f_m0jdmb290

LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX3BjaC5jCTIwMjQtMDktMDEgMTQ6
MjA6NDQuNDcwODQ3MDk4ICswNTAwCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRl
bF9wY2guYwkyMDI0LTA5LTAxIDE0OjI5OjQ2LjY5NTk5ODU4NiArMDUwMApAQCAtMTcwLDcgKzE3
MCw3IEBACiAKIAlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8IElTX0FMREVSTEFLRV9Q
KGRldl9wcml2KSkKIAkJaWQgPSBJTlRFTF9QQ0hfQURQX0RFVklDRV9JRF9UWVBFOwotCWVsc2Ug
aWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJpdikpCisJ
ZWxzZSBpZiAoSVNfVElHRVJMQUtFKGRldl9wcml2KSB8fCBJU19ST0NLRVRMQUtFKGRldl9wcml2
KSB8fCBJU19HRU45X0JDKGRldl9wcml2KSkKIAkJaWQgPSBJTlRFTF9QQ0hfVEdQX0RFVklDRV9J
RF9UWVBFOwogCWVsc2UgaWYgKElTX0pBU1BFUkxBS0UoZGV2X3ByaXYpIHx8IElTX0VMS0hBUlRM
QUtFKGRldl9wcml2KSkKIAkJaWQgPSBJTlRFTF9QQ0hfTUNDX0RFVklDRV9JRF9UWVBFOwo=
--000000000000ff087806210bd5f1--
