Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CADBB900582
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2024 15:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22DF810EC62;
	Fri,  7 Jun 2024 13:49:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kw+RO4Ym";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CF2510EC62
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2024 13:49:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717768183; x=1749304183;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Imlm3Aie+ImScS62pEktIy4LA+OuLj2HGOmJnZ2T2GI=;
 b=Kw+RO4YmsXCiEJorEFJanmr8t8V//f1ZQqiwVJ+hDb1FxTvZHRWD4mvK
 XUlA5Vyk//2mhYUCCqtVjWDa7/8QNVnQ6Snr6SvY8rukuABpVhDQr5NMD
 uKgRHjaxmyWGf48EkQl6Zz+qlpjmnLACgPUxqzGnJESx0meUyQDJq7pl/
 lC5fujQAI7n6WiL5BqDldcXmt/8ZjEAEsMI1VE82xWIw+VZhq/hhU4Prr
 kuPAVSnCqfO1AgFeEceaQZU4oh8Q+3KLf7VMi6Rm1EKGPWP3IQ3WpM2ft
 3D2FFbvOJb/Yx/gmNqYPcfiVAfHcI3oOoWWd/3cgj5RJDz7wwG0AnyAnT Q==;
X-CSE-ConnectionGUID: kPo05jMNS6mBlgbAgEB+Nw==
X-CSE-MsgGUID: fPwUPfSAS26tcwG5Pj3EFQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11096"; a="14331658"
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="14331658"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:43 -0700
X-CSE-ConnectionGUID: 2u2f/gIpSlezU+KdUB1G6w==
X-CSE-MsgGUID: aSzfY6NCTYmBop4b8SnI6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,221,1712646000"; d="scan'208";a="43458994"
Received: from lhorenst-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.213.83])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2024 06:49:41 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 08/13] drm/i915/psr: Add Panel Replay support to
 intel_psr2_config_et_valid
Date: Fri,  7 Jun 2024 16:49:12 +0300
Message-Id: <20240607134917.1327574-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607134917.1327574-1-jouni.hogander@intel.com>
References: <20240607134917.1327574-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Early Transport is possible and in our HW mandatory on eDP Panel
Replay. Add parameter to intel_psr2_config_et_valid to differentiate
validity check for Panel Replay.

v2: fix intel_dp->psr_dpcd[0] check

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a3ad4488fcee..95281c2d401c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -664,16 +664,17 @@ static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
 		       aux_ctl);
 }
 
-static bool psr2_su_region_et_valid(struct intel_dp *intel_dp)
+static bool psr2_su_region_et_valid(struct intel_dp *intel_dp, bool panel_replay)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 
-	if (DISPLAY_VER(i915) >= 20 &&
-	    intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED &&
-	    !(intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE))
-		return true;
+	if (DISPLAY_VER(i915) < 20 || !intel_dp_is_edp(intel_dp) ||
+	    intel_dp->psr.debug & I915_PSR_DEBUG_SU_REGION_ET_DISABLE)
+		return false;
 
-	return false;
+	return panel_replay ?
+		intel_dp->pr_dpcd & DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT :
+		intel_dp->psr_dpcd[0] == DP_PSR2_WITH_Y_COORD_ET_SUPPORTED;
 }
 
 static void _panel_replay_enable_sink(struct intel_dp *intel_dp,
@@ -1351,7 +1352,7 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
 
 	tgl_dc3co_exitline_compute_config(intel_dp, crtc_state);
 
-	if (psr2_su_region_et_valid(intel_dp))
+	if (psr2_su_region_et_valid(intel_dp, crtc_state->has_panel_replay))
 		crtc_state->enable_psr2_su_region_et = true;
 
 	return true;
-- 
2.34.1

