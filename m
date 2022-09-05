Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3BA5ACE84
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 11:11:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CBA10E218;
	Mon,  5 Sep 2022 09:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24BBD10E218
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 09:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662369095; x=1693905095;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=0CcxFuuyILdqb0jXsDg3at0unjew2vU1/bmRT8y8JOs=;
 b=CMnD7ALgLIbgbzgymyuHAnjKDppH59TXoZl28alG1LyCzSTzGkm2XFJN
 ql4rE+XxyAqcVHDEEdjVeXd0S3nYcjtiuZFrF+Gwt6zsdz6xcRyQ/edrV
 mRZJtTVcajBm0IoRVb5T9N7FFXGX9beg6ktg9a78IO9mS+yBGhSfMdi0+
 Nc1V0kaADciWWxKudd+cW16Nf01KwT4wY1lndHDkeEr2di8XGrg4bjWfb
 iRsw4Qi/1TS/YjRqqlBwRj736JFPJE/AG37nBdoquEw/CFPGdcNeqyltq
 bVMgj+s5ti6CJS93NOLCJjqTWqmvCwxzjSSrgbVPp0AA7RL34/rErDFL/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="297657026"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="297657026"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 02:11:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="590845956"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 02:11:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220902235302.1112388-4-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
 <20220902235302.1112388-4-ashutosh.dixit@intel.com>
Date: Mon, 05 Sep 2022 12:11:16 +0300
Message-ID: <87o7vub2yz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915/xelpmp: Expose media as
 another GT
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 02 Sep 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
>
> Xe_LPM+ platforms have "standalone media."  I.e., the media unit is
> designed as an additional GT with its own engine list, GuC, forcewake,
> etc.  Let's allow platforms to include media GTs in their device info.
>
> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile            |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt.c       | 12 ++++++--
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h  |  8 +++++
>  drivers/gpu/drm/i915/gt/intel_sa_media.c | 39 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_sa_media.h | 15 +++++++++
>  drivers/gpu/drm/i915/i915_pci.c          | 15 +++++++++
>  drivers/gpu/drm/i915/intel_device_info.h |  5 ++-
>  drivers/gpu/drm/i915/intel_uncore.c      | 16 ++++++++--
>  drivers/gpu/drm/i915/intel_uncore.h      | 20 ++++++++++--
>  9 files changed, 123 insertions(+), 8 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.c
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_sa_media.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 522ef9b4aff3..e83e4cd46968 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -123,6 +123,7 @@ gt-y +=3D \
>  	gt/intel_ring.o \
>  	gt/intel_ring_submission.o \
>  	gt/intel_rps.o \
> +	gt/intel_sa_media.o \
>  	gt/intel_sseu.o \
>  	gt/intel_sseu_debugfs.o \
>  	gt/intel_timeline.o \
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt=
/intel_gt.c
> index 57a6488c0e14..bfe77d01f747 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -776,10 +776,15 @@ void intel_gt_driver_late_release_all(struct drm_i9=
15_private *i915)
>  	}
>  }
>=20=20
> -static int intel_gt_tile_setup(struct intel_gt *gt, phys_addr_t phys_add=
r)
> +static int intel_gt_tile_setup(struct intel_gt *gt,
> +			       phys_addr_t phys_addr,
> +			       u32 gsi_offset)
>  {
>  	int ret;
>=20=20
> +	/* GSI offset is only applicable for media GTs */
> +	drm_WARN_ON(&gt->i915->drm, gsi_offset);
> +
>  	if (!gt_is_root(gt)) {
>  		struct intel_uncore_mmio_debug *mmio_debug;
>  		struct intel_uncore *uncore;
> @@ -840,7 +845,7 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
>  	gt->info.engine_mask =3D RUNTIME_INFO(i915)->platform_engine_mask;
>=20=20
>  	drm_dbg(&i915->drm, "Setting up %s\n", gt->name);
> -	ret =3D intel_gt_tile_setup(gt, phys_addr);
> +	ret =3D intel_gt_tile_setup(gt, phys_addr, 0);
>  	if (ret)
>  		return ret;
>=20=20
> @@ -873,7 +878,8 @@ int intel_gt_probe_all(struct drm_i915_private *i915)
>  			goto err;
>  		}
>=20=20
> -		ret =3D gtdef->setup(gt, phys_addr + gtdef->mapping_base);
> +		ret =3D gtdef->setup(gt, phys_addr + gtdef->mapping_base,
> +				   gtdef->gsi_offset);
>  		if (ret)
>  			goto err;
>=20=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i9=
15/gt/intel_gt_regs.h
> index d414785003cc..fb2c56777480 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1578,4 +1578,12 @@
>=20=20
>  #define GEN12_SFC_DONE(n)			_MMIO(0x1cc000 + (n) * 0x1000)
>=20=20
> +/*
> + * Standalone Media's non-engine GT registers are located at their regul=
ar GT
> + * offsets plus 0x380000.  This extra offset is stored inside the intel_=
uncore
> + * structure so that the existing code can be used for both GTs without
> + * modification.
> + */
> +#define MTL_MEDIA_GSI_BASE			0x380000
> +
>  #endif /* __INTEL_GT_REGS__ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.c b/drivers/gpu/drm/i=
915/gt/intel_sa_media.c
> new file mode 100644
> index 000000000000..8c5c519457cc
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_sa_media.c
> @@ -0,0 +1,39 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +
> +#include <drm/drm_managed.h>
> +
> +#include "i915_drv.h"
> +#include "gt/intel_gt.h"
> +#include "gt/intel_sa_media.h"
> +
> +int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
> +			   u32 gsi_offset)
> +{
> +	struct drm_i915_private *i915 =3D gt->i915;
> +	struct intel_uncore *uncore;
> +
> +	uncore =3D drmm_kzalloc(&i915->drm, sizeof(*uncore), GFP_KERNEL);
> +	if (!uncore)
> +		return -ENOMEM;
> +
> +	uncore->gsi_offset =3D gsi_offset;
> +
> +	intel_gt_common_init_early(gt);
> +	intel_uncore_init_early(uncore, gt);
> +
> +	/*
> +	 * Standalone media shares the general MMIO space with the primary
> +	 * GT.  We'll re-use the primary GT's mapping.
> +	 */
> +	uncore->regs =3D i915->uncore.regs;
> +	if (drm_WARN_ON(&i915->drm, uncore->regs =3D=3D NULL))
> +		return -EIO;
> +
> +	gt->uncore =3D uncore;
> +	gt->phys_addr =3D phys_addr;
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_sa_media.h b/drivers/gpu/drm/i=
915/gt/intel_sa_media.h
> new file mode 100644
> index 000000000000..3afb310de932
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/intel_sa_media.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2021 Intel Corporation
> + */
> +#ifndef __INTEL_SA_MEDIA__
> +#define __INTEL_SA_MEDIA__
> +
> +#include <linux/types.h>
> +
> +struct intel_gt;
> +
> +int intel_sa_mediagt_setup(struct intel_gt *gt, phys_addr_t phys_addr,
> +			   u32 gsi_offset);
> +
> +#endif /* __INTEL_SA_MEDIA_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 26b25d9434d6..18d3722331e4 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -26,6 +26,9 @@
>  #include <drm/drm_drv.h>
>  #include <drm/i915_pciids.h>
>=20=20
> +#include "gt/intel_gt_regs.h"
> +#include "gt/intel_sa_media.h"
> +
>  #include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_pci.h"
> @@ -1115,6 +1118,17 @@ static const struct intel_device_info pvc_info =3D=
 {
>  	.display.has_cdclk_crawl =3D 1, \
>  	.__runtime.fbc_mask =3D BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
>=20=20
> +static const struct intel_gt_definition xelpmp_extra_gt[] =3D {
> +	{
> +		.type =3D GT_MEDIA,
> +		.name =3D "Standalone Media GT",
> +		.setup =3D intel_sa_mediagt_setup,
> +		.gsi_offset =3D MTL_MEDIA_GSI_BASE,
> +		.engine_mask =3D BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> +	},

Whoa. This would be the first time that we'd be adding function pointers
in device info to set up stuff. I don't think we should start now. Just
add the flags needed, and use that to call the appropriate function
within gt.

> +	{}
> +};
> +
>  __maybe_unused
>  static const struct intel_device_info mtl_info =3D {
>  	XE_HP_FEATURES,
> @@ -1128,6 +1142,7 @@ static const struct intel_device_info mtl_info =3D {
>  	.media.ver =3D 13,
>  	PLATFORM(INTEL_METEORLAKE),
>  	.display.has_modular_fia =3D 1,
> +	.extra_gt_list =3D xelpmp_extra_gt,
>  	.has_flat_ccs =3D 0,
>  	.has_snoop =3D 1,
>  	.__runtime.memory_regions =3D REGION_SMEM | REGION_STOLEN_LMEM,
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i=
915/intel_device_info.h
> index b408ce384cd7..7b6d5341b34b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -248,14 +248,17 @@ struct intel_runtime_info {
>  enum intel_gt_type {
>  	GT_PRIMARY,
>  	GT_TILE,
> +	GT_MEDIA,
>  };
>=20=20
>  struct intel_gt_definition {
>  	enum intel_gt_type type;
>  	char *name;
>  	int (*setup)(struct intel_gt *gt,
> -		     phys_addr_t phys_addr);
> +		     phys_addr_t phys_addr,
> +		     u32 gsi_offset);
>  	u32 mapping_base;
> +	u32 gsi_offset;
>  	intel_engine_mask_t engine_mask;
>  };

I think gt definition belongs in gt.

BR,
Jani.


>=20=20
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/i=
ntel_uncore.c
> index 9b81b2543ce2..faec6c1aad66 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -1771,10 +1771,15 @@ __gen2_read(64)
>  #undef GEN2_READ_FOOTER
>  #undef GEN2_READ_HEADER
>=20=20
> +#define IS_GSI_REG(reg) ((reg) < 0x40000)
> +
>  #define GEN6_READ_HEADER(x) \
> -	u32 offset =3D i915_mmio_reg_offset(reg); \
> +	u32 offset; \
>  	unsigned long irqflags; \
>  	u##x val =3D 0; \
> +	if (IS_GSI_REG(reg.reg)) \
> +		reg.reg +=3D uncore->gsi_offset; \
> +	offset =3D i915_mmio_reg_offset(reg); \
>  	assert_rpm_wakelock_held(uncore->rpm); \
>  	spin_lock_irqsave(&uncore->lock, irqflags); \
>  	unclaimed_reg_debug(uncore, reg, true, true)
> @@ -1876,8 +1881,11 @@ __gen2_write(32)
>  #undef GEN2_WRITE_HEADER
>=20=20
>  #define GEN6_WRITE_HEADER \
> -	u32 offset =3D i915_mmio_reg_offset(reg); \
> +	u32 offset; \
>  	unsigned long irqflags; \
> +	if (IS_GSI_REG(reg.reg)) \
> +		reg.reg +=3D uncore->gsi_offset; \
> +	offset =3D i915_mmio_reg_offset(reg); \
>  	trace_i915_reg_rw(true, reg, val, sizeof(val), trace); \
>  	assert_rpm_wakelock_held(uncore->rpm); \
>  	spin_lock_irqsave(&uncore->lock, irqflags); \
> @@ -2256,6 +2264,10 @@ int intel_uncore_setup_mmio(struct intel_uncore *u=
ncore, phys_addr_t phys_addr)
>=20=20
>  void intel_uncore_cleanup_mmio(struct intel_uncore *uncore)
>  {
> +	/* The media GT re-uses the primary GT's register mapping */
> +	if (uncore->gt->type =3D=3D GT_MEDIA)
> +		return;
> +
>  	iounmap(uncore->regs);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/i=
ntel_uncore.h
> index b1fa912a65e7..b25efdd9560e 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -135,6 +135,16 @@ struct intel_uncore {
>=20=20
>  	spinlock_t lock; /** lock is also taken in irq contexts. */
>=20=20
> +	/*
> +	 * Do we need to apply an additional offset to reach the beginning
> +	 * of the basic non-engine GT registers (referred to as "GSI" on
> +	 * newer platforms, or "GT block" on older platforms)?  If so, we'll
> +	 * track that here and apply it transparently to registers in the
> +	 * appropriate range to maintain compatibility with our existing
> +	 * register definitions and GT code.
> +	 */
> +	u32 gsi_offset;
> +
>  	unsigned int flags;
>  #define UNCORE_HAS_FORCEWAKE		BIT(0)
>  #define UNCORE_HAS_FPGA_DBG_UNCLAIMED	BIT(1)
> @@ -299,14 +309,20 @@ intel_wait_for_register_fw(struct intel_uncore *unc=
ore,
>  static inline u##x__ __raw_uncore_read##x__(const struct intel_uncore *u=
ncore, \
>  					    i915_reg_t reg) \
>  { \
> -	return read##s__(uncore->regs + i915_mmio_reg_offset(reg)); \
> +	u32 offset =3D i915_mmio_reg_offset(reg); \
> +	if (offset < 0x40000) \
> +		offset +=3D uncore->gsi_offset; \
> +	return read##s__(uncore->regs + offset); \
>  }
>=20=20
>  #define __raw_write(x__, s__) \
>  static inline void __raw_uncore_write##x__(const struct intel_uncore *un=
core, \
>  					   i915_reg_t reg, u##x__ val) \
>  { \
> -	write##s__(val, uncore->regs + i915_mmio_reg_offset(reg)); \
> +	u32 offset =3D i915_mmio_reg_offset(reg); \
> +	if (offset < 0x40000) \
> +		offset +=3D uncore->gsi_offset; \
> +	write##s__(val, uncore->regs + offset); \
>  }
>  __raw_read(8, b)
>  __raw_read(16, w)

--=20
Jani Nikula, Intel Open Source Graphics Center
