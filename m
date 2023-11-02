Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F3A7DF713
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 16:52:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8532B10E91A;
	Thu,  2 Nov 2023 15:52:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B1810E912
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 15:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698940351; x=1730476351;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Tt9/SWEnJkT/Za89MsUVKoomqLerdEN2gSrkQnrtv2k=;
 b=jc7ICEEKYZNDt0FIgxL8X6XHEptWn+3c6hzppO/jwitgJ+dtKJ7x67wR
 CoULlcPe3zQfv6MNT/6yp3MdajWj9rJ45xjCyjZ72JAJQxQszQ+nszClg
 qqYJoE1LgngI9xBaQLl72fLHm5+VI7S08+0IIwjbykfCqRXmFjd0r/LKc
 +lxQBvSuwrnjT3Kgiq/8/KwRHfQRCDiwxVqDeNJpTaVJETLtoUdPn/bQZ
 +zLlxuy3JQRinHYX/FNa1oK99FVOTc5A6N2dIwocNZh1RksJaRcRNyvxJ
 ixqw9nHve/2NmFD/eYa/bMwYeJUzoEi1R7wFwgsG7o4ZbbBEQQ45q0vtH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="379137990"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="379137990"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:52:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="878296069"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="878296069"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 08:52:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 17:52:22 +0200
Message-Id: <20231102155223.2298316-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: move display mutex inits to
 display code
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The core code has no business accessing i915->display directly. These
could be further spread to respective files, but this is a start.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
 drivers/gpu/drm/i915/i915_driver.c                  | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 44b59ac301e6..0a5b922f2ad6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -181,6 +181,12 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	mutex_init(&i915->display.backlight.lock);
+	mutex_init(&i915->display.audio.mutex);
+	mutex_init(&i915->display.wm.wm_mutex);
+	mutex_init(&i915->display.pps.mutex);
+	mutex_init(&i915->display.hdcp.hdcp_mutex);
+
 	intel_display_irq_init(i915);
 	intel_dkl_phy_init(i915);
 	intel_color_init_hooks(i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 80e85cadb9a2..01fd25b622d1 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -231,16 +231,10 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
-	mutex_init(&dev_priv->display.backlight.lock);
 
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
-	mutex_init(&dev_priv->display.audio.mutex);
-	mutex_init(&dev_priv->display.wm.wm_mutex);
-	mutex_init(&dev_priv->display.pps.mutex);
-	mutex_init(&dev_priv->display.hdcp.hdcp_mutex);
-
 	i915_memcpy_init_early(dev_priv);
 	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
 
-- 
2.39.2

