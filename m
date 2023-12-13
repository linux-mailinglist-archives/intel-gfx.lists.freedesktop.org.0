Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0DD810D0E
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 10:09:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A077910E758;
	Wed, 13 Dec 2023 09:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B3410E758
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 09:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702458585; x=1733994585;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:from:to:subject:message-id:date;
 bh=ejcRpnR4gPjnCsNhz6aplPrVUKHZJbcYBP3tvLD3yrA=;
 b=cmHTTvsRCuwd2SO7FU9S8VNvAw/YBVlIM9cLNlM3GAzdUkI62zdze9Lm
 HAKrSNxrtxLnFcGhgBouR/awm0IrJjV5cBEkYZHczt7C8LCt09kNveYja
 cKl/15mlsrXFoZbw5EEi6ezoe3oUmFtf1gaIeaLwlIIL2H3A+g+6cNs/I
 0kIcfZGlH2QqG263YHPOyPyMxBRJvK1P/OUZ7ricA44i6LCJrgcOhjT+y
 udk8WY+PGzM+g5xqsDEn7gQO7MRlG1kvqQ4pz/eQmt/g2GJbaMnSPhME6
 xTSEs9M2IEnDOqUyQVQURTFFW483Dm1cwCpHavUHRQH8DZcAene+7WnQv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="394688312"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="394688312"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:09:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767146160"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767146160"
Received: from nwhinnet-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.28.58])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 01:09:41 -0800
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20231213004237.20375-5-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-5-ville.syrjala@linux.intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <170245857881.24445.6579832987498048224@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 13 Dec 2023 11:09:38 +0200
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

Quoting Ville Syrjala (2023-12-13 02:42:29)
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> On MTL accessing stolen memory via the BARs is somehow borked,
> and it can hang the machine. As a workaround let's bypass the
> BARs and just go straight to DSMBASE/GSMBASE instead.
>=20
> Note that on every other platform this itself would hang the
> machine, but on MTL the system firmware is expected to relax
> the access permission guarding stolen memory to enable this
> workaround, and thus direct CPU accesses should be fine.

Shouldn't this have a proper workaround number assigned?

Regards, Joonas

>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
>  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
>  2 files changed, 22 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm=
/i915/gem/i915_gem_stolen.c
> index ee237043c302..252fe5cd6ede 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *=
i915, u16 type,
>                 dsm_size =3D ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
>         }
> =20
> -       if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> +       if (IS_METEORLAKE(i915)) {
> +               /*
> +                * Workaround: access via BAR can hang MTL, go directly t=
o DSM.
> +                *
> +                * Normally this would not work but on MTL the system fir=
mware
> +                * should have relaxed the access permissions sufficientl=
y.
> +                */
> +               io_start =3D intel_uncore_read64(uncore, GEN12_DSMBASE) &=
 GEN12_BDSM_MASK;
> +               io_size =3D dsm_size;
> +       } else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>                 io_start =3D 0;
>                 io_size =3D 0;
>         } else {
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index 21a7e3191c18..ab71d74ec426 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -24,6 +24,7 @@
>  #include "intel_ring.h"
>  #include "i915_drv.h"
>  #include "i915_pci.h"
> +#include "i915_reg.h"
>  #include "i915_request.h"
>  #include "i915_scatterlist.h"
>  #include "i915_utils.h"
> @@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(struct drm=
_i915_private *i915)
>  static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>  {
>         struct drm_i915_private *i915 =3D ggtt->vm.i915;
> +       struct intel_uncore *uncore =3D ggtt->vm.gt->uncore;
>         struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
>         phys_addr_t phys_addr;
>         u32 pte_flags;
>         int ret;
> =20
>         GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) !=3D gen6_g=
ttmmadr_size(i915));
> -       phys_addr =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_=
gttadr_offset(i915);
> +       /*
> +        * Workaround: access via BAR can hang MTL, go directly to GSM.
> +        *
> +        * Normally this would not work but on MTL the system firmware
> +        * should have relaxed the access permissions sufficiently.
> +        */
> +       if (IS_METEORLAKE(i915))
> +               phys_addr =3D intel_uncore_read64(uncore, GEN12_GSMBASE) =
& GEN12_BDSM_MASK;
> +       else
> +               phys_addr =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR)=
 + gen6_gttadr_offset(i915);
> =20
>         if (needs_wc_ggtt_mapping(i915))
>                 ggtt->gsm =3D ioremap_wc(phys_addr, size);
> --=20
> 2.41.0
>=20
