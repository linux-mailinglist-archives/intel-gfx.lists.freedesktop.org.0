Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FBF6C2655
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 01:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2C3610E094;
	Tue, 21 Mar 2023 00:30:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0025C10E094
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 00:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679358626; x=1710894626;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=S/txdXGR9nPW4u5vQKZ+NBF2yFiekdR15C/5izNndkw=;
 b=Tq0J54evGy2bCbLyOVN++aq2SBTovaCphtv70epEowpqYBn1wjnPVaCo
 U9FGQSa7XbXHT/o2GV41gR9CcJVvUMz3GAJad0snB60rTgPh11ZjJUACo
 SYZl83Kpt05kUujhUMIRe/breKPodkpyYWVGm1b3BeAS1udYZZNNhSNlC
 qsd2GIKCPURReJy5M1xBE43yCSeun4j0IkABSkVZXit5Vwo11cM3GdhEl
 VfHjFltGrEhJJ54Ie/tCe7SxnYnr79uUkoq5yHfHrqXyowPGvjmxYOeiG
 sy0+qUmKLuSktnhAxb8GsW6sik5FNEsN2UWbrjXaIomRLA8EUiQgN6bbd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="322653022"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="322653022"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 17:30:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="674621508"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; d="scan'208";a="674621508"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.142.207])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 17:30:24 -0700
Date: Mon, 20 Mar 2023 17:30:24 -0700
Message-ID: <87mt47t07z.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
In-Reply-To: <ZBj5601q/xlo1DAG@orsosgc001.jf.intel.com>
References: <20230317231641.2815418-1-umesh.nerlige.ramappa@intel.com>
 <20230317231641.2815418-12-umesh.nerlige.ramappa@intel.com>
 <87v8iwt6sv.wl-ashutosh.dixit@intel.com>
 <ZBj5601q/xlo1DAG@orsosgc001.jf.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v7 11/11] drm/i915/perf: Wa_14017512683:
 Disable OAM if media C6 is enabled in BIOS
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

On Mon, 20 Mar 2023 17:27:23 -0700, Umesh Nerlige Ramappa wrote:
>
> On Sun, Mar 19, 2023 at 08:56:00PM -0700, Dixit, Ashutosh wrote:
> > On Fri, 17 Mar 2023 16:16:41 -0700, Umesh Nerlige Ramappa wrote:
> >>
> >
> > Hi Umesh,
> >
> > Please read from bottom to top. Mostly nits but let's see what you think.
> >
> >> OAM does not work with media C6 enabled on some steppings of MTL.
> >> Disable OAM if we detect that media C6 was enabled in bios.
> >>
> >> v2: (Ashutosh)
> >> - Remove drm_notice from the driver load path
> >> - Log a drm_err when opening an OAM stream on affected steppings
> >>
> >> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/i915_perf.c | 41 ++++++++++++++++++++++++++++++++
> >>  1 file changed, 41 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> >> index 18afa76653b7..823379d63caf 100644
> >> --- a/drivers/gpu/drm/i915/i915_perf.c
> >> +++ b/drivers/gpu/drm/i915/i915_perf.c
> >> @@ -209,6 +209,7 @@
> >>  #include "gt/intel_gt_regs.h"
> >>  #include "gt/intel_lrc.h"
> >>  #include "gt/intel_lrc_reg.h"
> >> +#include "gt/intel_rc6.h"
> >>  #include "gt/intel_ring.h"
> >>  #include "gt/uc/intel_guc_slpc.h"
> >>
> >> @@ -4216,6 +4217,20 @@ static int read_properties_unlocked(struct i915_perf *perf,
> >>		return -EINVAL;
> >>	}
> >>
> >> +	/*
> >> +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
> >> +	 * C6 disable in BIOS. Fail if Media C6 is enabled on steppings where OAM
> >> +	 * does not work as expected.
> >> +	 */
> >> +	if (IS_MTL_MEDIA_STEP(props->engine->i915, STEP_A0, STEP_C0) &&
> >> +	    props->engine->gt->type == GT_MEDIA &&
> >
> > Instead of gt type I think it's better to check perf_group->type. That is
> > why as I said below maybe better to have a valid perf_group even in this
> > case.
> >
> >> +	    intel_check_bios_c6_setup(&props->engine->gt->rc6)) {
> >> +		drm_dbg(&perf->i915->drm,
> >> +			"OAM requires media C6 to be disabled in BIOS\n");
> >> +		return -EINVAL;
> >> +	}
> >
> > So now we can change this check to something like:
> >
> >	if (engine->perf_group->type == OAM && i915_perf->mtl_bios_mc6_enabled)
>
> sure, that will work too.

This will probably also need to be moved after the engine_supports_oa check
below.

>
> >
> >> +
> >> +
> >>	if (!engine_supports_oa(props->engine)) {
> >>		drm_dbg(&perf->i915->drm,
> >>			"Engine not supported by OA %d:%d\n",
> >> @@ -4897,6 +4912,15 @@ static u32 num_perf_groups_per_gt(struct intel_gt *gt)
> >>
> >>  static u32 __oam_engine_group(struct intel_engine_cs *engine)
> >>  {
> >> +	/*
> >> +	 * Wa_14017512683: mtl[a0..c0): Use of OAM must be preceded with Media
> >> +	 * C6 disable in BIOS. To disable use of OAM with media engines, set the
> >> +	 * oa_group to PERF_GROUP_INVALID.
> >> +	 */
> >> +	if (IS_MTL_MEDIA_STEP(engine->i915, STEP_A0, STEP_C0) &&
> >> +	    intel_check_bios_c6_setup(&engine->gt->rc6))
> >> +		return PERF_GROUP_INVALID;
> >
> > I think we should just remove this. Let the perf group be valid in this
> > case too since we cannot support OA for a different reason. Then we can use
> > the OAM perf group above.
>
> Sure, I will drop this
> >
> > Though if we drop this we have only 2 instances of the checks instead of 3
> > so maybe ok to not have i915_perf->mtl_bios_mc6_enabled?
>
> yes, since it's only 2 places, I would prefer to leave it as is.
>
> Thanks,
> Umesh
