Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A1C12D202
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:30:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA476E030;
	Mon, 30 Dec 2019 16:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 534846E030
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:30:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 08:30:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,375,1571727600"; d="scan'208";a="418987137"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga005.fm.intel.com with ESMTP; 30 Dec 2019 08:30:44 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C137B5C1DD6; Mon, 30 Dec 2019 18:30:21 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191230160112.3838434-5-chris@chris-wilson.co.uk>
References: <20191230160112.3838434-1-chris@chris-wilson.co.uk>
 <20191230160112.3838434-5-chris@chris-wilson.co.uk>
Date: Mon, 30 Dec 2019 18:30:21 +0200
Message-ID: <877e2drd2a.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/gt: Discard stale context
 state from across idling
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Before we idle, on parking, we switch to the kernel context such that we
> have a scratch context loaded while the GPU idle, protecting any
> precious user state. Be paranoid and assume that the idle state may have
> been trashed, and reset the kernel_context image after idling.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_pm.c | 6 ++++++
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 8 --------
>  drivers/gpu/drm/i915/gt/mock_engine.c     | 5 +++++
>  3 files changed, 11 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.c b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> index cd82f0baef49..1b9f73948f22 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.c
> @@ -20,6 +20,7 @@ static int __engine_unpark(struct intel_wakeref *wf)
>  {
>  	struct intel_engine_cs *engine =
>  		container_of(wf, typeof(*engine), wakeref);
> +	struct intel_context *ce;
>  	void *map;
>  
>  	ENGINE_TRACE(engine, "\n");
> @@ -34,6 +35,11 @@ static int __engine_unpark(struct intel_wakeref *wf)
>  	if (!IS_ERR_OR_NULL(map))
>  		engine->pinned_default_state = map;
>  
> +	/* Discard stale context state from across idling */
> +	ce = engine->kernel_context;
> +	if (ce)
> +		ce->ops->reset(ce);
> +

Expect the worst, sure.
Checksum would get us datapoints tho.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>


>  	if (engine->unpark)
>  		engine->unpark(engine);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 9b220c930ebc..d1c2f034296a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -213,16 +213,8 @@ int intel_gt_resume(struct intel_gt *gt)
>  	intel_llc_enable(&gt->llc);
>  
>  	for_each_engine(engine, gt, id) {
> -		struct intel_context *ce;
> -
>  		intel_engine_pm_get(engine);
>  
> -		ce = engine->kernel_context;
> -		if (ce) {
> -			GEM_BUG_ON(!intel_context_is_pinned(ce));
> -			ce->ops->reset(ce);
> -		}
> -
>  		engine->serial++; /* kernel context lost */
>  		err = engine->resume(engine);
>  
> diff --git a/drivers/gpu/drm/i915/gt/mock_engine.c b/drivers/gpu/drm/i915/gt/mock_engine.c
> index 4e1eafa94be9..d0e68ce9aa51 100644
> --- a/drivers/gpu/drm/i915/gt/mock_engine.c
> +++ b/drivers/gpu/drm/i915/gt/mock_engine.c
> @@ -152,6 +152,10 @@ static int mock_context_pin(struct intel_context *ce)
>  	return intel_context_active_acquire(ce);
>  }
>  
> +static void mock_context_reset(struct intel_context *ce)
> +{
> +}
> +
>  static const struct intel_context_ops mock_context_ops = {
>  	.alloc = mock_context_alloc,
>  
> @@ -161,6 +165,7 @@ static const struct intel_context_ops mock_context_ops = {
>  	.enter = intel_context_enter_engine,
>  	.exit = intel_context_exit_engine,
>  
> +	.reset = mock_context_reset,
>  	.destroy = mock_context_destroy,
>  };
>  
> -- 
> 2.25.0.rc0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
