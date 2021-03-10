Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82529334B58
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Mar 2021 23:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 063456EA80;
	Wed, 10 Mar 2021 22:17:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541F16EA7C
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Mar 2021 22:17:54 +0000 (UTC)
IronPort-SDR: N8NFA18w1pIPDIpUEqLdY/Wn7IgGbpdF8If7qBG3+nU7w8ImUpZqN/5ba6uzZv5UDxe9JiyEv9
 MYclI/cYs1Tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="252592086"
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="252592086"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:53 -0800
IronPort-SDR: 5DcguXxCcO11YtyFoke+2AgWvRlcaX+6iusGiUk57hoOQmx/VFP+C9FxVZPm72CPdjMQUERa/r
 jHoxAeaovxIg==
X-IronPort-AV: E=Sophos;i="5.81,238,1610438400"; d="scan'208";a="403852253"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2021 14:17:52 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 00:17:27 +0200
Message-Id: <20210310221736.2963264-15-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/23] drm/i915/intel_fb: Factor out
 convert_plane_offset_to_xy()
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

Factor out to a new function the logic to convert the FB plane offset to
x/y and check the validity of x/y, with the goal to make
intel_fill_fb_info() more readable.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 70 +++++++++++++++----------
 1 file changed, 42 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b96849ec32df..806341c229f0 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -400,10 +400,10 @@ static int intel_fb_offset_to_xy(int *x, int *y,
 	return 0;
 }
 
-static int intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_plane, int x, int y)
+static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int ccs_plane, int x, int y)
 {
 	struct drm_i915_private *i915 = to_i915(fb->dev);
-	struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
+	const struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
 	int main_plane;
 	int hsub, vsub;
 	int tile_width, tile_height;
@@ -520,6 +520,45 @@ static bool intel_plane_needs_remap(const struct intel_plane_state *plane_state)
 	return stride > max_stride;
 }
 
+static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb, int color_plane,
+				      int plane_width, int *x, int *y)
+{
+	const struct drm_framebuffer *drm_fb = &fb->base;
+	struct drm_i915_gem_object *obj = intel_fb_obj(drm_fb);
+	int ret;
+
+	ret = intel_fb_offset_to_xy(x, y, drm_fb, color_plane);
+	if (ret) {
+		drm_dbg_kms(drm_fb->dev,
+			    "bad fb plane %d offset: 0x%x\n",
+			    color_plane, drm_fb->offsets[color_plane]);
+		return ret;
+	}
+
+	ret = intel_fb_check_ccs_xy(drm_fb, color_plane, *x, *y);
+	if (ret)
+		return ret;
+
+	/*
+	 * The fence (if used) is aligned to the start of the object
+	 * so having the framebuffer wrap around across the edge of the
+	 * fenced region doesn't really work. We have no API to configure
+	 * the fence start offset within the object (nor could we probably
+	 * on gen2/3). So it's just easier if we just require that the
+	 * fb layout agrees with the fence layout. We already check that the
+	 * fb stride matches the fence stride elsewhere.
+	 */
+	if (color_plane == 0 && i915_gem_object_is_tiled(obj) &&
+	    (*x + plane_width) * drm_fb->format->cpp[color_plane] > drm_fb->pitches[color_plane]) {
+		drm_dbg_kms(drm_fb->dev,
+			    "bad fb plane %d offset: 0x%x\n",
+			    color_plane, drm_fb->offsets[color_plane]);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
 /*
  * Setup the rotated view for an FB plane and return the size the GTT mapping
  * requires for this view.
@@ -611,35 +650,10 @@ int intel_fill_fb_info(struct drm_i915_private *i915, struct drm_framebuffer *fb
 		cpp = fb->format->cpp[i];
 		intel_fb_plane_dims(&width, &height, fb, i);
 
-		ret = intel_fb_offset_to_xy(&x, &y, fb, i);
-		if (ret) {
-			drm_dbg_kms(&i915->drm,
-				    "bad fb plane %d offset: 0x%x\n",
-				    i, fb->offsets[i]);
-			return ret;
-		}
-
-		ret = intel_fb_check_ccs_xy(fb, i, x, y);
+		ret = convert_plane_offset_to_xy(intel_fb, i, width, &x, &y);
 		if (ret)
 			return ret;
 
-		/*
-		 * The fence (if used) is aligned to the start of the object
-		 * so having the framebuffer wrap around across the edge of the
-		 * fenced region doesn't really work. We have no API to configure
-		 * the fence start offset within the object (nor could we probably
-		 * on gen2/3). So it's just easier if we just require that the
-		 * fb layout agrees with the fence layout. We already check that the
-		 * fb stride matches the fence stride elsewhere.
-		 */
-		if (i == 0 && i915_gem_object_is_tiled(obj) &&
-		    (x + width) * cpp > fb->pitches[i]) {
-			drm_dbg_kms(&i915->drm,
-				    "bad fb plane %d offset: 0x%x\n",
-				     i, fb->offsets[i]);
-			return -EINVAL;
-		}
-
 		/*
 		 * First pixel of the framebuffer from
 		 * the start of the normal gtt mapping.
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
