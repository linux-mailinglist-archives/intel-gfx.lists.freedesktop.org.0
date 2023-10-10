Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D687BF811
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 11:58:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ECD910E1C0;
	Tue, 10 Oct 2023 09:58:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBE5A10E1C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696931913; x=1728467913;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9+Y4/WwIOd4VHeNPiOnZ4UD7UsjChL/mVN5ke5f9gow=;
 b=GdK4fRSE/gze4W7AG/IGbEEMywhBpPX9HmsfUiZcYZVickH6MOk3L3lS
 SfZXuOZneA1lnocUeztDS4tq4KBodzpt4zsE1ndGnHm6otyr+Qlq6a1xm
 rksOeZVe3XXvfTo5H3MjNIJByEaLQS88NR3R+rSgvvuwVZWzkm8yII2LD
 7JxtRvD93PHzIuCG/A/39/cwRe48HdVtYX3Bb608xJetY7BHu8yB+tVO5
 BpkCRIdlNke8vs6rW2/+g1eU7KqYz2IEi5p+YfL/1RjPD9fo5nSzPVrwX
 UCbqh6u5BI3cFb+zh2DFltkMqIla03GXFXWO4MBHyXQnIiL1t4tMywmQ/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="387192315"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="387192315"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 02:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="703244419"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="703244419"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga003.jf.intel.com with ESMTP; 10 Oct 2023 02:58:31 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 12:52:33 +0300
Message-Id: <20231010095233.590613-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/lnl: Remove watchdog timers for PSR
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

Watchdorg timers for Lunarlake HW were removed for PSR/PSR2
The patch removes the use of these timers from the driver code.

BSpec: 69895

v2: Reword commit message (Ville)
    Drop HPD mask from LNL (Ville)
    Revise masking logic (Jouni)
v3: Revise commit message (Ville)
    Revert HPD mask removal as irrelevant for this patch (Ville)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bb65881e87cc..4f1f31fc9529 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -676,7 +676,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 
 	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
+	if (DISPLAY_VER(dev_priv) < 20)
+		val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
+
 	if (IS_HASWELL(dev_priv))
 		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
 
@@ -1400,8 +1402,10 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 	 */
 	mask = EDP_PSR_DEBUG_MASK_MEMUP |
 	       EDP_PSR_DEBUG_MASK_HPD |
-	       EDP_PSR_DEBUG_MASK_LPSP |
-	       EDP_PSR_DEBUG_MASK_MAX_SLEEP;
+	       EDP_PSR_DEBUG_MASK_LPSP;
+
+	if (DISPLAY_VER(dev_priv) < 20)
+		mask |= EDP_PSR_DEBUG_MASK_MAX_SLEEP;
 
 	/*
 	 * No separate pipe reg write mask on hsw/bdw, so have to unmask all
-- 
2.34.1

