Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7ACB5B94B2
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 08:47:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2600510E14E;
	Thu, 15 Sep 2022 06:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F62010E14E
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 06:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663224447; x=1694760447;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:to:cc:subject:from:message-id:date;
 bh=gt9peN0n8FcTJ3F+aL1KTi9yl+usXfFDZ1QwBwT4eJw=;
 b=QZBvagZxlcHJG//YW9NMWu4JRQVisY7tV0NrSlHGQMCHelmdPe85FHr/
 0G7qvTSxHl52zQhJfmErEy3oCM/wiPcKhdgtCpFfaSpwQrwyBHIQUKr6U
 dkCO9NClH6a/MdSrdl8K0GcUbwhR1i2co3dkIuow8KfDcay1M5YyxdDBc
 Ihb+fAXlCK5o3gHV4Hzba1Tx3nIYEYIhvC2MHtYkFlklAi69tAadEXc+K
 aAh1LcaNyDRFzT9eIIDqSFHAF+N43pcEDEQzan9iYAvYFBuM5tDPSNiui
 wOJ1hTZv+5hLLG9VC0TfdrMs0JtH6dvfbxUgubK9NjkFkhU/aME+ZQzzM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="279014817"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="279014817"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 23:47:26 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="647708974"
Received: from fbielich-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.0.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 23:47:23 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20220914161329.2604-1-anshuman.gupta@intel.com>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
 <20220914161329.2604-1-anshuman.gupta@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <166322444054.4263.583762501856107655@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 15 Sep 2022 09:47:20 +0300
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: Matthew Auld <matthew.auld@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On the patch subject, could we aim to be a bit more readable and
concise. Something like:

"drm/i915: Temporarily disable RPM on DG1/DG2"

The patch title definitely should not have a FIXME in it if we're going
to merge it in that form.

There's nothing to be fixed about the patch itself, we are applying a
workaround until we've fixed the rootcause, which is business as usual.

Regards, Joonas

Quoting Anshuman Gupta (2022-09-14 19:13:29)
> DG1 and DG2 has lmem, and cpu can access the lmem objects
> via mmap and i915 internal i915_gem_object_pin_map() for
> i915 own usages. Both of these methods has pre-requisite
> requirement to keep GFX PCI endpoint in D0 for a supported
> iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
>=20
> Both DG1/DG2 have a hardware bug that violates the PCIe specs
> and support the iomem read write transaction over PCIe bus despite
> endpoint is D3 state.
> Due to above H/W bug, we had never observed any issue with i915 runtime
> PM versus lmem access.
> But this issue becomes visible when PCIe gfx endpoint's upstream
> bridge enters to D3, at this point any lmem read/write access will be
> returned as unsupported request. But again this issue is not observed
> on every platform because it has been observed on few host machines
> DG1/DG2 endpoint's upstream bridge does not bind with pcieport driver.
> which really disables the PCIe poer power savings and leaves the bridge
> at D0 state.
>=20
> TODO:
> With respect to i915_gem_object_pin_map(), every caller
> has to grab a wakeref if gem object lies in lmem.
>=20
> Till we fix all issues related to runtime PM, we need
> to keep runtime PM disable on both DG1 and DG2.
>=20
> V2:
> - Keep a smaller FIXME code comment for both DG1/DG2.
>=20
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 77e7df21f539..4a7d226b074f 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -931,6 +931,14 @@ static const struct intel_device_info dg1_info =3D {
>                 BIT(VCS0) | BIT(VCS2),
>         /* Wa_16011227922 */
>         .__runtime.ppgtt_size =3D 47,
> +
> +       /*
> +        *  FIXME: Temporary hammer to disable rpm.
> +        *  As per PCIe specs 5.3.1.4.1, all iomem read write request ove=
r a PCIe
> +        *  function will be unsupported in case PCIe endpoint function i=
s in D3.
> +        *  Let's disable i915 rpm till we fix all known issue with lmem =
access in D3.
> +        */
> +       .has_runtime_pm =3D 0,
>  };
> =20
>  static const struct intel_device_info adl_s_info =3D {
> @@ -1076,6 +1084,13 @@ static const struct intel_device_info dg2_info =3D=
 {
>         XE_LPD_FEATURES,
>         .__runtime.cpu_transcoder_mask =3D BIT(TRANSCODER_A) | BIT(TRANSC=
ODER_B) |
>                                BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +       /*
> +        *  FIXME: Temporary hammer to disable rpm.
> +        *  As per PCIe specs 5.3.1.4.1, all iomem read write request ove=
r a PCIe
> +        *  function will be unsupported in case PCIe endpoint function i=
s in D3.
> +        *  Let's disable i915 rpm till we fix all known issue with lmem =
access in D3.
> +        */
> +       .has_runtime_pm =3D 0,
>         .require_force_probe =3D 1,
>  };
> =20
> --=20
> 2.26.2
>=20
