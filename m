Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6856C47B9
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:34:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7238C10E8FA;
	Wed, 22 Mar 2023 10:34:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0670E10E8F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679481289; x=1711017289;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hL4hmWCuxEVs9QYUlnsa28PnbX3lplR32gMcNCZXF/g=;
 b=bEzX5dpTJXHIuwArHtyWoTX1CjScFHGdAP6L6F/pa02u4emtnkaQ4ZyC
 wajrKD29kzXdxj6b9vveObBqMPJEyeoSmEIdqF+Tb7p8sz9PT5jhNzifM
 LIoRKnbalcQ5nVvbGejbRd0QqaeZ7eg2EP2kDBnOJ7K2nZ1glVHamFxDn
 dCX9ggAgdzlvKfAArJXwKPFbukYURx3JfXLihnL7Lc1qYx3kuonXYeVmz
 D6cGtSYI/KnJ9SoOjQoAHfaymWx4ho6Kbhfgik9o4xSm8WAbyPGIjIOIf
 12elQFe0WHh8EVBEXor1dQw8P1HMJ2TKuLdKg8c0OjaVkVt8xitfg6bEN g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340716654"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340716654"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746249895"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="746249895"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:34:12 +0200
Message-Id: <20230322103412.123943-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322103412.123943-1-jouni.hogander@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 6/6] drm/i915/psr: Implement Display WA #1136
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
 drivers/gpu/drm/i915/display/intel_psr.c     | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c |  5 -----
 2 files changed, 17 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b53c71c06105..24c3f75bb9d8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1950,6 +1950,7 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 /*
  * Wa_16013835468
  * Wa_14015648006
+ * Display WA #1136: skl, bxt
  */
 static void wm_optimization_wa(struct intel_dp *intel_dp,
 			   const struct intel_crtc_state *crtc_state)
@@ -1957,6 +1958,17 @@ static void wm_optimization_wa(struct intel_dp *intel_dp,
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	bool set_wa_bit = false;
 
+	/*
+	 * Display WA #1136: skl, bxt
+	 * skl/bxt do not have chicken bit: disable PSR
+	 */
+	if (DISPLAY_VER(dev_priv) <= 9) {
+		if (crtc_state->wm_level_disabled &&
+		    intel_dp->psr.enabled)
+			intel_psr_disable_locked(intel_dp);
+		return;
+	}
+
 	/* Wa_14015648006 */
 	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
 	    IS_DISPLAY_VER(dev_priv, 11, 13))
@@ -1999,12 +2011,17 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		keep_disabled |= psr->sink_not_reliable;
 		keep_disabled |= !crtc_state->active_planes;
 
+		/* Display WA #1136: skl, bxt */
+		keep_disabled |= DISPLAY_VER(dev_priv) <= 9 &&
+			crtc_state->wm_level_disabled;
+
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 
 		/*
 		 * Wa_16013835468
 		 * Wa_14015648006
+		 * Display WA #1136: skl, bxt
 		 */
 		wm_optimization_wa(intel_dp, crtc_state);
 
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

