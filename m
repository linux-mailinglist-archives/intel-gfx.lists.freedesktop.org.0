Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE886C47B6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 11:34:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4B1010E8EE;
	Wed, 22 Mar 2023 10:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7526910E8EE
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 10:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679481282; x=1711017282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6AJJLB6drYWMFFnRYru4YmOMYMLkye1znHwgkA3M9UU=;
 b=nOdJtLffiX3znz0lYeNXT4AGOVfa6IRZrk4QQUaW9VCNjtqso7Gnb6tN
 u6o5msBUa1HJ4/qeeaCbM0YAon5s/ow49UYbyzZ1Q5ZZJkK99sZfSgXRO
 156ZqlGMmdfkAfp3xKIC3UKY/kF95E1yXrGJffYuAcJejJyzorH92/RaJ
 WFh+ZhjXFdMryAUk2l455KLsiSoLhR6XAcNcPb1RhO489h1bJ8VnBJfTS
 iZSep0E+wCUO9xEZtfXvrhYIr0tJqblrqINkvmRF5rNb1SdVADgdJRnhm
 VhW3HyZNe/nGIKhVZTfZat+FCh8VNfXmzMm+BdoTYhJF1p/9v4ZBTnfUr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340716635"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340716635"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="746249861"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="746249861"
Received: from swcompto-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.63.36])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 03:34:37 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Mar 2023 12:34:08 +0200
Message-Id: <20230322103412.123943-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322103412.123943-1-jouni.hogander@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/6] drm/i915/psr: Modify/fix Wa_16013835468
 and prepare for Wa_14015648006
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

Wa_16013835468 is a separate from Wa_14015648006 and needs to be
applied for TGL onwards. Fix this by removing all the references to
Wa_14015648006 and apply Wa_16013835468 according to Bspec.

Also move workaround into separate function as a preparation for
Wa_14015648006 implementation. Apply this workaround in post plane
hook.

Bspec: 55378

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++++++--------
 1 file changed, 30 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8dbf452d63c2..e66677e0554b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1173,18 +1173,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
-	/*
-	 * Wa_16013835468
-	 * Wa_14015648006
-	 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13)) {
-		if (crtc_state->hw.adjusted_mode.crtc_vblank_start !=
-		    crtc_state->hw.adjusted_mode.crtc_vdisplay)
-			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
-				     wa_16013835468_bit_get(intel_dp));
-	}
-
 	if (intel_dp->psr.psr2_enabled) {
 		if (DISPLAY_VER(dev_priv) == 9)
 			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
@@ -1359,10 +1347,8 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 
 	/*
 	 * Wa_16013835468
-	 * Wa_14015648006
 	 */
-	if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
-	    IS_DISPLAY_VER(dev_priv, 12, 13))
+	if (DISPLAY_VER(dev_priv) >= 12)
 		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
 			     wa_16013835468_bit_get(intel_dp), 0);
 
@@ -1941,6 +1927,30 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+/*
+ * Wa_16013835468
+ */
+static void wm_optimization_wa(struct intel_dp *intel_dp,
+			   const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	bool set_wa_bit = false;
+
+	/* Wa_16013835468 */
+	if (DISPLAY_VER(dev_priv) >= 12)
+		set_wa_bit |= crtc_state->hw.adjusted_mode.crtc_vblank_start !=
+			crtc_state->hw.adjusted_mode.crtc_vdisplay;
+
+	set_wa_bit &= intel_dp->psr.enabled;
+
+	if (set_wa_bit)
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
+			     wa_16013835468_bit_get(intel_dp));
+	else
+		intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+			     wa_16013835468_bit_get(intel_dp), 0);
+}
+
 static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 					 const struct intel_crtc_state *crtc_state)
 {
@@ -1966,6 +1976,11 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
 		if (!psr->enabled && !keep_disabled)
 			intel_psr_enable_locked(intel_dp, crtc_state);
 
+		/*
+		 * Wa_16013835468
+		 */
+		wm_optimization_wa(intel_dp, crtc_state);
+
 		/* Force a PSR exit when enabling CRC to avoid CRC timeouts */
 		if (crtc_state->crc_enabled && psr->enabled)
 			psr_force_hw_tracking_exit(intel_dp);
-- 
2.34.1

