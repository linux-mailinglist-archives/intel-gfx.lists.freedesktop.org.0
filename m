Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B470425DAA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 22:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E895B6F4E3;
	Thu,  7 Oct 2021 20:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 100CF6F4D7
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 20:35:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="213303832"
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="213303832"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:32 -0700
X-IronPort-AV: E=Sophos;i="5.85,355,1624345200"; d="scan'208";a="458926592"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2021 13:35:32 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Oct 2021 23:35:17 +0300
Message-Id: <20211007203517.3364336-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211007203517.3364336-1-imre.deak@intel.com>
References: <20211007203517.3364336-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/11] drm/i915: Add functions to check for RC
 CCS CC and MC CCS modifiers
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

Instead of open-coding the checks add functions for this, simplifying
the handling of CCS modifiers on future platforms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  2 ++
 .../drm/i915/display/skl_universal_plane.c    |  4 ++--
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b68bda0845c56..e8d37f0678741 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -264,6 +264,30 @@ bool intel_fb_is_ccs_modifier(u64 modifier)
 	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_ANY);
 }
 
+/**
+ * intel_fb_is_rc_ccs_cc_modifier: Check if a modifier is an RC CCS CC modifier type
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier is a render with color clear modifier.
+ */
+bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier)
+{
+	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_RC_CC);
+}
+
+/**
+ * intel_fb_is_mc_ccs_modifier: Check if a modifier is an MC CCS modifier type
+ * @modifier: Modifier to check
+ *
+ * Returns:
+ * Returns %true if @modifier is a media compression modifier.
+ */
+bool intel_fb_is_mc_ccs_modifier(u64 modifier)
+{
+	return is_ccs_type_modifier(lookup_modifier(modifier), INTEL_CCS_MC);
+}
+
 static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
 				 enum pipe pipe, enum plane_id plane_id)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index af8097699dac5..cb5bc6304011a 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -23,6 +23,8 @@ struct intel_plane;
 struct intel_plane_state;
 
 bool intel_fb_is_ccs_modifier(u64 modifier);
+bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
+bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 
 bool intel_fb_is_ccs_ctrl_plane(const struct drm_framebuffer *fb, int plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index d29ad180f8477..9cff6cc2bdf4f 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1067,7 +1067,7 @@ skl_program_plane(struct intel_plane *plane,
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
-	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
+	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier))
 		intel_uncore_write64_fw(&dev_priv->uncore,
 					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
 
@@ -1899,7 +1899,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_P010:
 	case DRM_FORMAT_P012:
 	case DRM_FORMAT_P016:
-		if (modifier == I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS)
+		if (intel_fb_is_mc_ccs_modifier(modifier))
 			return true;
 		fallthrough;
 	case DRM_FORMAT_RGB565:
-- 
2.27.0

