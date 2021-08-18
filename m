Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B11673F0AE0
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 20:12:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00D66E8AD;
	Wed, 18 Aug 2021 18:12:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D6756E8AD
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 18:12:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10080"; a="196652326"
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="196652326"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,332,1620716400"; d="scan'208";a="641422880"
Received: from jcarwana-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.42.192])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 11:12:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, manasi.d.navare@intel.com,
 ville.syrjala@linux.intel.com
Date: Wed, 18 Aug 2021 21:10:47 +0300
Message-Id: <a153acf390fa2c0ead848105781ddd2a8dc78f4a.1629310010.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
References: <cover.1629310010.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/17] drm/i915/dp: use 128b/132b TPS2 for UHBR+
 link rates
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

128b/132b channel encoding has separate TPS1 and TPS2, although the DPCD
register values coincide with 8b/10b TPS1 and TPS2 values. Use 128b/132b
TPS2 for channel equalization.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 053a3c2f7267..031c753fca56 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -602,9 +602,9 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
 }
 
 /*
- * Pick training pattern for channel equalization. Training pattern 4 for HBR3
- * or for 1.4 devices that support it, training Pattern 3 for HBR2
- * or 1.2 devices that support it, Training Pattern 2 otherwise.
+ * Pick Training Pattern Sequence (TPS) for channel equalization. 128b/132b TPS2
+ * for UHBR+, TPS4 for HBR3 or for 1.4 devices that support it, TPS3 for HBR2 or
+ * 1.2 devices that support it, TPS2 otherwise.
  */
 static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
@@ -612,6 +612,10 @@ static u32 intel_dp_training_pattern(struct intel_dp *intel_dp,
 {
 	bool source_tps3, sink_tps3, source_tps4, sink_tps4;
 
+	/* UHBR+ use separate 128b/132b TPS2 */
+	if (crtc_state->port_clock >= 1000000)
+		return DP_TRAINING_PATTERN_2;
+
 	/*
 	 * Intel platforms that support HBR3 also support TPS4. It is mandatory
 	 * for all downstream devices that support HBR3. There are no known eDP
-- 
2.20.1

