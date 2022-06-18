Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EEE550311
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jun 2022 07:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45ACF11ABAD;
	Sat, 18 Jun 2022 05:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F292711ABAF
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jun 2022 05:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655530991; x=1687066991;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=61JBw260/OdfuIPkRfewBvVtngP32AAkWumJ99Dq4WM=;
 b=c+Pcy8Xf0+YxlyDdUzxYAsLPoELx4ZnG7Bo/8A5AEq1OMrW2n78f9OKK
 0L8xpRGkV10IyIFpFuuIqQD6vK24qwFZKXjeNpquLkKUGJ27K2c3kShI8
 0z83Agf8lCVX2rE+K1vZePdIVOU1JfZVoPz1DeMc0n4asP3oOg7fLy+q6
 nci8SDJ2GCxUFx9q2rJp2WWjnU7fjI5wULsYk4VD/WuWcVc9xZ7Tl7sG/
 XswDWLeovaarbojx2NMFRhNoNF8+SBlsB2jc322j6D0oXqQ6P7gOMevPz
 iZJdn8/UixwaYkOX/OHcziouVJSxuMfa+ZT794sx4zR8bIUJygjo6Ywo6 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="341316536"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="341316536"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 22:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="580024786"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga002.jf.intel.com with ESMTP; 17 Jun 2022 22:43:10 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jun 2022 22:43:45 -0700
Message-Id: <20220618054345.2086300-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
References: <20220618054345.2086300-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx v2 1/1] drm/i915/guc: Don't update engine
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

Using igt's gem-create and with additional patches to track object
creation time, it was measured that guc_update_engine_gt_clks was
getting called over 188 thousand times in the span of 15 seconds
(running the test three times).

Get a jiffies sample on every trigger and ensure we skip sampling
if we are being called too soon. Use half of the ping_delay as a
safe threshold.

NOTE: with this change, the number of calls went down to just 14
over the same span of time (matching the original intent of running
about once every 24 seconds, at 19.2Mhz GT freq, per engine).

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 966e69a8b1c1..26f3e4403de7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -230,6 +230,14 @@ struct intel_guc {
 		 * @shift: Right shift value for the gpm timestamp
 		 */
 		u32 shift;
+
+		/**
+		 * @last_jiffies: jiffies at last actual stats collection time
+		 * We use this timestamp to ensure we don't oversample the
+		 * stats because runtime power management events can trigger
+		 * stats collection at much higher rates than required.
+		 */
+		u64 last_stat_jiffs;
 	} timestamp;
 
 #ifdef CONFIG_DRM_I915_SELFTEST
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index e62ea35513ea..05c945f14ef5 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1314,6 +1314,8 @@ static void __update_guc_busyness_stats(struct intel_guc *guc)
 	unsigned long flags;
 	ktime_t unused;
 
+	guc->timestamp.last_stat_jiffs = get_jiffies_64();
+
 	spin_lock_irqsave(&guc->timestamp.lock, flags);
 
 	guc_update_pm_timestamp(guc, &unused);
@@ -1386,6 +1388,16 @@ void intel_guc_busyness_park(struct intel_gt *gt)
 		return;
 
 	cancel_delayed_work(&guc->timestamp.work);
+
+	/*
+	 * Before parking, we should sample engine busyness stats if we need to.
+	 * We can skip it if we are less than half a ping from the last time we
+	 * sampled the business stats.
+	 */
+	if (guc->timestamp.last_stat_jiffs && (get_jiffies_64() - guc->timestamp.last_stat_jiffs  <
+	   (guc->timestamp.ping_delay >> 1)))
+		return;
+
 	__update_guc_busyness_stats(guc);
 }
 
-- 
2.25.1

