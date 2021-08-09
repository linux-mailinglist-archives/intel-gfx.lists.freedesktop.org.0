Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 724153E48F2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 17:35:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8540895F5;
	Mon,  9 Aug 2021 15:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BABA895F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 15:35:29 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 w21-20020a7bc1150000b02902e69ba66ce6so306953wmi.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 08:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6igjVsgKQ6L0O5Ip6zXaCn0zrGzS74UOSinjxAoKDQo=;
 b=exHdKvLtUAR3WpZBT9i+no75asFcwkQiIW3drwPVYHish2dqLTJZaweTXoeXD6Cw9C
 +NiYyM7rMkv2A3/p4ftYCFbukS7+svTZZq2LIMXRa5t2wfvJYNHQtkDO0lwHZs80z4Ct
 2s1A68BSDQ6uhVOW6yW32kunEeBG6gP6xvibA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6igjVsgKQ6L0O5Ip6zXaCn0zrGzS74UOSinjxAoKDQo=;
 b=ZT6wNMre1De4/9K0BD8hSeXz2IkZyePlgPa9QH7gf57bx9FFdi7IesEkfnu/+hndbI
 f8C5KVgaaKCfNohvKkQbY0ETwNOmd1cBM6uxUP/DZpQrIhYuRumaXBHKcflt7Eeo/rhb
 F/6SCz4O8Ng//VkKbjWc0JuWLujd9mRs6ndKYFeOsyUyIi/TBbFM1lzciijh0LpIFPVE
 esvXtrWDihElLAQ1M9OKNwCcCrThvpx7aq7Aa+3qiOqqofuu5WTba9Rv8AH799jxEqUA
 pGsr420El43WbnqDPGS/rkoG0625HZJSxVflDXqu1gwd/WPkz8KBqFuntJ2LmiW9Fe6v
 LHhg==
X-Gm-Message-State: AOAM5323w0aPFM7GQ9JszNXS4c75Buz/tiLLdZyD0qTqs7hV8SY7639I
 Q8PVAdIogQ3srKHZG7ZtuI1LbA==
X-Google-Smtp-Source: ABdhPJzWWIZfFKmfCwMsofBVx5hzP/Kk8UPHTUNOgyAbI7Se9WZVDc444CM2Emhoidw9DdzDnTKOGg==
X-Received: by 2002:a1c:452:: with SMTP id 79mr34013385wme.125.1628523327640; 
 Mon, 09 Aug 2021 08:35:27 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n186sm24932923wme.40.2021.08.09.08.35.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 08:35:27 -0700 (PDT)
Date: Mon, 9 Aug 2021 17:35:25 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YRFLPfzsAgFqqytd@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-21-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803222943.27686-21-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 20/46] drm/i915/guc: Add hang check to GuC
 submit engine
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

On Tue, Aug 03, 2021 at 03:29:17PM -0700, Matthew Brost wrote:
> The heartbeat uses a single instance of a GuC submit engine (GSE) to do
> the hang check. As such if a different GSE's state machine hangs, the
> heartbeat cannot detect this hang. Add timer to each GSE which in turn
> can disable all submissions if it is hung.
> 
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 36 +++++++++++++++++++
>  .../i915/gt/uc/intel_guc_submission_types.h   |  3 ++
>  2 files changed, 39 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index afb9b4bb8971..2d8296bcc583 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -105,15 +105,21 @@ static bool tasklet_blocked(struct guc_submit_engine *gse)
>  	return test_bit(GSE_STATE_TASKLET_BLOCKED, &gse->flags);
>  }
>  
> +/* 2 seconds seems like a reasonable timeout waiting for a G2H */
> +#define MAX_TASKLET_BLOCKED_NS	2000000000
>  static void set_tasklet_blocked(struct guc_submit_engine *gse)
>  {
>  	lockdep_assert_held(&gse->sched_engine.lock);
> +	hrtimer_start_range_ns(&gse->hang_timer,
> +			       ns_to_ktime(MAX_TASKLET_BLOCKED_NS), 0,
> +			       HRTIMER_MODE_REL_PINNED);
>  	set_bit(GSE_STATE_TASKLET_BLOCKED, &gse->flags);

So with drm/scheduler the reset handling is assumed to be
single-threaded, and there's quite complex rules around that. I've
recently worked with Boris Brezillion to clarify all this a bit and
improve docs. Does this all still work in that glorious future? Might be
good to at least sprinkle some comments/thoughts around in the commit
message about the envisaged future direction for all this stuff, to keep
people in the loop. Especially future people.

Ofc plan is still to just largely land all this.

Also: set_bit is an unordered atomic, which means you need barriers, which
meanes ... *insert the full rant about justifying/documenting lockless
algorithms from earlier *

But I think this all falls out with the removal of the guc-id allocation
scheme?
-Daniel

>  }
>  
>  static void __clr_tasklet_blocked(struct guc_submit_engine *gse)
>  {
>  	lockdep_assert_held(&gse->sched_engine.lock);
> +	hrtimer_cancel(&gse->hang_timer);
>  	clear_bit(GSE_STATE_TASKLET_BLOCKED, &gse->flags);
>  }
>  
> @@ -1028,6 +1034,7 @@ static void disable_submission(struct intel_guc *guc)
>  		if (__tasklet_is_enabled(&sched_engine->tasklet)) {
>  			GEM_BUG_ON(!guc->ct.enabled);
>  			__tasklet_disable_sync_once(&sched_engine->tasklet);
> +			hrtimer_try_to_cancel(&guc->gse[i]->hang_timer);
>  			sched_engine->tasklet.callback = NULL;
>  		}
>  	}
> @@ -3750,6 +3757,33 @@ static void guc_sched_engine_destroy(struct kref *kref)
>  	kfree(gse);
>  }
>  
> +static enum hrtimer_restart gse_hang(struct hrtimer *hrtimer)
> +{
> +	struct guc_submit_engine *gse =
> +		container_of(hrtimer, struct guc_submit_engine, hang_timer);
> +	struct intel_guc *guc = gse->sched_engine.private_data;
> +
> +#if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> +	if (guc->gse_hang_expected)
> +		drm_dbg(&guc_to_gt(guc)->i915->drm,
> +			"GSE[%i] hung, disabling submission", gse->id);
> +	else
> +		drm_err(&guc_to_gt(guc)->i915->drm,
> +			"GSE[%i] hung, disabling submission", gse->id);
> +#else
> +	drm_err(&guc_to_gt(guc)->i915->drm,
> +		"GSE[%i] hung, disabling submission", gse->id);
> +#endif
> +
> +	/*
> +	 * Tasklet not making forward progress, disable submission which in turn
> +	 * will kick in the heartbeat to do a full GPU reset.
> +	 */
> +	disable_submission(guc);
> +
> +	return HRTIMER_NORESTART;
> +}
> +
>  static void guc_submit_engine_init(struct intel_guc *guc,
>  				   struct guc_submit_engine *gse,
>  				   int id)
> @@ -3767,6 +3801,8 @@ static void guc_submit_engine_init(struct intel_guc *guc,
>  	sched_engine->retire_inflight_request_prio =
>  		guc_retire_inflight_request_prio;
>  	sched_engine->private_data = guc;
> +	hrtimer_init(&gse->hang_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
> +	gse->hang_timer.function = gse_hang;
>  	gse->id = id;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission_types.h
> index a5933e07bdd2..eae2e9725ede 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission_types.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission_types.h
> @@ -6,6 +6,8 @@
>  #ifndef _INTEL_GUC_SUBMISSION_TYPES_H_
>  #define _INTEL_GUC_SUBMISSION_TYPES_H_
>  
> +#include <linux/xarray.h>
> +
>  #include "gt/intel_engine_types.h"
>  #include "gt/intel_context_types.h"
>  #include "i915_scheduler_types.h"
> @@ -41,6 +43,7 @@ struct guc_submit_engine {
>  	unsigned long flags;
>  	int total_num_rq_with_no_guc_id;
>  	atomic_t num_guc_ids_not_ready;
> +	struct hrtimer hang_timer;
>  	int id;
>  
>  	/*
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
