Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C07CA675
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E53A10E1CA;
	Mon, 16 Oct 2023 11:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7402510E1C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455052; x=1728991052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lviXNmjKMypWurwb3+c9GgOuKY0uRAX5VTiDXDhimbs=;
 b=gVqruYiU1KLHGw5f9O9tiX3fUw5Q+p1RX/DOibbreRjGLVjbARMtKB7q
 guxq5sQs8xM7+4GfsS7Eq1BVfK6L0lCKSEwCz/jTq9R8prBIHkkngTldV
 nAJK0iCYMKGC0NYhqZsg5/TH8PY1otraa6cCQbjsWIUJbATI+dy4fBTiD
 PJCuc6iZzKqj37r4z0vXGlnGgq/5jo3sSpSrcRJp2B9bZY6hEq8TFamWF
 iNs65ssa5YH6D0yeF6iQ3zjKC7KyNtiGgbCom/XzxqZK7Y7+J8r1msVAs
 xAUT3KUMPSjza67FK4yRkt1ePjhxgaE6LTTigiDq4jXpy0fDMzseeDns4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341368"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341368"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532622"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532622"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:31 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:46 +0300
Message-Id: <20231016111658.3432581-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/24] drm/i915/display: Move
 disable_power_well module parameter under display
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

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_params.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h |  1 +
 drivers/gpu/drm/i915/display/intel_display_power.c  | 12 ++++++------
 drivers/gpu/drm/i915/i915_params.c                  |  4 ----
 drivers/gpu/drm/i915/i915_params.h                  |  1 -
 5 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index efc311837ff1..86b46cff1718 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -53,6 +53,10 @@ intel_display_param_named_unsafe(enable_dpt, bool, 0400,
 intel_display_param_named_unsafe(enable_sagv, bool, 0600,
 	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
 
+intel_display_param_named_unsafe(disable_power_well, int, 0400,
+	"Disable display power wells when possible "
+	"(-1=auto [default], 0=power wells always on, 1=power wells disabled when possible)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 06e920c9aa36..998f99a2857c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -31,6 +31,7 @@ struct drm_i915_private;
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_sagv, true, 0600) \
+	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 4832eb8da080..e390595d7341 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -967,7 +967,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
 		DISPLAY_VER(dev_priv) >= 11 ?
 	       DC_STATE_EN_DC9 : 0;
 
-	if (!dev_priv->params.disable_power_well)
+	if (!dev_priv->display.params.disable_power_well)
 		max_dc = 0;
 
 	if (enable_dc >= 0 && enable_dc <= max_dc) {
@@ -1016,9 +1016,9 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 {
 	struct i915_power_domains *power_domains = &dev_priv->display.power.domains;
 
-	dev_priv->params.disable_power_well =
+	dev_priv->display.params.disable_power_well =
 		sanitize_disable_power_well_option(dev_priv,
-						   dev_priv->params.disable_power_well);
+						   dev_priv->display.params.disable_power_well);
 	power_domains->allowed_dc_mask =
 		get_allowed_dc_mask(dev_priv, dev_priv->display.params.enable_dc);
 
@@ -1950,7 +1950,7 @@ void intel_power_domains_init_hw(struct drm_i915_private *i915, bool resume)
 		intel_display_power_get(i915, POWER_DOMAIN_INIT);
 
 	/* Disable power support if the user asked so. */
-	if (!i915->params.disable_power_well) {
+	if (!i915->display.params.disable_power_well) {
 		drm_WARN_ON(&i915->drm, power_domains->disable_wakeref);
 		i915->display.power.domains.disable_wakeref = intel_display_power_get(i915,
 										      POWER_DOMAIN_INIT);
@@ -1977,7 +1977,7 @@ void intel_power_domains_driver_remove(struct drm_i915_private *i915)
 		fetch_and_zero(&i915->display.power.domains.init_wakeref);
 
 	/* Remove the refcount we took to keep power well support disabled. */
-	if (!i915->params.disable_power_well)
+	if (!i915->display.params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
 					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
 
@@ -2096,7 +2096,7 @@ void intel_power_domains_suspend(struct drm_i915_private *i915, bool s2idle)
 	 * Even if power well support was disabled we still want to disable
 	 * power wells if power domains must be deinitialized for suspend.
 	 */
-	if (!i915->params.disable_power_well)
+	if (!i915->display.params.disable_power_well)
 		intel_display_power_put(i915, POWER_DOMAIN_INIT,
 					fetch_and_zero(&i915->display.power.domains.disable_wakeref));
 
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 51e706f6e57e..eab02f71a4e5 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -86,10 +86,6 @@ i915_param_named_unsafe(force_probe, charp, 0400,
 	"Force probe options for specified supported devices. "
 	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
 
-i915_param_named_unsafe(disable_power_well, int, 0400,
-	"Disable display power wells when possible "
-	"(-1=auto [default], 0=power wells always on, 1=power wells disabled when possible)");
-
 i915_param_named_unsafe(enable_ips, int, 0400, "Enable IPS (default: true)");
 
 i915_param_named_unsafe(load_detect_test, bool, 0400,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 066f15783580..060464df03c2 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
 	param(int, enable_guc, -1, 0400) \
-- 
2.34.1

