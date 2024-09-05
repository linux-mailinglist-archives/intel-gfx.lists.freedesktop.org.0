Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EAD971991
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:37:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9025510E53C;
	Mon,  9 Sep 2024 12:36:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GwhOYacl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517EF10E039
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 04:35:27 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id
 e9e14a558f8ab-39f54ab8e69so5185875ab.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Sep 2024 21:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1725510926; x=1726115726; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Uod7aJ5TmM4+d5yOl25lVd72xaVRSXNRFZY+TLSCUWo=;
 b=GwhOYaclGb9EZsIrMEBusxDA0CXDqoiL84tdAf5NqtEt2p2ZWbq12ADTLH50ZL050P
 No+LLFX8pJoIr13nIH2F9IgxBl2BVNuqaaofHBKNOX5iLsrd/+oLCueC8rhp2UV/xrIH
 rn1Un8X9wbbzcB7EAHYZCgDl1Tl9a/716OBYP5DZf2026ZZnChek2PB0jurTObzCJ23p
 oDKkf/ocJeJkwM7AfM8SJW6JH1RIiTgthTAP9eBoH3WGZkJXAwjntZLUTiMwElFdLZZE
 xnJEgtK+eQCo8rK4wIegfJA+kaYil0na7pzcxa3jhRKIaj3Otvg8/VGWReEDkWKJimyg
 hLQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725510926; x=1726115726;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Uod7aJ5TmM4+d5yOl25lVd72xaVRSXNRFZY+TLSCUWo=;
 b=qyXDvznvpJQSJM7kGvpoxNme/WvJ+Aon4lW4RBmDpuRVwF6Tmh7MIOMfl8B5bc4DH+
 tS4+OCgUEkGA8RZ21KeSIhK8EuJ/c+oK2rK2mfC75ft9Y8xq9h5wcuCjcef2OtwbXjHU
 0AKt5SavgQFgiCbP2/5XAmjttVp+6FFgJM1gisx0GGPXUq4lvbq7qn/N0p8GHAuSCsfa
 JKf+pMjA+/vKIaewifRw0wtI/2l2GBnJ9x83MmGw2B6YcTw7iNFnRQvC6DwbT2GwHxEJ
 usFBclMj9rX18HZHl9D1vQAl3U7UMyiOuQ+ExZAIWm+DsZxj/U3+P0dSCRzFLZkiNm+L
 C65w==
X-Forwarded-Encrypted: i=1;
 AJvYcCVakQrVMQAHH/iAiO2svcw+umEW9k4FKdOrYW/Pa0H2Kf87UDsCHnuQndZWABUzhgKWc1apl7foCpM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YylsmDPtHfjiwylOSKLdb2N4aCkSB4jyk2BNZlrGSk6YgYg7hSN
 yXjzcwHidJmIoR5+gv+xnQ95NyKlBN60xJk2Y+rY5EhIS+UMGWs9eMBkrx4voK7pI9rjEPPVIL2
 vtjsV5Z9yZw6kmP3BLWp74BCNmPs=
X-Google-Smtp-Source: AGHT+IFumgExXr4/e/cQw0ZyC3INJD78FHeHcDz2jh/xD3htSgcL9+z+iwRk/MYQ1WrgFLFEfUfpwbqVuXNk5Z48254=
X-Received: by 2002:a05:6e02:18cc:b0:375:a3eb:bfcd with SMTP id
 e9e14a558f8ab-39f797b23a7mr42467995ab.8.1725510926153; Wed, 04 Sep 2024
 21:35:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
 <ZtcROWI3qildcflQ@intel.com>
 <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
 <ZthX_8S1iVjb0xND@intel.com>
 <CAK88eJdiPp27z1+xR4CnB=VdrvABKo=U=7zB-Oj1atF3KfnmDA@mail.gmail.com>
 <CAK88eJfpNubXatrgMiy48vJJEjj3FB4eXyYZ1b7OAYP6TA7Ozw@mail.gmail.com>
 <871q1zsdcw.fsf@intel.com>
In-Reply-To: <871q1zsdcw.fsf@intel.com>
From: Andrey Toloknev <andreyhack@gmail.com>
Date: Thu, 5 Sep 2024 09:35:15 +0500
Message-ID: <CAK88eJeFct7U+0W_hsMyu5qxLEK1-BsCHtX-yjzEYRqaLrpWvg@mail.gmail.com>
Subject: Re: i915 | Bug in virtual PCH detection
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="000000000000cf5a60062157d1d7"
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

--000000000000cf5a60062157d1d7
Content-Type: multipart/alternative; boundary="000000000000cf5a60062157d1d5"

--000000000000cf5a60062157d1d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, that's more universal and works like a charm.
Rewrite patch again. In attachment.
Will be nice *if* it will be committed.

=D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 19:28=
, Jani Nikula <jani.nikula@linux.intel.com>:

> On Wed, 04 Sep 2024, Andrey Toloknev <andreyhack@gmail.com> wrote:
> > Sorry for replying twice.
> >
> > I thought about looking for the real PCH bridge, but I'm sure it will b=
e
> a
> > real headache in some situations, configurations and virtualizations.
> > So, in my opinion, a better solution, as you noted in your first reply,
> is
> > modparam.
>
> *If* we were to add a module parameter for this, it should be more
> generic rather than forcing a single case. For example:
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c
> b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 542eea50093c..d76b05545308 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -168,7 +168,9 @@ intel_virt_detect_pch(const struct drm_i915_private
> *dev_priv,
>          * make an educated guess as to which PCH is really there.
>          */
>
> -       if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
> +       if (dev_priv->params.virt_pch_id)
> +               id =3D dev_priv->params.virt_pch_id;
> +       else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>                 id =3D INTEL_PCH_ADP_DEVICE_ID_TYPE;
>         else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>                 id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
>
> That lets you pass in any PCH device id via i915.virt_pch_id=3D<id>, but
> it still checks the value in intel_pch_type(), fails on unknown ones,
> and warns about unexpected combos.
>
> See drivers/gpu/drm/i915/soc/intel_pch.h for the
> INTEL_PCH_*_DEVICE_ID_TYPE macros for possible values.
>
> BR,
> Jani.
>
>
>
> >
> > =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 1=
8:00, Andrey Toloknev <andreyhack@gmail.com>:
> >
> >> Hmm. I wonder how many systems we'd break if we make it look
> >>> through all the bridges for a real match first, and only fall
> >>> back to intel_virt_detect_pch() if nothing was found...
> >>
> >>
> >> Yes, I definitely understand this, that's why I didn't touch this code
> at
> >> all in the second patch.
> >> I just add bool modparam force_tgp_vpch in i915_params and a bit modif=
y
> >> method intel_virt_detect_pch() in intel_pch.c
> >>
> >>
> >>
> >> =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 =
17:52, Ville Syrj=C3=A4l=C3=A4 <
> ville.syrjala@linux.intel.com
> >> >:
> >>
> >>> On Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrote:
> >>> > Hello!
> >>> >
> >>> > Thanks for your reply, Ville.
> >>> >
> >>> > I looked at the code again and understood you are definitely right
> about
> >>> > breaking other combinations of CPU+PCH with using IS_GEN9_BC in my
> >>> patch.
> >>> >
> >>> > Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the
> >>> problem
> >>> > is connected with method intel_detect_pch(). It searches only for t=
he
> >>> first
> >>> > ISA Bridge.
> >>>
> >>> Hmm. I wonder how many systems we'd break if we make it look
> >>> through all the bridges for a real match first, and only fall
> >>> back to intel_virt_detect_pch() if nothing was found...
> >>>
> >>> > And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to addre=
ss
> >>> > 00:01.0 - it's always first.
> >>> > So, method intel_detect_pch() correctly detects that the first
> bridge is
> >>> > virtual and then calls method intel_virt_detect_pch(), which just
> checks
> >>> > the iGPU platform and doesn't take into account the possible
> >>> combination of
> >>> > Comet Lake CPU and Tiger Lake PCH.
> >>> >
> >>> > Of course, It would be nice if we can have a universal modparam to
> >>> specify
> >>> > PCH id by hand in future.
> >>> > But as a fast fix of that small bug I think one more bool modparam
> may
> >>> be
> >>> > enough.
> >>> > I wrote the second version of patch which adds that bool modparam -
> >>> > force_tgp_vpch. It's false by default.
> >>> > When this param is true, we also check that the CPU is Comet Lake a=
nd
> >>> then
> >>> > set PCH type as Tiger Lake in the method intel_virt_detect_pch().
> >>> >
> >>> > The second version of patch is in attachment.
> >>> >
> >>> >
> >>> > =D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=
=B2 18:38, Ville Syrj=C3=A4l=C3=A4 <
> >>> ville.syrjala@linux.intel.com>:
> >>> >
> >>> > > On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
> >>> > > > Hello!
> >>> > > >
> >>> > > > I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500
> >>> series of
> >>> > > > Intel chipsets).
> >>> > > > For that configuration there was a patch for adding support for
> >>> Tiger
> >>> > > Lake
> >>> > > > PCH with CometLake CPU in 2021 -
> >>> > > > https://patchwork.freedesktop.org/patch/412664/
> >>> > > > This patch made possible correct detection of such chipset and
> cpu
> >>> > > > configuration for i915 kernel module. Without it there was no
> >>> output to
> >>> > > any
> >>> > > > display (HDMI/DP/DVI, even VGA).
> >>> > > >
> >>> > > > But this patch doesn't touch intel_virt_detect_pch method, when
> you
> >>> > > > passthrough iGPU to a virtual machine.
> >>> > > > So, virtual PCH incorrectly detects as Cannon Lake and you have
> no
> >>> output
> >>> > > > to a physical display with i915 driver:
> >>> > > >
> >>> > > > [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch
> [i915]]
> >>> > > > Assuming PCH ID a300
> >>> > > > [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]]
> Found
> >>> > > Cannon
> >>> > > > Lake PCH (CNP)
> >>> > > >
> >>> > > >
> >>> > > > The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c =
in
> >>> method
> >>> > > > intel_virt_detect_pch:
> >>> > > >
> >>> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
> >>> > > >
> >>> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> >>> > > >
> >>> > > > It must be:
> >>> > > >
> >>> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
> >>> > > > IS_GEN9_BC(dev_priv))
> >>> > > >
> >>> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
> >>> > > >
> >>> > > >
> >>> > > > After that small change you get correct detection of PCH and ha=
ve
> >>> output
> >>> > > to
> >>> > > > a physical display in VM with passthrough iGPU:
> >>> > > >
> >>> > > > [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch
> [i915]]
> >>> > > > Assuming PCH ID a080
> >>> > > > [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]]
> Found
> >>> Tiger
> >>> > > > Lake LP PCH
> >>> > > >
> >>> > > >
> >>> > > > All kernel versions in any distro since 2021 are affected by th=
is
> >>> small
> >>> > > bug.
> >>> > > > The patch for i915 module of the actual kernel version is in
> >>> attachment.
> >>> > >
> >>> > > You fix one CPU+PCH combo, but break the other. I don't think
> there is
> >>> > > any way to handle this mess in intel_virt_detect_pch(). The best
> thing
> >>> > > would be if the virtual machine would advertise the correct ISA/L=
PC
> >>> > > bridge, then the heiristic is not even invoked. If that's not
> possible
> >>> > > for some reason then I suppose we'd need a modparam/etc. so the
> user
> >>> > > can specify the PCH ID by hand.
> >>> > >
> >>> > > --
> >>> > > Ville Syrj=C3=A4l=C3=A4
> >>> > > Intel
> >>> > >
> >>> >
> >>> >
> >>> > --
> >>> > Best regards, Andrey Toloknev
> >>>
> >>>
> >>>
> >>> --
> >>> Ville Syrj=C3=A4l=C3=A4
> >>> Intel
> >>>
> >>
> >>
> >> --
> >> Best regards, Andrey Toloknev
> >>
>
> --
> Jani Nikula, Intel
>


--=20
Best regards, Andrey Toloknev

--000000000000cf5a60062157d1d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Thanks, that&#39;s more =
universal and works like a charm.=C2=A0</div><div dir=3D"ltr">Rewrite patch=
 again. In attachment.<div>Will be nice *if* it will be committed.=C2=A0</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">=D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 19=
:28, Jani Nikula &lt;<a href=3D"mailto:jani.nikula@linux.intel.com" target=
=3D"_blank">jani.nikula@linux.intel.com</a>&gt;:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Wed, 04 Sep 2024, Andrey Toloknev &lt;<=
a href=3D"mailto:andreyhack@gmail.com" target=3D"_blank">andreyhack@gmail.c=
om</a>&gt; wrote:<br>
&gt; Sorry for replying twice.<br>
&gt;<br>
&gt; I thought about looking for the real PCH bridge, but I&#39;m sure it w=
ill be a<br>
&gt; real headache in some situations, configurations and virtualizations.<=
br>
&gt; So, in my opinion, a better solution, as you noted in your first reply=
, is<br>
&gt; modparam.<br>
<br>
*If* we were to add a module parameter for this, it should be more<br>
generic rather than forcing a single case. For example:<br>
<br>
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/so=
c/intel_pch.c<br>
index 542eea50093c..d76b05545308 100644<br>
--- a/drivers/gpu/drm/i915/soc/intel_pch.c<br>
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c<br>
@@ -168,7 +168,9 @@ intel_virt_detect_pch(const struct drm_i915_private *de=
v_priv,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0* make an educated guess as to which PCH =
is really there.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0*/<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(=
dev_priv))<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (dev_priv-&gt;params.virt_pch_id)<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0id =3D dev_priv-&gt=
;params.virt_pch_id;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLA=
KE_P(dev_priv))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 id =3D INTEL_PCH_AD=
P_DEVICE_ID_TYPE;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAK=
E(dev_priv))<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 id =3D INTEL_PCH_TG=
P_DEVICE_ID_TYPE;<br>
<br>
That lets you pass in any PCH device id via i915.virt_pch_id=3D&lt;id&gt;, =
but<br>
it still checks the value in intel_pch_type(), fails on unknown ones,<br>
and warns about unexpected combos.<br>
<br>
See drivers/gpu/drm/i915/soc/intel_pch.h for the<br>
INTEL_PCH_*_DEVICE_ID_TYPE macros for possible values.<br>
<br>
BR,<br>
Jani.<br>
<br>
<br>
<br>
&gt;<br>
&gt; =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 =
18:00, Andrey Toloknev &lt;<a href=3D"mailto:andreyhack@gmail.com" target=
=3D"_blank">andreyhack@gmail.com</a>&gt;:<br>
&gt;<br>
&gt;&gt; Hmm. I wonder how many systems we&#39;d break if we make it look<b=
r>
&gt;&gt;&gt; through all the bridges for a real match first, and only fall<=
br>
&gt;&gt;&gt; back to intel_virt_detect_pch() if nothing was found...<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Yes, I definitely understand this, that&#39;s why I didn&#39;t tou=
ch this code at<br>
&gt;&gt; all in the second patch.<br>
&gt;&gt; I just add bool modparam force_tgp_vpch in i915_params and a bit m=
odify<br>
&gt;&gt; method intel_virt_detect_pch() in intel_pch.c<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=
=B2 17:52, Ville Syrj=C3=A4l=C3=A4 &lt;<a href=3D"mailto:ville.syrjala@linu=
x.intel.com" target=3D"_blank">ville.syrjala@linux.intel.com</a><br>
&gt;&gt; &gt;:<br>
&gt;&gt;<br>
&gt;&gt;&gt; On Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrot=
e:<br>
&gt;&gt;&gt; &gt; Hello!<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Thanks for your reply, Ville.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; I looked at the code again and understood you are definit=
ely right about<br>
&gt;&gt;&gt; &gt; breaking other combinations of CPU+PCH with using IS_GEN9=
_BC in my<br>
&gt;&gt;&gt; patch.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Using libvirt (kvm) I can passthrough ISA/LPC bridge to V=
M, but the<br>
&gt;&gt;&gt; problem<br>
&gt;&gt;&gt; &gt; is connected with method intel_detect_pch(). It searches =
only for the<br>
&gt;&gt;&gt; first<br>
&gt;&gt;&gt; &gt; ISA Bridge.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Hmm. I wonder how many systems we&#39;d break if we make it lo=
ok<br>
&gt;&gt;&gt; through all the bridges for a real match first, and only fall<=
br>
&gt;&gt;&gt; back to intel_virt_detect_pch() if nothing was found...<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; &gt; And the virtual ISA/LPC Bridge PCI in libvirt is hardcode=
d to address<br>
&gt;&gt;&gt; &gt; 00:01.0 - it&#39;s always first.<br>
&gt;&gt;&gt; &gt; So, method intel_detect_pch() correctly detects that the =
first bridge is<br>
&gt;&gt;&gt; &gt; virtual and then calls method intel_virt_detect_pch(), wh=
ich just checks<br>
&gt;&gt;&gt; &gt; the iGPU platform and doesn&#39;t take into account the p=
ossible<br>
&gt;&gt;&gt; combination of<br>
&gt;&gt;&gt; &gt; Comet Lake CPU and Tiger Lake PCH.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Of course, It would be nice if we can have a universal mo=
dparam to<br>
&gt;&gt;&gt; specify<br>
&gt;&gt;&gt; &gt; PCH id by hand in future.<br>
&gt;&gt;&gt; &gt; But as a fast fix of that small bug I think one more bool=
 modparam may<br>
&gt;&gt;&gt; be<br>
&gt;&gt;&gt; &gt; enough.<br>
&gt;&gt;&gt; &gt; I wrote the second version of patch which adds that bool =
modparam -<br>
&gt;&gt;&gt; &gt; force_tgp_vpch. It&#39;s false by default.<br>
&gt;&gt;&gt; &gt; When this param is true, we also check that the CPU is Co=
met Lake and<br>
&gt;&gt;&gt; then<br>
&gt;&gt;&gt; &gt; set PCH type as Tiger Lake in the method intel_virt_detec=
t_pch().<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; The second version of patch is in attachment.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; =D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=
=D0=B3. =D0=B2 18:38, Ville Syrj=C3=A4l=C3=A4 &lt;<br>
&gt;&gt;&gt; <a href=3D"mailto:ville.syrjala@linux.intel.com" target=3D"_bl=
ank">ville.syrjala@linux.intel.com</a>&gt;:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Tol=
oknev wrote:<br>
&gt;&gt;&gt; &gt; &gt; &gt; Hello!<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; I have 2 machines with Comet Lake CPUs on Tiger=
 Lake PCH (500<br>
&gt;&gt;&gt; series of<br>
&gt;&gt;&gt; &gt; &gt; &gt; Intel chipsets).<br>
&gt;&gt;&gt; &gt; &gt; &gt; For that configuration there was a patch for ad=
ding support for<br>
&gt;&gt;&gt; Tiger<br>
&gt;&gt;&gt; &gt; &gt; Lake<br>
&gt;&gt;&gt; &gt; &gt; &gt; PCH with CometLake CPU in 2021 -<br>
&gt;&gt;&gt; &gt; &gt; &gt; <a href=3D"https://patchwork.freedesktop.org/pa=
tch/412664/" rel=3D"noreferrer" target=3D"_blank">https://patchwork.freedes=
ktop.org/patch/412664/</a><br>
&gt;&gt;&gt; &gt; &gt; &gt; This patch made possible correct detection of s=
uch chipset and cpu<br>
&gt;&gt;&gt; &gt; &gt; &gt; configuration for i915 kernel module. Without i=
t there was no<br>
&gt;&gt;&gt; output to<br>
&gt;&gt;&gt; &gt; &gt; any<br>
&gt;&gt;&gt; &gt; &gt; &gt; display (HDMI/DP/DVI, even VGA).<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; But this patch doesn&#39;t touch intel_virt_det=
ect_pch method, when you<br>
&gt;&gt;&gt; &gt; &gt; &gt; passthrough iGPU to a virtual machine.<br>
&gt;&gt;&gt; &gt; &gt; &gt; So, virtual PCH incorrectly detects as Cannon L=
ake and you have no<br>
&gt;&gt;&gt; output<br>
&gt;&gt;&gt; &gt; &gt; &gt; to a physical display with i915 driver:<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; [=C2=A0 =C2=A0 2.933139] i915 0000:00:02.0: [dr=
m:intel_virt_detect_pch [i915]]<br>
&gt;&gt;&gt; &gt; &gt; &gt; Assuming PCH ID a300<br>
&gt;&gt;&gt; &gt; &gt; &gt; [=C2=A0 =C2=A0 2.933308] i915 0000:00:02.0: [dr=
m:intel_pch_type [i915]] Found<br>
&gt;&gt;&gt; &gt; &gt; Cannon<br>
&gt;&gt;&gt; &gt; &gt; &gt; Lake PCH (CNP)<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; The bug is on line 173 in drivers/gpu/drm/i915/=
soc/intel_pch.c in<br>
&gt;&gt;&gt; method<br>
&gt;&gt;&gt; &gt; &gt; &gt; intel_virt_detect_pch:<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAK=
E(dev_priv))<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; It must be:<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAK=
E(dev_priv) ||<br>
&gt;&gt;&gt; &gt; &gt; &gt; IS_GEN9_BC(dev_priv))<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; After that small change you get correct detecti=
on of PCH and have<br>
&gt;&gt;&gt; output<br>
&gt;&gt;&gt; &gt; &gt; to<br>
&gt;&gt;&gt; &gt; &gt; &gt; a physical display in VM with passthrough iGPU:=
<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; [=C2=A0 =C2=A016.139809] i915 0000:00:02.0: [dr=
m:intel_virt_detect_pch [i915]]<br>
&gt;&gt;&gt; &gt; &gt; &gt; Assuming PCH ID a080<br>
&gt;&gt;&gt; &gt; &gt; &gt; [=C2=A0 =C2=A016.261151] i915 0000:00:02.0: [dr=
m:intel_pch_type [i915]] Found<br>
&gt;&gt;&gt; Tiger<br>
&gt;&gt;&gt; &gt; &gt; &gt; Lake LP PCH<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; &gt; All kernel versions in any distro since 2021 ar=
e affected by this<br>
&gt;&gt;&gt; small<br>
&gt;&gt;&gt; &gt; &gt; bug.<br>
&gt;&gt;&gt; &gt; &gt; &gt; The patch for i915 module of the actual kernel =
version is in<br>
&gt;&gt;&gt; attachment.<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; You fix one CPU+PCH combo, but break the other. I do=
n&#39;t think there is<br>
&gt;&gt;&gt; &gt; &gt; any way to handle this mess in intel_virt_detect_pch=
(). The best thing<br>
&gt;&gt;&gt; &gt; &gt; would be if the virtual machine would advertise the =
correct ISA/LPC<br>
&gt;&gt;&gt; &gt; &gt; bridge, then the heiristic is not even invoked. If t=
hat&#39;s not possible<br>
&gt;&gt;&gt; &gt; &gt; for some reason then I suppose we&#39;d need a modpa=
ram/etc. so the user<br>
&gt;&gt;&gt; &gt; &gt; can specify the PCH ID by hand.<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt; &gt; --<br>
&gt;&gt;&gt; &gt; &gt; Ville Syrj=C3=A4l=C3=A4<br>
&gt;&gt;&gt; &gt; &gt; Intel<br>
&gt;&gt;&gt; &gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; Best regards, Andrey Toloknev<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; Ville Syrj=C3=A4l=C3=A4<br>
&gt;&gt;&gt; Intel<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Best regards, Andrey Toloknev<br>
&gt;&gt;<br>
<br>
-- <br>
Jani Nikula, Intel<br>
</blockquote></div><br clear=3D"all"></div><div><br></div><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re">Best regards, Andrey Toloknev</div>
</div>

--000000000000cf5a60062157d1d5--

--000000000000cf5a60062157d1d7
Content-Type: application/x-patch; name="tgl_vpch_fix_v3.patch"
Content-Disposition: attachment; filename="tgl_vpch_fix_v3.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m0o30ilf0>
X-Attachment-Id: f_m0o30ilf0

ZGlmZiAtdXIgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuYwotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BhcmFtcy5jCTIwMjQtMDktMDQgMTM6NTk6MjAuNjI2MzA5NTE1ICswNTAwCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmMJMjAyNC0wOS0wNCAyMToyODoxMi42NTI1Nzk0
MTUgKzA1MDAKQEAgLTEzNiw2ICsxMzYsOSBAQAogCQkgIkVuYWJsZSBzdXBwb3J0IGZvciB1bnN0
YWJsZSBkZWJ1ZyBvbmx5IHVzZXJzcGFjZSBBUEkuIChkZWZhdWx0OmZhbHNlKSIpOwogI2VuZGlm
CiAKK2k5MTVfcGFyYW1fbmFtZWRfdW5zYWZlKHZpcnRfcGNoX2lkLCB1aW50LCAwNDAwLAorICAg
ICAgICAiTWFudWFsIHNldHRpbmcgb2YgdmlydHVhbCBQQ0ggaWRlbnRpZmllciBmb3IgdmlydHVh
bGl6ZWQgR1BVIChkZWZhdWx0OiAwKSIpOworCiBzdGF0aWMgdm9pZCBfcGFyYW1fcHJpbnRfYm9v
bChzdHJ1Y3QgZHJtX3ByaW50ZXIgKnAsIGNvbnN0IGNoYXIgKm5hbWUsCiAJCQkgICAgICBib29s
IHZhbCkKIHsKZGlmZiAtdXIgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFtcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3BhcmFtcy5oCTIwMjQtMDktMDQgMTM6NTk6MjkuMDA1MzQ1OTYyICswNTAwCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgJMjAyNC0wOS0wNCAyMTowOTo0
OS45OTgzMDUxMDUgKzA1MDAKQEAgLTYwLDYgKzYwLDcgQEAKIAlwYXJhbSh1bnNpZ25lZCBpbnQs
IHJlcXVlc3RfdGltZW91dF9tcywgQ09ORklHX0RSTV9JOTE1X1JFUVVFU1RfVElNRU9VVCwgQ09O
RklHX0RSTV9JOTE1X1JFUVVFU1RfVElNRU9VVCA/IDA2MDAgOiAwKSBcCiAJcGFyYW0odW5zaWdu
ZWQgaW50LCBsbWVtX3NpemUsIDAsIDA0MDApIFwKIAlwYXJhbSh1bnNpZ25lZCBpbnQsIGxtZW1f
YmFyX3NpemUsIDAsIDA0MDApIFwKKwlwYXJhbSh1bnNpZ25lZCBpbnQsIHZpcnRfcGNoX2lkLCAw
LCAwNDAwKSBcCiAJLyogbGVhdmUgYm9vbHMgYXQgdGhlIGVuZCB0byBub3QgY3JlYXRlIGhvbGVz
ICovIFwKIAlwYXJhbShib29sLCBlbmFibGVfaGFuZ2NoZWNrLCB0cnVlLCAwNjAwKSBcCiAJcGFy
YW0oYm9vbCwgZXJyb3JfY2FwdHVyZSwgdHJ1ZSwgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVf
Q0FQVFVSRV9FUlJPUikgPyAwNjAwIDogMCkgXApkaWZmIC11ciBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L3NvYy9pbnRlbF9wY2guYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NvYy9pbnRlbF9wY2gu
YwotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zb2MvaW50ZWxfcGNoLmMJMjAyNC0wOS0wNCAx
NDowNzozMC4yNzQ5MDg4ODIgKzA1MDAKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc29jL2lu
dGVsX3BjaC5jCTIwMjQtMDktMDQgMjE6MDc6NDkuNTM0MTcxMTMxICswNTAwCkBAIC0xNjgsNyAr
MTY4LDkgQEAKIAkgKiBtYWtlIGFuIGVkdWNhdGVkIGd1ZXNzIGFzIHRvIHdoaWNoIFBDSCBpcyBy
ZWFsbHkgdGhlcmUuCiAJICovCiAKLQlpZiAoSVNfQUxERVJMQUtFX1MoZGV2X3ByaXYpIHx8IElT
X0FMREVSTEFLRV9QKGRldl9wcml2KSkKKwlpZiAoZGV2X3ByaXYtPnBhcmFtcy52aXJ0X3BjaF9p
ZCkKKwkJaWQgPSBkZXZfcHJpdi0+cGFyYW1zLnZpcnRfcGNoX2lkOworCWVsc2UgaWYgKElTX0FM
REVSTEFLRV9TKGRldl9wcml2KSB8fCBJU19BTERFUkxBS0VfUChkZXZfcHJpdikpCiAJCWlkID0g
SU5URUxfUENIX0FEUF9ERVZJQ0VfSURfVFlQRTsKIAllbHNlIGlmIChJU19USUdFUkxBS0UoZGV2
X3ByaXYpIHx8IElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKQogCQlpZCA9IElOVEVMX1BDSF9UR1Bf
REVWSUNFX0lEX1RZUEU7Cg==
--000000000000cf5a60062157d1d7--
