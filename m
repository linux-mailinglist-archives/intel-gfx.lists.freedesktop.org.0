Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C2D98E1A3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 19:30:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A750710E774;
	Wed,  2 Oct 2024 17:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PvYj8pli";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A0A810E771
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727890252; x=1759426252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rwaQlgfryPW93JsOPAxQ4CBsHl4Gxr568uOVWFPTzAI=;
 b=PvYj8plilhTTQBlbZ2DkpMVKAwhh9ldOlDm9LOpaw8zSgz3p2N70qyJM
 RcKwULZR2SyqF5ALSLu+8gOy9v1oKEKCKXoM3e0dmrBhpTxfQg+xG4HbC
 t9X6AKzFnQyDfNY6Ncg9W73PL3md7utHAMJNpKV3Y/KtyvWqtYshYzrQU
 cgBxEZMyyzKzM9D4+GiMnyA6Qg5vq9RLXuDHQFEVtzLQ9Y9iXP9V7F+NB
 XJEBChLHOA9a3/sZ3552+60e/L1eg9vQdVBbpYHAqDTDSnxPnO075GNk0
 Xut69fU2l4ekCpkNmDd0OrafEvA+uNexgwz6lMVIHwkGbdYweJll6I8/s Q==;
X-CSE-ConnectionGUID: CPgr4aT5S4C89gzJLe3kSw==
X-CSE-MsgGUID: xYfDfvBvT5Si6KZdVrudJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30860121"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="30860121"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:47 -0700
X-CSE-ConnectionGUID: Wme3E1rUQPaK84YeXvZVbg==
X-CSE-MsgGUID: SfmWrLXlSCSPYAMg5zJUUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74493557"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/4] drm/i915/sbi: add a dedicated mutex for LPT/WPT IOSF
 sideband
Date: Wed,  2 Oct 2024 20:30:29 +0300
Message-Id: <671b9f3f130e18963d0c39e0e4e2045e127ceea2.1727890136.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1727890136.git.jani.nikula@intel.com>
References: <cover.1727890136.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The LPT/WPT IOSF sideband is unrelated to pcode or VLV/CHV IOSF
sideband. It's just confusing to piggyback on the same mutex. Add a
dedicated lock with init and cleanup functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c |  3 +++
 drivers/gpu/drm/i915/i915_drv.h    |  3 +++
 drivers/gpu/drm/i915/intel_sbi.c   | 16 +++++++++++++---
 drivers/gpu/drm/i915/intel_sbi.h   |  2 ++
 4 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b3eb35fa5ff8..a777532db98e 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -104,6 +104,7 @@
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_region_ttm.h"
+#include "intel_sbi.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver i915_drm_driver;
@@ -231,6 +232,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	spin_lock_init(&dev_priv->irq_lock);
 	spin_lock_init(&dev_priv->gpu_error.lock);
 
+	intel_sbi_init(dev_priv);
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
@@ -292,6 +294,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 
 	cpu_latency_qos_remove_request(&dev_priv->sb_qos);
 	mutex_destroy(&dev_priv->sb_lock);
+	intel_sbi_fini(dev_priv);
 
 	i915_params_free(&dev_priv->params);
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 3c4b106cc7a0..128478c06e78 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -236,6 +236,9 @@ struct drm_i915_private {
 	spinlock_t irq_lock;
 	bool irqs_enabled;
 
+	/* LPT/WPT IOSF sideband protection */
+	struct mutex sbi_lock;
+
 	/* Sideband mailbox protection */
 	struct mutex sb_lock;
 	struct pm_qos_request sb_qos;
diff --git a/drivers/gpu/drm/i915/intel_sbi.c b/drivers/gpu/drm/i915/intel_sbi.c
index 862b5b9992eb..41e85ac773dc 100644
--- a/drivers/gpu/drm/i915/intel_sbi.c
+++ b/drivers/gpu/drm/i915/intel_sbi.c
@@ -17,7 +17,7 @@ static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
 	struct intel_uncore *uncore = &i915->uncore;
 	u32 cmd;
 
-	lockdep_assert_held(&i915->sb_lock);
+	lockdep_assert_held(&i915->sbi_lock);
 
 	if (intel_wait_for_register_fw(uncore,
 				       SBI_CTL_STAT, SBI_BUSY, 0,
@@ -59,12 +59,12 @@ static int intel_sbi_rw(struct drm_i915_private *i915, u16 reg,
 
 void intel_sbi_lock(struct drm_i915_private *i915)
 {
-	mutex_lock(&i915->sb_lock);
+	mutex_lock(&i915->sbi_lock);
 }
 
 void intel_sbi_unlock(struct drm_i915_private *i915)
 {
-	mutex_unlock(&i915->sb_lock);
+	mutex_unlock(&i915->sbi_lock);
 }
 
 u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
@@ -82,3 +82,13 @@ void intel_sbi_write(struct drm_i915_private *i915, u16 reg, u32 value,
 {
 	intel_sbi_rw(i915, reg, destination, &value, false);
 }
+
+void intel_sbi_init(struct drm_i915_private *i915)
+{
+	mutex_init(&i915->sbi_lock);
+}
+
+void intel_sbi_fini(struct drm_i915_private *i915)
+{
+	mutex_destroy(&i915->sbi_lock);
+}
diff --git a/drivers/gpu/drm/i915/intel_sbi.h b/drivers/gpu/drm/i915/intel_sbi.h
index f91bd03aa826..85161a4f13b8 100644
--- a/drivers/gpu/drm/i915/intel_sbi.h
+++ b/drivers/gpu/drm/i915/intel_sbi.h
@@ -15,6 +15,8 @@ enum intel_sbi_destination {
 	SBI_MPHY,
 };
 
+void intel_sbi_init(struct drm_i915_private *i915);
+void intel_sbi_fini(struct drm_i915_private *i915);
 void intel_sbi_lock(struct drm_i915_private *i915);
 void intel_sbi_unlock(struct drm_i915_private *i915);
 u32 intel_sbi_read(struct drm_i915_private *i915, u16 reg,
-- 
2.39.5

