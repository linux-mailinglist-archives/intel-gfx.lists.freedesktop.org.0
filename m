Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A722C8FE4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 22:22:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EE506E8C0;
	Mon, 30 Nov 2020 21:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89FE76E8C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 21:22:12 +0000 (UTC)
IronPort-SDR: i/NihroB6ZXqj3Xx42dHfiQZRih1LLF4YJJ9nQSNfnYsu6Q+o0LPOa/hj+ZwVamVa4fKNkrFbD
 YKfqAXmHYEkA==
X-IronPort-AV: E=McAfee;i="6000,8403,9821"; a="257424742"
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="257424742"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:12 -0800
IronPort-SDR: fr42RUobQjAqELW2qmwRu26YxQ1DdBKH+IxA7/Q5qK70lDBrAmb+l0yw+/x1K+FRU5uwxMVulH
 LU0WAHW0I3Lw==
X-IronPort-AV: E=Sophos;i="5.78,382,1599548400"; d="scan'208";a="480810569"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 13:22:11 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 23:21:58 +0200
Message-Id: <20201130212200.2811939-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201130212200.2811939-1-imre.deak@intel.com>
References: <20201130212200.2811939-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/9] drm/i915: Rename power_domains.wakeref to
 init_wakeref
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

Rename power_domains.wakeref to power_domains.init_wakeref to make the
use of this reference clearer. The next patch adds tracking for another
power reference user of the power_domains functionality.

While at it add a missing zero wakeref assert when setting the wakeref.

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_power.c  | 17 +++++++++--------
 .../gpu/drm/i915/display/intel_display_power.h  |  2 +-
 drivers/gpu/drm/i915/i915_debugfs.c             |  2 +-
 3 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index b48dbb7bdaf4..75e805d11dd9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5658,7 +5658,8 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 	 * resources powered until display HW readout is complete. We drop
 	 * this reference in intel_power_domains_enable().
 	 */
-	power_domains->wakeref =
+	drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
+	power_domains->init_wakeref =
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
 	/* Disable power support if the user asked so. */
@@ -5683,7 +5684,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->power_domains.wakeref);
+		fetch_and_zero(&i915->power_domains.init_wakeref);
 
 	/* Remove the refcount we took to keep power well support disabled. */
 	if (!i915->params.disable_power_well)
@@ -5712,7 +5713,7 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 void intel_power_domains_enable(struct drm_i915_private *i915)
 {
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&i915->power_domains.wakeref);
+		fetch_and_zero(&i915->power_domains.init_wakeref);
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 	intel_power_domains_verify_state(i915);
@@ -5729,8 +5730,8 @@ void intel_power_domains_disable(struct drm_i915_private *i915)
 {
 	struct i915_power_domains *power_domains = &i915->power_domains;
 
-	drm_WARN_ON(&i915->drm, power_domains->wakeref);
-	power_domains->wakeref =
+	drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
+	power_domains->init_wakeref =
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
 	intel_power_domains_verify_state(i915);
@@ -5752,7 +5753,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915,
 {
 	struct i915_power_domains *power_domains = &i915->power_domains;
 	intel_wakeref_t wakeref __maybe_unused =
-		fetch_and_zero(&power_domains->wakeref);
+		fetch_and_zero(&power_domains->init_wakeref);
 
 	intel_display_power_put(i915, POWER_DOMAIN_INIT, wakeref);
 
@@ -5811,8 +5812,8 @@ void intel_power_domains_resume(struct drm_i915_private *i915)
 		intel_power_domains_init_hw(i915, true);
 		power_domains->display_core_suspended = false;
 	} else {
-		drm_WARN_ON(&i915->drm, power_domains->wakeref);
-		power_domains->wakeref =
+		drm_WARN_ON(&i915->drm, power_domains->init_wakeref);
+		power_domains->init_wakeref =
 			intel_display_power_get(i915, POWER_DOMAIN_INIT);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 64f4d57ff09b..05e924bd070a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -212,7 +212,7 @@ struct i915_power_domains {
 	bool display_core_suspended;
 	int power_well_count;
 
-	intel_wakeref_t wakeref;
+	intel_wakeref_t init_wakeref;
 
 	struct mutex lock;
 	int domain_use_count[POWER_DOMAIN_NUM];
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 263074c2c097..924b8f302c0f 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1281,7 +1281,7 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
 		seq_puts(m, "Runtime power management not supported\n");
 
 	seq_printf(m, "Runtime power status: %s\n",
-		   enableddisabled(!dev_priv->power_domains.wakeref));
+		   enableddisabled(!dev_priv->power_domains.init_wakeref));
 
 	seq_printf(m, "GPU idle: %s\n", yesno(!dev_priv->gt.awake));
 	seq_printf(m, "IRQs disabled: %s\n",
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
