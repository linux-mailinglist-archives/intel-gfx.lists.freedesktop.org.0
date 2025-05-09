Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B735AB0930
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 06:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB6610E985;
	Fri,  9 May 2025 04:28:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bcJAPyKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 348C310E97C;
 Fri,  9 May 2025 04:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746764915; x=1778300915;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rT7CuA9dq05AWDqx29iqmae0M++MkYRxRZxwecuf9Ic=;
 b=bcJAPyKgxGT+APHg4P32nuuWlfDjBdLgMaQckhQUl9yTtLORhyg0Rbig
 wf3aCT8krdbZThoIG8tIvcO6+Oki8YVowFvNG8WAxT0JoDsPsqmYFz1kD
 IflS4A8XPDnja3Ycq1ZuRCs6yS1mpZkGiIh67zHm58BaEAnlAiiozCqjL
 GsIuZFz3qVOPKOkiZOG6Aw6u36yYX1Sm4f/Mhi/LYwk3BwszfvHU58xbe
 O6Ym5Z7+oI6QCsnOG/GAZ7kLAgg1dDasH9ln0q2/DlwSlbrhfqzpVW6/d
 jXdOwGrj/TnGYZDlV4Rx5qzUA8t/1I6MbV+7rc3l78Qvt8D5vi5zeOyuA Q==;
X-CSE-ConnectionGUID: GuymGB1iT76wSagKmOhU3w==
X-CSE-MsgGUID: oglCZFEkTD+8caO5YdU/fA==
X-IronPort-AV: E=McAfee;i="6700,10204,11427"; a="58794026"
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="58794026"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2025 21:28:35 -0700
X-CSE-ConnectionGUID: 5lqqkWmXT3+AYqrshO0BLg==
X-CSE-MsgGUID: EUHrPnBqQVydSAEs+RYDmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,274,1739865600"; d="scan'208";a="137430594"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 08 May 2025 21:28:33 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 15/18] drm/i915/dpll: Rename intel_unreference_dpll__crtc
Date: Fri,  9 May 2025 09:57:26 +0530
Message-Id: <20250509042729.1152004-16-suraj.kandpal@intel.com>
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

Rename intel_unreference_dpll_crtc to intel_dpll_unreference_crtc
in an effort to keep names of exported functions start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      | 2 +-
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index d1399ab24d8c..c954515145a3 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -458,7 +458,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
 }
 
 /**
- * intel_unreference_dpll_crtc - Drop a DPLL reference for a CRTC
+ * intel_dpll_unreference_crtc - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -466,7 +466,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
-intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
+intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
 			    const struct intel_dpll *pll,
 			    struct intel_dpll_state *dpll_state)
 {
@@ -488,7 +488,7 @@ static void intel_unreference_dpll(struct intel_atomic_state *state,
 
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
index ed4f305e0d3e..ee156cf2c5ce 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -93,7 +93,7 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->base.enabled = false;
 
 	if (crtc_state->intel_dpll)
-		intel_unreference_dpll_crtc(crtc,
+		intel_dpll_unreference_crtc(crtc,
 					    crtc_state->intel_dpll,
 					    &crtc_state->intel_dpll->state);
 }
-- 
2.34.1

