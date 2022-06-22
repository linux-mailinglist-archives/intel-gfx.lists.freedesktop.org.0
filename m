Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 138BA556EC3
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 01:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599C51134BA;
	Wed, 22 Jun 2022 23:01:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719621134BA
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 23:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655938860; x=1687474860;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=j3SkJSlUDmOZvg4mM6HpyPEt4gV9hJr9t58BfIRUHok=;
 b=iTgvr7bQwXxc9yM5DY+GmJgjcQyvw06A1XfBeISnuY8K90qGN/nHcuSn
 3CeguBA7e3zMxr8dniGYDd968K+UUFuXmMD7Pkwt/xfihAlNFMRrFj6Ve
 8W69yQkW5EllOQpS8G/nrQtNCtPYaVHR4S3M07jz4l7qW6LlCMSCHqMU/
 M+n4OruStkGzJOBNDI6E0qDebDYPQ9a4iAAnrZVCI8DbwisxuyTIYffD3
 RTkPWlDgaFtRjJyu8GxQVSqqRH9jSIvlpmy2p9eh4MtRzeRUMEQmWnRuN
 rUbn+QVwUOLDIrC3+oc5jHh2WuoCCUcR6On4+vVXS9MpWDrVmUGnfKKfG A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260385618"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="260385618"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 16:01:00 -0700
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="644433346"
Received: from orsosgc001.jf.intel.com ([10.165.21.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 16:01:00 -0700
Date: Wed, 22 Jun 2022 16:00:59 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220622230059.GC50816@orsosgc001.jf.intel.com>
References: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
 <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jun 17, 2022 at 10:43:45PM -0700, Alan Previn wrote:
>Using igt's gem-create and with additional patches to track object
>creation time, it was measured that guc_update_engine_gt_clks was
>getting called over 188 thousand times in the span of 15 seconds
>(running the test three times).
>
>Get a jiffies sample on every trigger and ensure we skip sampling
>if we are being called too soon. Use half of the ping_delay as a
>safe threshold.
>
>NOTE: with this change, the number of calls went down to just 14
>over the same span of time (matching the original intent of running
>about once every 24 seconds, at 19.2Mhz GT freq, per engine).
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
> drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++++++
> 2 files changed, 20 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>index 966e69a8b1c1..26f3e4403de7 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>@@ -230,6 +230,14 @@ struct intel_guc {
> 		 * @shift: Right shift value for the gpm timestamp
> 		 */
> 		u32 shift;
>+
>+		/**
>+		 * @last_jiffies: jiffies at last actual stats collection time
>+		 * We use this timestamp to ensure we don't oversample the
>+		 * stats because runtime power management events can trigger
>+		 * stats collection at much higher rates than required.
>+		 */
>+		u64 last_stat_jiffs;
> 	} timestamp;
>
> #ifdef CONFIG_DRM_I915_SELFTEST
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index e62ea35513ea..05c945f14ef5 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -1314,6 +1314,8 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
> 	unsigned long flags;
> 	ktime_t unused;
>
>+	guc->timestamp.last_stat_jiffs = get_jiffies_64();
>+
> 	spin_lock_irqsave(&guc->timestamp.lock, flags);
>
> 	guc_update_pm_timestamp(guc, &unused);
>@@ -1386,6 +1388,16 @@ void intel_guc_busyness_park(struct intel_gt *gt)
> 		return;
>
> 	cancel_delayed_work(&guc->timestamp.work);
>+
>+	/*
>+	 * Before parking, we should sample engine busyness stats if we need to.
>+	 * We can skip it if we are less than half a ping from the last time we
>+	 * sampled the business stats.
>+	 */
>+	if (guc->timestamp.last_stat_jiffs && (get_jiffies_64() - guc->timestamp.last_stat_jiffs  <
>+	   (guc->timestamp.ping_delay >> 1)))
>+		return;
>+

I would just sample the jiffies here instead of inside 
__update_guc_busyness_stats(), so all the logic is within this function 
and easy to read.

Either ways, this should work too, so this is

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh

> 	__update_guc_busyness_stats(guc);
> }
>
>-- 
>2.25.1
>
