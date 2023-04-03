Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D32516D4E47
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 18:46:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4D710E527;
	Mon,  3 Apr 2023 16:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD3310E51D;
 Mon,  3 Apr 2023 16:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680540390; x=1712076390;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TWYkwvd3ONiOWTzYNufhC827VPe1T1/nry7OHX63TDU=;
 b=S3dpf0U1wyiQBpl3zpA9w7YeZrvW2QV/Ix0sxRhvtUYAmGp3djNObpjp
 zF/xyssST1B+FX7CdzuLwHWpzHw72DRnoAQWPeWtDAkA0ulxA+EK2H3km
 /VZFS5awraexr39mBN5/cTO/DjaQ1vxERVovbazXAmEH7Q3MvorurWzyc
 lit/9mHnHSYLrZ5GnfCE4S0ZlEdIjlwOvnx6W5yjVOy/b5S9TU4N1zpzQ
 YS1yQ4hTBzSz5RPb+ZjtodCVNf3UV4V/z1JAzuZw7BdiSkkk5uMC1KxCO
 0SxkhBugU+nR0V0WgZJOIiSZoH7OrOR6cEJD/3M13FeZ5UA7jKQI+oOoS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="322350678"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="322350678"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 09:46:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="797132326"
X-IronPort-AV: E=Sophos;i="5.98,315,1673942400"; d="scan'208";a="797132326"
Received: from unknown (HELO josouza-mobl2.fso.intel.com) ([10.230.18.148])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 09:46:26 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon,  3 Apr 2023 09:46:11 -0700
Message-Id: <20230403164615.131633-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915: Split display locks init from
 i915_driver_early_probe()
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

No behavior changes here, just adding a function to make clear
what locks initialized here are display related or not.

Cc: intel-gfx@lists.freedesktop.org
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 066d79c2069c4..224cb4cb43335 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -188,6 +188,20 @@ static void sanitize_gpu(struct drm_i915_private *i915)
 	}
 }
 
+static void
+i915_driver_display_early_probe(struct drm_i915_private *dev_priv)
+{
+	spin_lock_init(&dev_priv->display.fb_tracking.lock);
+	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
+	mutex_init(&dev_priv->display.backlight.lock);
+
+	mutex_init(&dev_priv->display.audio.mutex);
+	mutex_init(&dev_priv->display.wm.wm_mutex);
+	mutex_init(&dev_priv->display.pps.mutex);
+	mutex_init(&dev_priv->display.hdcp.comp_mutex);
+	spin_lock_init(&dev_priv->display.dkl.phy_lock);
+}
+
 /**
  * i915_driver_early_probe - setup state not requiring device access
  * @dev_priv: device private
@@ -213,18 +227,11 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
-	spin_lock_init(&dev_priv->display.fb_tracking.lock);
-	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
-	mutex_init(&dev_priv->display.backlight.lock);
 
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
-	mutex_init(&dev_priv->display.audio.mutex);
-	mutex_init(&dev_priv->display.wm.wm_mutex);
-	mutex_init(&dev_priv->display.pps.mutex);
-	mutex_init(&dev_priv->display.hdcp.comp_mutex);
-	spin_lock_init(&dev_priv->display.dkl.phy_lock);
+	i915_driver_display_early_probe(dev_priv);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.40.0

