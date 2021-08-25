Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2F6C3F6CC8
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 02:53:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B6D89718;
	Wed, 25 Aug 2021 00:53:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2175A89728
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 00:53:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10086"; a="204623094"
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="204623094"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
X-IronPort-AV: E=Sophos;i="5.84,349,1620716400"; d="scan'208";a="507826414"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 17:53:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 17:58:37 -0700
Message-Id: <20210825005840.170796-6-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210825005840.170796-1-jose.souza@intel.com>
References: <20210825005840.170796-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/8] drm/i915/display: Share code between
 intel_drrs_flush and intel_drrs_invalidate
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

Both functions are pretty much equal, with minor changes that can be
handled by a single parameter.

Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 82 +++++++++--------------
 1 file changed, 32 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 5eb5033242575..8583da4e82434 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -312,18 +312,9 @@ static void intel_drrs_downclock_work(struct work_struct *work)
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
 
-/**
- * intel_drrs_invalidate - Disable Idleness DRRS
- * @dev_priv: i915 device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- *
- * This function gets called everytime rendering on the given planes start.
- * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
- *
- * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
- */
-void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
-			   unsigned int frontbuffer_bits)
+static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
+					  unsigned int frontbuffer_bits,
+					  bool invalidate)
 {
 	struct intel_dp *intel_dp;
 	struct drm_crtc *crtc;
@@ -346,16 +337,42 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 	pipe = to_intel_crtc(crtc)->pipe;
 
 	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
-	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
+	if (invalidate)
+		dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
+	else
+		dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
 
-	/* invalidate means busy screen hence upclock */
+	/* flush/invalidate means busy screen hence upclock */
 	if (frontbuffer_bits)
 		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
 				     DRRS_HIGH_RR);
 
+	/*
+	 * flush also means no more activity hence schedule downclock, if all
+	 * other fbs are quiescent too
+	 */
+	if (!dev_priv->drrs.busy_frontbuffer_bits)
+		schedule_delayed_work(&dev_priv->drrs.work,
+				      msecs_to_jiffies(1000));
 	mutex_unlock(&dev_priv->drrs.mutex);
 }
 
+/**
+ * intel_drrs_invalidate - Disable Idleness DRRS
+ * @dev_priv: i915 device
+ * @frontbuffer_bits: frontbuffer plane tracking bits
+ *
+ * This function gets called everytime rendering on the given planes start.
+ * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
+ *
+ * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
+ */
+void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
+			   unsigned int frontbuffer_bits)
+{
+	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, true);
+}
+
 /**
  * intel_drrs_flush - Restart Idleness DRRS
  * @dev_priv: i915 device
@@ -371,42 +388,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
 void intel_drrs_flush(struct drm_i915_private *dev_priv,
 		      unsigned int frontbuffer_bits)
 {
-	struct intel_dp *intel_dp;
-	struct drm_crtc *crtc;
-	enum pipe pipe;
-
-	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
-		return;
-
-	cancel_delayed_work(&dev_priv->drrs.work);
-
-	mutex_lock(&dev_priv->drrs.mutex);
-
-	intel_dp = dev_priv->drrs.dp;
-	if (!intel_dp) {
-		mutex_unlock(&dev_priv->drrs.mutex);
-		return;
-	}
-
-	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
-	pipe = to_intel_crtc(crtc)->pipe;
-
-	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
-	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
-
-	/* flush means busy screen hence upclock */
-	if (frontbuffer_bits)
-		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
-				     DRRS_HIGH_RR);
-
-	/*
-	 * flush also means no more activity hence schedule downclock, if all
-	 * other fbs are quiescent too
-	 */
-	if (!dev_priv->drrs.busy_frontbuffer_bits)
-		schedule_delayed_work(&dev_priv->drrs.work,
-				      msecs_to_jiffies(1000));
-	mutex_unlock(&dev_priv->drrs.mutex);
+	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
 }
 
 /**
-- 
2.33.0

