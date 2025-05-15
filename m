Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34719AB7EAC
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8CE110E787;
	Thu, 15 May 2025 07:18:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PefNFj44";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B651E10E77D;
 Thu, 15 May 2025 07:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293535; x=1778829535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LUrX/4u9Kdau0Az9AqATCC+liudgi/7v4e7WHG6xa0I=;
 b=PefNFj44SZUlFChT3JDNYHf6fTh8tsa5qGssGBWg+Z1b5nLZsq2u/yRA
 c9FT34g/qdZ97B/bSua3faYUl0V7T4beklFj0/k2lpI1qQeBGKH8cVAFa
 vqCGYY6EP48QIGHugT4r2wJHl2gaKkDhkpVnvOvXt/UCq6FW3pidGFWJP
 ADwRnljhQ3P1DTsYcmGFvod6Wh1Vws3MuO3ogWCQT2TqO/lsY4YJgH0w4
 9+tgQny9kq+ITd5z1rYhHXmve2e9NGumtMAmRytyeJ+vH21cRcYupAQdV
 EqNRNlkWb9ZV1BaKRcvAgMv1yZHOt3XFaLpgaFHO6jCOMaxf3jMNM1HPD Q==;
X-CSE-ConnectionGUID: +XhwDnhZQsSL+LY6JcVc0A==
X-CSE-MsgGUID: FmBRgPFNQK2gIuspQL6Lpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901361"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901361"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:55 -0700
X-CSE-ConnectionGUID: 39g6hJkqSiqyYscD1gOFGQ==
X-CSE-MsgGUID: ifjeedkWSpGbLANM9UEtXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290380"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 10/14] drm/i915/dpll: Rename intel_unreference_dpll_crtc
Date: Thu, 15 May 2025 12:47:57 +0530
Message-Id: <20250515071801.2221120-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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

Rename intel_unreference_dpll_crtc to intel_dpll_crtc_put
in an effort to keep names of exported functions start with the filename.

--v2
-Make the new name more sensible [Jani]

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |  6 +++---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 2b592423e1d1..1265bc4b4307 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -451,7 +451,7 @@ intel_reference_dpll(struct intel_atomic_state *state,
 }
 
 /**
- * intel_unreference_dpll_crtc - Drop a DPLL reference for a CRTC
+ * intel_dpll_crtc_put - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -459,9 +459,9 @@ intel_reference_dpll(struct intel_atomic_state *state,
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
-intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
-			    const struct intel_dpll *pll,
-			    struct intel_dpll_state *dpll_state)
+intel_dpll_crtc_put(const struct intel_crtc *crtc,
+		    const struct intel_dpll *pll,
+		    struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
@@ -481,7 +481,7 @@ static void intel_unreference_dpll(struct intel_atomic_state *state,
 
 	dpll_state = intel_atomic_get_dpll_state(&state->base);
 
-	intel_unreference_dpll_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_dpll_crtc_put(crtc, pll, &dpll_state[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 88a81c850cf0..f8ba7b52a7ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -404,9 +404,9 @@ int intel_reserve_dplls(struct intel_atomic_state *state,
 			struct intel_encoder *encoder);
 void intel_release_dplls(struct intel_atomic_state *state,
 			 struct intel_crtc *crtc);
-void intel_unreference_dpll_crtc(const struct intel_crtc *crtc,
-				 const struct intel_dpll *pll,
-				 struct intel_dpll_state *shared_dpll_state);
+void intel_dpll_crtc_put(const struct intel_crtc *crtc,
+			 const struct intel_dpll *pll,
+			 struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
 void intel_update_active_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index ed4f305e0d3e..22c5302e3798 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -93,9 +93,9 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->base.enabled = false;
 
 	if (crtc_state->intel_dpll)
-		intel_unreference_dpll_crtc(crtc,
-					    crtc_state->intel_dpll,
-					    &crtc_state->intel_dpll->state);
+		intel_dpll_crtc_put(crtc,
+				    crtc_state->intel_dpll,
+				    &crtc_state->intel_dpll->state);
 }
 
 static void set_encoder_for_connector(struct intel_connector *connector,
-- 
2.34.1

