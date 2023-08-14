Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C7D77B69D
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 12:25:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DCD410E03B;
	Mon, 14 Aug 2023 10:25:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B41110E19D
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Aug 2023 10:25:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692008724; x=1723544724;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=NLJ3Avkm9ahxtNLK2ANpOlzsOXWVSlygaBuPeRCamIM=;
 b=AMPlQ26SgCZThRJxUDXwRuUs1uNjY574Kwhdu+0M2+EedNxhmdPkBx2C
 QgolGQvhFcxRQHumdcTHQuMvjtkpLm5s+9A6ZLgybhXqhXHNVvkSegp0L
 d1GEF2hlTUjTBz+dpsVYHECu+kGY7/WcA5GUuj34qMV4LlzIIzuJEEHsG
 3e1geRyhqURNUWNX0HoUo2gsqWlL0aBy62J5QRwG9idYgOHa4TuKIp8Dm
 06K1T06HGCpJijU1LaOpxQMamjYEBVskqdxuE11QPHo8c6LdouYRCnPF8
 vshLLOTbjVqaoPea7xgDqdZTPl+YiRRLvY0dhV4xEEMubzNegp/MjjhLx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="435900830"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="435900830"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 03:25:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="979943354"
X-IronPort-AV: E=Sophos;i="6.01,172,1684825200"; d="scan'208";a="979943354"
Received: from spasula-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.125])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2023 03:25:21 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20230811180203.GF209733@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230810215750.3609161-11-matthew.d.roper@intel.com>
 <20230810215750.3609161-15-matthew.d.roper@intel.com>
 <87leeiqbk1.fsf@intel.com>
 <20230811180203.GF209733@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 14 Aug 2023 13:25:19 +0300
Message-ID: <87leedzzsg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 4/9] drm/i915: Eliminate
 IS_MTL_GRAPHICS_STEP
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 11 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Aug 11, 2023 at 10:32:14AM +0300, Jani Nikula wrote:
>> On Thu, 10 Aug 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
>> > Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
>> > of these workarounds are actually tied to MTL as a platform; they only
>> > relate to the Xe_LPG graphics IP, regardless of what platform it appea=
rs
>> > in.  At the moment MTL is the only platform that uses Xe_LPG with IP
>> > versions 12.70 and 12.71, but we can't count on this being true in the
>> > future.  Switch these to use a new IS_GFX_GT_IP_STEP() macro instead
>> > that is purely based on IP version.  IS_GFX_GT_IP_STEP() is also
>> > GT-based rather than device-based, which will help prevent mistakes
>> > where we accidentally try to apply Xe_LPG graphics workarounds to the
>> > Xe_LPM+ media GT and vice-versa.
>> >
>> > v2:
>> >  - Switch to a more generic and shorter IS_GT_IP_STEP macro that can be
>> >    used for both graphics and media IP (and any other kind of GTs that
>> >    show up in the future).
>> > v3:
>> >  - Switch back to long-form IS_GFX_GT_IP_STEP macro.  (Jani)
>> >  - Move macro to intel_gt.h.  (Andi)
>> >
>> > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>> > Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
>> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> > ---
>> >  .../drm/i915/display/skl_universal_plane.c    |  5 +-
>> >  drivers/gpu/drm/i915/gt/gen8_engine_cs.c      | 11 ++--
>> >  drivers/gpu/drm/i915/gt/intel_gt.h            | 20 +++++++
>> >  drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  7 ++-
>> >  drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
>> >  drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
>> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
>> >  drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
>> >  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
>> >  drivers/gpu/drm/i915/i915_drv.h               |  4 --
>> >  10 files changed, 64 insertions(+), 45 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/driv=
ers/gpu/drm/i915/display/skl_universal_plane.c
>> > index ffc15d278a39..d557ecd4e1eb 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>> > @@ -20,6 +20,7 @@
>> >  #include "skl_scaler.h"
>> >  #include "skl_universal_plane.h"
>> >  #include "skl_watermark.h"
>> > +#include "gt/intel_gt.h"
>> >  #include "pxp/intel_pxp.h"
>> >=20=20
>> >  static const u32 skl_plane_formats[] =3D {
>> > @@ -2169,8 +2170,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915=
_private *i915,
>> >  				 enum pipe pipe, enum plane_id plane_id)
>> >  {
>> >  	/* Wa_14017240301 */
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> > +	if (IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0)=
 ||
>> > +	    IS_GFX_GT_IP_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
>> >  		return false;
>> >=20=20
>> >  	/* Wa_22011186057 */
>> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/dr=
m/i915/gt/gen8_engine_cs.c
>> > index a4ff55aa5e55..6187b25b67ab 100644
>> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>> > @@ -4,9 +4,9 @@
>> >   */
>> >=20=20
>> >  #include "gen8_engine_cs.h"
>> > -#include "i915_drv.h"
>> >  #include "intel_engine_regs.h"
>> >  #include "intel_gpu_commands.h"
>> > +#include "intel_gt.h"
>> >  #include "intel_lrc.h"
>> >  #include "intel_ring.h"
>> >=20=20
>> > @@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_=
cs *engine, u32 *cs)
>> >  static int mtl_dummy_pipe_control(struct i915_request *rq)
>> >  {
>> >  	/* Wa_14016712196 */
>> > -	if (IS_MTL_GRAPHICS_STEP(rq->i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(rq->i915, P, STEP_A0, STEP_B0)) {
>> > +	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_=
B0) ||
>> > +	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_=
B0)) {
>> >  		u32 *cs;
>> >=20=20
>> >  		/* dummy PIPE_CONTROL + depth flush */
>> > @@ -799,6 +799,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_re=
quest *rq, u32 *cs)
>> >  u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>> >  {
>> >  	struct drm_i915_private *i915 =3D rq->i915;
>> > +	struct intel_gt *gt =3D rq->engine->gt;
>> >  	u32 flags =3D (PIPE_CONTROL_CS_STALL |
>> >  		     PIPE_CONTROL_TLB_INVALIDATE |
>> >  		     PIPE_CONTROL_TILE_CACHE_FLUSH |
>> > @@ -809,8 +810,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_re=
quest *rq, u32 *cs)
>> >  		     PIPE_CONTROL_FLUSH_ENABLE);
>> >=20=20
>> >  	/* Wa_14016712196 */
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>> >  		/* dummy PIPE_CONTROL + depth flush */
>> >  		cs =3D gen12_emit_pipe_control(cs, 0,
>> >  					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915=
/gt/intel_gt.h
>> > index 7649a46a36cc..de1bb04c864a 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_gt.h
>> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
>> > @@ -25,6 +25,26 @@ struct drm_printer;
>> >  	GRAPHICS_VER_FULL((gt)->i915) >=3D (from) && \
>> >  	GRAPHICS_VER_FULL((gt)->i915) <=3D (until)))
>> >=20=20
>> > +/*
>> > + * Check that the GT is a graphics GT with a specific IP version and =
has
>> > + * a stepping in the range [begin, fixed).  The lower stepping bound =
is
>> > + * inclusive, the upper bound is exclusive (corresponding to the firs=
t hardware
>> > + * stepping at which the workaround is no longer needed).  E.g.,
>> > + *
>> > + *    IS_GFX_GT_IP_STEP(GFX, IP_VER(12, 70), STEP_A0, STEP_B0)
>> > + *    IS_GFX_GT_IP_STEP(GFX, IP_VER(12, 71), STEP_B1, STEP_FOREVER)
>> > + *
>> > + * "STEP_FOREVER" can be passed as the upper stepping bound for worka=
rounds
>> > + * that have no "fixed" version for the specified IP version.
>> > + */
>> > +#define IS_GFX_GT_IP_STEP(gt, ipver, begin, fixed) ( \
>> > +	BUILD_BUG_ON_ZERO((ipver) < IP_VER(2, 0)) + \
>> > +	BUILD_BUG_ON_ZERO((fixed) <=3D (begin)) + \
>>=20
>> Why is =3D=3D not okay?
>
> fixed =3D=3D begin would be an empty set of steppings and should never
> happen (i.e., the first stepping where you need the WA is also the same
> stepping where you no longer need the WA).

Right. Probably should still get that check in the IS_*_STEP() macros,
and reuse those here instead of open coding the same thing.

>
>>=20
>> > +	((gt)->type !=3D GT_MEDIA && \
>> > +	 GRAPHICS_VER_FULL((gt)->i915) =3D=3D (ipver) && \
>> > +	 INTEL_GRAPHICS_STEP((gt)->i915) >=3D (begin) && \
>> > +	 INTEL_GRAPHICS_STEP((gt)->i915) < (fixed)))
>> > +
>>=20
>> I'd keep using begin-end or from-until instead of begin-fixed. This
>> check should really agnostic about issues that get fixed.
>>=20
>> We have macros for checking step ranges, e.g. IS_GRAPHICS_STEP(i915,
>> since, util). They should be used instead of duplicating the
>> condition. And in the previous patch you added IS_GFX_GT_IP_RANGE()
>> which is also pretty much duplicated here?
>>=20
>> But the stepping check is really orthogonal from the other conditions. I
>> was hoping to replace the IS_MTL_GRAPHICS_STEP() and friends macros with
>> IS_METEORLAKE() && IS_GRAPHICS_STEP() combos, because there's nothing
>> that requires us to keep adding new macros for these.
>
> Part of the goal here is to stop from trying to combine the conditions
> manually because it's too error-prone, and the mistakes tend to slip by
> during code review as well.
>
>  * Combining a version range with a stepping range is always a bug.
>  * Using a version or version range without checking the GT type is a
>    bug on all platforms going forward.
>
> Plus mixing a bunch of && and || conditions makes it easy for typos on
> the parentheses to cause hard-to-spot bugs.  The macros here ensure that
> all the conditions that must be combined are always used together
> resulting in a simple || list where each item in the list corresponds to
> one entry in the WA database.

Fair enough. I'd still like to have the building blocks reused here too
instead of open coding in several places.

BR,
Jani.

>
>
> Matt
>
>>=20
>> Of course, with the IP check there's no need to add new platform
>> specific macros... but is there a need to combine all these together?
>>=20
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>>=20
>> >  #define GT_TRACE(gt, fmt, ...) do {					\
>> >  	const struct intel_gt *gt__ __maybe_unused =3D (gt);		\
>> >  	GEM_TRACE("%s " fmt, dev_name(gt__->i915->drm.dev),		\
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/=
i915/gt/intel_gt_mcr.c
>> > index 0b414eae1683..11d181b1cc7a 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
>> > @@ -3,8 +3,7 @@
>> >   * Copyright =C2=A9 2022 Intel Corporation
>> >   */
>> >=20=20
>> > -#include "i915_drv.h"
>> > -
>> > +#include "intel_gt.h"
>> >  #include "intel_gt_mcr.h"
>> >  #include "intel_gt_print.h"
>> >  #include "intel_gt_regs.h"
>> > @@ -166,8 +165,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
>> >  		gt->steering_table[OADDRM] =3D xelpmp_oaddrm_steering_table;
>> >  	} else if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 70)) {
>> >  		/* Wa_14016747170 */
>> > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> > +		if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +		    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>> >  			fuse =3D REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
>> >  					     intel_uncore_read(gt->uncore,
>> >  							       MTL_GT_ACTIVITY_FACTOR));
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i91=
5/gt/intel_lrc.c
>> > index 957d0aeb0c02..1f0768652446 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
>> > @@ -1375,8 +1375,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_c=
ontext *ce, u32 *cs)
>> >  	cs =3D gen12_emit_aux_table_inv(ce->engine, cs);
>> >=20=20
>> >  	/* Wa_16014892111 */
>> > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
>> > +	if (IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_=
B0) ||
>> > +	    IS_GFX_GT_IP_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_=
B0) ||
>> >  	    IS_DG2(ce->engine->i915))
>> >  		cs =3D dg2_emit_draw_watermark_setting(cs);
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i=
915/gt/intel_reset.c
>> > index 1ff7b42521c9..fd6c22aeb670 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
>> > @@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(str=
uct intel_gt *gt)
>> >  	if (GRAPHICS_VER(gt->i915) < 11)
>> >  		return false;
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
>> >  		return true;
>> >=20=20
>> >  	if (GRAPHICS_VER_FULL(gt->i915) >=3D IP_VER(12, 70))
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu=
/drm/i915/gt/intel_workarounds.c
>> > index 80d67e487b55..e2562b0e540d 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > @@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct inte=
l_engine_cs *engine,
>> >  static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
>> >  				     struct i915_wa_list *wal)
>> >  {
>> > -	struct drm_i915_private *i915 =3D engine->i915;
>> > +	struct intel_gt *gt =3D engine->gt;
>> >=20=20
>> >  	dg2_ctx_gt_tuning_init(engine, wal);
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
>> >  		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
>> >  }
>> >=20=20
>> >  static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
>> >  				       struct i915_wa_list *wal)
>> >  {
>> > -	struct drm_i915_private *i915 =3D engine->i915;
>> > +	struct intel_gt *gt =3D engine->gt;
>> >=20=20
>> >  	xelpg_ctx_gt_tuning_init(engine, wal);
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>> >  		/* Wa_14014947963 */
>> >  		wa_masked_field_set(wal, VF_PREEMPTION,
>> >  				    PREEMPTION_VERTEX_COUNT, 0x4000);
>> > @@ -1747,8 +1747,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, s=
truct i915_wa_list *wal)
>> >  	/* Wa_22016670082 */
>> >  	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>> >  		/* Wa_14014830051 */
>> >  		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
>> >=20=20
>> > @@ -2425,16 +2425,17 @@ static void
>> >  rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_lis=
t *wal)
>> >  {
>> >  	struct drm_i915_private *i915 =3D engine->i915;
>> > +	struct intel_gt *gt =3D engine->gt;
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
>> >  		/* Wa_22014600077 */
>> >  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>> >  				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
>> >  	}
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>> >  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>> >  		/* Wa_1509727124 */
>> > @@ -2444,7 +2445,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engin=
e, struct i915_wa_list *wal)
>> >=20=20
>> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
>> >  		/* Wa_22012856258 */
>> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>> >  				 GEN12_DISABLE_READ_SUPPRESSION);
>> > @@ -3009,8 +3010,9 @@ static void
>> >  general_render_compute_wa_init(struct intel_engine_cs *engine, struct=
 i915_wa_list *wal)
>> >  {
>> >  	struct drm_i915_private *i915 =3D engine->i915;
>> > +	struct intel_gt *gt =3D engine->gt;
>> >=20=20
>> > -	add_render_compute_tuning_settings(engine->gt, wal);
>> > +	add_render_compute_tuning_settings(gt, wal);
>> >=20=20
>> >  	if (GRAPHICS_VER(i915) >=3D 11) {
>> >  		/* This is not a Wa (although referred to as
>> > @@ -3031,13 +3033,13 @@ general_render_compute_wa_init(struct intel_en=
gine_cs *engine, struct i915_wa_li
>> >  				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
>> >  	}
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
>> >  		/* Wa_14017856879 */
>> >  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FL=
USH);
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>> >  		/*
>> >  		 * Wa_14017066071
>> >  		 * Wa_14017654203
>> > @@ -3045,13 +3047,13 @@ general_render_compute_wa_init(struct intel_en=
gine_cs *engine, struct i915_wa_li
>> >  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
>> >  				 MTL_DISABLE_SAMPLER_SC_OOO);
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
>> >  		/* Wa_22015279794 */
>> >  		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
>> >  				 DISABLE_PREFETCH_INTO_IC);
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>> >  	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
>> >  	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
>> >  		/* Wa_22013037850 */
>> > @@ -3059,16 +3061,16 @@ general_render_compute_wa_init(struct intel_en=
gine_cs *engine, struct i915_wa_li
>> >  				DISABLE_128B_EVICTION_COMMAND_UDW);
>> >  	}
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>> >  	    IS_PONTEVECCHIO(i915) ||
>> >  	    IS_DG2(i915)) {
>> >  		/* Wa_22014226127 */
>> >  		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
>> >  	}
>> >=20=20
>> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
>> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> > +	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
>> >  	    IS_DG2(i915)) {
>> >  		/* Wa_18017747507 */
>> >  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_D=
ISABLE);
>> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/=
i915/gt/uc/intel_guc.c
>> > index 22649831d3bd..6687cdf0272b 100644
>> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>> >  		flags |=3D GUC_WA_GAM_CREDITS;
>> >=20=20
>> >  	/* Wa_14014475959 */
>> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>> > +	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
>> >  	    IS_DG2(gt->i915))
>> >  		flags |=3D GUC_WA_HOLD_CCS_SWITCHOUT;
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drive=
rs/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> > index 1bd5d8f7c40b..b2150a962f69 100644
>> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> > @@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engi=
ne_cs *engine)
>> >=20=20
>> >  	/* Wa_14014475959:dg2 */
>> >  	if (engine->class =3D=3D COMPUTE_CLASS)
>> > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
>> > +		if (IS_GFX_GT_IP_STEP(engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0)=
 ||
>> >  		    IS_DG2(engine->i915))
>> >  			engine->flags |=3D I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i9=
15_drv.h
>> > index 7a8ce7239bc9..e0e0493d6c1f 100644
>> > --- a/drivers/gpu/drm/i915/i915_drv.h
>> > +++ b/drivers/gpu/drm/i915/i915_drv.h
>> > @@ -658,10 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i91=
5,
>> >  #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
>> >  	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
>> >=20=20
>> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
>> > -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##varian=
t) && \
>> > -	 IS_GRAPHICS_STEP(__i915, since, until))
>> > -
>> >  #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
>> >  	(IS_METEORLAKE(__i915) && \
>> >  	 IS_DISPLAY_STEP(__i915, since, until))
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
