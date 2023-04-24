Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 933306ED2D8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 18:52:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7294C10E1D8;
	Mon, 24 Apr 2023 16:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C557910E1BB;
 Mon, 24 Apr 2023 16:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682355123; x=1713891123;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LVLH6ZVp04J0LVBwFzdSpQC1FBSmP5XdfHtFra+13Mk=;
 b=MRdd6J5sQwIgt8tgOws6C2w9X1X+1T3LMK5LQHVDIZQBDwPpLKZM2D5g
 uoOY7ZKl3ad1xAWNaNfUAzt1z1B24AxC1Mi4DlasBsnallBwGWhC6v4/E
 4wqdEZGuvcnwrphmzmVc04Hh+ojmfPUvecmih7gaBxQN87UYn2LmkmbiI
 h/YbljgYNUIaE9/4h3/Rt1LQLT1DjpgMk7gViPS6gGtrrvOwQi8QSiDjy
 5WgWAzsep1NVjqJ6RndS2l0n+rXaLyP803osFyeCnaIAoAd5wKefxhOJB
 91RqwkYH379SBFebBqu51LhFetbmB1gddSNxWjbD7e4QbAzpxkMUWkAUx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="330704300"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="330704300"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 09:52:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="1022785556"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="1022785556"
Received: from josouza-mobl2.fso.intel.com ([10.230.18.148])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 09:52:00 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 24 Apr 2023 09:51:31 -0700
Message-Id: <20230424165135.132494-12-jose.souza@intel.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230424165135.132494-1-jose.souza@intel.com>
References: <20230424165135.132494-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/15] drm/i915: Initialize dkl_phy spin lock
 from display code path
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm/i915: Initialize dkl_phy spin lock from display code path

Start moving the initialization of display locks from
i915_driver_early_probe().
Display locks should be initialized from display-only code paths.

It was also agreed that if a variable is only used in one file, it
should be initialized only in that file, so intel_dkl_phy_init() was
added.

v2:
- added intel_display_locks_init()

v3:
- rebased

v4:
- dropped intel_display_locks_init()

v5:
- moved intel_dkl_phy_init() to the beginning of file

Cc: intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230420170558.35398-1-jose.souza@intel.com
(cherry picked from commit bfa010f608491036327db20aad1d15e28da0189e)
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 2 ++
 drivers/gpu/drm/i915/display/intel_dkl_phy.c        | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_dkl_phy.h        | 1 +
 drivers/gpu/drm/i915/i915_driver.c                  | 1 -
 4 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 92c624f6d2ae7..95669ad1a7975 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -30,6 +30,7 @@
 #include "intel_display_driver.h"
 #include "intel_display_power.h"
 #include "intel_display_types.h"
+#include "intel_dkl_phy.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
 #include "intel_dpll.h"
@@ -177,6 +178,7 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	intel_dkl_phy_init(i915);
 	intel_color_init_hooks(i915);
 	intel_init_cdclk_hooks(i915);
 	intel_audio_hooks_init(i915);
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 57cc3edba0163..a001232ad445e 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -11,6 +11,15 @@
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 
+/**
+ * intel_dkl_phy_init - initialize Dekel PHY
+ * @i915: i915 device instance
+ */
+void intel_dkl_phy_init(struct drm_i915_private *i915)
+{
+	spin_lock_init(&i915->display.dkl.phy_lock);
+}
+
 static void
 dkl_phy_set_hip_idx(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.h b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
index 570ee36f9386f..5956ec3e940b1 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.h
@@ -12,6 +12,7 @@
 
 struct drm_i915_private;
 
+void intel_dkl_phy_init(struct drm_i915_private *i915);
 u32
 intel_dkl_phy_read(struct drm_i915_private *i915, struct intel_dkl_phy_reg reg);
 void
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index decaff25c36cf..a4e11a3c1842f 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -225,7 +225,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	mutex_init(&dev_priv->display.wm.wm_mutex);
 	mutex_init(&dev_priv->display.pps.mutex);
 	mutex_init(&dev_priv->display.hdcp.comp_mutex);
-	spin_lock_init(&dev_priv->display.dkl.phy_lock);
 
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
-- 
2.40.0

