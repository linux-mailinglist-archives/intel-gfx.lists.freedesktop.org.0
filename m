Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26B6A458B2B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 10:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6575C89E7B;
	Mon, 22 Nov 2021 09:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A0889E7B
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 09:12:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="295560933"
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="295560933"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 01:12:53 -0800
X-IronPort-AV: E=Sophos;i="5.87,254,1631602800"; d="scan'208";a="508458206"
Received: from aalazizi-mobl1.amr.corp.intel.com (HELO [10.213.249.159])
 ([10.213.249.159])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 01:12:52 -0800
Message-ID: <afa62a68-43e8-460e-ad7a-0b21aba79d93@linux.intel.com>
Date: Mon, 22 Nov 2021 09:12:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20211120014201.26480-1-umesh.nerlige.ramappa@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20211120014201.26480-1-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Avoid with_intel_runtime_pm
 within spinlock
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


On 20/11/2021 01:42, Umesh Nerlige Ramappa wrote:
> When guc timestamp ping worker runs it takes the spinlock and calls
> with_intel_runtime_pm.  Since with_intel_runtime_pm may sleep, move the
> spinlock inside __update_guc_busyness_stats.
> 
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 +++---------
>   1 file changed, 3 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 77fbcd8730ee..a7108b38973e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1251,12 +1251,15 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	struct intel_engine_cs *engine;
>   	enum intel_engine_id id;
> +	unsigned long flags;
>   	ktime_t unused;
>   
> +	spin_lock_irqsave(&guc->timestamp.lock, flags);
>   	for_each_engine(engine, gt, id) {
>   		guc_update_pm_timestamp(guc, engine, &unused);
>   		guc_update_engine_gt_clks(engine);
>   	}
> +	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>   }
>   
>   static void guc_timestamp_ping(struct work_struct *wrk)
> @@ -1266,7 +1269,6 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>   	struct intel_gt *gt = guc_to_gt(guc);
>   	intel_wakeref_t wakeref;
> -	unsigned long flags;
>   	int srcu, ret;
>   
>   	/*
> @@ -1277,13 +1279,9 @@ static void guc_timestamp_ping(struct work_struct *wrk)
>   	if (ret)
>   		return;
>   
> -	spin_lock_irqsave(&guc->timestamp.lock, flags);
> -
>   	with_intel_runtime_pm(&gt->i915->runtime_pm, wakeref)
>   		__update_guc_busyness_stats(guc);
>   
> -	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
> -
>   	intel_gt_reset_unlock(gt, srcu);
>   
>   	mod_delayed_work(system_highpri_wq, &guc->timestamp.work,
> @@ -1322,16 +1320,12 @@ static void guc_init_engine_stats(struct intel_guc *guc)
>   void intel_guc_busyness_park(struct intel_gt *gt)
>   {
>   	struct intel_guc *guc = &gt->uc.guc;
> -	unsigned long flags;
>   
>   	if (!guc_submission_initialized(guc))
>   		return;
>   
>   	cancel_delayed_work(&guc->timestamp.work);
> -
> -	spin_lock_irqsave(&guc->timestamp.lock, flags);
>   	__update_guc_busyness_stats(guc);
> -	spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>   }
>   
>   void intel_guc_busyness_unpark(struct intel_gt *gt)
> 

Not sure how this sneaked in when I think topic was mentioned. Or if I 
misremembering, are the might_sleep annotations not there in runtime pm get?

Anyway:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
