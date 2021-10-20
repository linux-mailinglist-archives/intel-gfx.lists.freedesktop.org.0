Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 491ED43541A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Oct 2021 21:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 567106E9F9;
	Wed, 20 Oct 2021 19:51:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 284B66E3C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Oct 2021 19:51:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10143"; a="209663455"
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="209663455"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:57 -0700
X-IronPort-AV: E=Sophos;i="5.87,167,1631602800"; d="scan'208";a="444495901"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2021 12:51:56 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Wed, 20 Oct 2021 22:51:38 +0300
Message-Id: <20211020195138.1841242-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211020195138.1841242-1-imre.deak@intel.com>
References: <20211020195138.1841242-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 11/11] drm/i915: Add functions to check for
 RC CCS CC and MC CCS modifiers
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

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 24 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  2 ++
 .../drm/i915/display/skl_universal_plane.c    |  4 ++--
 3 files changed, 28 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index a0baa5d2e3a19..8a49bf6744ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -283,6 +283,30 @@ bool intel_fb_is_ccs_modifier(u64 modifier)
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
 static bool check_modifier_display_ver_range(const struct intel_modifier_desc *md,
 					     u8 display_ver_from, u8 display_ver_until)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index f32306fbd3dee..042ad81f86082 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -28,6 +28,8 @@ enum intel_plane_caps {
 };
 
 bool intel_fb_is_ccs_modifier(u64 modifier);
+bool intel_fb_is_rc_ccs_cc_modifier(u64 modifier);
+bool intel_fb_is_mc_ccs_modifier(u64 modifier);
 
 bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane);
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index e2d1c05d4270c..69fd56de83a7a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -1078,7 +1078,7 @@ skl_program_plane(struct intel_plane *plane,
 	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
 		icl_program_input_csc(plane, crtc_state, plane_state);
 
-	if (fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC)
+	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier))
 		intel_uncore_write64_fw(&dev_priv->uncore,
 					PLANE_CC_VAL(pipe, plane_id), plane_state->ccval);
 
@@ -1911,7 +1911,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
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

