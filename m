Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DFF48C312
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:27:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A518E10E276;
	Wed, 12 Jan 2022 11:27:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B2510E276
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641986841; x=1673522841;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=z22WTFAtWYwvcmQ1l3iL1oIXeICpGJ/xgA4Gugtw/jw=;
 b=eLLpyfLLz9bsekRpgqT1mTw6DbePOjjLmPxPG5Nw8cEd/BpqjMB37A97
 2jRO4kb7oYqMD2MmpWWh1NfegU6zgWV7xvAb6n7jKMV1H8K8bryUtJupT
 2cFq2RMJcMtrT9wqQw+q1joxSZl45UOcbmqj/iiyc5QvIAu76oIpJGFyz
 W15dCwyzyRHDScMC/5IAKsD77UfmlqSFJeFE02xLAa8WRyPNZwVbsABTX
 gdC2h2iLcvCAGnH+L8d/h/PIAsD08memV6HRSg6a0uGiSsQO0lgCkgduC
 YxDAAOaOhHirizX2PiLw6LE1+HGVz+yZguXRnYC8KVgYe/xaQbBSc+sPx A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="231055850"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="231055850"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:27:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="623407282"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:27:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:27:15 +0200
Message-Id: <20220112112715.1234366-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/psr: remove unused lines_to_wait vbt
 info
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The lines_to_wait info from VBT is never used. Remove.

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Not exactly a v2, but rather a replacement for [1].

[1] https://patchwork.freedesktop.org/patch/msgid/20220104085421.213793-1-jani.nikula@intel.com
---
 drivers/gpu/drm/i915/display/intel_bios.c | 20 --------------------
 drivers/gpu/drm/i915/i915_drv.h           |  8 --------
 2 files changed, 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c7a8d517ce81..262406c00e53 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -905,26 +905,6 @@ parse_psr(struct drm_i915_private *i915, const struct bdb_header *bdb)
 	i915->vbt.psr.idle_frames = psr_table->idle_frames < 0 ? 0 :
 		psr_table->idle_frames > 15 ? 15 : psr_table->idle_frames;
 
-	switch (psr_table->lines_to_wait) {
-	case 0:
-		i915->vbt.psr.lines_to_wait = PSR_0_LINES_TO_WAIT;
-		break;
-	case 1:
-		i915->vbt.psr.lines_to_wait = PSR_1_LINE_TO_WAIT;
-		break;
-	case 2:
-		i915->vbt.psr.lines_to_wait = PSR_4_LINES_TO_WAIT;
-		break;
-	case 3:
-		i915->vbt.psr.lines_to_wait = PSR_8_LINES_TO_WAIT;
-		break;
-	default:
-		drm_dbg_kms(&i915->drm,
-			    "VBT has unknown PSR lines to wait %u\n",
-			    psr_table->lines_to_wait);
-		break;
-	}
-
 	/*
 	 * New psr options 0=500us, 1=100us, 2=2500us, 3=0us
 	 * Old decimal value is wake up time in multiples of 100 us.
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6caec2eca8cd..890f1f6fbc49 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -514,13 +514,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 /* Amount of PSF GV points, BSpec precisely defines this */
 #define I915_NUM_PSF_GV_POINTS 3
 
-enum psr_lines_to_wait {
-	PSR_0_LINES_TO_WAIT = 0,
-	PSR_1_LINE_TO_WAIT,
-	PSR_4_LINES_TO_WAIT,
-	PSR_8_LINES_TO_WAIT
-};
-
 struct intel_vbt_data {
 	/* bdb version */
 	u16 version;
@@ -560,7 +553,6 @@ struct intel_vbt_data {
 		bool full_link;
 		bool require_aux_wakeup;
 		int idle_frames;
-		enum psr_lines_to_wait lines_to_wait;
 		int tp1_wakeup_time_us;
 		int tp2_tp3_wakeup_time_us;
 		int psr2_tp2_tp3_wakeup_time_us;
-- 
2.30.2

