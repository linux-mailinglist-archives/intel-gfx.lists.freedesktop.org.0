Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8A296C06B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Sep 2024 16:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A5CE10E7D3;
	Wed,  4 Sep 2024 14:28:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SC7BArAO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720AA10E7CE
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Sep 2024 14:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725460084; x=1756996084;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=AYfcR4A6vdUYLhJkzxRYlqjc2W2/JaaRGKtoiP6UWPA=;
 b=SC7BArAOOiGGM4ilcH0/abx6Zft/kwEPMrUdW4kemQtTbUBgDwagi0Fv
 sZqIgz4njCPaVpihin2rTAOFjgWT8Ea32yRPzZROhKrjt5LzZVfMEzuNz
 vT7/WG+otu0u8gEddyWfbxBHLfHf2OwRkOfdHZ7L6rU0o3votfA/2K2yU
 bf9P7Dkq27QncyqnOe91YtS5As5ePpIVQwlH33XP5WU0cgO3++GcBxtJE
 PWjhbTu8ZJ+ghJUN0k9B5fYnQMT7lJ82092QGWCtxNKP/txdS9CvtsvNi
 K9RVs8tP1ff5aFF2IoDVe09PDcXWHEYSJPIk0uxOAJArM32iQ+l75Dp+t w==;
X-CSE-ConnectionGUID: OLPVgK5yQgSSp4Lh0qzKig==
X-CSE-MsgGUID: cJpA/aSkQrK8sWovD1tqgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="49530211"
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="49530211"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:28:04 -0700
X-CSE-ConnectionGUID: YLt75cVUSH+rEBhuyJkAAw==
X-CSE-MsgGUID: 27qOFLvITyeFSDJq94zXOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,202,1719903600"; d="scan'208";a="70166118"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.18])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 07:28:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andrey Toloknev <andreyhack@gmail.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 intel-gfx@lists.freedesktop.org
Subject: Re: i915 | Bug in virtual PCH detection
In-Reply-To: <CAK88eJfpNubXatrgMiy48vJJEjj3FB4eXyYZ1b7OAYP6TA7Ozw@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <CAK88eJc1R2Tij7dLf_1wFj7XFustFjREYPR3Zrqy9ETx8Oe8UA@mail.gmail.com>
 <ZtcROWI3qildcflQ@intel.com>
 <CAK88eJeLhHP+n1870ZAC0BY2OC-UcrU4E0vmkbBm_ndqZsTtNQ@mail.gmail.com>
 <ZthX_8S1iVjb0xND@intel.com>
 <CAK88eJdiPp27z1+xR4CnB=VdrvABKo=U=7zB-Oj1atF3KfnmDA@mail.gmail.com>
 <CAK88eJfpNubXatrgMiy48vJJEjj3FB4eXyYZ1b7OAYP6TA7Ozw@mail.gmail.com>
Date: Wed, 04 Sep 2024 17:27:43 +0300
Message-ID: <871q1zsdcw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Wed, 04 Sep 2024, Andrey Toloknev <andreyhack@gmail.com> wrote:
> Sorry for replying twice.
>
> I thought about looking for the real PCH bridge, but I'm sure it will be a
> real headache in some situations, configurations and virtualizations.
> So, in my opinion, a better solution, as you noted in your first reply, is
> modparam.

*If* we were to add a module parameter for this, it should be more
generic rather than forcing a single case. For example:

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/so=
c/intel_pch.c
index 542eea50093c..d76b05545308 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -168,7 +168,9 @@ intel_virt_detect_pch(const struct drm_i915_private *de=
v_priv,
 	 * make an educated guess as to which PCH is really there.
 	 */
=20
-	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
+	if (dev_priv->params.virt_pch_id)
+		id =3D dev_priv->params.virt_pch_id;
+	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
 		id =3D INTEL_PCH_ADP_DEVICE_ID_TYPE;
 	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;

That lets you pass in any PCH device id via i915.virt_pch_id=3D<id>, but
it still checks the value in intel_pch_type(), fails on unknown ones,
and warns about unexpected combos.

See drivers/gpu/drm/i915/soc/intel_pch.h for the
INTEL_PCH_*_DEVICE_ID_TYPE macros for possible values.

BR,
Jani.



>
> =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 18:=
00, Andrey Toloknev <andreyhack@gmail.com>:
>
>> Hmm. I wonder how many systems we'd break if we make it look
>>> through all the bridges for a real match first, and only fall
>>> back to intel_virt_detect_pch() if nothing was found...
>>
>>
>> Yes, I definitely understand this, that's why I didn't touch this code at
>> all in the second patch.
>> I just add bool modparam force_tgp_vpch in i915_params and a bit modify
>> method intel_virt_detect_pch() in intel_pch.c
>>
>>
>>
>> =D1=81=D1=80, 4 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17=
:52, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com
>> >:
>>
>>> On Wed, Sep 04, 2024 at 05:25:06PM +0500, Andrey Toloknev wrote:
>>> > Hello!
>>> >
>>> > Thanks for your reply, Ville.
>>> >
>>> > I looked at the code again and understood you are definitely right ab=
out
>>> > breaking other combinations of CPU+PCH with using IS_GEN9_BC in my
>>> patch.
>>> >
>>> > Using libvirt (kvm) I can passthrough ISA/LPC bridge to VM, but the
>>> problem
>>> > is connected with method intel_detect_pch(). It searches only for the
>>> first
>>> > ISA Bridge.
>>>
>>> Hmm. I wonder how many systems we'd break if we make it look
>>> through all the bridges for a real match first, and only fall
>>> back to intel_virt_detect_pch() if nothing was found...
>>>
>>> > And the virtual ISA/LPC Bridge PCI in libvirt is hardcoded to address
>>> > 00:01.0 - it's always first.
>>> > So, method intel_detect_pch() correctly detects that the first bridge=
 is
>>> > virtual and then calls method intel_virt_detect_pch(), which just che=
cks
>>> > the iGPU platform and doesn't take into account the possible
>>> combination of
>>> > Comet Lake CPU and Tiger Lake PCH.
>>> >
>>> > Of course, It would be nice if we can have a universal modparam to
>>> specify
>>> > PCH id by hand in future.
>>> > But as a fast fix of that small bug I think one more bool modparam may
>>> be
>>> > enough.
>>> > I wrote the second version of patch which adds that bool modparam -
>>> > force_tgp_vpch. It's false by default.
>>> > When this param is true, we also check that the CPU is Comet Lake and
>>> then
>>> > set PCH type as Tiger Lake in the method intel_virt_detect_pch().
>>> >
>>> > The second version of patch is in attachment.
>>> >
>>> >
>>> > =D0=B2=D1=82, 3 =D1=81=D0=B5=D0=BD=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2=
 18:38, Ville Syrj=C3=A4l=C3=A4 <
>>> ville.syrjala@linux.intel.com>:
>>> >
>>> > > On Sun, Sep 01, 2024 at 02:56:07PM +0500, Andrey Toloknev wrote:
>>> > > > Hello!
>>> > > >
>>> > > > I have 2 machines with Comet Lake CPUs on Tiger Lake PCH (500
>>> series of
>>> > > > Intel chipsets).
>>> > > > For that configuration there was a patch for adding support for
>>> Tiger
>>> > > Lake
>>> > > > PCH with CometLake CPU in 2021 -
>>> > > > https://patchwork.freedesktop.org/patch/412664/
>>> > > > This patch made possible correct detection of such chipset and cpu
>>> > > > configuration for i915 kernel module. Without it there was no
>>> output to
>>> > > any
>>> > > > display (HDMI/DP/DVI, even VGA).
>>> > > >
>>> > > > But this patch doesn't touch intel_virt_detect_pch method, when y=
ou
>>> > > > passthrough iGPU to a virtual machine.
>>> > > > So, virtual PCH incorrectly detects as Cannon Lake and you have no
>>> output
>>> > > > to a physical display with i915 driver:
>>> > > >
>>> > > > [    2.933139] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i91=
5]]
>>> > > > Assuming PCH ID a300
>>> > > > [    2.933308] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Fou=
nd
>>> > > Cannon
>>> > > > Lake PCH (CNP)
>>> > > >
>>> > > >
>>> > > > The bug is on line 173 in drivers/gpu/drm/i915/soc/intel_pch.c in
>>> method
>>> > > > intel_virt_detect_pch:
>>> > > >
>>> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>>> > > >
>>> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
>>> > > >
>>> > > > It must be:
>>> > > >
>>> > > > else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv) ||
>>> > > > IS_GEN9_BC(dev_priv))
>>> > > >
>>> > > > id =3D INTEL_PCH_TGP_DEVICE_ID_TYPE;
>>> > > >
>>> > > >
>>> > > > After that small change you get correct detection of PCH and have
>>> output
>>> > > to
>>> > > > a physical display in VM with passthrough iGPU:
>>> > > >
>>> > > > [   16.139809] i915 0000:00:02.0: [drm:intel_virt_detect_pch [i91=
5]]
>>> > > > Assuming PCH ID a080
>>> > > > [   16.261151] i915 0000:00:02.0: [drm:intel_pch_type [i915]] Fou=
nd
>>> Tiger
>>> > > > Lake LP PCH
>>> > > >
>>> > > >
>>> > > > All kernel versions in any distro since 2021 are affected by this
>>> small
>>> > > bug.
>>> > > > The patch for i915 module of the actual kernel version is in
>>> attachment.
>>> > >
>>> > > You fix one CPU+PCH combo, but break the other. I don't think there=
 is
>>> > > any way to handle this mess in intel_virt_detect_pch(). The best th=
ing
>>> > > would be if the virtual machine would advertise the correct ISA/LPC
>>> > > bridge, then the heiristic is not even invoked. If that's not possi=
ble
>>> > > for some reason then I suppose we'd need a modparam/etc. so the user
>>> > > can specify the PCH ID by hand.
>>> > >
>>> > > --
>>> > > Ville Syrj=C3=A4l=C3=A4
>>> > > Intel
>>> > >
>>> >
>>> >
>>> > --
>>> > Best regards, Andrey Toloknev
>>>
>>>
>>>
>>> --
>>> Ville Syrj=C3=A4l=C3=A4
>>> Intel
>>>
>>
>>
>> --
>> Best regards, Andrey Toloknev
>>

--=20
Jani Nikula, Intel
