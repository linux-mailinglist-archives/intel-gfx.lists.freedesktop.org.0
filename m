Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F72F97196A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:36:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8328A10E49E;
	Mon,  9 Sep 2024 12:36:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="I3yLsFRm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
 [209.85.166.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B9DA10E7B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 13:00:23 +0000 (UTC)
Received: by mail-il1-f176.google.com with SMTP id
 e9e14a558f8ab-39d30f0f831so22992405ab.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2024 06:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725454822; x=1726059622; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=V98ChF3GC98GQ/LTildQQWLefJstW6WtNUw4GsgnLsE=;
 b=I3yLsFRmp/F1032jVg2oQhwZj8Be4puC0dYWJJbjFdY+BWTsMtlRPnRjfnDRzisROo
 Azhkv/q7nD090xHesiEgE+G41LSCTaVjPQc1xWV/U6MIxAsLKsEa9fow5juXSC9rOWt+
 L17mGmHDe513GIbVQzLdyaxx+K7JnDpQqqwxeaCKDOGzqv9gAQHWZtr7fqlvK+e3qt3i
 limtLRVl9jFCUvT0+tAD426t/hPN4yk0jIETxyUMnBO/PZfQPmY7A1uWgbmchvXdk8nm
 FgAYUE0I76FWydmii8QO6fZcOHAR9vwCmCmImA7WoLi/slSR7TcU9sWIfxoXF0TTQ7Rt
 h7lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725454822; x=1726059622;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=V98ChF3GC98GQ/LTildQQWLefJstW6WtNUw4GsgnLsE=;
 b=lS8odwczq1fB3oLbCdQJBouK4GOoIEgDYpnVlUYnQ16ugKtgWElciDEcRYcXSoOkkL
 WUwKgsipMveBfNjnVnoUjrVhSx0ufNYFmJUkbHuyvgH3jKSoNkIadhTlbxtH9wKtYzkB
 4VOq3GZGr5nzoIwP4QLcFwpkHu+B8k+3PexGCmw+kH7JuDqVfAROriC+uMoSgzLLh7gN
 7CrlStCupVstZJGt1mCFk7EHxlQlOOHM+XNXsT12lbIHkpJKtP7L5yf9dRAIkP7MI33/
 AfInmuMduaVr8+8kTv7jLHQwp7CyD+hJWQU+gUpx36JY/2orBoGcoUwHCc18E0FgTjc6
 ym3w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVg4N8var+PqmUugJ3QXE/7VJbOV9C2Tp8n4sIOA/EVX/DdIPOpLE45+IQnLfA+msSPOA91vHFsK+U=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyXhID3LVl6udcwtZQ1mNrw3g7AUTrlLpzJgA1+AJr80snm7ela
 asTBG6Bcvo1XCBjhF+PKwjoSelr4IoMGg+bGRzMFGqXUJzeunYgJ8HwCjPT+1lyxm8CTAmZvDRJ
 0ojRrEwR+zySA81alsd41XHlRKl0=
X-Google-Smtp-Source: AGHT+IFmm6qM6vVnmknpMODycgaiStAAoDtVq5ItExVnOBSaePAYf78MLzTseaJiW9ybcrBYw1i2ozsRSA0MDtxO0uA=
X-Received: by 2002:a05:6e02:1c44:b0:381:40be:4ce6 with SMTP id
 e9e14a558f8ab-39f49a321d7mr155645865ab.11.1725454821952; Wed, 04 Sep 2024
 06:00:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
 <ZtcROWI3qildcflQ@intel.com>
 <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
 <ZthX_8S1iVjb0xND@intel.com>
In-Reply-To: <ZthX_8S1iVjb0xND@intel.com>
From: Andrey Toloknev <andreyhack@gmail.com>
Date: Wed, 4 Sep 2024 18:00:10 +0500
Message-ID: <CAK88eJdiPp27z1+xR4CnB=VdrvABKo=U=7zB-Oj1atF3KfnmDA@mail.gmail.com>
Subject: Re: i915 | Bug in virtual PCH detection
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/alternative; boundary="000000000000bd196406214ac159"
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

--000000000000bd196406214ac159
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> Hmm. I wonder how many systems we'd break if we make it look
> through all the bridges for a real match first, and only fall
> back to intel_virt_detect_pch() if nothing was found...


Yes, I definitely understand this, that's why I didn't touch this code at
all in the second patch.
I just add bool modparam force_tgp_vpch in i915_params and a bit modify
method intel_virt_detect_pch() in intel_pch.c



=D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17:52=
, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>:

> On Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrote:
> > Hello!
> >
> > Thanks for your reply, Ville.
> >
> > I looked at the code again and understood you are definitely right abou=
t
> > breaking other combinations of CPU+PCH with using IS_GEN9_BC in my patc=
h.
> >
> > Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the
> problem
> > is connected with method intel_detect_pch(). It searches only for the
> first
> > ISA Bridge.
>
> Hmm. I wonder how many systems we'd break if we make it look
> through all the bridges for a real match first, and only fall
> back to intel_virt_detect_pch() if nothing was found...
>
> > And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to address
> > 00:01.0 - it's always first.
> > So, method intel_detect_pch() correctly detects that the first bridge i=
s
> > virtual and then calls method intel_virt_detect_pch(), which just check=
s
> > the iGPU platform and doesn't take into account the possible combinatio=
n
> of
> > Comet Lake CPU and Tiger Lake PCH.
> >
> > Of course, It would be nice if we can have a universal modparam to
> specify
> > PCH id by hand in future.
> > But as a fast fix of that small bug I think one more bool modparam may =
be
> > enough.
> > I wrote the second version of patch which adds that bool modparam -
> > force_tgp_vpch. It's false by default.
> > When this param is true, we also check that the CPU is Comet Lake and
> then
> > set PCH type as Tiger Lake in the method intel_virt_detect_pch().
> >
> > The second version of patch is in attachment.
> >
> >
> > =D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 1=
8:38, Ville Syrj=C3=A4l=C3=A4 <
> ville.syrjala@linux.intel.com>:
> >
> > > On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
> > > > Hello!
> > > >
> > > > I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500 serie=
s
> of
> > > > Intel chipsets).
> > > > For that configuration there was a patch for adding support for Tig=
er
> > > Lake
> > > > PCH with CometLake CPU in 2021 -
> > > > https://patchwork.freedesktop.org/patch/412664/
> > > > This patch made possible correct detection of such chipset and cpu
> > > > configuration for i915 kernel module. Without it there was no outpu=
t
> to
> > > any
> > > > display (HDMI/DP/DVI, even VGA).
> > > >
> > > > But this patch doesn't touch intel_virt_detect_pch method, when you
> > > > passthrough iGPU to a virtual machine.
> > > > So, virtual PCH incorrectly detects as Cannon Lake and you have no
> output
> > > > to a physical display with i915 driver:
> > > >
> > > > [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]=
]
> > > > Assuming PCH ID a300
> > > > [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found
> > > Cannon
> > > > Lake PCH (CNP)
> > > >
> > > >
> > > > The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in
> method
> > > > intel_virt_detect_pch:
> > > >
> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> > > >
> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> > > >
> > > > It must be:
> > > >
> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> > > > IS_GEN9_BC(dev_priv))
> > > >
> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> > > >
> > > >
> > > > After that small change you get correct detection of PCH and have
> output
> > > to
> > > > a physical display in VM with passthrough iGPU:
> > > >
> > > > [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i915]=
]
> > > > Assuming PCH ID a080
> > > > [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Found
> Tiger
> > > > Lake LP PCH
> > > >
> > > >
> > > > All kernel versions in any distro since 2021 are affected by this
> small
> > > bug.
> > > > The patch for i915 module of the actual kernel version is in
> attachment.
> > >
> > > You fix one CPU+PCH combo, but break the other. I don't think there i=
s
> > > any way to handle this mess in intel_virt_detect_pch(). The best thin=
g
> > > would be if the virtual machine would advertise the correct ISA/LPC
> > > bridge, then the heiristic is not even invoked. If that's not possibl=
e
> > > for some reason then I suppose we'd need a modparam/etc. so the user
> > > can specify the PCH ID by hand.
> > >
> > > --
> > > Ville Syrj=C3=A4l=C3=A4
> > > Intel
> > >
> >
> >
> > --
> > Best regards, Andrey Toloknev
>
>
>
> --
> Ville Syrj=C3=A4l=C3=A4
> Intel
>


--=20
=D0=A1 =D0=A3=D0=B2=D0=B0=D0=B6=D0=B5=D0=BD=D0=B8=D0=B5=D0=BC, =D0=A2=D0=BE=
=D0=BB=D0=BE=D0=BA=D0=BD=D0=B5=D0=B2 =D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9

--000000000000bd196406214ac159
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hmm. I w=
onder how many systems we&#39;d break if we make it look<br>through all the=
 bridges for a real match first, and only fall<br>back to intel_virt_detect=
_pch() if nothing was found...</blockquote><div>=C2=A0</div><div>Yes, I def=
initely understand this, that&#39;s why I didn&#39;t touch this code at all=
 in the second patch.=C2=A0=C2=A0</div><div>I just add bool modparam force_=
tgp_vpch in i915_params and a bit modify method intel_virt_detect_pch() in =
intel_pch.c</div><div><br></div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D1=80, 4 =D1=81=D0=B5=
=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17:52, Ville Syrj=C3=A4l=C3=A4 &l=
t;<a href=3D"mailto:ville.syrjala@linux.intel.com">ville.syrjala@linux.inte=
l.com</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">O=
n Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrote:<br>
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
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature">=
=D0=A1 =D0=A3=D0=B2=D0=B0=D0=B6=D0=B5=D0=BD=D0=B8=D0=B5=D0=BC, =D0=A2=D0=BE=
=D0=BB=D0=BE=D0=BA=D0=BD=D0=B5=D0=B2 =D0=90=D0=BD=D0=B4=D1=80=D0=B5=D0=B9</=
div>

--000000000000bd196406214ac159--
