Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 741AB5476DE
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jun 2022 19:26:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8E0A113049;
	Sat, 11 Jun 2022 17:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53177112F97
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jun 2022 17:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654968406; x=1686504406;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Nv+QUeR5DiBlawS2pCjAOqnPWtX5YRpNU9QWY4NRtDs=;
 b=F1LPHpSCZqUaS/Un9wLz6u26LfkcUv0rUGdAZq1X5pMxgctPQMWWOgH2
 C5fBLmYXtqFXOmmkLobhO0/jpgCVZfnGxD1D/xC9qAvDQcJD5/Pp4co6y
 Sz0zHTUmtzTY9BO15WVqTaaqm4p5BHGWnpWpMof5/h1uvxMp+ZxevxIiP
 Xj3lCA86TP2L0oTD10hKHGu38SyNuQ0P0F0FNEagAHW4n2Nbelyyt9KNh
 AiFxqjZrQulZ/a/xbIL5KHPcIx8jSXKSKT+m/Jxb9F8gewa4QF+RgWPVB
 HGieMsUrSIPt3WxCVm18BM+Y9MCSKFQixqEPktd9f8Q2aCNnHee1hEPA0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10375"; a="275445778"
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="275445778"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2022 10:26:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,293,1647327600"; d="scan'208";a="725481912"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2022 10:26:44 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Jun 2022 10:27:11 -0700
Message-Id: <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
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
 drivers/gpu/drm/i915/gt/intel_engine_types.h      | 10 ++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  9 +++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index 2286f96f5f87..63f4ecdf1606 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -323,6 +323,16 @@ struct intel_engine_guc_stats {
 	 * @start_gt_clk: GT clock time of last idle to active transition.
 	 */
 	u64 start_gt_clk;
+
+	/**
+	 * @last_jiffies: Jiffies at last actual stats collection time
+	 *
+	 * We use this timestamp to ensure we don't oversample the
+	 * stats because runtime power management events can trigger
+	 * stats collection at much higher rates than required.
+	 */
+	u64 last_jiffies;
+
 };
 
 struct intel_engine_cs {
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 5a1dfacf24ea..8f8bf6e40ccb 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1167,6 +1167,15 @@ static void guc_update_engine_gt_clks(struct intel_engine_cs *engine)
 	struct intel_engine_guc_stats *stats = &engine->stats.guc;
 	struct intel_guc *guc = &engine->gt->uc.guc;
 	u32 last_switch, ctx_id, total;
+	u64 newjiffs;
+
+	/* Don't worry about jiffies wrap-around, a rare additional sample won't have any impact */
+	newjiffs = get_jiffies_64();
+	if (stats->last_jiffies && (newjiffs - stats->last_jiffies <
+	   (guc->timestamp.ping_delay << 1)))
+		return;
+
+	stats->last_jiffies = newjiffs;
 
 	lockdep_assert_held(&guc->timestamp.lock);
 
-- 
2.25.1

