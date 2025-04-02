Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 127BCA789FF
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 10:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B13710E701;
	Wed,  2 Apr 2025 08:32:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dkvl5MiY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A9010E708;
 Wed,  2 Apr 2025 08:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743582756; x=1775118756;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ktuq2XgTXTQ1sTe+9iNJRqxrBfe+CHLjMBwl+chzVxg=;
 b=dkvl5MiYtijj5/t0AxcAoe2Bt5VliF/fAJOzwmANgeXr3UmWU2lhbe0o
 NChsx7XB7gX/Buhxh0ZeRu1Z0S4WstFoSsze7AOj5IGEgpmADyLC1oQWG
 TdU67YB1dwCFdsUCiwKrLiNuPXwfKxEvxFTq24E0bRhHj/aH34VMQhkBJ
 hw9niA2j/Rf4Ht0XgiskxHW2fdJHxjKUNtRehu5h6yBCIFwYyIooCAQ9u
 CJYhIVicmQHR9FVbN0X5zFuH3LQUQcOuLFJ5ccLmggGTh1XE3zEDHxNDd
 2a3ZfvZzckrE83rkTK7CmJSSKAV6qXyjKUVexlH06ZKsVz/DqI3QgqgIr Q==;
X-CSE-ConnectionGUID: fxt4Yha3TnyQhS4e7/iGXQ==
X-CSE-MsgGUID: NkoJZJYPR4iWG/ucCdGSkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44828737"
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="44828737"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 01:32:35 -0700
X-CSE-ConnectionGUID: GlvXKnT9SYuaNPiG2Jm/2w==
X-CSE-MsgGUID: n1Hije6XSA6pJbeOPVswtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,295,1736841600"; d="scan'208";a="126612471"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 02 Apr 2025 01:32:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 13/16] drm/i915/dpll: Rename intel_unreference_dpll_global_crtc
Date: Wed,  2 Apr 2025 14:02:01 +0530
Message-Id: <20250402083204.1523470-14-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250402083204.1523470-1-suraj.kandpal@intel.com>
References: <20250402083204.1523470-1-suraj.kandpal@intel.com>
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

Rename intel_unreference_dpll_global_crtc to intel_dpll_unreference_crtc
in an effort to keep names of exported functions start with the filename.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |  6 +++---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 97447ac0fcdf..dd1f2104d5b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -455,7 +455,7 @@ intel_reference_dpll_global(struct intel_atomic_state *state,
 }
 
 /**
- * intel_unreference_dpll_global_crtc - Drop a DPLL reference for a CRTC
+ * intel_dpll_unreference_crtc - Drop a DPLL reference for a CRTC
  * @crtc: CRTC on which behalf the reference is dropped
  * @pll: DPLL for which the reference is dropped
  * @dpll_state: the DPLL atomic state in which the reference is tracked
@@ -463,9 +463,9 @@ intel_reference_dpll_global(struct intel_atomic_state *state,
  * Drop a reference for @pll tracking the end of use of it by @crtc.
  */
 void
-intel_unreference_dpll_global_crtc(const struct intel_crtc *crtc,
-				   const struct intel_dpll_global *pll,
-				   struct intel_dpll_state *dpll_state)
+intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
+			    const struct intel_dpll_global *pll,
+			    struct intel_dpll_state *dpll_state)
 {
 	struct intel_display *display = to_intel_display(crtc);
 
@@ -485,7 +485,7 @@ static void intel_unreference_dpll_global(struct intel_atomic_state *state,
 
 	dpll_state = intel_atomic_get_dpll_global_state(&state->base);
 
-	intel_unreference_dpll_global_crtc(crtc, pll, &dpll_state[pll->index]);
+	intel_dpll_unreference_crtc(crtc, pll, &dpll_state[pll->index]);
 }
 
 static void intel_put_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index bc93cb36b737..f240018416c7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -404,9 +404,9 @@ int intel_reserve_dpll_globals(struct intel_atomic_state *state,
 			       struct intel_encoder *encoder);
 void intel_release_dpll_globals(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
-void intel_unreference_dpll_global_crtc(const struct intel_crtc *crtc,
-					const struct intel_dpll_global *pll,
-					struct intel_dpll_state *shared_dpll_state);
+void intel_dpll_unreference_crtc(const struct intel_crtc *crtc,
+				 const struct intel_dpll_global *pll,
+				 struct intel_dpll_state *shared_dpll_state);
 void icl_set_active_port_dpll(struct intel_crtc_state *crtc_state,
 			      enum icl_port_dpll_id port_dpll_id);
 void intel_update_active_dpll(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 4221d1566c8a..191027c9bd4f 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -92,9 +92,9 @@ static void intel_crtc_disable_noatomic_begin(struct intel_crtc *crtc,
 	crtc->base.enabled = false;
 
 	if (crtc_state->dpll_global)
-		intel_unreference_dpll_global_crtc(crtc,
-						   crtc_state->dpll_global,
-						   &crtc_state->dpll_global->state);
+		intel_dpll_unreference_crtc(crtc,
+					    crtc_state->dpll_global,
+					    &crtc_state->dpll_global->state);
 }
 
 static void set_encoder_for_connector(struct intel_connector *connector,
-- 
2.34.1

