Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B95398E1A4
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2024 19:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E388110E77C;
	Wed,  2 Oct 2024 17:30:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L7dzSqAn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28E4610E779
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2024 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727890252; x=1759426252;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XSh09jtxxBvRJjU3/6Qn7F3nrbUKfmYsX+tORwKo6BQ=;
 b=L7dzSqAnJlORIYTM+cGMM+XvrTMIRQ92jMOG+IN18+gh/Apf3Q3Nu9lh
 qYZCSJpxYhyOgf0y7/bS9C8Hu0HFEvyO1gtuW0nY/to/1fT/rhLivnSfr
 /gRW9kmVMHi9zuO+aZki6E0/KkEUx01saTYd7LmwKYEXnSfKUHPwjvAIY
 pNeFm4Xj9tJK3vnynZPX7GaeXtuYfRE+7ubIX+pu4nFkepHZ7dTo8p31o
 hq/J9oq8KXfrsKMhdj41TKhdYxm6CbnFJgUfed1y/m4lcXHLG7JL4K1iR
 jgEs3GJyAOvVBkjqgw3b5Gw1JDjM+FyBviUPVBnUG6AC3GGFWDqYdznaM A==;
X-CSE-ConnectionGUID: i2/Juo+pTI2wYESHoW/wRA==
X-CSE-MsgGUID: 1xoU98JyQwa6+ZL3VECoNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11213"; a="30860130"
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="30860130"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:51 -0700
X-CSE-ConnectionGUID: f7DVa+jyT/6UmaB8TYkDow==
X-CSE-MsgGUID: Cry0WLfPSvKNyNs6Xu0KTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,172,1725346800"; d="scan'208";a="74493605"
Received: from lbogdanm-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.49])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2024 10:30:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/4] drm/i915: add a dedicated mutex for VLV/CHV IOSF sideband
Date: Wed,  2 Oct 2024 20:30:30 +0300
Message-Id: <8e42744593afa53b75e8007445e4809fb7ad3b43.1727890136.git.jani.nikula@intel.com>
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

The VLV/CHV IOSF sideband is unrelated to pcode. It's just confusing to
piggyback on the same mutex. Add a dedicated lock with init and cleanup
functions.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  |  3 +++
 drivers/gpu/drm/i915/i915_drv.h     |  5 +++++
 drivers/gpu/drm/i915/vlv_sideband.c | 18 +++++++++++++++---
 drivers/gpu/drm/i915/vlv_sideband.h |  3 +++
 4 files changed, 26 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index a777532db98e..716ecf84a65b 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -105,6 +105,7 @@
 #include "intel_pcode.h"
 #include "intel_region_ttm.h"
 #include "intel_sbi.h"
+#include "vlv_sideband.h"
 #include "vlv_suspend.h"
 
 static const struct drm_driver i915_drm_driver;
@@ -233,6 +234,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	spin_lock_init(&dev_priv->gpu_error.lock);
 
 	intel_sbi_init(dev_priv);
+	vlv_iosf_sb_init(dev_priv);
 	mutex_init(&dev_priv->sb_lock);
 	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
 
@@ -294,6 +296,7 @@ static void i915_driver_late_release(struct drm_i915_private *dev_priv)
 
 	cpu_latency_qos_remove_request(&dev_priv->sb_qos);
 	mutex_destroy(&dev_priv->sb_lock);
+	vlv_iosf_sb_fini(dev_priv);
 	intel_sbi_fini(dev_priv);
 
 	i915_params_free(&dev_priv->params);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 128478c06e78..e2c7619af2fd 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -239,6 +239,11 @@ struct drm_i915_private {
 	/* LPT/WPT IOSF sideband protection */
 	struct mutex sbi_lock;
 
+	/* VLV/CHV IOSF sideband */
+	struct {
+		struct mutex lock; /* protect sideband access */
+	} vlv_iosf_sb;
+
 	/* Sideband mailbox protection */
 	struct mutex sb_lock;
 	struct pm_qos_request sb_qos;
diff --git a/drivers/gpu/drm/i915/vlv_sideband.c b/drivers/gpu/drm/i915/vlv_sideband.c
index 68291412f4cb..ed7de9c8d0ad 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.c
+++ b/drivers/gpu/drm/i915/vlv_sideband.c
@@ -62,12 +62,12 @@ void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports)
 	if (ports & BIT(VLV_IOSF_SB_PUNIT))
 		__vlv_punit_get(i915);
 
-	mutex_lock(&i915->sb_lock);
+	mutex_lock(&i915->vlv_iosf_sb.lock);
 }
 
 void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports)
 {
-	mutex_unlock(&i915->sb_lock);
+	mutex_unlock(&i915->vlv_iosf_sb.lock);
 
 	if (ports & BIT(VLV_IOSF_SB_PUNIT))
 		__vlv_punit_put(i915);
@@ -81,7 +81,7 @@ static int vlv_sideband_rw(struct drm_i915_private *i915,
 	const bool is_read = (opcode == SB_MRD_NP || opcode == SB_CRRDDA_NP);
 	int err;
 
-	lockdep_assert_held(&i915->sb_lock);
+	lockdep_assert_held(&i915->vlv_iosf_sb.lock);
 	if (port == IOSF_PORT_PUNIT)
 		iosf_mbi_assert_punit_acquired();
 
@@ -249,3 +249,15 @@ void vlv_flisdsi_write(struct drm_i915_private *i915, u32 reg, u32 val)
 	vlv_sideband_rw(i915, DPIO_DEVFN, IOSF_PORT_FLISDSI, SB_CRWRDA_NP,
 			reg, &val);
 }
+
+void vlv_iosf_sb_init(struct drm_i915_private *i915)
+{
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		mutex_init(&i915->vlv_iosf_sb.lock);
+}
+
+void vlv_iosf_sb_fini(struct drm_i915_private *i915)
+{
+	if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
+		mutex_destroy(&i915->vlv_iosf_sb.lock);
+}
diff --git a/drivers/gpu/drm/i915/vlv_sideband.h b/drivers/gpu/drm/i915/vlv_sideband.h
index c20cf41b2d39..31813e07c56f 100644
--- a/drivers/gpu/drm/i915/vlv_sideband.h
+++ b/drivers/gpu/drm/i915/vlv_sideband.h
@@ -25,6 +25,9 @@ enum {
 	VLV_IOSF_SB_PUNIT,
 };
 
+void vlv_iosf_sb_init(struct drm_i915_private *i915);
+void vlv_iosf_sb_fini(struct drm_i915_private *i915);
+
 void vlv_iosf_sb_get(struct drm_i915_private *i915, unsigned long ports);
 void vlv_iosf_sb_put(struct drm_i915_private *i915, unsigned long ports);
 
-- 
2.39.5

