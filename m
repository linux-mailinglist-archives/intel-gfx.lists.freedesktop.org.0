Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0FB557112
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 04:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170C110E7F5;
	Thu, 23 Jun 2022 02:31:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64DFB10E7F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 02:31:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655951475; x=1687487475;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=b0ErMMhWF2bOL963V0PU0+Kb/CarbsMAN5wgx5q4yow=;
 b=AQbJGqi+R0EYYZpipSRAKJuso+WwsvLCLjLK6QGHFveTnQMXU38Qk64s
 KEprMs66LNrdcM55tQoVtA1qCtrvqOFVNaoIv61gn/3PjiwsFVrtXL7eH
 lp/u/xC1JnNf4m68/uQw8xyio4ySdBpT3pdYdXi5Ikcpi3o2z/Dwz+RI8
 bIrTm5Iv7DUmcxYxjP/4spiV6gLJ6VqqZfjskTlSKQCaVB2coYIFqjv1M
 ovKEpo1c3Dz34Bt5TbhWIdcf8YmLfnlVDlrEW2tsWmHsc9LXDlt+///ph
 jHtKBVSeO3FkD2TSFmqH0y5BAFGaHfumq3RF6xInnlusyOIYE1gXnP/Po w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280651279"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="280651279"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 19:31:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="563269044"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga006.jf.intel.com with ESMTP; 22 Jun 2022 19:31:14 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 19:31:57 -0700
Message-Id: <20220623023157.211650-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220623023157.211650-1-alan.previn.teres.alexis@intel.com>
References: <20220623023157.211650-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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

Using two different types of workoads, it was observed that
guc_update_engine_gt_clks was being called too frequently and/or
causing a CPU-to-lmem bandwidth hit over PCIE. Details on
the workloads and numbers are in the notes below.

Background: At the moment, guc_update_engine_gt_clks can be invoked
via one of 3 ways. #1 and #2 are infrequent under normal operating
conditions:
     1.When a predefined "ping_delay" timer expires so that GuC-
       busyness can sample the GTPM clock counter to ensure it
       doesn't miss a wrap-around of the 32-bits of the HW counter.
       (The ping_delay is calculated based on 1/8th the time taken
       for the counter go from 0x0 to 0xffffffff based on the
       GT frequency. This comes to about once every 28 seconds at a
       GT frequency of 19.2Mhz).
     2.In preparation for a gt reset.
     3.In response to __gt_park events (as the gt power management
       puts the gt into a lower power state when there is no work
       being done).

Root-cause: For both the workloads described farther below, it was
observed that when user space calls IOCTLs that unparks the
gt momentarily and repeats such calls many times in quick succession,
it triggers calling guc_update_engine_gt_clks as many times. However,
the primary purpose of guc_update_engine_gt_clks is to ensure we don't
miss the wraparound while the counter is ticking. Thus, the solution
is to ensure we skip that check if gt_park is calling this function
earlier than necessary.

Solution: Snapshot jiffies when we do actually update the busyness
stats. Then get the new jiffies every time intel_guc_busyness_park
is called and bail if we are being called too soon. Use half of the
ping_delay as a safe threshold.

NOTE1: Workload1: IGTs' gem_create was modified to create a file handle,
allocate memory with sizes that range from a min of 4K to the max supported
(in power of two step-sizes). Its maps, modifies and reads back the
memory. Allocations and modification is repeated until total memory
allocation reaches the max. Then the file handle is closed. With this
workload, guc_update_engine_gt_clks was called over 188 thousand times
in the span of 15 seconds while this test ran three times. With this patch,
the number of calls reduced to 14.

NOTE2: Workload2: 30 transcode sessions are created in quick succession.
While these sessions are created, pcm-iio tool was used to measure I/O
read operation bandwidth consumption sampled at 100 milisecond intervals
over the course of 20 seconds. The total bandwidth consumed over 20 seconds
without this patch was measured at average at 311KBps per sample. With this
patch, the number went down to about 175Kbps which is about a 43% savings.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 13 +++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 966e69a8b1c1..d0d99f178f2d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -230,6 +230,14 @@ struct intel_guc {
 		 * @shift: Right shift value for the gpm timestamp
 		 */
 		u32 shift;
+
+		/**
+		 * @last_stat_jiffies: jiffies at last actual stats collection time
+		 * We use this timestamp to ensure we don't oversample the
+		 * stats because runtime power management events can trigger
+		 * stats collection at much higher rates than required.
+		 */
+		unsigned long last_stat_jiffies;
 	} timestamp;
 
 #ifdef CONFIG_DRM_I915_SELFTEST
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e62ea35513ea..c9f167b80910 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1314,6 +1314,8 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	unsigned long flags;
 	ktime_t unused;
 
+	guc->timestamp.last_stat_jiffies = jiffies;
+
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
 
 	guc_update_pm_timestamp(guc, &unused);
@@ -1386,6 +1388,17 @@ void intel_guc_busyness_park(struct intel_gt *gt)
 		return;
 
 	cancel_delayed_work(&guc->timestamp.work);
+
+	/*
+	 * Before parking, we should sample engine busyness stats if we need to.
+	 * We can skip it if we are less than half a ping from the last time we
+	 * sampled the busyness stats.
+	 */
+	if (guc->timestamp.last_stat_jiffies &&
+	    !time_after(jiffies, guc->timestamp.last_stat_jiffies +
+			(guc->timestamp.ping_delay / 2)))
+		return;
+
 	__update_guc_busyness_stats(guc);
 }
 
-- 
2.25.1

