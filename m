Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B2797197C
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:37:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126E710E528;
	Mon,  9 Sep 2024 12:36:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Tl4RUQ9Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
 [209.85.166.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F0E110E793
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 12:25:19 +0000 (UTC)
Received: by mail-io1-f41.google.com with SMTP id
 ca18e2360f4ac-82a626d73efso85356239f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2024 05:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725452718; x=1726057518; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=dbanVEAVv2mbgeIqFALwuDmnG24T0tRWqLIOA/j5RyA=;
 b=Tl4RUQ9Q4COEHJjNW/NTWJwhpMqs//OavpGSA/HSQ2+kBlmj6xHrCHC2c8/kmdCgJX
 VLm3KoE4uCUoVHzeTyreZd4MrAe6gCVfnFdC89kV/ddhKQxrlkUFRa6Wv2nUVEVmG3fu
 ojy594LMsEM3QUh+b8tRZ803WLQGbaQl3SzfS32jcB4rEHBQYW+GfTckwowSsN13Q0zc
 YiIouEAUUxzt1yPlYNVtkwF07YkUoRTXPn6eIdwjg5kyCLrJUrxQ6ZHZ0SdKoyY3h5H/
 +NNVqBufMkRxjH/yzKHBvugujHm3Ug5mgFOT2duin9c0+t33qZG8ShqXDhZYCpE6Qexl
 rCsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725452718; x=1726057518;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dbanVEAVv2mbgeIqFALwuDmnG24T0tRWqLIOA/j5RyA=;
 b=VU78VpXxDJb+61eFuDWW6HkT5p6oz9rYGtOLjkImFm+38kyNg0cKsMUHXclg9/UPuZ
 FaZ0WwoWqT6B5OI78tZ32dvrRLO1VawEOT5HTfMHJh4EPfuuGkeaVyoKAVoVdnK1PfRN
 2n/N8O8GHfCDKVbbPurKX+lZUt6ENG6KeJVwiqfXYbecHOlzpA5o+qYVVvCH6YM+lqIa
 yzGzhSMAYQeuDfx0eUDfQ3JobstzX60vYz2Ttm1E/XeHjr1QrHtCD6Q29doxxa1mxMl+
 Oqfdte867naN4zK1yvo/L240lZvXNDifDhs6zw+S5GHWTpDNUKxk44WorR1Qc8lYyK8m
 pm7w==
X-Forwarded-Encrypted: i=1;
 AJvYcCWL2cb+NYFUTBZ1bR9J8reu7RQdQju3vqdQzKNmOGf+HqpU5Jf70dtTMC3fLAhU0JSusSk/IOEXdRw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyrTU1CszDuBott8IfAkdxz90Z10p7Gk5fWMga9i/q8/6/Knjx6
 i4sqlLPuV4pUmoH+DoK8h0eC7EH4OUw6t25MybpG7vHG8AVnWfS+o945jZLMYMx19WBtueCNmvf
 1OIqe/ZTOyd4GQhctcuZolgCQbcM=
X-Google-Smtp-Source: AGHT+IE2GZW+PIzeYxiKLIKgs1KFgKt5XwAYmYidewctzZKTjDNPrDSRryS6sV4nx1yojGOwAYd2iFaxxeaci9s5DJ0=
X-Received: by 2002:a05:6602:1686:b0:81f:75bf:6570 with SMTP id
 ca18e2360f4ac-82a36ee0e9dmr1683074239f.5.1725452718249; Wed, 04 Sep 2024
 05:25:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
 <ZtcROWI3qildcflQ@intel.com>
In-Reply-To: <ZtcROWI3qildcflQ@intel.com>
From: Andrey Toloknev <andreyhack@gmail.com>
Date: Wed, 4 Sep 2024 17:25:06 +0500
Message-ID: <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
Subject: Re: i915 | Bug in virtual PCH detection
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="000000000000593cbf06214a44fc"
X-Mailman-Approved-At: Mon, 09 Sep 2024 12:36:55 +0000
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

--000000000000593cbf06214a44fc
Content-Type: multipart/alternative; boundary="000000000000593cbe06214a44fa"

--000000000000593cbe06214a44fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

Thanks for your reply, Ville.

I looked at the code again and understood you are definitely right about
breaking other combinations of CPU+PCH with using IS_GEN9_BC in my patch.

Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the problem
is connected with method intel_detect_pch(). It searches only for the first
ISA Bridge.
And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to address
00:01.0 - it's always first.
So, method intel_detect_pch() correctly detects that the first bridge is
virtual and then calls method intel_virt_detect_pch(), which just checks
the iGPU platform and doesn't take into account the possible combination of
Comet Lake CPU and Tiger Lake PCH.

Of course, It would be nice if we can have a universal modparam to specify
PCH id by hand in future.
But as a fast fix of that small bug I think one more bool modparam may be
enough.
I wrote the second version of patch which adds that bool modparam -
force_tgp_vpch. It's false by default.
When this param is true, we also check that the CPU is Comet Lake and then
set PCH type as Tiger Lake in the method intel_virt_detect_pch().

The second version of patch is in attachment.


=D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 18:38=
, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>:

> On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
> > Hello!
> >
> > I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500 series of
> > Intel chipsets).
> > For that configuration there was a patch for adding support for Tiger
> Lake
> > PCH with CometLake CPU in 2021 -
> > https://patchwork.freedesktop.org/patch/412664/
> > This patch made possible correct detection of such chipset and cpu
> > configuration for i915 kernel module. Without it there was no output to
> any
> > display (HDMI/DP/DVI, even VGA).
> >
> > But this patch doesn't touch intel_virt_detect_pch method, when you
> > passthrough iGPU to a virtual machine.
> > So, virtual PCH incorrectly detects as Cannon Lake and you have no outp=
ut
> > to a physical display with i915 driver:
> >
> > [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
> > Assuming PCH ID a300
> > [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found
> Cannon
> > Lake PCH (CNP)
> >
> >
> > The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in metho=
d
> > intel_virt_detect_pch:
> >
> > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> >
> > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> >
> > It must be:
> >
> > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> > IS_GEN9_BC(dev_priv))
> >
> > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> >
> >
> > After that small change you get correct detection of PCH and have outpu=
t
> to
> > a physical display in VM with passthrough iGPU:
> >
> > [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]]
> > Assuming PCH ID a080
> > [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found Tig=
er
> > Lake LP PCH
> >
> >
> > All kernel versions in any distro since 2021 are affected by this small
> bug.
> > The patch for i915 module of the actual kernel version is in attachment=
.
>
> You fix one CPU+PCH combo, but break the other. I don't think there is
> any way to handle this mess in intel_virt_detect_pch(). The best thing
> would be if the virtual machine would advertise the correct ISA/LPC
> bridge, then the heiristic is not even invoked. If that's not possible
> for some reason then I suppose we'd need a modparam/etc. so the user
> can specify the PCH ID by hand.
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
>


--=20
Best regards, Andrey Toloknev

--000000000000593cbe06214a44fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello!<div><br></div><div>Thanks for your=
 reply, Ville.</div><div><br></div><div>I looked at the code again and unde=
rstood you are definitely=C2=A0right about breaking=C2=A0other combinations=
 of CPU+PCH with using IS_GEN9_BC in my patch.</div><div><br></div><div>Usi=
ng libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the problem is=
 connected with method intel_detect_pch(). It searches only for the first I=
SA Bridge.<br></div><div>And the virtual ISA/LPC Bridge PCI in libvirt is h=
ardcoded to address 00:01.0 - it&#39;s always first.</div><div>So, method i=
ntel_detect_pch() correctly detects that the first bridge is virtual and th=
en calls method intel_virt_detect_pch(), which just checks the iGPU platfor=
m and doesn&#39;t take into=C2=A0account the possible combination of Comet =
Lake CPU and Tiger Lake PCH.</div><div><br></div><div>Of course, It would b=
e nice if we can have a universal modparam to specify PCH id by hand in=C2=
=A0future.=C2=A0</div><div>But as a fast=C2=A0fix of that small bug I think=
 one more bool modparam may be enough.<br></div><div>I wrote the second ver=
sion of patch which=C2=A0adds that bool modparam - force_tgp_vpch. It&#39;s=
 false by default.</div><div>When this param is true, we also check that th=
e CPU is Comet Lake and then set PCH type as Tiger Lake in the method=C2=A0=
intel_virt_detect_pch().=C2=A0</div><div><br></div><div>The second version =
of patch is in attachment.</div><div>=C2=A0<br></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D0=B2=D1=82, 3 =D1=81=D0=B5=
=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 18:38, Ville Syrj=C3=A4l=C3=A4 &l=
t;<a href=3D"mailto:ville.syrjala@linux.intel.com" target=3D"_blank">ville.=
syrjala@linux.intel.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev =
wrote:<br>
&gt; Hello!<br>
&gt; <br>
&gt; I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500 series o=
f<br>
&gt; Intel chipsets).<br>
&gt; For that configuration there was a patch for adding support for Tiger =
Lake<br>
&gt; PCH with CometLake CPU in 2021 -<br>
&gt; <a href=3D"https://patchwork.freedesktop.org/patch/412664/" rel=3D"nor=
eferrer" target=3D"_blank">https://patchwork.freedesktop.org/patch/412664/<=
/a><br>
&gt; This patch made possible correct detection of such chipset and cpu<br>
&gt; configuration for i915 kernel module. Without it there was no output t=
o any<br>
&gt; display (HDMI/DP/DVI, even VGA).<br>
&gt; <br>
&gt; But this patch doesn&#39;t touch intel_virt_detect_pch method, when yo=
u<br>
&gt; passthrough iGPU to a virtual machine.<br>
&gt; So, virtual PCH incorrectly detects as Cannon Lake and you have no out=
put<br>
&gt; to a physical display with i915 driver:<br>
&gt; <br>
&gt; [=C2=A0 =C2=A0 2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch=
 [i915]]<br>
&gt; Assuming PCH ID a300<br>
&gt; [=C2=A0 =C2=A0 2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]=
] Found Cannon<br>
&gt; Lake PCH (CNP)<br>
&gt; <br>
&gt; <br>
&gt; The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in meth=
od<br>
&gt; intel_virt_detect_pch:<br>
&gt; <br>
&gt; else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))<br>
&gt; <br>
&gt; id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;<br>
&gt; <br>
&gt; It must be:<br>
&gt; <br>
&gt; else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||<br>
&gt; IS_GEN9_BC(dev_priv))<br>
&gt; <br>
&gt; id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;<br>
&gt; <br>
&gt; <br>
&gt; After that small change you get correct detection of PCH and have outp=
ut to<br>
&gt; a physical display in VM with passthrough iGPU:<br>
&gt; <br>
&gt; [=C2=A0 =C2=A016.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch=
 [i915]]<br>
&gt; Assuming PCH ID a080<br>
&gt; [=C2=A0 =C2=A016.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]=
] Found Tiger<br>
&gt; Lake LP PCH<br>
&gt; <br>
&gt; <br>
&gt; All kernel versions in any distro since 2021 are affected by this smal=
l bug.<br>
&gt; The patch for i915 module of the actual kernel version is in attachmen=
t.<br>
<br>
You fix one CPU+PCH combo, but break the other. I don&#39;t think there is<=
br>
any way to handle this mess in intel_virt_detect_pch(). The best thing<br>
would be if the virtual machine would advertise the correct ISA/LPC<br>
bridge, then the heiristic is not even invoked. If that&#39;s not possible<=
br>
for some reason then I suppose we&#39;d need a modparam/etc. so the user<br=
>
can specify the PCH ID by hand.<br>
<br>
-- <br>
Ville Syrj=C3=A4l=C3=A4<br>
Intel<br>
</blockquote></div></div><br clear=3D"all"><div><br></div><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re">Best regards, Andrey Toloknev</div>
</div>

--000000000000593cbe06214a44fa--

--000000000000593cbf06214a44fc
Content-Type: application/octet-stream; name="tgl_vpch_fix_v2.patch"
Content-Disposition: attachment; filename="tgl_vpch_fix_v2.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m0npcsuw0>
X-Attachment-Id: f_m0npcsuw0

ZGlmZiAtdXIgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BhcmFtcy5jCTIwMjQtMDktMDQgMTM6NTk6MjAuNjI2MzA5NTE1ICswNTAwCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMJMjAyNC0wOS0wNCAxNDo1MTowMi41MzkyMjYz
NDIgKzA1MDAKQEAgLTEzNiw2ICsxMzYsOSBAQAogCQkgIkVuYWJsZSBzdXBwb3J0IGZvciB1bnN0
YWJsZSBkZWJ1ZyBvbmx5IHVzZXJzcGFjZSBBUEkuIChkZWZhdWx0OmZhbHNlKSIpOwogI2VuZGlm
CiAKK2k5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKGZvcmNlX3RncF92cGNoLCBib29sLCAwNDAwLAor
ICAgICAgICAiRW5hYmxlIGZvcmNlIFRpZ2VyIFBvaW50IFBDSCBEZXRlY3Rpb24gd2l0aCBDb21l
dCBMYWtlIENQVSBvbiB2aXJ0dWFsIG1hY2hpbmVzIChkZWZhdWx0OiBmYWxzZSkiKTsKKwogc3Rh
dGljIHZvaWQgX3BhcmFtX3ByaW50X2Jvb2woc3RydWN0IGRybV9wcmludGVyICpwLCBjb25zdCBj
aGFyICpuYW1lLAogCQkJICAgICAgYm9vbCB2YWwpCiB7CmRpZmYgLXVyIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1z
LmgKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAkyMDI0LTA5LTA0IDEz
OjU5OjI5LjAwNTM0NTk2MiArMDUwMAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Bh
cmFtcy5oCTIwMjQtMDktMDQgMTQ6NDc6MTUuMDA1ODk1MDg1ICswNTAwCkBAIC02NCw3ICs2NCw4
IEBACiAJcGFyYW0oYm9vbCwgZW5hYmxlX2hhbmdjaGVjaywgdHJ1ZSwgMDYwMCkgXAogCXBhcmFt
KGJvb2wsIGVycm9yX2NhcHR1cmUsIHRydWUsIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X0NB
UFRVUkVfRVJST1IpID8gMDYwMCA6IDApIFwKIAlwYXJhbShib29sLCBlbmFibGVfZ3Z0LCBmYWxz
ZSwgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfR1ZUKSA/IDA0MDAgOiAwKSBcCi0JcGFyYW0o
Ym9vbCwgZW5hYmxlX2RlYnVnX29ubHlfYXBpLCBmYWxzZSwgSVNfRU5BQkxFRChDT05GSUdfRFJN
X0k5MTVfUkVQTEFZX0dQVV9IQU5HU19BUEkpID8gMDQwMCA6IDApCisJcGFyYW0oYm9vbCwgZW5h
YmxlX2RlYnVnX29ubHlfYXBpLCBmYWxzZSwgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfUkVQ
TEFZX0dQVV9IQU5HU19BUEkpID8gMDQwMCA6IDApIFwKKwlwYXJhbShib29sLCBmb3JjZV90Z3Bf
dnBjaCwgZmFsc2UsIDA0MDApCiAKICNkZWZpbmUgTUVNQkVSKFQsIG1lbWJlciwgLi4uKSBUIG1l
bWJlcjsKIHN0cnVjdCBpOTE1X3BhcmFtcyB7CmRpZmYgLXVyIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvc29jL2ludGVsX3BjaC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2ludGVsX3BjaC5j
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9wY2guYwkyMDI0LTA5LTA0IDE0
OjA3OjMwLjI3NDkwODg4MiArMDUwMAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50
ZWxfcGNoLmMJMjAyNC0wOS0wNCAxNDowNzo0OC41NDg4OTUwNTUgKzA1MDAKQEAgLTE3MCw3ICsx
NzAsOCBAQAogCiAJaWYgKElTX0FMREVSTEFLRV9TKGRldl9wcml2KSB8fCBJU19BTERFUkxBS0Vf
UChkZXZfcHJpdikpCiAJCWlkID0gSU5URUxfUENIX0FEUF9ERVZJQ0VfSURfVFlQRTsKLQllbHNl
IGlmIChJU19USUdFUkxBS0UoZGV2X3ByaXYpIHx8IElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQor
CWVsc2UgaWYgKElTX1RJR0VSTEFLRShkZXZfcHJpdikgfHwgSVNfUk9DS0VUTEFLRShkZXZfcHJp
dikgfHwKKwkJIChJU19DT01FVExBS0UoZGV2X3ByaXYpICYmIGRldl9wcml2LT5wYXJhbXMuZm9y
Y2VfdGdwX3ZwY2gpKQogCQlpZCA9IElOVEVMX1BDSF9UR1BfREVWSUNFX0lEX1RZUEU7CiAJZWxz
ZSBpZiAoSVNfSkFTUEVSTEFLRShkZXZfcHJpdikgfHwgSVNfRUxLSEFSVExBS0UoZGV2X3ByaXYp
KQogCQlpZCA9IElOVEVMX1BDSF9NQ0NfREVWSUNFX0lEX1RZUEU7Cg==
--000000000000593cbf06214a44fc--
