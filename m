Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 290D6416609
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 21:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3B76EDA6;
	Thu, 23 Sep 2021 19:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4D06E10B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 19:40:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="223970611"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="223970611"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="455236745"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 12:40:43 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu, 23 Sep 2021 12:46:13 -0700
Message-Id: <20210923194617.69136-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210923194617.69136-1-jose.souza@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/7] drm/i915/display: Add new fb_op_origin type
 and use it to optimize power savings
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

intel_prepare_plane_fb() was calling i915_gem_object_flush_frontbuffer()
with the generic ORIGIN_DIRTYFB, what was causing
PSR, FBC and DRRS to do their frontbuffer rendering in a framebuffer
that will be flipped.

Not handling this call as frontbuffer rendering allow us to save
more power with all 3 features.

Same applies when allocating a framebuffer for fbdev emulation, after
allocation userspace will draw on it and trigger invaldate/flush calls
with ORIGIN_DIRTYFB.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c        | 5 ++++-
 drivers/gpu/drm/i915/display/intel_drrs.h        | 4 +++-
 drivers/gpu/drm/i915/display/intel_fbc.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c       | 2 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 2 +-
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c         | 5 ++++-
 8 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f27c294beb926..ecf8c69473e38 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10666,7 +10666,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
 		return ret;
 
 	i915_gem_object_wait_priority(obj, 0, &attr);
-	i915_gem_object_flush_frontbuffer(obj, ORIGIN_DIRTYFB);
+	i915_gem_object_flush_frontbuffer(obj, ORIGIN_PREPARE_FB);
 
 	if (!new_plane_state->uapi.fence) { /* implicit fencing */
 		struct dma_fence *fence;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c1439fcb5a959..46828222a098b 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -373,8 +373,11 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
  * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
  */
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
-		      unsigned int frontbuffer_bits)
+		      unsigned int frontbuffer_bits, enum fb_op_origin origin)
 {
+	if (origin == ORIGIN_PREPARE_FB)
+		return;
+
 	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 9ec9c447211af..e69528a98a9c2 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -8,6 +8,8 @@
 
 #include <linux/types.h>
 
+#include "intel_frontbuffer.h"
+
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -24,7 +26,7 @@ void intel_drrs_update(struct intel_dp *intel_dp,
 void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 			   unsigned int frontbuffer_bits);
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
-		      unsigned int frontbuffer_bits);
+		      unsigned int frontbuffer_bits, enum fb_op_origin origin);
 void intel_drrs_page_flip(struct intel_atomic_state *state,
 			  struct intel_crtc *crtc);
 void intel_drrs_compute_config(struct intel_dp *intel_dp,
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b1c1a23c36be3..56c2de2994602 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1155,7 +1155,7 @@ void intel_fbc_flush(struct drm_i915_private *dev_priv,
 
 	fbc->busy_bits &= ~frontbuffer_bits;
 
-	if (origin == ORIGIN_FLIP)
+	if (origin == ORIGIN_FLIP || origin == ORIGIN_PREPARE_FB)
 		goto out;
 
 	if (!fbc->busy_bits && fbc->crtc &&
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 60d3ded270476..3097658938ae2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -230,7 +230,7 @@ static int intelfb_create(struct drm_fb_helper *helper,
 		goto out_unlock;
 	}
 
-	intel_frontbuffer_flush(to_frontbuffer(ifbdev), ORIGIN_DIRTYFB);
+	intel_frontbuffer_flush(to_frontbuffer(ifbdev), ORIGIN_PREPARE_FB);
 
 	info = drm_fb_helper_alloc_fbi(helper);
 	if (IS_ERR(info)) {
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 0492446cd04ad..a88c147d6b523 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -92,7 +92,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 	trace_intel_frontbuffer_flush(frontbuffer_bits, origin);
 
 	might_sleep();
-	intel_drrs_flush(i915, frontbuffer_bits);
+	intel_drrs_flush(i915, frontbuffer_bits, origin);
 	intel_psr_flush(i915, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index 4b977c1e4d52b..950030950b0f9 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -37,6 +37,7 @@ enum fb_op_origin {
 	ORIGIN_CS,
 	ORIGIN_FLIP,
 	ORIGIN_DIRTYFB,
+	ORIGIN_PREPARE_FB,
 };
 
 struct intel_frontbuffer {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index ba2da689920f9..1cc4130dec7b1 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2073,7 +2073,7 @@ void intel_psr_invalidate(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
-	if (origin == ORIGIN_FLIP)
+	if (origin == ORIGIN_FLIP || origin == ORIGIN_PREPARE_FB)
 		return;
 
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
@@ -2148,6 +2148,9 @@ void intel_psr_flush(struct drm_i915_private *dev_priv,
 {
 	struct intel_encoder *encoder;
 
+	if (origin == ORIGIN_PREPARE_FB)
+		return;
+
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-- 
2.33.0

