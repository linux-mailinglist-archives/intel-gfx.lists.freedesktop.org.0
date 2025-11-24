Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21527C80334
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 12:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4CD910E21F;
	Mon, 24 Nov 2025 11:27:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iCnOvMTB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F30210E224;
 Mon, 24 Nov 2025 11:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763983673; x=1795519673;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=1hZoxVmO+RWG7iPACSKTSSKq4FkXB+wfaUmvAtIZ1J4=;
 b=iCnOvMTBTPFmW0D2Hjh1IPFp1Fd9amISG0qkw/VE5thTysSkdmB/joI7
 /SzgctoaO0OBUphQLoiM86N/bPPaY8oegb3Hy30zjlZwrob5OjWf1ejd+
 KQNYbkURkG05ydMyO7ak6T8K93JvMjBBFHDOhsg/9ADD8Sg5TPW2n7f6F
 ykEZl2h6qyZDVpOl9PHzEzHNcdYnU9+PFy20zeBUWMp9T/i0DNGOTPnMd
 LKfa++9W5tgwOMAsG/JwnnRHoKhJXmErEbmMmBbB+2UH8pCMjgQgWauFq
 pkZK2hhfM1tkdmt5hQg767F9iIxUZxJU2pN2gvu6nUuTuYpWVQQvMMPsg g==;
X-CSE-ConnectionGUID: 6XqtyyLMRW2uAbkbY3lMsg==
X-CSE-MsgGUID: By8AeAaqSqqM+1qC+1jIEw==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="69834215"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="69834215"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 03:27:52 -0800
X-CSE-ConnectionGUID: RPo7zffmRyGEVEtWisL3eg==
X-CSE-MsgGUID: ODiaBaBrSkKxU5vw8HSI1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="196477409"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 03:27:48 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 gustavo.sousa@intel.com, ville.syrjala@intel.com
Subject: Re: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
In-Reply-To: <20251123160127.142599-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
 <20251123160127.142599-3-vinod.govindapillai@intel.com>
Date: Mon, 24 Nov 2025 13:27:45 +0200
Message-ID: <6cc198e5fcb237dd7e97baa65efc997001ce0079@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Sun, 23 Nov 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> One of the FBC instances can utilize the reserved area of SoC
> level cache for the fbc transactions to benefit reduced memory
> system power especially in idle scenarios. Reserved area of the
> system cache can be assigned to an fbc instance by configuring
> the cacheability configuration register with offset of the
> compressed frame buffer in stolen memoty of that fbc. There is
> a limit to this reserved area which is programmable and for
> xe3p_lpd the limit is defined as 2MB.
>
> v2: - better to track fbc sys cache usage from intel_display level,
>       sanitize the cacheability config register on probe (Matt)
>     - limit this for integrated graphics solutions, confirmed that
>       no default value set for cache range by hw (Gustavo)
>
> v3: - changes related to the use of fbc substruct in intel_display
>     - use intel_de_write() instead of intel_rmw() by hardcoding the
>       default value fields
>

I think overall the implementation feels a bit overwhelming. I mean
there are so many functions, so many checks, to the point of being
excessive.

Some comments inline.

> Bspec: 68881, 74722
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  3 +
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 93 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_fbc_regs.h | 10 ++
>  4 files changed, 107 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 58325f530670..f557c9293d33 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -400,6 +400,9 @@ struct intel_display {
>  
>  	struct {
>  		struct intel_fbc *instances[I915_MAX_FBCS];
> +
> +		/* xe3p_lpd+ : FBC instance utlizing the system cache */

Please no space before :, *utilizing

> +		enum intel_fbc_id sys_cache_id;
>  	} fbc;
>  
>  	struct {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index b559ef43d547..b74cb69ccc85 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -173,6 +173,7 @@ struct intel_display_platforms {
>  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >= 12 && HAS_DSC(__display))
>  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask != 0)
>  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >= 30)
> +#define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >= 35 && !(__display)->platform.dgfx)
>  #define HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
>  #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >= 3)
>  #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index dcdfcff80de3..d7e913792518 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -71,6 +71,10 @@
>  	for_each_fbc_id((__display), (__fbc_id)) \
>  		for_each_if((__fbc) = (__display)->fbc.instances[(__fbc_id)])
>  
> +#define SYS_CACHE_FBC_INSTANCE_NONE			I915_MAX_FBCS
> +#define IS_SYS_CACHE_FBC_INSTANCE_NONE(__display)	((__display)->fbc.sys_cache_id == SYS_CACHE_FBC_INSTANCE_NONE)

The only user of this has !IS_SYS_CACHE_FBC_INSTANCE_NONE(display)
i.e. "if not none".

Would be more useful to check if it's "set" or "valid", and avoid the
double negative. And use a shorter name. Maybe a static inline function.

But I'm not even sure the display->fbc.sys_cache_id needs to be
abstracted away. It's not a complicated thing, and, more importantly,
it's all within the same file. If outside access was needed, yes,
abstract, but here, not convinced.

Maybe:

	if (fbc_sys_cache_id_valid(display->fbc.sys_cache_id))

I also don't think *all* of these functions should be prefixed with
xe3p_lpd_ because that's a monster, and makes all of this difficult to
read.

> +#define IS_SYS_CACHE_FBC_INSTANCE_EQUALS(__display, id)	((__display)->fbc.sys_cache_id == (id))

I think this feels cumbersome. Why not just check

	if (display->fbc.sys_cache_id == id)

inline, and it's obvious?

> +
>  struct intel_fbc_funcs {
>  	void (*activate)(struct intel_fbc *fbc);
>  	void (*deactivate)(struct intel_fbc *fbc);
> @@ -941,6 +945,79 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  		fbc_compressor_clkgate_disable_wa(fbc, true);
>  }
>  
> +static void xe3p_lpd_fbc_set_sys_cache_fbc_id(struct intel_display *display,
> +					      enum intel_fbc_id fbc_id)
> +{
> +	display->fbc.sys_cache_id = fbc_id;
> +}

Again, I'm not sure if this function is really needed. Just inline?

> +
> +static void xe3p_lpd_fbc_commit_sys_cache_usage(struct intel_display *display,
> +						u32 reg)
> +{
> +	intel_de_write(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG, reg);
> +}

Not sure if this is needed. Just inline?

> +
> +static int xe3p_lpd_fbc_get_cache_limit(void)
> +{
> +	/* Default 2MB for xe3p_lpd */
> +	return 2 * 1024 * 1024;
> +}

Ditto. Especially odd how this multiplies and the user the divides by 64
* 1024.

> +
> +static void xe3p_lpd_fbc_clear_sys_cache_usage(struct intel_display *display)
> +{
> +	/* Clear all the fields except the default fields */
> +	u32 default_fields = FBC_SYS_CACHE_READ_ENABLE;
> +
> +	xe3p_lpd_fbc_commit_sys_cache_usage(display, default_fields);
> +
> +	/* Mark that no FBC instance utilize the system cache */
> +	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, SYS_CACHE_FBC_INSTANCE_NONE);
> +}

My point above is that this function only calls wrappers and really does
nothing itself. It's too many layers for a simple thing.

fbc_sys_cache_disable()?

> +
> +static void xe3p_lpd_fbc_set_sys_cache_usage(const struct intel_fbc *fbc)
> +{
> +	struct intel_display *display = fbc->display;
> +	/* limit to be configured to the register in 64k byte chunks */
> +	int range = xe3p_lpd_fbc_get_cache_limit() / (64 * 1024);
> +	/* offset to be configured to the register in 4K byte chunks */
> +	int offset = i915_gem_stolen_node_offset(fbc->compressed_fb) / (4 * 1024);
> +	/* Cache read enable is enabled by default */
> +	u32 usage = FBC_SYS_CACHE_TAG_USE_RES_SPACE |
> +		    FBC_SYS_CACHEABLE_RANGE(range) |
> +		    FBC_SYS_CACHE_START_BASE(offset) |
> +		    FBC_SYS_CACHE_READ_ENABLE;
> +
> +	lockdep_assert_held(&fbc->lock);
> +
> +	xe3p_lpd_fbc_commit_sys_cache_usage(display, usage);
> +
> +	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, fbc->id);
> +}

Ditto.

fbc_sys_cache_enable()?

> +
> +static void xe3p_lpd_fbc_update_sys_cache_usage(const struct intel_fbc *fbc,
> +						bool set)
> +{
> +	struct intel_display *display = fbc->display;
> +
> +	lockdep_assert_held(&fbc->lock);
> +
> +	/* system cache for fbc already reserved */
> +	if (set && !IS_SYS_CACHE_FBC_INSTANCE_NONE(display))
> +		return;
> +
> +	/* cannot clear if "fbc" did not reserve the cache */
> +	if (!set && !IS_SYS_CACHE_FBC_INSTANCE_EQUALS(display, fbc->id))
> +		return;
> +
> +	if (set)
> +		xe3p_lpd_fbc_set_sys_cache_usage(fbc);
> +	else
> +		xe3p_lpd_fbc_clear_sys_cache_usage(display);
> +
> +	drm_dbg_kms(display->drm, "System cacheability usage for FBC[%d] %s\n",
> +		    fbc->id, set ? "configured" : "cleared");
> +}

Most of this function is two separate paths based on the parameter. I
think it would benefit from actually being two separate functions. So
why not just merge this with xe3p_lpd_fbc_set_sys_cache_usage() and
xe3p_lpd_fbc_clear_sys_cache_usage()?

> +
>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>  {
>  	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
> @@ -967,6 +1044,9 @@ void intel_fbc_cleanup(struct intel_display *display)
>  
>  		kfree(fbc);
>  	}
> +
> +	if (HAS_FBC_SYS_CACHE(display))
> +		xe3p_lpd_fbc_clear_sys_cache_usage(display);

I don't think this should check for HAS_FBC_SYS_CACHE(). I think
internally the function being called should check if sys cache has been
set. And make sure it's only set on where it's available.

>  }
>  
>  static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state *plane_state)
> @@ -1780,6 +1860,9 @@ static void __intel_fbc_disable(struct intel_fbc *fbc)
>  
>  	__intel_fbc_cleanup_cfb(fbc);
>  
> +	if (HAS_FBC_SYS_CACHE(display))
> +		xe3p_lpd_fbc_update_sys_cache_usage(fbc, false);
> +

Ditto. I'm also not sure why some places call the version with params,
and some others the version without params.

>  	/* wa_18038517565 Enable DPFC clock gating after FBC disable */
>  	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
>  		fbc_compressor_clkgate_disable_wa(fbc, false);
> @@ -1972,6 +2055,9 @@ static void __intel_fbc_enable(struct intel_atomic_state *state,
>  
>  	intel_fbc_program_workarounds(fbc);
>  	intel_fbc_program_cfb(fbc);
> +
> +	if (HAS_FBC_SYS_CACHE(display))
> +		xe3p_lpd_fbc_update_sys_cache_usage(fbc, true);

xe3p_lpd_fbc_update_sys_cache_usage() is the function that should check
for HAS_FBC_SYS_CACHE() in one place.

Well, maybe it should be renamed fbc_sys_cache_enable().

>  }
>  
>  /**
> @@ -2212,6 +2298,9 @@ void intel_fbc_init(struct intel_display *display)
>  
>  	for_each_fbc_id(display, fbc_id)
>  		display->fbc.instances[fbc_id] = intel_fbc_create(display, fbc_id);
> +
> +	/* Mark that no FBC instance is using the system cache */
> +	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, SYS_CACHE_FBC_INSTANCE_NONE);
>  }
>  
>  /**
> @@ -2231,6 +2320,10 @@ void intel_fbc_sanitize(struct intel_display *display)
>  		if (intel_fbc_hw_is_active(fbc))
>  			intel_fbc_hw_deactivate(fbc);
>  	}
> +
> +	/* Ensure the sys cache usage register gets cleared */
> +	if (HAS_FBC_SYS_CACHE(display))
> +		xe3p_lpd_fbc_clear_sys_cache_usage(display);

Ditto about checking for valid sys cache inside, not
HAS_FBC_SYS_CACHE().

>  }
>  
>  static int intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> index b1d0161a3196..d2d889fa4bed 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
> @@ -126,4 +126,14 @@
>  #define   FBC_REND_NUKE			REG_BIT(2)
>  #define   FBC_REND_CACHE_CLEAN		REG_BIT(1)
>  
> +#define XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG	_MMIO(0x1344E0)
> +#define   FBC_SYS_CACHE_START_BASE_MASK		REG_GENMASK(31, 16)
> +#define   FBC_SYS_CACHE_START_BASE(base)	REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_MASK, (base))
> +#define   FBC_SYS_CACHEABLE_RANGE_MASK		REG_GENMASK(15, 4)
> +#define   FBC_SYS_CACHEABLE_RANGE(range)	REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MASK, (range))
> +#define   FBC_SYS_CACHE_TAG_MASK		REG_GENMASK(3, 2)
> +#define   FBC_SYS_CACHE_TAG_DONT_CACHE		REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
> +#define   FBC_SYS_CACHE_TAG_USE_RES_SPACE	REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 3)
> +#define   FBC_SYS_CACHE_READ_ENABLE		REG_BIT(0)
> +
>  #endif /* __INTEL_FBC_REGS__ */

-- 
Jani Nikula, Intel
