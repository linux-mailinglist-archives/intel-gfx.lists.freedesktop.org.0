Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFC9AB0932
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DBCD10E980;
	Fri,  9 May 2025 04:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GanjNvRt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7051C10E987;
 Fri,  9 May 2025 04:28:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764919; x=1778300919;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Olk4mMOfPvFhEM4BEU1IvR6iU2seIavOB5OYd77YBAY=;
 b=GanjNvRtkfENuBrZiyqiMvYMUwWZ5oAUL2gCP0gjMeFJqMg3+jk0coes
 p5fUiEAiZpJrZ0rgQ0Fs4TZxY4dBpt+ma+BD7aAF4dUuxtHVUJVUedgj2
 a4yq6FFm1WSOxVb7AMbaZj3QjHbYWDvyINE3Aqif3DWGDwcxxBoWuVckf
 KG/fNGc8C3XgfLi/Iz9kmL9leiijEh03AZvibDB/KkcFTkI5g6l9VLuyL
 zMKWVt1At2chrHI6rMQWXDZ85pUuFAxYwZpQbM8+Gv2KT7eqdC02Fc9KP
 +nozTk9LQ+Gfox2MNTMgE38uOFN/ipyOxsOWuc9YyxsoRH1Yi7PxBpkxY w==;
X-CSE-ConnectionGUID: MMKnGgPeR8aOSQAVVI2Pog==
X-CSE-MsgGUID: pLQ04zxpTpqXqSIlTXhM2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794029"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794029"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:39 -0700
X-CSE-ConnectionGUID: 1cN1TxEWTVunoWmg0vWqdw==
X-CSE-MsgGUID: f+xvZPqYTWuWZPNql9NgBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430611"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:37 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 17/18] drm/i915/dpll: Rename intel_compute_dpll
Date: Fri,  9 May 2025 09:57:28 +0530
Message-Id: <20250509042729.1152004-18-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250509042729.1152004-1-suraj.kandpal@intel.com>
References: <20250509042729.1152004-1-suraj.kandpal@intel.com>
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

Rename intel_compute_dpll to intel_dpll_compute in an
effort to make sure all function names that are exported have
the filename at start.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h | 6 +++---
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 6a0bb12eafc4..c15a9af53313 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -1161,7 +1161,7 @@ static int hsw_crtc_compute_clock(struct intel_atomic_state *state,
 	    intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
 		return 0;
 
-	ret = intel_compute_dplls(state, crtc, encoder);
+	ret = intel_dpll_compute(state, crtc, encoder);
 	if (ret)
 		return ret;
 
@@ -1223,7 +1223,7 @@ static int mtl_crtc_compute_clock(struct intel_atomic_state *state,
 	if (ret)
 		return ret;
 
-	/* TODO: Do the readback via intel_compute_dplls() */
+	/* TODO: Do the readback via intel_dpll_compute() */
 	crtc_state->port_clock = intel_cx0pll_calc_port_clock(encoder, &crtc_state->dpll_hw_state.cx0pll);
 
 	crtc_state->hw.adjusted_mode.crtc_clock = intel_crtc_dotclock(crtc_state);
@@ -1394,7 +1394,7 @@ static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
 	ilk_compute_dpll(crtc_state, &crtc_state->dpll,
 			 &crtc_state->dpll);
 
-	ret = intel_compute_dplls(state, crtc, NULL);
+	ret = intel_dpll_compute(state, crtc, NULL);
 	if (ret)
 		return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 65dd8c3a3aed..05714e6fbad5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -4383,7 +4383,7 @@ void intel_dpll_init(struct intel_display *display)
 }
 
 /**
- * intel_compute_dplls - compute DPLL state CRTC and encoder combination
+ * intel_dpll_compute - compute DPLL state CRTC and encoder combination
  * @state: atomic state
  * @crtc: CRTC to compute DPLLs for
  * @encoder: encoder
@@ -4396,9 +4396,9 @@ void intel_dpll_init(struct intel_display *display)
  * Returns:
  * 0 on success, negative error code on failure.
  */
-int intel_compute_dplls(struct intel_atomic_state *state,
-			struct intel_crtc *crtc,
-			struct intel_encoder *encoder)
+int intel_dpll_compute(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(state);
 	const struct intel_dpll_mgr *dpll_mgr = display->dpll.mgr;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 4f8074580582..c2658ad409e4 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -396,9 +396,9 @@ void assert_dpll(struct intel_display *display,
 		 bool state);
 #define assert_dpll_enabled(d, p) assert_dpll(d, p, true)
 #define assert_dpll_disabled(d, p) assert_dpll(d, p, false)
-int intel_compute_dplls(struct intel_atomic_state *state,
-			struct intel_crtc *crtc,
-			struct intel_encoder *encoder);
+int intel_dpll_compute(struct intel_atomic_state *state,
+		       struct intel_crtc *crtc,
+		       struct intel_encoder *encoder);
 int intel_dpll_reserve(struct intel_atomic_state *state,
 		       struct intel_crtc *crtc,
 		       struct intel_encoder *encoder);
-- 
2.34.1

