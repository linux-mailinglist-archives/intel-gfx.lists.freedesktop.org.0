Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5FF97196B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:37:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904B510E4AF;
	Mon,  9 Sep 2024 12:36:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OzR+fM82";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DFBD10E7CD
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:37:19 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id
 e9e14a558f8ab-39d4161c398so24635065ab.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2024 06:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725457038; x=1726061838; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=H1qcGdD+kQ+zopDvR3Idaly9llegfQKQv/ZvUva4zcM=;
 b=OzR+fM82lYXL89/KLmy60MiiWUpBcR+p5vOZPYX3yR+r+X9XV833lzDf1L6DQ9wLeC
 doHDkq413g3eNADYsEyGl52fk+9hScYoSNciIoZjO/a2LllzXcd04MZ66ulnDSrEHkpl
 7qMd5L+n3BfBFW/5pgbr3op9O+xM/ElT3KRG8PkD4JI/cSn978W57TZF2Dnb0GtkP/h5
 ZHWJOFVnG7mKQwSjvAOy1Ah12IUIc3dbw4xVZ7g+BFiRMtHv84fPSunxV2QtnED8649H
 sZTzSiCY9XiO7RLcCka/+c9GxnuRxvLfLkpGGAAP90HDFLM1mSIPXDX+2zOdMsPXf5yH
 h8XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725457038; x=1726061838;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=H1qcGdD+kQ+zopDvR3Idaly9llegfQKQv/ZvUva4zcM=;
 b=PRDq7KxARlAgK8ZShoyPLW7DfZquN8kbyN0ZLimNjmr/PcibflVL7llweBeSuKF/Hn
 z+PT8bZQCmCm74GQKdfi0xlNSb9KqRew1QkaI0hQTHo6RBEMFTdXFkn7VBOU2eTtDCcp
 Eviq6o1gA9TyR55bP3irzzB1lSUILY8WATVpICt3RyHIcuS7SiE9Dcbprn/+FcPRknT7
 hNpgQ4rMKx/OVWKFqgLF1YruRgmhNOFpsCIgAqznyYOwzIF7CNjURntFpvyPPXkpLpfA
 PUqGJJztrnvtbMasbn5G0K1qcc0EP7IOJI72CHAbxbMQX7MaBAbtO3sHtJ/gzeT4mLZn
 ThLA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXiFv216xUOWGs0mBUNt1yeG9x/eXrqVO8m2oG5JzDIBwbv9K6GtO6LFn+M3cewwI0gqZ6la3MiQxM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwrFFe/x9eCEN/7aL3xyqwKYiw1IyqCYA5eBAW+NyyVjwP9RgAs
 EpHWcrCCdlS5yrZwtY4T6+sQHzHNhMatbTjL7BxChEY+e0Ge3ZR7Nr/6Xb70U4ZGX6IuwsHgDQP
 omyaSNXIh4wNaCAW6+EKSRyObsI8=
X-Google-Smtp-Source: AGHT+IFad1N04H+xS871+LQTziRchAi/2H0s0I0V1Yl3wu2tV1Sunl7wsuuydwApPECpA9G35trZYBc3hPngveer6W8=
X-Received: by 2002:a05:6e02:13a9:b0:39d:4ef6:b36d with SMTP id
 e9e14a558f8ab-39f4f5202bcmr174254015ab.7.1725457038401; Wed, 04 Sep 2024
 06:37:18 -0700 (PDT)
MIME-Version: 1.0
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
 <ZtcROWI3qildcflQ@intel.com>
 <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
 <ZthX_8S1iVjb0xND@intel.com>
 <CAK88eJdiPp27z1+xR4CnB=VdrvABKo=U=7zB-Oj1atF3KfnmDA@mail.gmail.com>
In-Reply-To: <CAK88eJdiPp27z1+xR4CnB=VdrvABKo=U=7zB-Oj1atF3KfnmDA@mail.gmail.com>
From: Andrey Toloknev <andreyhack@gmail.com>
Date: Wed, 4 Sep 2024 18:37:06 +0500
Message-ID: <CAK88eJfpNubXatrgMiy48vJJEjj3FB4eXyYZ1b7OAYP6TA7Ozw@mail.gmail.com>
Subject: Re: i915 | Bug in virtual PCH detection
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000d96ca806214b4591"
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

--000000000000d96ca806214b4591
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry for replying twice.

I thought about looking for the real PCH bridge, but I'm sure it will be a
real headache in some situations, configurations and virtualizations.
So, in my opinion, a better solution, as you noted in your first reply, is
modparam.

=D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 18:00=
, Andrey Toloknev <andreyhack@gmail.com>:

> Hmm. I wonder how many systems we'd break if we make it look
>> through all the bridges for a real match first, and only fall
>> back to intel_virt_detect_pch() if nothing was found...
>
>
> Yes, I definitely understand this, that's why I didn't touch this code at
> all in the second patch.
> I just add bool modparam force_tgp_vpch in i915_params and a bit modify
> method intel_virt_detect_pch() in intel_pch.c
>
>
>
> =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17:=
52, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com
> >:
>
>> On Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrote:
>> > Hello!
>> >
>> > Thanks for your reply, Ville.
>> >
>> > I looked at the code again and understood you are definitely right abo=
ut
>> > breaking other combinations of CPU+PCH with using IS_GEN9_BC in my
>> patch.
>> >
>> > Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the
>> problem
>> > is connected with method intel_detect_pch(). It searches only for the
>> first
>> > ISA Bridge.
>>
>> Hmm. I wonder how many systems we'd break if we make it look
>> through all the bridges for a real match first, and only fall
>> back to intel_virt_detect_pch() if nothing was found...
>>
>> > And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to address
>> > 00:01.0 - it's always first.
>> > So, method intel_detect_pch() correctly detects that the first bridge =
is
>> > virtual and then calls method intel_virt_detect_pch(), which just chec=
ks
>> > the iGPU platform and doesn't take into account the possible
>> combination of
>> > Comet Lake CPU and Tiger Lake PCH.
>> >
>> > Of course, It would be nice if we can have a universal modparam to
>> specify
>> > PCH id by hand in future.
>> > But as a fast fix of that small bug I think one more bool modparam may
>> be
>> > enough.
>> > I wrote the second version of patch which adds that bool modparam -
>> > force_tgp_vpch. It's false by default.
>> > When this param is true, we also check that the CPU is Comet Lake and
>> then
>> > set PCH type as Tiger Lake in the method intel_virt_detect_pch().
>> >
>> > The second version of patch is in attachment.
>> >
>> >
>> > =D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 =
18:38, Ville Syrj=C3=A4l=C3=A4 <
>> ville.syrjala@linux.intel.com>:
>> >
>> > > On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
>> > > > Hello!
>> > > >
>> > > > I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500
>> series of
>> > > > Intel chipsets).
>> > > > For that configuration there was a patch for adding support for
>> Tiger
>> > > Lake
>> > > > PCH with CometLake CPU in 2021 -
>> > > > https://patchwork.freedesktop.org/patch/412664/
>> > > > This patch made possible correct detection of such chipset and cpu
>> > > > configuration for i915 kernel module. Without it there was no
>> output to
>> > > any
>> > > > display (HDMI/DP/DVI, even VGA).
>> > > >
>> > > > But this patch doesn't touch intel_virt_detect_pch method, when yo=
u
>> > > > passthrough iGPU to a virtual machine.
>> > > > So, virtual PCH incorrectly detects as Cannon Lake and you have no
>> output
>> > > > to a physical display with i915 driver:
>> > > >
>> > > > [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915=
]]
>> > > > Assuming PCH ID a300
>> > > > [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Foun=
d
>> > > Cannon
>> > > > Lake PCH (CNP)
>> > > >
>> > > >
>> > > > The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in
>> method
>> > > > intel_virt_detect_pch:
>> > > >
>> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>> > > >
>> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
>> > > >
>> > > > It must be:
>> > > >
>> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>> > > > IS_GEN9_BC(dev_priv))
>> > > >
>> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
>> > > >
>> > > >
>> > > > After that small change you get correct detection of PCH and have
>> output
>> > > to
>> > > > a physical display in VM with passthrough iGPU:
>> > > >
>> > > > [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915=
]]
>> > > > Assuming PCH ID a080
>> > > > [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Foun=
d
>> Tiger
>> > > > Lake LP PCH
>> > > >
>> > > >
>> > > > All kernel versions in any distro since 2021 are affected by this
>> small
>> > > bug.
>> > > > The patch for i915 module of the actual kernel version is in
>> attachment.
>> > >
>> > > You fix one CPU+PCH combo, but break the other. I don't think there =
is
>> > > any way to handle this mess in intel_virt_detect_pch(). The best thi=
ng
>> > > would be if the virtual machine would advertise the correct ISA/LPC
>> > > bridge, then the heiristic is not even invoked. If that's not possib=
le
>> > > for some reason then I suppose we'd need a modparam/etc. so the user
>> > > can specify the PCH ID by hand.
>> > >
>> > > --
>> > > Ville Syrj=C3=A4l=C3=A4
>> > > Intel
>> > >
>> >
>> >
>> > --
>> > Best regards, Andrey Toloknev
>>
>>
>>
>> --
>> Ville Syrj=C3=A4l=C3=A4
>> Intel
>>
>
>
> --
> Best regards, Andrey Toloknev
>


--=20
Best regards, Andrey Toloknev

--000000000000d96ca806214b4591
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Sorry for replying twice.</div><div>=
<br></div>I thought about looking for the real PCH bridge, but I&#39;m sure=
 it will be a real headache in some situations, configurations and virtuali=
zations.=C2=A0<div><div>So, in my opinion, a better solution, as you noted =
in your first reply, is modparam.<div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr"><br></div><div dir=3D"ltr" class=3D"gmail_att=
r">=D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 18=
:00, Andrey Toloknev &lt;<a href=3D"mailto:andreyhack@gmail.com" target=3D"=
_blank">andreyhack@gmail.com</a>&gt;:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Hmm. I wonder how many systems we&#39;d break if we make it l=
ook<br>through all the bridges for a real match first, and only fall<br>bac=
k to intel_virt_detect_pch() if nothing was found...</blockquote><div>=C2=
=A0</div><div>Yes, I definitely understand this, that&#39;s why I didn&#39;=
t touch this code at all in the second patch.=C2=A0=C2=A0</div><div>I just =
add bool modparam force_tgp_vpch in i915_params and a bit modify method int=
el_virt_detect_pch() in intel_pch.c</div><div><br></div><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=
=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17:52, V=
ille Syrj=C3=A4l=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linux.intel.com"=
 target=3D"_blank">ville.syrjala@linux.intel.com</a>&gt;:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">On Wed, Sep 04, 2024 at 05:25:06P=
M +0500, Andrey Toloknev wrote:<br>
&gt; Hello!<br>
&gt; <br>
&gt; Thanks for your reply, Ville.<br>
&gt; <br>
&gt; I looked at the code again and understood you are definitely right abo=
ut<br>
&gt; breaking other combinations of CPU+PCH with using IS_GEN9_BC in my pat=
ch.<br>
&gt; <br>
&gt; Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the pr=
oblem<br>
&gt; is connected with method intel_detect_pch(). It searches only for the =
first<br>
&gt; ISA Bridge.<br>
<br>
Hmm. I wonder how many systems we&#39;d break if we make it look<br>
through all the bridges for a real match first, and only fall<br>
back to intel_virt_detect_pch() if nothing was found...<br>
<br>
&gt; And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to address<=
br>
&gt; 00:01.0 - it&#39;s always first.<br>
&gt; So, method intel_detect_pch() correctly detects that the first bridge =
is<br>
&gt; virtual and then calls method intel_virt_detect_pch(), which just chec=
ks<br>
&gt; the iGPU platform and doesn&#39;t take into account the possible combi=
nation of<br>
&gt; Comet Lake CPU and Tiger Lake PCH.<br>
&gt; <br>
&gt; Of course, It would be nice if we can have a universal modparam to spe=
cify<br>
&gt; PCH id by hand in future.<br>
&gt; But as a fast fix of that small bug I think one more bool modparam may=
 be<br>
&gt; enough.<br>
&gt; I wrote the second version of patch which adds that bool modparam -<br=
>
&gt; force_tgp_vpch. It&#39;s false by default.<br>
&gt; When this param is true, we also check that the CPU is Comet Lake and =
then<br>
&gt; set PCH type as Tiger Lake in the method intel_virt_detect_pch().<br>
&gt; <br>
&gt; The second version of patch is in attachment.<br>
&gt; <br>
&gt; <br>
&gt; =D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 =
18:38, Ville Syrj=C3=A4l=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linux.in=
tel.com" target=3D"_blank">ville.syrjala@linux.intel.com</a>&gt;:<br>
&gt; <br>
&gt; &gt; On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:<=
br>
&gt; &gt; &gt; Hello!<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (50=
0 series of<br>
&gt; &gt; &gt; Intel chipsets).<br>
&gt; &gt; &gt; For that configuration there was a patch for adding support =
for Tiger<br>
&gt; &gt; Lake<br>
&gt; &gt; &gt; PCH with CometLake CPU in 2021 -<br>
&gt; &gt; &gt; <a href=3D"https://patchwork.freedesktop.org/patch/412664/" =
rel=3D"noreferrer" target=3D"_blank">https://patchwork.freedesktop.org/patc=
h/412664/</a><br>
&gt; &gt; &gt; This patch made possible correct detection of such chipset a=
nd cpu<br>
&gt; &gt; &gt; configuration for i915 kernel module. Without it there was n=
o output to<br>
&gt; &gt; any<br>
&gt; &gt; &gt; display (HDMI/DP/DVI, even VGA).<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; But this patch doesn&#39;t touch intel_virt_detect_pch metho=
d, when you<br>
&gt; &gt; &gt; passthrough iGPU to a virtual machine.<br>
&gt; &gt; &gt; So, virtual PCH incorrectly detects as Cannon Lake and you h=
ave no output<br>
&gt; &gt; &gt; to a physical display with i915 driver:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 2.933139] i915 0000:00:02.0: [drm:intel_virt_=
detect_pch [i915]]<br>
&gt; &gt; &gt; Assuming PCH ID a300<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 2.933308] i915 0000:00:02.0: [drm:intel_pch_t=
ype [i915]] Found<br>
&gt; &gt; Cannon<br>
&gt; &gt; &gt; Lake PCH (CNP)<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch=
.c in method<br>
&gt; &gt; &gt; intel_virt_detect_pch:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))<=
br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; It must be:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) |=
|<br>
&gt; &gt; &gt; IS_GEN9_BC(dev_priv))<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; After that small change you get correct detection of PCH and=
 have output<br>
&gt; &gt; to<br>
&gt; &gt; &gt; a physical display in VM with passthrough iGPU:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A016.139809] i915 0000:00:02.0: [drm:intel_virt_=
detect_pch [i915]]<br>
&gt; &gt; &gt; Assuming PCH ID a080<br>
&gt; &gt; &gt; [=C2=A0 =C2=A016.261151] i915 0000:00:02.0: [drm:intel_pch_t=
ype [i915]] Found Tiger<br>
&gt; &gt; &gt; Lake LP PCH<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; All kernel versions in any distro since 2021 are affected by=
 this small<br>
&gt; &gt; bug.<br>
&gt; &gt; &gt; The patch for i915 module of the actual kernel version is in=
 attachment.<br>
&gt; &gt;<br>
&gt; &gt; You fix one CPU+PCH combo, but break the other. I don&#39;t think=
 there is<br>
&gt; &gt; any way to handle this mess in intel_virt_detect_pch(). The best =
thing<br>
&gt; &gt; would be if the virtual machine would advertise the correct ISA/L=
PC<br>
&gt; &gt; bridge, then the heiristic is not even invoked. If that&#39;s not=
 possible<br>
&gt; &gt; for some reason then I suppose we&#39;d need a modparam/etc. so t=
he user<br>
&gt; &gt; can specify the PCH ID by hand.<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Ville Syrj=C3=A4l=C3=A4<br>
&gt; &gt; Intel<br>
&gt; &gt;<br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Best regards, Andrey Toloknev<br>
<br>
<br>
<br>
-- <br>
Ville Syrj=C3=A4l=C3=A4<br>
Intel<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">Be=
st regards, Andrey Toloknev</div>
</blockquote></div></div></div></div></div><br clear=3D"all"><div><br></div=
><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" clas=
s=3D"gmail_signature">Best regards, Andrey Toloknev</div>
</div>

--000000000000d96ca806214b4591--
