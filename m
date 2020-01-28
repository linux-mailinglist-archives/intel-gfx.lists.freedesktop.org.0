Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A368E14B43F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 13:35:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9893D6E054;
	Tue, 28 Jan 2020 12:35:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B846E054
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 12:35:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 04:35:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,373,1574150400"; d="scan'208";a="222084516"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga008.jf.intel.com with ESMTP; 28 Jan 2020 04:35:28 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2610F5C1E0F; Tue, 28 Jan 2020 14:34:42 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200127231540.3302516-6-chris@chris-wilson.co.uk>
References: <20200127231540.3302516-1-chris@chris-wilson.co.uk>
 <20200127231540.3302516-6-chris@chris-wilson.co.uk>
Date: Tue, 28 Jan 2020 14:34:42 +0200
Message-ID: <877e1bn4il.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/gt: Lift set-wedged engine
 dumping out of user paths
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The user (e.g. gem_eio) can manipulate the driver into wedging itself,
> allowing the user to trigger voluminous logging of inconsequential
> details. If we lift the dump to direct calls to intel_gt_set_wedged(),
> out of the intel_reset failure handling, we keep the detail logging for
> what we expect are true HW or test failures without being tricked.
>
> Reported-by: Tomi Sarvela <tomi.p.sarvela@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 30 +++++++++++++++++++--------
>  1 file changed, 21 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index beee0cf89bce..423a02506b2d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -800,13 +800,6 @@ static void __intel_gt_set_wedged(struct intel_gt *gt)
>  	if (test_bit(I915_WEDGED, &gt->reset.flags))
>  		return;
>  
> -	if (GEM_SHOW_DEBUG() && !intel_engines_are_idle(gt)) {
> -		struct drm_printer p = drm_debug_printer(__func__);
> -
> -		for_each_engine(engine, gt, id)
> -			intel_engine_dump(engine, &p, "%s\n", engine->name);
> -	}
> -
>  	GT_TRACE(gt, "start\n");
>  
>  	/*
> @@ -845,10 +838,29 @@ void intel_gt_set_wedged(struct intel_gt *gt)
>  {
>  	intel_wakeref_t wakeref;
>  
> +	if (test_bit(I915_WEDGED, &gt->reset.flags))
> +		return;
> +
> +	wakeref = intel_runtime_pm_get(gt->uncore->rpm);
>  	mutex_lock(&gt->reset.mutex);
> -	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -		__intel_gt_set_wedged(gt);
> +
> +	if (GEM_SHOW_DEBUG() && !intel_engines_are_idle(gt)) {

As you inspect each engine separately the precursory idle check
seems superfluous.

-Mika

> +		struct drm_printer p = drm_debug_printer(__func__);
> +		struct intel_engine_cs *engine;
> +		enum intel_engine_id id;
> +
> +		for_each_engine(engine, gt, id) {
> +			if (intel_engine_is_idle(engine))
> +				continue;
> +
> +			intel_engine_dump(engine, &p, "%s\n", engine->name);
> +		}
> +	}
> +
> +	__intel_gt_set_wedged(gt);
> +
>  	mutex_unlock(&gt->reset.mutex);
> +	intel_runtime_pm_put(gt->uncore->rpm, wakeref);
>  }
>  
>  static bool __intel_gt_unset_wedged(struct intel_gt *gt)
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
