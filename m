Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3622BF3054
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C14C10E4C6;
	Mon, 20 Oct 2025 18:51:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l29/vxCU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E306910E4C5;
 Mon, 20 Oct 2025 18:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986292; x=1792522292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8cfH912LyeeH2afkz+ke+NKVVRUTAFYdq+O76uJIiTw=;
 b=l29/vxCUcPueq6ECxskSAwCdbcLgjJTea2SbSuTTw+fJmnOlq/275YMw
 gLEnawD45TsmOroOOp7+BKJL56+UST1e//zENIBmv7ma2pR7+WrfvO4Hh
 V3MYYEsdPbU50s9maQqRJ3jaKa3a7oPOhLcWFdKTBlzX/cD7kaEH3WRVw
 oGpyEcxA8X3QEU/uRKJfGv3doTwCJtcuSSBglZVzssZcUXVaVlglDf0oe
 CV9QCLxc4DxdI/E7O6z/uzo/MaMdp/ZOxnbnHtqTaM2AyJF7J36/0NJB/
 8oF0UDtPwmyLIngvtRaYbvC3uA2/yYbc0WsgqTFQszAJKCKekw1l4iSVk g==;
X-CSE-ConnectionGUID: GmFv4KKCRdCo6vh6oSbu/Q==
X-CSE-MsgGUID: zWV7RO4xQJm6Kbdc3NeoHQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63013042"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63013042"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:31 -0700
X-CSE-ConnectionGUID: gzRdaG1fQkCxTXogM8TPrg==
X-CSE-MsgGUID: kWgsNIpsRxiNaohB/VcLTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="214015802"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:29 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/22] drm/i915/vrr: Extract intel_vrr_tg_enable()
Date: Mon, 20 Oct 2025 21:50:29 +0300
Message-ID: <20251020185038.4272-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the VRR timing generator enable into intel_vrr_tg_enable(),
as a counterpart to intel_vrr_tg_disable().

Note that the CMRR part is probably broken, but so are other
things in the CMRR implementation, and thus it is currently
disabled.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 44 ++++++++++++++----------
 1 file changed, 25 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 3ed6a56fb779..b49121b2676c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -692,6 +692,28 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
 		       intel_vrr_hw_flipline(crtc_state) - 1);
 }
 
+static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
+				bool cmrr_enable)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
+	u32 vrr_ctl;
+
+	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
+
+	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
+
+	/*
+	 * FIXME this might be broken as bspec seems to imply that
+	 * even VRR_CTL_CMRR_ENABLE is armed by TRANS_CMRR_N_HI
+	 * when enabling CMRR (but not when disabling CMRR?).
+	 */
+	if (cmrr_enable)
+		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
+
+	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
+}
+
 static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
@@ -711,26 +733,14 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
 void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
 	if (!crtc_state->vrr.enable)
 		return;
 
 	intel_vrr_set_vrr_timings(crtc_state);
 
-	if (!intel_vrr_always_use_vrr_tg(display)) {
-		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-			       TRANS_PUSH_EN);
-
-		if (crtc_state->cmrr.enable) {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
-				       trans_vrr_ctl(crtc_state));
-		} else {
-			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
-		}
-	}
+	if (!intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
 }
 
 void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
@@ -763,11 +773,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 		return;
 	}
 
-	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
-		       TRANS_PUSH_EN);
-
-	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
-		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
+	intel_vrr_tg_enable(crtc_state, false);
 }
 
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
-- 
2.49.1

