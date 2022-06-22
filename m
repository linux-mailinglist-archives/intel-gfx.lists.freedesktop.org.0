Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD08556E92
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 00:37:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22631112DC9;
	Wed, 22 Jun 2022 22:37:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAE17112EC8
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 22:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655937432; x=1687473432;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CQjHuyCWH2w9nxXY4eImXPhZSr7pcT+DC6yhN5/YGUY=;
 b=Ut16RFp0H01L51K5gtY1K34uzZ1v9gRjMxKyBUa3ZYXpkDHjwouAn1ZN
 PQCSPSS40E7UvR0f0eNqcxF2k7gp4EJITRznpiDgwE464sDFQ84MlsCTC
 0kw1dx35AoezZrZLLwIYBnwnogllC010RgTnFjaPAXgQoolYGtxBj15Cc
 0CLfxkz4gjvuV+ljUW6UilNxBl8lOXkKD0+n/Ybj/oTr/SfbCFGy89SnN
 PU9zGTJb8xJKUF/NE7WRCpL935CtxwL+xYfVJ//0oXUiB8JonOCNXK/4X
 GmIGr1oIn2vzHD5CDhbS+ctccUhgHWN9LMaia+/3UPxSh+ed0KeLoXYY/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260381847"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="260381847"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 15:36:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="563213980"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 15:36:54 -0700
Date: Wed, 22 Jun 2022 15:36:54 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20220622223654.GB50816@orsosgc001.jf.intel.com>
References: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
 <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
 <ae671cd8-df50-ea8b-0a3f-bd8ec1bea049@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <ae671cd8-df50-ea8b-0a3f-bd8ec1bea049@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update
 engine busyness stats too frequently
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
Cc: intel-gfx@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 20, 2022 at 09:46:30AM +0100, Tvrtko Ursulin wrote:
>
>On 18/06/2022 06:43, Alan Previn wrote:
>>Using igt's gem-create and with additional patches to track object
>>creation time, it was measured that guc_update_engine_gt_clks was
>>getting called over 188 thousand times in the span of 15 seconds
>>(running the test three times).
>>
>>Get a jiffies sample on every trigger and ensure we skip sampling
>>if we are being called too soon. Use half of the ping_delay as a
>>safe threshold.
>>
>>NOTE: with this change, the number of calls went down to just 14
>>over the same span of time (matching the original intent of running
>>about once every 24 seconds, at 19.2Mhz GT freq, per engine).
>
>It would be beneficial to record the root cause. Both frequency of 
>parking/unparking caused by <insert what> and lmem access cost.
>
>>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>>---
>>  drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++++++
>>  2 files changed, 20 insertions(+)
>>
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>index 966e69a8b1c1..26f3e4403de7 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>>@@ -230,6 +230,14 @@ struct intel_guc {
>>  		 * @shift: Right shift value for the gpm timestamp
>>  		 */
>>  		u32 shift;
>>+
>>+		/**
>>+		 * @last_jiffies: jiffies at last actual stats collection time
>>+		 * We use this timestamp to ensure we don't oversample the
>>+		 * stats because runtime power management events can trigger
>>+		 * stats collection at much higher rates than required.
>>+		 */
>>+		u64 last_stat_jiffs;
>
>Why the new "jiffs" naming and not the usual jiffies?
>
>Otherwise a good comment - just align the member name with the 
>kerneldoc name.
>
>>  	} timestamp;
>>  #ifdef CONFIG_DRM_I915_SELFTEST
>>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>index e62ea35513ea..05c945f14ef5 100644
>>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>>@@ -1314,6 +1314,8 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
>>  	unsigned long flags;
>>  	ktime_t unused;
>>+	guc->timestamp.last_stat_jiffs = get_jiffies_64();
>
>Why the 64 bit flavour? It's a first in i915 but it doesn't feel so special.
>
>>+
>>  	spin_lock_irqsave(&guc->timestamp.lock, flags);
>>  	guc_update_pm_timestamp(guc, &unused);
>>@@ -1386,6 +1388,16 @@ void intel_guc_busyness_park(struct intel_gt *gt)
>>  		return;
>>  	cancel_delayed_work(&guc->timestamp.work);
>>+
>>+	/*
>>+	 * Before parking, we should sample engine busyness stats if we need to.
>>+	 * We can skip it if we are less than half a ping from the last time we
>>+	 * sampled the business stats.
>
>busyness
>
>>+	 */
>>+	if (guc->timestamp.last_stat_jiffs && (get_jiffies_64() - guc->timestamp.last_stat_jiffs  <
>>+	   (guc->timestamp.ping_delay >> 1)))
>>+		return;
>
>1)
>Recommend a division instead of a shift.
>
>2)
>Is there a time_after() macro for this?
>
>3)
>Should the logic be contained/consolidated in __update_guc_busyness_stats?
>
It wouldn't hurt to have it in __update_guc_busyness_stats, but 
__update_guc_busyness_stats is also called from the ping worker. Since 
this is targeted for gt_park/gt_unpark events, I would leave it here.

>There is cancel_delayed_work in there - is it okay for that to be 
>bypassed from here?

I don't see it being bypassed. cancel_delayed_work is called before the 
jiffies logic here.

Regards,
Umesh


>
>Regards,
>
>Tvrtko
>
>>+
>>  	__update_guc_busyness_stats(guc);
>>  }
