Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B62334B52
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 515BD6EA86;
	Wed, 10 Mar 2021 22:17:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95A766EA77
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:47 +0000 (UTC)
IronPort-SDR: tgSgf/kHSOkh37kASqum0oHRifuEjzYjZDoWnITAkd3SKH0VEE07PhkNzukrKIxWDVJbyGv/y7
 Lc8SBwOpgl7Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592066"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592066"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:47 -0800
IronPort-SDR: seQM9rJY/sapdOm2dns4bgLE/PreHZzuB2d+H7SFfcUWcAPsrroDXnmwwFbWKj/SJ4OpXzICV/
 /8he/mcHy1qg==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852215"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:46 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:21 +0200
Message-Id: <20210310221736.2963264-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/23] drm/i915/intel_fb: Pull FB plane
 functions from skl_universal_plane.c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move the FB plane related functions from skl_universal_plane.c to
intel_fb.c.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 32 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h       |  4 +++
 .../drm/i915/display/skl_universal_plane.c    | 34 -------------------
 .../drm/i915/display/skl_universal_plane.h    |  2 --
 4 files changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 29b8ec087f53..977ee2acaed1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -26,3 +26,35 @@ bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane)
 	return fb->modifier == I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC &&
 	       plane == 2;
 }
+
+int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
+{
+	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
+		    (main_plane && main_plane >= fb->format->num_planes / 2));
+
+	return fb->format->num_planes / 2 + main_plane;
+}
+
+int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
+{
+	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
+		    ccs_plane < fb->format->num_planes / 2);
+
+	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
+		return 0;
+
+	return ccs_plane - fb->format->num_planes / 2;
+}
+
+int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
+{
+	struct drm_i915_private *i915 = to_i915(fb->dev);
+
+	if (is_ccs_modifier(fb->modifier))
+		return main_to_ccs_plane(fb, main_plane);
+	else if (INTEL_GEN(i915) < 11 &&
+		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
+		return 1;
+	else
+		return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 64e6a2521320..3cde53c75cb3 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -14,4 +14,8 @@ bool is_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_plane(const struct drm_framebuffer *fb, int plane);
 bool is_gen12_ccs_cc_plane(const struct drm_framebuffer *fb, int plane);
 
+int main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane);
+int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
+int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane);
+
 #endif /* __INTEL_FB_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 3ff1008b0b4a..9a456b3d19a9 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -915,40 +915,6 @@ static u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
 	return plane_color_ctl;
 }
 
-static int
-main_to_ccs_plane(const struct drm_framebuffer *fb, int main_plane)
-{
-	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
-		    (main_plane && main_plane >= fb->format->num_planes / 2));
-
-	return fb->format->num_planes / 2 + main_plane;
-}
-
-int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
-{
-	drm_WARN_ON(fb->dev, !is_ccs_modifier(fb->modifier) ||
-		    ccs_plane < fb->format->num_planes / 2);
-
-	if (is_gen12_ccs_cc_plane(fb, ccs_plane))
-		return 0;
-
-	return ccs_plane - fb->format->num_planes / 2;
-}
-
-static int
-skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
-{
-	struct drm_i915_private *i915 = to_i915(fb->dev);
-
-	if (is_ccs_modifier(fb->modifier))
-		return main_to_ccs_plane(fb, main_plane);
-	else if (INTEL_GEN(i915) < 11 &&
-		 intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
-		return 1;
-	else
-		return 0;
-}
-
 static void
 skl_program_plane(struct intel_plane *plane,
 		  const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.h b/drivers/gpu/drm/i915/display/skl_universal_plane.h
index 818266653630..351040b64dc7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.h
@@ -8,7 +8,6 @@
 
 #include <linux/types.h>
 
-struct drm_framebuffer;
 struct drm_i915_private;
 struct intel_crtc;
 struct intel_initial_plane_config;
@@ -26,7 +25,6 @@ void skl_get_initial_plane_config(struct intel_crtc *crtc,
 
 int skl_format_to_fourcc(int format, bool rgb_order, bool alpha);
 
-int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane);
 int skl_calc_main_surface_offset(const struct intel_plane_state *plane_state,
 				 int *x, int *y, u32 *offset);
 
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
