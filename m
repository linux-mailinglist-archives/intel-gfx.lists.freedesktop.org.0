Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CD63C75C9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 19:33:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93ECC6E101;
	Tue, 13 Jul 2021 17:33:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6DA6E101
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jul 2021 17:33:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="210258277"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="210258277"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 10:33:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; d="scan'208";a="562175938"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 13 Jul 2021 10:33:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 10:33:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 10:33:08 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2242.010;
 Tue, 13 Jul 2021 10:33:08 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 10/12] drm/i915/dg1: Use revid->stepping tables
Thread-Index: AQHXeAymRVjS+KrsLkmjkfpwHv8gsKtBKgFw
Date: Tue, 13 Jul 2021 17:33:07 +0000
Message-ID: <6ffc668da7444ee4bc0ece27f7f46d9a@intel.com>
References: <5cd1959dbd4446c5a9ff4c78d9c3fa40@intel.com>
 <20210713172927.3336150-1-matthew.d.roper@intel.com>
In-Reply-To: <20210713172927.3336150-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 10/12] drm/i915/dg1: Use revid->stepping
 tables
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, July 13, 2021 10:29 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [PATCH v3 10/12] drm/i915/dg1: Use revid->stepping tables
> 
> Switch DG1 to use a revid->stepping table as we're trying to do on all
> platforms going forward.
> 
> This removes the last use of IS_REVID() and REVID_FOREVER, so remove
> those now-unused macros as well to prevent their accidental use on future
> platforms.
> 
> v2:
>  - Use COMMON_STEPPING() macro in table.  (Anusha)
> 
> Bspec: 44463
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_power.c |  2 +-
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c    | 10 +++++-----
>  drivers/gpu/drm/i915/i915_drv.h                | 18 ++++--------------
>  drivers/gpu/drm/i915/intel_pm.c                |  2 +-
>  drivers/gpu/drm/i915/intel_step.c              |  8 ++++++++
>  6 files changed, 20 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 285380079aab..975a7e25cea5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5799,7 +5799,7 @@ static void tgl_bw_buddy_init(struct
> drm_i915_private *dev_priv)
>  	int config, i;
> 
>  	if (IS_ALDERLAKE_S(dev_priv) ||
> -	    IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0) ||
> +	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A0) ||
>  	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  		/* Wa_1409767108:tgl,dg1,adl-s */
>  		table = wa_1409767108_buddy_page_masks; diff --git
> a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 1f43aba2e9e2..50d11a84e7a9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -157,7 +157,7 @@ intel_gt_setup_fake_lmem(struct intel_gt *gt)  static
> bool get_legacy_lowmem_region(struct intel_uncore *uncore,
>  				     u64 *start, u32 *size)
>  {
> -	if (!IS_DG1_REVID(uncore->i915, DG1_REVID_A0, DG1_REVID_B0))
> +	if (!IS_DG1_GT_STEP(uncore->i915, STEP_A0, STEP_B0))
>  		return false;
> 
>  	*start = 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4c0c15bbdac2..62321e9149db 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1111,7 +1111,7 @@ dg1_gt_workarounds_init(struct drm_i915_private
> *i915, struct i915_wa_list *wal)
>  	gen12_gt_workarounds_init(i915, wal);
> 
>  	/* Wa_1607087056:dg1 */
> -	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0))
> +	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0))
>  		wa_write_or(wal,
>  			    SLICE_UNIT_LEVEL_CLKGATE,
>  			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS); @@ -
> 1522,7 +1522,7 @@ static void dg1_whitelist_build(struct intel_engine_cs
> *engine)
>  	tgl_whitelist_build(engine);
> 
>  	/* GEN:BUG:1409280441:dg1 */
> -	if (IS_DG1_REVID(engine->i915, DG1_REVID_A0, DG1_REVID_A0) &&
> +	if (IS_DG1_GT_STEP(engine->i915, STEP_A0, STEP_A0) &&
>  	    (engine->class == RENDER_CLASS ||
>  	     engine->class == COPY_ENGINE_CLASS))
>  		whitelist_reg_ext(w, RING_ID(engine->mmio_base), @@ -
> 1592,7 +1592,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine,
> struct i915_wa_list *wal)  {
>  	struct drm_i915_private *i915 = engine->i915;
> 
> -	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> +	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
>  	    IS_TGL_UY_GT_STEP(i915, STEP_A0, STEP_A0)) {
>  		/*
>  		 * Wa_1607138336:tgl[a0],dg1[a0]
> @@ -1638,7 +1638,7 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
>  	}
> 
>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> -	    IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> +	    IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
>  		wa_masked_en(wal, GEN7_ROW_CHICKEN2,
> @@ -1652,7 +1652,7 @@ rcs_engine_wa_init(struct intel_engine_cs
> *engine, struct i915_wa_list *wal)
>  	}
> 
> 
> -	if (IS_DG1_REVID(i915, DG1_REVID_A0, DG1_REVID_A0) ||
> +	if (IS_DG1_GT_STEP(i915, STEP_A0, STEP_A0) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/*
>  		 * Wa_1607030317:tgl
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index 9195131cf90f..d462b9434541
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1323,19 +1323,10 @@ static inline struct drm_i915_private
> *pdev_to_i915(struct pci_dev *pdev)  #define IS_DISPLAY_VER(i915, from,
> until) \
>  	(DISPLAY_VER(i915) >= (from) && DISPLAY_VER(i915) <= (until))
> 
> -#define REVID_FOREVER		0xff
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)-
> >revision)
> 
>  #define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
> 
> -/*
> - * Return true if revision is in range [since,until] inclusive.
> - *
> - * Use 0 for open-ended since, and REVID_FOREVER for open-ended until.
> - */
> -#define IS_REVID(p, since, until) \
> -	(INTEL_REVID(p) >= (since) && INTEL_REVID(p) <= (until))
> -
>  #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)-
> >step.display_step)
>  #define INTEL_GT_STEP(__i915) (RUNTIME_INFO(__i915)->step.gt_step)
> 
> @@ -1552,11 +1543,10 @@ IS_SUBPLATFORM(const struct drm_i915_private
> *i915,  #define IS_RKL_DISPLAY_STEP(p, since, until) \
>  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
> 
> -#define DG1_REVID_A0		0x0
> -#define DG1_REVID_B0		0x1
> -
> -#define IS_DG1_REVID(p, since, until) \
> -	(IS_DG1(p) && IS_REVID(p, since, until))
> +#define IS_DG1_GT_STEP(p, since, until) \
> +	(IS_DG1(p) && IS_GT_STEP(p, since, until)) #define
> +IS_DG1_DISPLAY_STEP(p, since, until) \
> +	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
> 
>  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_S(__i915) && \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c
> b/drivers/gpu/drm/i915/intel_pm.c index 5fdb96e7d266..b933c9dc823a
> 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7390,7 +7390,7 @@ static void dg1_init_clock_gating(struct
> drm_i915_private *dev_priv)
>  	gen12lp_init_clock_gating(dev_priv);
> 
>  	/* Wa_1409836686:dg1[a0] */
> -	if (IS_DG1_REVID(dev_priv, DG1_REVID_A0, DG1_REVID_A0))
> +	if (IS_DG1_GT_STEP(dev_priv, STEP_A0, STEP_A0))
>  		intel_uncore_write(&dev_priv->uncore,
> GEN9_CLKGATE_DIS_3, intel_uncore_read(&dev_priv->uncore,
> GEN9_CLKGATE_DIS_3) |
>  			   DPT_GATING_DIS);
>  }
> diff --git a/drivers/gpu/drm/i915/intel_step.c
> b/drivers/gpu/drm/i915/intel_step.c
> index a6b2690f3947..c8f05ff6bfe5 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -81,6 +81,11 @@ static const struct intel_step_info rkl_revids[] = {
>  	[4] = { COMMON_STEPPING(C0) },
>  };
> 
> +static const struct intel_step_info dg1_revids[] = {
> +	[0] = { COMMON_STEPPING(A0) },
> +	[1] = { COMMON_STEPPING(B0) },
> +};
> +
>  static const struct intel_step_info adls_revids[] = {
>  	[0x0] = { .gt_step = STEP_A0, .display_step = STEP_A0 },
>  	[0x1] = { .gt_step = STEP_A0, .display_step = STEP_A2 }, @@ -109,6
> +114,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ALDERLAKE_S(i915)) {
>  		revids = adls_revids;
>  		size = ARRAY_SIZE(adls_revids);
> +	} else if (IS_DG1(i915)) {
> +		revids = dg1_revids;
> +		size = ARRAY_SIZE(dg1_revids);
>  	} else if (IS_ROCKETLAKE(i915)) {
>  		revids = rkl_revids;
>  		size = ARRAY_SIZE(rkl_revids);
> --
> 2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
