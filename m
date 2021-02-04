Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 083B230F350
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 13:45:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 939B96E053;
	Thu,  4 Feb 2021 12:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791E06E053
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 12:45:34 +0000 (UTC)
IronPort-SDR: hCyeAxF7pya1ysgh2p+R3ncV53CYEw4/c2EQicNey9yJg9MY10+Oc1xUmd9t9nAq1US7pXktlm
 pe6S9xOlERZg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="168911664"
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; d="scan'208";a="168911664"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 04:45:33 -0800
IronPort-SDR: OM1svGCxS7dxVnxAuFJGN6dKyPMGPLMiWnf8qwv+dXETLWLYLwDm+lt6FyTb4IDFSILv06jrW6
 dLMQxlIlodRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,400,1602572400"; d="scan'208";a="359781822"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 04 Feb 2021 04:45:30 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 3FCB95C1F9C; Thu,  4 Feb 2021 14:45:25 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210204110620.32422-1-chris@chris-wilson.co.uk>
References: <20210204110620.32422-1-chris@chris-wilson.co.uk>
Date: Thu, 04 Feb 2021 14:45:25 +0200
Message-ID: <8735ycuhlm.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 1/3] drm/i915/selftests: Restore previous
 heartbeat interval
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Use the defaults we store on the engine when resetting the heartbeat as
> we may have had to adjust it from the config value during initialisation.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../gpu/drm/i915/gt/selftest_engine_heartbeat.c    | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> index b0bae6676140..b2c369317bf1 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_heartbeat.c
> @@ -11,6 +11,12 @@
>  #include "i915_selftest.h"
>  #include "selftest_engine_heartbeat.h"
>  
> +static void reset_heartbeat(struct intel_engine_cs *engine)
> +{
> +	intel_engine_set_heartbeat(engine,
> +				   engine->defaults.heartbeat_interval_ms);
> +}
> +
>  static int timeline_sync(struct intel_timeline *tl)
>  {
>  	struct dma_fence *fence;
> @@ -269,7 +275,7 @@ static int __live_heartbeat_fast(struct intel_engine_cs *engine)
>  		err = -EINVAL;
>  	}
>  
> -	intel_engine_set_heartbeat(engine, CONFIG_DRM_I915_HEARTBEAT_INTERVAL);
> +	reset_heartbeat(engine);
>  err_pm:
>  	intel_engine_pm_put(engine);
>  	intel_context_put(ce);
> @@ -284,7 +290,7 @@ static int live_heartbeat_fast(void *arg)
>  	int err = 0;
>  
>  	/* Check that the heartbeat ticks at the desired rate. */
> -	if (!CONFIG_DRM_I915_HEARTBEAT_INTERVAL)
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
>  		return 0;
>  
>  	for_each_engine(engine, gt, id) {
> @@ -332,7 +338,7 @@ static int __live_heartbeat_off(struct intel_engine_cs *engine)
>  	}
>  
>  err_beat:
> -	intel_engine_set_heartbeat(engine, CONFIG_DRM_I915_HEARTBEAT_INTERVAL);
> +	reset_heartbeat(engine);
>  err_pm:
>  	intel_engine_pm_put(engine);
>  	return err;
> @@ -346,7 +352,7 @@ static int live_heartbeat_off(void *arg)
>  	int err = 0;
>  
>  	/* Check that we can turn off heartbeat and not interrupt VIP */
> -	if (!CONFIG_DRM_I915_HEARTBEAT_INTERVAL)
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_HEARTBEAT_INTERVAL))
>  		return 0;
>  
>  	for_each_engine(engine, gt, id) {
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
