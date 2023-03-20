Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DACB6C1D0D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 18:00:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADC5910E5F1;
	Mon, 20 Mar 2023 17:00:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BAF010E5EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 17:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679331623; x=1710867623;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cYW0OlRlmRfO5Kes6nn+ekXYXMebYGqXqkT4PPWU9kQ=;
 b=TBnxRvYdadi+b4ZemmK3i/xbz8V1eOs+9FlT22wP0+E2zk18LbzSQ1Wu
 sTQql+J7w2q4EekesxXRRERyKb/+VW7mdKnHcNe/aWWXD42pB6WqsK4Bi
 2uSdU3PalTJgT4Eo80di7mJ0qI2awAAjApaTZe7W+lz6n6UZ224geNj5B
 VMoGOkRMtCCdex8ujaabcDqLTllyhsvPL+Zz7frcbxjcNTueslNHw9gLa
 QICK+scme/YtkTXYeCS0gTjCns0l+3XIu8XNpcf1jLPZV4dQKELEfHzuo
 aloTaQ3qGjjYsWZZHiWcfPHsU9YMRv1r/hhAuf7lZhNopHljHn75wwj3C g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="318367921"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="318367921"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="855328324"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; d="scan'208";a="855328324"
Received: from mmazilu-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.221.145])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 10:00:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Mar 2023 18:59:45 +0200
Message-Id: <20230320165945.3564891-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230320165945.3564891-1-jouni.hogander@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915/psr: Implement Display WA #1136
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

Implement Display WA #1136 for SKL/BXT.

Bspec: 21664

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c     | 12 ++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c |  5 -----
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 1b40d9c73c18..ad058b67f4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1940,11 +1940,18 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 /*
  * Wa_16013835468
  * Wa_14015648006
+ * Display WA #1136: skl, bxt
  */
 static void wa_16013835468(struct intel_dp *intel_dp, bool wm_level_disabled)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
+	if (DISPLAY_VER(dev_priv) <= 9 && wm_level_disabled &&
+	    intel_dp->psr.enabled) {
+		intel_psr_disable_locked(intel_dp);
+		return;
+	}
+
 	if (!IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
 	    !IS_DISPLAY_VER(dev_priv, 11, 13))
 		return;
@@ -1981,12 +1988,17 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		keep_disabled |= psr->sink_not_reliable;
 		keep_disabled |= !new_crtc_state->active_planes;
 
+		/* Display WA #1136: skl, bxt */
+		keep_disabled |= DISPLAY_VER(dev_priv) <= 9 &&
+			new_crtc_state->wm_level_disabled;
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, new_crtc_state);
 
 		/*
 		 * Wa_16013835468
 		 * Wa_14015648006
+		 * Display WA #1136: skl, bxt
 		 */
 		if (old_crtc_state->wm_level_disabled !=
 		    new_crtc_state->wm_level_disabled)
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index afb751c024ba..ced61da8b496 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2278,11 +2278,6 @@ static int skl_wm_check_vblank(struct intel_crtc_state *crtc_state)
 	 */
 	crtc_state->wm_level_disabled = level < i915->display.wm.num_levels - 1;
 
-	/*
-	 * FIXME also related to skl+ w/a 1136 (also unimplemented as of
-	 * now) perhaps?
-	 */
-
 	for (level++; level < i915->display.wm.num_levels; level++) {
 		enum plane_id plane_id;
 
-- 
2.34.1

