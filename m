Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A17C8189F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 17:23:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E68310E2FB;
	Mon, 24 Nov 2025 16:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ubjq566Z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2338E10E2E5;
 Mon, 24 Nov 2025 16:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764001415; x=1795537415;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=EjCSvEN+xXv+cuQHVuYy8/lXDlZxR0L2fIwmIfvQJoE=;
 b=Ubjq566ZFovOFZa7OfYK30meaJeXePdTcDl3s1V6J8a/2woG25mpE9qD
 DjaspI6D2ReMAgik7y5NK3qq5xkckUI0ZEPsU7XNTI05AIfOXsGPN4AN0
 FYvQc+4kf6xqf/vzQTzizdq9+GBJ5vJ8U3p5ikc5Md6LlxSgDRKtFzosf
 efdVhXIhTVAWesSZN8327W2n4DVTEpPf8H3LJi4UlVQKCeYc5hW+SwrbG
 4RZdEnZkoSEiFm0D6NJOZoLjykH/XVRVk70sMc0Ky57qeDnrO56lLD0ix
 a6mSXfYkLNhF6hzvlx5qLEzD9DrDkhOkvoViemFkEoVug0Sfy4nZ9MHq3 g==;
X-CSE-ConnectionGUID: 1gpbjyQxSMWtMtifh6OZSQ==
X-CSE-MsgGUID: Vtk0JSWqSJ634UywBHFFlw==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="76329230"
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="76329230"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 08:23:34 -0800
X-CSE-ConnectionGUID: AnsDT011Qayq0h6yoVXbpQ==
X-CSE-MsgGUID: x8F+Q8zATC6++g7GO0QJFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,223,1758610800"; d="scan'208";a="192835304"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.177])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 08:23:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/xe3p_lpd: Enable display use of system
 cache for FBC
In-Reply-To: <5a627b24aba9dffa5a25938896b8cee835770d62.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251123160127.142599-1-vinod.govindapillai@intel.com>
 <20251123160127.142599-3-vinod.govindapillai@intel.com>
 <6cc198e5fcb237dd7e97baa65efc997001ce0079@intel.com>
 <5a627b24aba9dffa5a25938896b8cee835770d62.camel@intel.com>
Date: Mon, 24 Nov 2025 18:23:29 +0200
Message-ID: <75ca2a3e55452f0ae2c6d43fab924bfff3439017@intel.com>
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

On Mon, 24 Nov 2025, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> Hi Jani,
>
> Thanks for the input.. replies inline...
>
> On Mon, 2025-11-24 at 13:27 +0200, Jani Nikula wrote:
>> On Sun, 23 Nov 2025, Vinod Govindapillai
>> <vinod.govindapillai@intel.com> wrote:
>> > One of the FBC instances can utilize the reserved area of SoC
>> > level cache for the fbc transactions to benefit reduced memory
>> > system power especially in idle scenarios. Reserved area of the
>> > system cache can be assigned to an fbc instance by configuring
>> > the cacheability configuration register with offset of the
>> > compressed frame buffer in stolen memoty of that fbc. There is
>> > a limit to this reserved area which is programmable and for
>> > xe3p_lpd the limit is defined as 2MB.
>> >=20
>> > v2: - better to track fbc sys cache usage from intel_display level,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sanitize the cacheability config regist=
er on probe (Matt)
>> > =C2=A0=C2=A0=C2=A0 - limit this for integrated graphics solutions, con=
firmed that
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 no default value set for cache range by=
 hw (Gustavo)
>> >=20
>> > v3: - changes related to the use of fbc substruct in intel_display
>> > =C2=A0=C2=A0=C2=A0 - use intel_de_write() instead of intel_rmw() by ha=
rdcoding the
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 default value fields
>> >=20
>>=20
>> I think overall the implementation feels a bit overwhelming. I mean
>> there are so many functions, so many checks, to the point of being
>> excessive.
>>=20
>> Some comments inline.
>>=20
>> > Bspec: 68881, 74722
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > =C2=A0.../gpu/drm/i915/display/intel_display_core.h |=C2=A0 3 +
>> > =C2=A0.../drm/i915/display/intel_display_device.h=C2=A0=C2=A0 |=C2=A0 =
1 +
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 93
>> > +++++++++++++++++++
>> > =C2=A0drivers/gpu/drm/i915/display/intel_fbc_regs.h | 10 ++
>> > =C2=A04 files changed, 107 insertions(+)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> > b/drivers/gpu/drm/i915/display/intel_display_core.h
>> > index 58325f530670..f557c9293d33 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> > @@ -400,6 +400,9 @@ struct intel_display {
>> > =C2=A0
>> > =C2=A0	struct {
>> > =C2=A0		struct intel_fbc *instances[I915_MAX_FBCS];
>> > +
>> > +		/* xe3p_lpd+ : FBC instance utlizing the system
>> > cache */
>>=20
>> Please no space before :, *utilizing
>>=20
>> > +		enum intel_fbc_id sys_cache_id;
>> > =C2=A0	} fbc;
>> > =C2=A0
>> > =C2=A0	struct {
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
>> > b/drivers/gpu/drm/i915/display/intel_display_device.h
>> > index b559ef43d547..b74cb69ccc85 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> > @@ -173,6 +173,7 @@ struct intel_display_platforms {
>> > =C2=A0#define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D
>> > 12 && HAS_DSC(__display))
>> > =C2=A0#define
>> > HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)->fbc_mask !=3D 0)
>> > =C2=A0#define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=
=3D
>> > 30)
>> > +#define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >=3D
>> > 35 && !(__display)->platform.dgfx)
>> > =C2=A0#define
>> > HAS_FPGA_DBG_UNCLAIMED(__display)	(DISPLAY_INFO(__display)->has_fpga_d=
bg)
>> > =C2=A0#define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >=3D
>> > 3)
>> > =C2=A0#define
>> > HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >=3D 10 || (__=
display)->platform.kabylake)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > index dcdfcff80de3..d7e913792518 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> > @@ -71,6 +71,10 @@
>> > =C2=A0	for_each_fbc_id((__display), (__fbc_id)) \
>> > =C2=A0		for_each_if((__fbc) =3D (__display)-
>> > >fbc.instances[(__fbc_id)])
>> > =C2=A0
>> > +#define
>> > SYS_CACHE_FBC_INSTANCE_NONE			I915_MAX_FBCS
>> > +#define
>> > IS_SYS_CACHE_FBC_INSTANCE_NONE(__display)	((__display)->fbc.sys_cache_=
id=3D=3DSYS_CACHE_FBC_INSTANCE_NONE)
>>=20
>> The only user of this has !IS_SYS_CACHE_FBC_INSTANCE_NONE(display)
>> i.e. "if not none".
>>=20
>> Would be more useful to check if it's "set" or "valid", and avoid the
>> double negative. And use a shorter name. Maybe a static inline
>> function.
>>=20
>> But I'm not even sure the display->fbc.sys_cache_id needs to be
>> abstracted away. It's not a complicated thing, and, more importantly,
>> it's all within the same file. If outside access was needed, yes,
>> abstract, but here, not convinced.
>>=20
>> Maybe:
>>=20
>> 	if (fbc_sys_cache_id_valid(display->fbc.sys_cache_id))
>>=20
>> I also don't think *all* of these functions should be prefixed with
>> xe3p_lpd_ because that's a monster, and makes all of this difficult
>> to
>> read.
>>=20
>> > +#define IS_SYS_CACHE_FBC_INSTANCE_EQUALS(__display,
>> > id)	((__display)->fbc.sys_cache_id =3D=3D (id))
>>=20
>> I think this feels cumbersome. Why not just check
>>=20
>> 	if (display->fbc.sys_cache_id =3D=3D id)
>>=20
>> inline, and it's obvious?
>>=20
>> > +
>> > =C2=A0struct intel_fbc_funcs {
>> > =C2=A0	void (*activate)(struct intel_fbc *fbc);
>> > =C2=A0	void (*deactivate)(struct intel_fbc *fbc);
>> > @@ -941,6 +945,79 @@ static void
>> > intel_fbc_program_workarounds(struct intel_fbc *fbc)
>> > =C2=A0		fbc_compressor_clkgate_disable_wa(fbc, true);
>> > =C2=A0}
>> > =C2=A0
>> > +static void xe3p_lpd_fbc_set_sys_cache_fbc_id(struct intel_display
>> > *display,
>> > +					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 enum intel_fbc_id
>> > fbc_id)
>> > +{
>> > +	display->fbc.sys_cache_id =3D fbc_id;
>> > +}
>>=20
>> Again, I'm not sure if this function is really needed. Just inline?
>
> Ack for the above suggestions. About the function naming, yeah it is
> indeed bit complex, but was following the functions names being
> followed in this file. Should it be prefixed with nvl /intel or just
> fbc?  instead? Any suggestion?

I would honestly just go with fbc_sys_cache_ for all of them. We don't
have to prefix everything in the world with a platform that started a
new feature.

It's different when you deviate from existing functionality for a
platform, and need different implementations for different platforms.

>
>>=20
>> > +
>> > +static void xe3p_lpd_fbc_commit_sys_cache_usage(struct
>> > intel_display *display,
>> > +						u32 reg)
>> > +{
>> > +	intel_de_write(display, XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG,
>> > reg);
>> > +}
>>=20
>> Not sure if this is needed. Just inline?
>
> Two paths update this register - setting up the cache for a fbc and
> clearing it. Also soon there is going to be a workaround implemented
> which we need to disable the read cache enable bit which is set on by
> default. So I was thinking of intercept here and apply the wa
>
> if (intel_display_wa(display, xxxx))
> 		reg &=3D ~FBC_SYS_CACHE_READ_ENABLE;
>
>>=20
>> > +
>> > +static int xe3p_lpd_fbc_get_cache_limit(void)
>> > +{
>> > +	/* Default 2MB for xe3p_lpd */
>> > +	return 2 * 1024 * 1024;
>> > +}
>>=20
>> Ditto. Especially odd how this multiplies and the user the divides by
>> 64
>> * 1024.
>
> Initially from HAS my understanding was that this was supposed to be
> set by a pre-os fw and driver dont modify this field. And this can
> change per platform. But from the recent logs fro, these fields are set
> as 0 and has to be programmed by the driver. (I am clarifying this with
> the HW team). Anyway, this need to be variated per platform. In some
> other component such 2MB was hard coded like this. So thought of
> adopting that. Any suggestion?

Okay. But if the function needs to do platform deviation, you'll need to
pass display to it.

>
>
>> > +
>> > +static void xe3p_lpd_fbc_clear_sys_cache_usage(struct
>> > intel_display *display)
>> > +{
>> > +	/* Clear all the fields except the default fields */
>> > +	u32 default_fields =3D FBC_SYS_CACHE_READ_ENABLE;
>> > +
>> > +	xe3p_lpd_fbc_commit_sys_cache_usage(display,
>> > default_fields);
>> > +
>> > +	/* Mark that no FBC instance utilize the system cache */
>> > +	xe3p_lpd_fbc_set_sys_cache_fbc_id(display,
>> > SYS_CACHE_FBC_INSTANCE_NONE);
>> > +}
>>=20
>> My point above is that this function only calls wrappers and really
>> does
>> nothing itself. It's too many layers for a simple thing.
>>=20
>> fbc_sys_cache_disable()?
>>=20
>> > +
>> > +static void xe3p_lpd_fbc_set_sys_cache_usage(const struct
>> > intel_fbc *fbc)
>> > +{
>> > +	struct intel_display *display =3D fbc->display;
>> > +	/* limit to be configured to the register in 64k byte
>> > chunks */
>> > +	int range =3D xe3p_lpd_fbc_get_cache_limit() / (64 * 1024);
>> > +	/* offset to be configured to the register in 4K byte
>> > chunks */
>> > +	int offset =3D i915_gem_stolen_node_offset(fbc-
>> > >compressed_fb) / (4 * 1024);
>> > +	/* Cache read enable is enabled by default */
>> > +	u32 usage =3D FBC_SYS_CACHE_TAG_USE_RES_SPACE |
>> > +		=C2=A0=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE(range) |
>> > +		=C2=A0=C2=A0=C2=A0 FBC_SYS_CACHE_START_BASE(offset) |
>> > +		=C2=A0=C2=A0=C2=A0 FBC_SYS_CACHE_READ_ENABLE;
>> > +
>> > +	lockdep_assert_held(&fbc->lock);
>> > +
>> > +	xe3p_lpd_fbc_commit_sys_cache_usage(display, usage);
>> > +
>> > +	xe3p_lpd_fbc_set_sys_cache_fbc_id(display, fbc->id);
>> > +}
>>=20
>> Ditto.
>>=20
>> fbc_sys_cache_enable()?
>>=20
>> > +
>> > +static void xe3p_lpd_fbc_update_sys_cache_usage(const struct
>> > intel_fbc *fbc,
>> > +						bool set)
>> > +{
>> > +	struct intel_display *display =3D fbc->display;
>> > +
>> > +	lockdep_assert_held(&fbc->lock);
>> > +
>> > +	/* system cache for fbc already reserved */
>> > +	if (set && !IS_SYS_CACHE_FBC_INSTANCE_NONE(display))
>> > +		return;
>> > +
>> > +	/* cannot clear if "fbc" did not reserve the cache */
>> > +	if (!set && !IS_SYS_CACHE_FBC_INSTANCE_EQUALS(display,
>> > fbc->id))
>> > +		return;
>> > +
>> > +	if (set)
>> > +		xe3p_lpd_fbc_set_sys_cache_usage(fbc);
>> > +	else
>> > +		xe3p_lpd_fbc_clear_sys_cache_usage(display);
>> > +
>> > +	drm_dbg_kms(display->drm, "System cacheability usage for
>> > FBC[%d] %s\n",
>> > +		=C2=A0=C2=A0=C2=A0 fbc->id, set ? "configured" : "cleared");
>> > +}
>>=20
>> Most of this function is two separate paths based on the parameter. I
>> think it would benefit from actually being two separate functions. So
>> why not just merge this with xe3p_lpd_fbc_set_sys_cache_usage() and
>> xe3p_lpd_fbc_clear_sys_cache_usage()?
>
> Actually there are three paths to update this register (two separate
> path to clear this register)
>
> 1. As part of enable FBC - depends on the fbc instance (with fbc mutex
> taken). If sys_cache is not reserved by any other instance.
>
> 2. As part of disable FBC - depends on the fbc instance to avoid
> clearing if this fbc didnt reserve the cache space. (with fbc mutex
> taken)
>
> 3. Clear this register as part of sanitize call (upon setup_hw_state()
> calls upon probe and resume) and intel_fbc_cleanup() upon module
> removal. Not depend on the fbc instance.

Shouldn't fbc have been disabled by the time of module removal? I think
the per fbc disable should've been called already, no?

I think you could add a drm_WARN_ON(fbc.sys_cache_id !=3D
SYS_CACHE_FBC_INSTANCE_NONE) in the module removal path instead.

Btw that could also be renamed FBC_SYS_CACHE_ID_NONE or something.

> So something like this make sense?
>
> fbc_program_sys_cache(u32 reg)
> {
> 	intel_de_write(reg)
> }

I'm personally not a fan of "program" in pretty much any function
naming. What does it mean to program something? Isn't the whole driver
programming the hardare?

Just fbc_sys_cache_write()?

> fbc_sys_cache_reset(display)
> {
> 	if (!HAS_FBC_SYS_CACHE())
> 		return
>
> 	fbc_program_sys_cache(0)
> 	fbc.sys_cache_id =3D SYS_CACHE_FBC_INSTANCE_NONE
> }
>
> fbc_sys_cache_disable(fbc)
> {
> 	if (!HAS_FBC_SYS_CACHE())
> 		return

You don't need this check, because...

>
> 	if (fbc.sys_cache_id !=3D fbc->id)
> 		return;

...this will catch the same conditions.

>
> 	fbc_sys_cache_reset(display)
> }
>
> fbc_sys_cache_enable(fbc)
> {
> 	if (!HAS_FBC_SYS_CACHE())
> 		return
>
> 	if (fbc.sys_cache_id !=3D SYS_CACHE_FBC_INSTANCE_NONE)
> 		return;
>
> 	fbc_program_sys_cache(val)
>
> 	fbc.sys_cache_id =3D fbc-->id
> }
>
> intel_fbc_enable() will call fbc_sys_cache_enable(fbc)
>
> __intel_fbc_disable() will call fbc_sys_cache_disable(fbc)
>
> and=20
>
> intel_fbc_cleanup() and intel_fbc_sanitize() will call
> fbc_sys_cache_reset(display) as a general cleanup for this register.

Overall sounds better, but I'll probably need to see the patches to
grasp it.

The fbc debugfs should also have the info on whether the instance is
using the sys cache.


BR,
Jani.


>
>
>
>>=20
>> > +
>> > =C2=A0static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
>> > =C2=A0{
>> > =C2=A0	if (WARN_ON(intel_fbc_hw_is_active(fbc)))
>> > @@ -967,6 +1044,9 @@ void intel_fbc_cleanup(struct intel_display
>> > *display)
>> > =C2=A0
>> > =C2=A0		kfree(fbc);
>> > =C2=A0	}
>> > +
>> > +	if (HAS_FBC_SYS_CACHE(display))
>> > +		xe3p_lpd_fbc_clear_sys_cache_usage(display);
>>=20
>> I don't think this should check for HAS_FBC_SYS_CACHE(). I think
>> internally the function being called should check if sys cache has
>> been
>> set. And make sure it's only set on where it's available.
>>=20
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static bool i8xx_fbc_stride_is_valid(const struct
>> > intel_plane_state *plane_state)
>> > @@ -1780,6 +1860,9 @@ static void __intel_fbc_disable(struct
>> > intel_fbc *fbc)
>> > =C2=A0
>> > =C2=A0	__intel_fbc_cleanup_cfb(fbc);
>> > =C2=A0
>> > +	if (HAS_FBC_SYS_CACHE(display))
>> > +		xe3p_lpd_fbc_update_sys_cache_usage(fbc, false);
>> > +
>>=20
>> Ditto. I'm also not sure why some places call the version with
>> params,
>> and some others the version without params.
>>=20
>> > =C2=A0	/* wa_18038517565 Enable DPFC clock gating after FBC
>> > disable */
>> > =C2=A0	if (display->platform.dg2 || DISPLAY_VER(display) >=3D 14)
>> > =C2=A0		fbc_compressor_clkgate_disable_wa(fbc, false);
>> > @@ -1972,6 +2055,9 @@ static void __intel_fbc_enable(struct
>> > intel_atomic_state *state,
>> > =C2=A0
>> > =C2=A0	intel_fbc_program_workarounds(fbc);
>> > =C2=A0	intel_fbc_program_cfb(fbc);
>> > +
>> > +	if (HAS_FBC_SYS_CACHE(display))
>> > +		xe3p_lpd_fbc_update_sys_cache_usage(fbc, true);
>>=20
>> xe3p_lpd_fbc_update_sys_cache_usage() is the function that should
>> check
>> for HAS_FBC_SYS_CACHE() in one place.
>>=20
>> Well, maybe it should be renamed fbc_sys_cache_enable().
>>=20
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0/**
>> > @@ -2212,6 +2298,9 @@ void intel_fbc_init(struct intel_display
>> > *display)
>> > =C2=A0
>> > =C2=A0	for_each_fbc_id(display, fbc_id)
>> > =C2=A0		display->fbc.instances[fbc_id] =3D
>> > intel_fbc_create(display, fbc_id);
>> > +
>> > +	/* Mark that no FBC instance is using the system cache */
>> > +	xe3p_lpd_fbc_set_sys_cache_fbc_id(display,
>> > SYS_CACHE_FBC_INSTANCE_NONE);
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0/**
>> > @@ -2231,6 +2320,10 @@ void intel_fbc_sanitize(struct intel_display
>> > *display)
>> > =C2=A0		if (intel_fbc_hw_is_active(fbc))
>> > =C2=A0			intel_fbc_hw_deactivate(fbc);
>> > =C2=A0	}
>> > +
>> > +	/* Ensure the sys cache usage register gets cleared */
>> > +	if (HAS_FBC_SYS_CACHE(display))
>> > +		xe3p_lpd_fbc_clear_sys_cache_usage(display);
>>=20
>> Ditto about checking for valid sys cache inside, not
>> HAS_FBC_SYS_CACHE().
>>=20
>> > =C2=A0}
>> > =C2=A0
>> > =C2=A0static int intel_fbc_debugfs_status_show(struct seq_file *m, void
>> > *unused)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > index b1d0161a3196..d2d889fa4bed 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_fbc_regs.h
>> > @@ -126,4 +126,14 @@
>> > =C2=A0#define=C2=A0=C2=A0 FBC_REND_NUKE			REG_BIT(2)
>> > =C2=A0#define=C2=A0=C2=A0 FBC_REND_CACHE_CLEAN		REG_BIT(1)
>> > =C2=A0
>> > +#define XE3P_LPD_FBC_SYS_CACHE_USAGE_CFG	_MMIO(0x1344E0)
>> > +#define=C2=A0=C2=A0
>> > FBC_SYS_CACHE_START_BASE_MASK		REG_GENMASK(31, 16)
>> > +#define=C2=A0=C2=A0
>> > FBC_SYS_CACHE_START_BASE(base)	REG_FIELD_PREP(FBC_SYS_CACHE_START_BASE=
_MASK,(base))
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHEABLE_RANGE_MASK		REG_GENMASK(15, 4)
>> > +#define=C2=A0=C2=A0
>> > FBC_SYS_CACHEABLE_RANGE(range)	REG_FIELD_PREP(FBC_SYS_CACHEABLE_RANGE_=
MASK,(range))
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_TAG_MASK		REG_GENMASK(3, 2)
>> > +#define=C2=A0=C2=A0
>> > FBC_SYS_CACHE_TAG_DONT_CACHE		REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK,0)
>> > +#define=C2=A0=C2=A0
>> > FBC_SYS_CACHE_TAG_USE_RES_SPACE	REG_FIELD_PREP(FBC_SYS_CACHE_TAG_MASK,=
3)
>> > +#define=C2=A0=C2=A0 FBC_SYS_CACHE_READ_ENABLE		REG_BIT(0)
>> > +
>> > =C2=A0#endif /* __INTEL_FBC_REGS__ */
>>=20
>

--=20
Jani Nikula, Intel
