Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA51AEB6A0
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jun 2025 13:37:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9353710E9EB;
	Fri, 27 Jun 2025 11:37:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KLTmxrDM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6160910E9CE;
 Fri, 27 Jun 2025 11:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751024255; x=1782560255;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pS5Ov4k/IDdw/CYT6bW2eIBxHIyBc+ghhP47swaG/OU=;
 b=KLTmxrDMQlmbJFRBqDvNxy5gq+2MxH8TZYqoYCKerxKEHNO7/KUQikpb
 Uoz5QCtynpnwmTYmh+ya4hna7VpoCe+fr2B4NLGOkT+64OqeT7p2HB9Hp
 odVAIcitRKrNrfgL/Nvq0G5yjBCdSNn+YoDoXaF/3jXjjXMy5O/pjI6B+
 7rwrXwud98YfbSY4uQNRgE92cOWHvBNnoMm1sckwQCfo4cHcymkdKYkAf
 4ORSl9uGO+IhHbUbG0MTQUajUodPb+F3Be+GXRATVZMsgYwm807fh62G0
 TnV2a4Ra7phoF6aq+HMDLrFyB07mDECiZsVvh1pgHYM+ad277QP65+qcd g==;
X-CSE-ConnectionGUID: W+juIL8GQZSbopm8bjjlQQ==
X-CSE-MsgGUID: YEfz+49yR2OOVqAdbqsSyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53460030"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53460030"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:35 -0700
X-CSE-ConnectionGUID: xU/AVfMgS+KW4imIlBFEhQ==
X-CSE-MsgGUID: HiPaGg/iTm2+b+2MhBNqgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157071335"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.146])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 04:37:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 12/18] drm/i915/dp: use generic read_poll_timeout() instead of
 wait_for() in link training
Date: Fri, 27 Jun 2025 14:36:26 +0300
Message-Id: <6812af50b0d5d2620c996522645f144b4a984db9.1751023767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1751023767.git.jani.nikula@intel.com>
References: <cover.1751023767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Prefer generic poll helpers over i915 custom helpers.

The functional change is losing the exponentially growing sleep of
wait_for(), which used to be 10, 20, 40, ..., 640, and 1280 us.

Use an arbitrary constant 500 us sleep instead. The timeout remains at
500 ms.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a479b63112ea..d1d11de366b0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -22,6 +22,7 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/iopoll.h>
 
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_print.h>
@@ -1127,6 +1128,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
+	int ret;
 
 	intel_dp->link.active = true;
 
@@ -1134,9 +1136,13 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	intel_dp_program_link_training_pattern(intel_dp, crtc_state, DP_PHY_DPRX,
 					       DP_TRAINING_PATTERN_DISABLE);
 
-	if (intel_dp_is_uhbr(crtc_state) &&
-	    wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
-		lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
+	if (intel_dp_is_uhbr(crtc_state)) {
+		ret = read_poll_timeout(intel_dp_128b132b_intra_hop, ret,
+					ret == 0,
+					500, 500 * 1000, false,
+					intel_dp, crtc_state);
+		if (ret)
+			lt_dbg(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clearing\n");
 	}
 
 	intel_hpd_unblock(encoder);
@@ -1574,8 +1580,13 @@ intel_dp_128b132b_link_train(struct intel_dp *intel_dp,
 			     int lttpr_count)
 {
 	bool passed = false;
+	int ret;
 
-	if (wait_for(intel_dp_128b132b_intra_hop(intel_dp, crtc_state) == 0, 500)) {
+	ret = read_poll_timeout(intel_dp_128b132b_intra_hop, ret,
+				ret == 0,
+				500, 500 * 1000, false,
+				intel_dp, crtc_state);
+	if (ret) {
 		lt_err(intel_dp, DP_PHY_DPRX, "128b/132b intra-hop not clear\n");
 		goto out;
 	}
-- 
2.39.5

