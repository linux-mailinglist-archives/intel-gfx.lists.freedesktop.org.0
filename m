Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 071C79B45B3
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 10:25:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9033010E5F1;
	Tue, 29 Oct 2024 09:25:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F2AE8Ovq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3639F10E5F3
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 09:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730193943; x=1761729943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ptJqJylXCtqrXhKvqw06ac2pYKP2LIjvLBW3kNNcoVg=;
 b=F2AE8OvqmuPwk578BZzzsuflu+fGbUpBwvWF4Y5/UYLj8L+jdDMRe/XZ
 M2gtcMCo0MPc4OZa/wQn6Yza7mtYUQtAy6s5Kh4F4VzlHx9VYiHHTYXsA
 31v7IGAj4TBLGe9O5XeKzI8SkldXnsBoQ+d+IRTcfam/6vlryajUpHf5m
 jseamgPZUTE28gynLZ7Q4rqYkkuhegyBaKHW8HsQP7H7uOcIc9z4Jw3fD
 2oHt4cEM70ZbSkAa4ED8G9fbJt+0pkzDaPXNiW7hX4D4awMDWDLm1fM/D
 nxq0rwnrp35ciY9fvOk2pa2IelFy4ipoWQqGxV1664IDP0BtfFGorxQZl w==;
X-CSE-ConnectionGUID: fgKeefx5S7i1zJEFeoAvaQ==
X-CSE-MsgGUID: XgobKvzHRzaSOp0U3iw1hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="29723990"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="29723990"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:43 -0700
X-CSE-ConnectionGUID: 7cad4gi7TKuVlevGi3V98Q==
X-CSE-MsgGUID: 7ccpuCdyTSCENLIjl5iUzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="105245196"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 02:25:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 3/4] drm/i915: add a dedicated mutex for VLV/CHV IOSF sideband
Date: Tue, 29 Oct 2024 11:25:25 +0200
Message-Id: <31ccbf33c6b6114d0bcb40a2e174f19162d4e177.1730193891.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730193891.git.jani.nikula@intel.com>
References: <cover.1730193891.git.jani.nikula@intel.com>
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
index d4d29034d9ea..c3bf7c755cb7 100644
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
index 3e46cdcf294a..a73fc95762b9 100644
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

