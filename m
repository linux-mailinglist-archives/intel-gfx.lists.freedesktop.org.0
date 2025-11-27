Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91DB7C8E97D
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 14:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F8DE10E716;
	Thu, 27 Nov 2025 13:49:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="isvPvpVu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6851310E716;
 Thu, 27 Nov 2025 13:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764251397; x=1795787397;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qxS3CjsBJdm2BZOjIk7NJ2W6WfQPD0yoSUddi1vFPk4=;
 b=isvPvpVuMZsmx4VLMADJN2BLZpIhVtizf3dVUTy6SSlUC7mtwckuJU+h
 LDxbBgPQJoUYJQ/2KRYzL8geN1hI3INEK0R8y8bfSWsd372qCwGKdH76D
 dDUpuUAJit/Sgo2YBBtYKIuOGFtZgr3eUmcvZfpvXogeDPn8E1IFhh4Li
 lSKV75jyGFWtpCQCT6EOZQG2I2ra1NFMaN9mUOuVFU7NVV9Wy5aNA66q+
 olYZK9C/vS+zutNNTX+iOaU1FTD4YIR1/nSdYuVNbx5taeo0qqfUtfH8Y
 r4+E5v6J3U7MulIWaybleL27/8BvlxDXdMaJ9M2MlfwOZTLxC9bpqrGME Q==;
X-CSE-ConnectionGUID: 99nwUrLcQsy3CtBSbJpKKg==
X-CSE-MsgGUID: QPkb+u7ZR22KBPpRHyu9sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11625"; a="69917699"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="69917699"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 05:49:57 -0800
X-CSE-ConnectionGUID: JfFCViXBSKWMRcqvFUYYjQ==
X-CSE-MsgGUID: nHBBnVZBRVeaT0TuP3Dezg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="224189707"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 05:49:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 2/3] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
In-Reply-To: <5a476e0bbde0e9733f47bd26d068fe78740aef5b.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251127115349.249120-1-vinod.govindapillai@intel.com>
 <20251127115349.249120-3-vinod.govindapillai@intel.com>
 <5a476e0bbde0e9733f47bd26d068fe78740aef5b.camel@intel.com>
Date: Thu, 27 Nov 2025 15:49:51 +0200
Message-ID: <f205076718d0549d5a0e8844340eddec723f4987@intel.com>
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

On Thu, 27 Nov 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> Hi,
>
> Ah.. :( Looks like I forgot to git add
> drivers/gpu/drm/i915/display/intel_display_driver.c while commit this
> patch. This patch now miss the mutex init part.

IMO the mutex init should be in intel_fbc_init() anyway.

BR,
Jani.

>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
> b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 7e000ba3e08b..4f82b267b086 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -184,6 +184,7 @@ void intel_display_driver_early_probe(struct
> intel_display *display)
>         mutex_init(&display->wm.wm_mutex);
>         mutex_init(&display->pps.mutex);
>         mutex_init(&display->hdcp.hdcp_mutex);
> +       mutex_init(&display->fbc.sys_cache.lock);
>=20=20
>         intel_display_irq_init(display);
>         intel_dkl_phy_init(display);
>
> Will wait for comments before I update this commit with the above
> change. Sorry about that.
>
> BR
> Vinod
>
>
>
> On Thu, 2025-11-27 at 13:53 +0200, Vinod Govindapillai wrote:
>> One of the FBC instances can utilize the reserved area of SoC
>> level cache for the fbc transactions to benefit reduced memory
>> system power especially in idle scenarios. Reserved area of the
>> system cache can be assigned to an fbc instance by configuring
>> the cacheability configuration register with offset of the
>> compressed frame buffer in stolen memoty of that fbc. There is
>> a limit to this reserved area which is programmable and for
>> xe3p_lpd the limit is defined as 2MB.
>>=20
>> v2: - better to track fbc sys cache usage from intel_display level,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sanitize the cacheability config register=
 on probe (Matt)
>> =C2=A0=C2=A0=C2=A0 - limit this for integrated graphics solutions, confi=
rmed that
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 no default value set for cache range by h=
w (Gustavo)
>>=20
>> v3: - changes related to the use of fbc substruct in intel_display
>> =C2=A0=C2=A0=C2=A0 - use intel_de_write() instead of intel_rmw() by hard=
coding the
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default value fields
>>=20
>> v4: - protect sys cache config accesses, sys cache usage status in
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 debugfs per fbc instance (Jani)
>>=20
>> Bspec: 68881, 74722
>> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> ---
>> =C2=A0.../gpu/drm/i915/display/intel_display_core.h |=C2=A0 6 ++
>> =C2=A0.../drm/i915/display/intel_display_device.h=C2=A0=C2=A0 |=C2=A0 1 +
>> =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 86
>> +++++++++++++++++++
>> =C2=A0drivers/gpu/drm/i915/display/intel_fbc_regs.h | 10 +++
>> =C2=A04 files changed, 103 insertions(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index 58325f530670..3e4bde7fa205 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -400,6 +400,12 @@ struct intel_display {
>> =C2=A0
>> =C2=A0	struct {
>> =C2=A0		struct intel_fbc *instances[I915_MAX_FBCS];
>> +
>> +		/* xe3p_lpd+: FBC instance utilizing the system
>> cache */
>> +		struct sys_cache_cfg {
>> +			struct mutex lock;
>> +			enum intel_fbc_id id;
>> +		} sys_cache;
>> =C2=A0	} fbc;
>> =C2=A0
>> =C2=A0	struct {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> b/drivers/gpu/drm/i915/display/intel_display_device.h
>> index b559ef43d547..b74cb69ccc85 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -173,6 +173,7 @@ struct intel_display_platforms {
>> =C2=A0#define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D
>> 12 && HAS_DSC(__display))
>> =C2=A0#define
>> HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask !=3D 0)
>> =C2=A0#define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=3D
>> 30)
>> +#define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >=3D
>> 35 && !(__display)->platform.dgfx)
>> =C2=A0#define
>> HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_dbg)
>> =C2=A0#define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >=3D
>> 3)
>> =C2=A0#define
>> HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >=3D 10 || (__di=
splay)->platform.kabylake)
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>> b/drivers/gpu/drm/i915/display/intel_fbc.c
>> index dcdfcff80de3..85978196b607 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -71,6 +71,8 @@
>> =C2=A0	for_each_fbc_id((__display), (__fbc_id)) \
>> =C2=A0		for_each_if((__fbc) =3D (__display)-
>> >fbc.instances[(__fbc_id)])
>> =C2=A0
>> +#define FBC_SYS_CACHE_ID_NONE	I915_MAX_FBCS
>> +
>> =C2=A0struct intel_fbc_funcs {
>> =C2=A0	void (*activate)(struct intel_fbc *fbc);
>> =C2=A0	void (*deactivate)(struct intel_fbc *fbc);
>> @@ -941,6 +943,69 @@ static void intel_fbc_program_workarounds(struct
>> intel_fbc *fbc)
>> =C2=A0		fbc_compressor_clkgate_disable_wa(fbc, true);
>> =C2=A0}
>> =C2=A0
>> +static void fbc_sys_cache_update_config(struct intel_display
>> *display, u32 reg,
>> +					enum intel_fbc_id id)
>> +{
>> +	if (!HAS_FBC_SYS_CACHE(display))
>> +		return;
>> +
>> +	lockdep_assert_held(&display->fbc.sys_cache.lock);
>> +
>> +	/* Cache read enable is set by default */
>> +	reg |=3D FBC_SYS_CACHE_READ_ENABLE;
>> +
>> +	intel_de_write(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG,
>> reg);
>> +
>> +	display->fbc.sys_cache.id =3D id;
>> +}
>> +
>> +static void fbc_sys_cache_disable(const struct intel_fbc *fbc)
>> +{
>> +	struct intel_display *display =3D fbc->display;
>> +	struct sys_cache_cfg *sys_cache =3D &display->fbc.sys_cache;
>> +
>> +	mutex_lock(&sys_cache->lock);
>> +	/* clear only if "fbc" reserved the cache */
>> +	if (sys_cache->id =3D=3D fbc->id)
>> +		fbc_sys_cache_update_config(display, 0,
>> FBC_SYS_CACHE_ID_NONE);
>> +	mutex_unlock(&sys_cache->lock);
>> +}
>> +
>> +static int fbc_sys_cache_limit(struct intel_display *display)
>> +{
>> +	/* Default 2MB for xe3p_lpd */
>> +	if (DISPLAY_VER(display) =3D=3D 35)
>> +		return 2 * 1024 * 1024;
>> +
>> +	return 0;
>> +}
>> +
>> +static void fbc_sys_cache_enable(const struct intel_fbc *fbc)
>> +{
>> +	struct intel_display *display =3D fbc->display;
>> +	struct sys_cache_cfg *sys_cache =3D &display->fbc.sys_cache;
>> +	int range, offset;
>> +	u32 cfg;
>> +
>> +	if (!HAS_FBC_SYS_CACHE(display))
>> +		return;
>> +
>> +	/* limit to be configured to the register in 64k byte chunks
>> */
>> +	range =3D fbc_sys_cache_limit(display) / (64 * 1024);
>> +
>> +	/* offset to be configured to the register in 4K byte chunks
>> */
>> +	offset =3D i915_gem_stolen_node_offset(fbc->compressed_fb) /
>> (4 * 1024);
>> +
>> +	cfg =3D FBC_SYS_CACHE_TAG_USE_RES_SPACE |
>> FBC_SYS_CACHEABLE_RANGE(range) |
>> +	=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 FBC_SYS_CACHE_START_BASE(offset);
>> +
>> +	mutex_lock(&sys_cache->lock);
>> +	/* update sys cache config only if sys cache is unassigned
>> */
>> +	if (sys_cache->id =3D=3D FBC_SYS_CACHE_ID_NONE)
>> +		fbc_sys_cache_update_config(display, cfg, fbc->id);
>> +	mutex_unlock(&sys_cache->lock);
>> +}
>> +
>> =C2=A0static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>> =C2=A0{
>> =C2=A0	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>> @@ -967,6 +1032,11 @@ void intel_fbc_cleanup(struct intel_display
>> *display)
>> =C2=A0
>> =C2=A0		kfree(fbc);
>> =C2=A0	}
>> +
>> +	mutex_lock(&display->fbc.sys_cache.lock);
>> +	drm_WARN_ON(display->drm,
>> +		=C2=A0=C2=A0=C2=A0 display->fbc.sys_cache.id !=3D
>> FBC_SYS_CACHE_ID_NONE);
>> +	mutex_unlock(&display->fbc.sys_cache.lock);
>> =C2=A0}
>> =C2=A0
>> =C2=A0static bool i8xx_fbc_stride_is_valid(const struct intel_plane_state
>> *plane_state)
>> @@ -1780,6 +1850,8 @@ static void __intel_fbc_disable(struct
>> intel_fbc *fbc)
>> =C2=A0
>> =C2=A0	__intel_fbc_cleanup_cfb(fbc);
>> =C2=A0
>> +	fbc_sys_cache_disable(fbc);
>> +
>> =C2=A0	/* wa_18038517565 Enable DPFC clock gating after FBC disable
>> */
>> =C2=A0	if (display->platform.dg2 || DISPLAY_VER(display) >=3D 14)
>> =C2=A0		fbc_compressor_clkgate_disable_wa(fbc, false);
>> @@ -1972,6 +2044,8 @@ static void __intel_fbc_enable(struct
>> intel_atomic_state *state,
>> =C2=A0
>> =C2=A0	intel_fbc_program_workarounds(fbc);
>> =C2=A0	intel_fbc_program_cfb(fbc);
>> +
>> +	fbc_sys_cache_enable(fbc);
>> =C2=A0}
>> =C2=A0
>> =C2=A0/**
>> @@ -2212,6 +2286,10 @@ void intel_fbc_init(struct intel_display
>> *display)
>> =C2=A0
>> =C2=A0	for_each_fbc_id(display, fbc_id)
>> =C2=A0		display->fbc.instances[fbc_id] =3D
>> intel_fbc_create(display, fbc_id);
>> +
>> +	mutex_lock(&display->fbc.sys_cache.lock);
>> +	display->fbc.sys_cache.id =3D FBC_SYS_CACHE_ID_NONE;
>> +	mutex_unlock(&display->fbc.sys_cache.lock);
>> =C2=A0}
>> =C2=A0
>> =C2=A0/**
>> @@ -2231,6 +2309,9 @@ void intel_fbc_sanitize(struct intel_display
>> *display)
>> =C2=A0		if (intel_fbc_hw_is_active(fbc))
>> =C2=A0			intel_fbc_hw_deactivate(fbc);
>> =C2=A0	}
>> +
>> +	/* Ensure the sys cache usage config is clear as well */
>> +	fbc_sys_cache_update_config(display, 0,
>> FBC_SYS_CACHE_ID_NONE);
>> =C2=A0}
>> =C2=A0
>> =C2=A0static int intel_fbc_debugfs_status_show(struct seq_file *m, void
>> *unused)
>> @@ -2249,6 +2330,11 @@ static int
>> intel_fbc_debugfs_status_show(struct seq_file *m, void *unused)
>> =C2=A0		seq_puts(m, "FBC enabled\n");
>> =C2=A0		seq_printf(m, "Compressing: %s\n",
>> =C2=A0			=C2=A0=C2=A0
>> str_yes_no(intel_fbc_is_compressing(fbc)));
>> +
>> +		mutex_lock(&display->fbc.sys_cache.lock);
>> +		seq_printf(m, "Using system cache: %s\n",
>> +			=C2=A0=C2=A0 str_yes_no(display->fbc.sys_cache.id =3D=3D
>> fbc->id));
>> +		mutex_unlock(&display->fbc.sys_cache.lock);
>> =C2=A0	} else {
>> =C2=A0		seq_printf(m, "FBC disabled: %s\n", fbc-
>> >no_fbc_reason);
>> =C2=A0	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> index b1d0161a3196..d2d889fa4bed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> @@ -126,4 +126,14 @@
>> =C2=A0#define=C2=A0=C2=A0 FBC_REND_NUKE			REG_BIT(2)
>> =C2=A0#define=C2=A0=C2=A0 FBC_REND_CACHE_CLEAN		REG_BIT(1)
>> =C2=A0
>> +#define XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG	_MMIO(0x1344E0)
>> +#define=C2=A0=C2=A0
>> FBC_SYS_CACHE_START_BASE_MASK		REG_GENMASK(31, 16)
>> +#define=C2=A0=C2=A0
>> FBC_SYS_CACHE_START_BASE(base)	REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE_M=
ASK,(base))
>> +#define=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE_MASK		REG_GENMASK(15, 4)
>> +#define=C2=A0=C2=A0
>> FBC_SYS_CACHEABLE_RANGE(range)	REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_MA=
SK,(range))
>> +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_MASK		REG_GENMASK(3, 2)
>> +#define=C2=A0=C2=A0
>> FBC_SYS_CACHE_TAG_DONT_CACHE		REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK, 0)
>> +#define=C2=A0=C2=A0
>> FBC_SYS_CACHE_TAG_USE_RES_SPACE	REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK,3)
>> +#define=C2=A0=C2=A0 FBC_SYS_CACHE_READ_ENABLE		REG_BIT(0)
>> +
>> =C2=A0#endif /* __INTEL_FBC_REGS__ */
>

--=20
Jani Nikula, Intel
