Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C9D4007BC
	for <lists+intel-gfx@lfdr.de>; Sat,  4 Sep 2021 00:05:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A1626E8E9;
	Fri,  3 Sep 2021 22:05:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521DD6E8E6
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Sep 2021 22:05:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="217665957"
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="217665957"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:05:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,266,1624345200"; d="scan'208";a="544130163"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 15:05:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri,  3 Sep 2021 15:10:35 -0700
Message-Id: <20210903221036.34770-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210903221036.34770-1-jose.souza@intel.com>
References: <20210903221036.34770-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/display: Share code between
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

v3:
- not scheduling work from invalidate operations

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_drrs.c | 82 +++++++++--------------
 1 file changed, 32 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index fa0411341a0da..15e5f91cf331d 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -299,18 +299,9 @@ static void intel_drrs_downclock_work(struct work_struct *work)
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
@@ -333,16 +324,42 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
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
+	if (!invalidate && !dev_priv->drrs.busy_frontbuffer_bits)
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
@@ -358,42 +375,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
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

