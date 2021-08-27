Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE94F3F9B7B
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Aug 2021 17:10:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FA456E991;
	Fri, 27 Aug 2021 15:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607476E98F
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Aug 2021 15:10:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10089"; a="281690766"
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="281690766"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:10:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,357,1620716400"; d="scan'208";a="528340112"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2021 08:09:59 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Aug 2021 18:09:52 +0300
Message-Id: <20210827150955.3343520-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210827150955.3343520-1-imre.deak@intel.com>
References: <20210827150955.3343520-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/adlp: Require always a
 power-of-two sized CCS surface stride
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

At the moment CCS FB strides must be power-of-two sized, but a follow-up
change will add support remapping these FBs, allowing the FB passed in
by userspace to have a non-POT sized stride. For these remapped FBs we
can only remap the main surface, not the CCS surface. This means that
userspace has to always generate the CCS surface aligning to the POT
stride padded main surface (by setting up the CCS AUX pagetables
accordingly). Adjust the CCS surface stride check to enforce this.

No functional change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 33 ++++++++++++++++++++++---
 1 file changed, 29 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 0cf568a9cb1c6..560e386905318 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -63,10 +63,35 @@ int skl_ccs_to_main_plane(const struct drm_framebuffer *fb, int ccs_plane)
 	return ccs_plane - fb->format->num_planes / 2;
 }
 
-static int gen12_ccs_aux_stride(struct drm_framebuffer *fb, int ccs_plane)
+static unsigned int gen12_aligned_scanout_stride(const struct intel_framebuffer *fb, int color_plane)
 {
-	return DIV_ROUND_UP(fb->pitches[skl_ccs_to_main_plane(fb, ccs_plane)],
-			    512) * 64;
+	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	unsigned int stride = fb->base.pitches[color_plane];
+
+	if (IS_ALDERLAKE_P(i915))
+		return roundup_pow_of_two(max(stride,
+					      8u * intel_tile_width_bytes(&fb->base, color_plane)));
+
+	return stride;
+}
+
+unsigned int gen12_ccs_aux_stride(struct intel_framebuffer *fb, int ccs_plane)
+{
+	struct drm_i915_private *i915 = to_i915(fb->base.dev);
+	int main_plane = skl_ccs_to_main_plane(&fb->base, ccs_plane);
+	unsigned int main_stride = fb->base.pitches[main_plane];
+	unsigned int main_tile_width = intel_tile_width_bytes(&fb->base, main_plane);
+
+	/*
+	 * On ADL-P the AUX stride must align with a power-of-two aligned main
+	 * surface stride. The stride of the allocated main surface object can
+	 * be less than this POT stride, which is then autopadded to the POT
+	 * size.
+	 */
+	if (IS_ALDERLAKE_P(i915))
+		main_stride = gen12_aligned_scanout_stride(fb, main_plane);
+
+	return DIV_ROUND_UP(main_stride, 4 * main_tile_width) * 64;
 }
 
 int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)
@@ -1379,7 +1404,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
 		}
 
 		if (is_gen12_ccs_plane(fb, i) && !is_gen12_ccs_cc_plane(fb, i)) {
-			int ccs_aux_stride = gen12_ccs_aux_stride(fb, i);
+			int ccs_aux_stride = gen12_ccs_aux_stride(intel_fb, i);
 
 			if (fb->pitches[i] != ccs_aux_stride) {
 				drm_dbg_kms(&dev_priv->drm,
-- 
2.27.0

