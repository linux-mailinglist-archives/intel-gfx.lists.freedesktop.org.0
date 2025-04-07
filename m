Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4722AA7D777
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:17:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6EC010E3CF;
	Mon,  7 Apr 2025 08:17:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I7h8/J2u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EF8910E3CF;
 Mon,  7 Apr 2025 08:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013849; x=1775549849;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ctL0gHF1B1+Ql76wTfLoxbnMiJgU3j/B2IVeZcoZdk=;
 b=I7h8/J2uYcqjj1syZUj743lnDBR8CLR0n5ksJ4Qc/x1fbTOldxp29/Lp
 NKMP7As23TcRjzWFAMkLUIt8i60PAU7+5ujrgTJ8TTL4htRQsW1djUqhG
 J7OoVNCUu7cMaA7XCRSzE2RpuqUiYDJz3zI0ShQqzlylQKeuS49xgaymH
 GrpnGgSaC+9bEI9WzNkr9Oay4vcJlu2bVWipnP5vqdAHwqZP1pLmSvmGC
 kbTxnYFXIAuuu3X0eYcCNU2qk3o9zJWKAScFPEn+7ajTD1dIN+KNAGGo5
 BlGW8zUbfUjk2JNLnbZeERPHgrAzmUYfI+trAJHeQeJRSozg7j1ngdmE9 Q==;
X-CSE-ConnectionGUID: MgXJnwO7ShOIDZcPgkUhmQ==
X-CSE-MsgGUID: VL7clBPETxagaoG3eDpM4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755811"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755811"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:17:29 -0700
X-CSE-ConnectionGUID: mWmBVicQTaWjEXPfdXuZmA==
X-CSE-MsgGUID: f5U5woyNSLKnYiy9sfVYEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127728177"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:17:27 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 15/18] drm/i915/dpll: Rename intel_unreference_dpll__crtc
Date: Mon,  7 Apr 2025 13:46:51 +0530
Message-Id: <20250407081654.2013680-16-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Rename intel_unreference_dpll_crtc to intel_dpll_unreference_crtc
in an effort to keep names of exported functions start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      | 2 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2c99104d3855..c5d7f2db4a6b 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -455,7 +455,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
 }
 
 /**
- * intel_unreference_dpll_crtc - Drop a DPLL reference for a CRTC
+ * intel_dpll_unreference_crtc - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -463,7 +463,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
-intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
+intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
 			    const struct intel_dpll *pll,
 			    struct intel_dpll_state *dpll_state)
 {
@@ -485,7 +485,7 @@ static void intel_unreference_dpll(struct intel_atomic_state *state,
 
 	dpll_state = intel_atomic_get_dpll_state(&state->base);
 
-	intel_unreference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_dpll_unreference_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index f497a9ec863d..8b596a96344f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -404,7 +404,7 @@ int intel_reserve_dplls(struct intel_atomic_state *state,
 			struct intel_encoder *encoder);
 void intel_release_dplls(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc);
-void intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
+void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
 				 const struct intel_dpll *pll,
 				 struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 3127f4a61571..a78c6e284e78 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -92,7 +92,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->base.enabled = false;
 
 	if (crtc_state->intel_dpll)
-		intel_unreference_dpll_crtc(crtc,
+		intel_dpll_unreference_crtc(crtc,
 					    crtc_state->intel_dpll,
 					    &crtc_state->intel_dpll->state);
 }
-- 
2.34.1

