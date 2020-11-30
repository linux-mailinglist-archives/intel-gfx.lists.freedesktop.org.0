Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0676F2C8FE2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE6776E8B5;
	Mon, 30 Nov 2020 21:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB2CA6E8B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:14 +0000 (UTC)
IronPort-SDR: NNsMEKHyuTw7CR06K7egOoqL0ea8eCMmVk1ak4dQTCdmSG38JoN3oWQd8Z9dMGrhPUvTy8bXDh
 fTlKTn91POyQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424748"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424748"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:14 -0800
IronPort-SDR: TxTNEhsLa1AmisSJ3/R8KnzX6XGbZrUHFHwPfWLb2mx7yCrUCMotu7+HtMgayuuJm97WLn7LzG
 nHlPM91cs+lQ==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810586"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:13 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:22:00 +0200
Message-Id: <20201130212200.2811939-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Make
 intel_display_power_put_unchecked() an internal-only function
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

All the display power domain references are wakeref tracked now, so we
can mark intel_display_power_put_unchecked() as an internal function
(for suppressing wakeref tracking in non-debug builds).

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_power.c    | 40 +++++++++----------
 .../drm/i915/display/intel_display_power.h    |  5 ++-
 2 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 906211a8c9d0..a6226bb4b643 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2184,26 +2184,6 @@ static void __intel_display_power_put(struct drm_i915_private *dev_priv,
 	mutex_unlock(&power_domains->lock);
 }
 
-/**
- * intel_display_power_put_unchecked - release an unchecked power domain reference
- * @dev_priv: i915 device instance
- * @domain: power domain to reference
- *
- * This function drops the power domain reference obtained by
- * intel_display_power_get() and might power down the corresponding hardware
- * block right away if this is the last reference.
- *
- * This function exists only for historical reasons and should be avoided in
- * new code, as the correctness of its use cannot be checked. Always use
- * intel_display_power_put() instead.
- */
-void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
-				       enum intel_display_power_domain domain)
-{
-	__intel_display_power_put(dev_priv, domain);
-	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
-}
-
 static void
 queue_async_put_domains_work(struct i915_power_domains *power_domains,
 			     intel_wakeref_t wakeref)
@@ -2410,6 +2390,26 @@ void intel_display_power_put(struct drm_i915_private *dev_priv,
 	__intel_display_power_put(dev_priv, domain);
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 }
+#else
+/**
+ * intel_display_power_put_unchecked - release an unchecked power domain reference
+ * @dev_priv: i915 device instance
+ * @domain: power domain to reference
+ *
+ * This function drops the power domain reference obtained by
+ * intel_display_power_get() and might power down the corresponding hardware
+ * block right away if this is the last reference.
+ *
+ * This function is only for the power domain code's internal use to suppress wakeref
+ * tracking when the correspondig debug kconfig option is disabled, should not
+ * be used otherwise.
+ */
+void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
+				       enum intel_display_power_domain domain)
+{
+	__intel_display_power_put(dev_priv, domain);
+	intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
+}
 #endif
 
 void
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 70c2806d8f63..c0590dbccc46 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -287,8 +287,6 @@ intel_wakeref_t intel_display_power_get(struct drm_i915_private *dev_priv,
 intel_wakeref_t
 intel_display_power_get_if_enabled(struct drm_i915_private *dev_priv,
 				   enum intel_display_power_domain domain);
-void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
-				       enum intel_display_power_domain domain);
 void __intel_display_power_put_async(struct drm_i915_private *i915,
 				     enum intel_display_power_domain domain,
 				     intel_wakeref_t wakeref);
@@ -305,6 +303,9 @@ intel_display_power_put_async(struct drm_i915_private *i915,
 	__intel_display_power_put_async(i915, domain, wakeref);
 }
 #else
+void intel_display_power_put_unchecked(struct drm_i915_private *dev_priv,
+				       enum intel_display_power_domain domain);
+
 static inline void
 intel_display_power_put(struct drm_i915_private *i915,
 			enum intel_display_power_domain domain,
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
