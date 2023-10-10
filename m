Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08DCF7BFA0D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548EE10E33C;
	Tue, 10 Oct 2023 11:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E23010E33F
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938185; x=1728474185;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=t+6TpbuAcXz0zSJXW6pHH6WDgmZuM/zkW+8yZ/6hGdU=;
 b=TEoYufn+vgaXxzfzQqMTyIcy5wEJFAJlQDBpUXsJ1VEAE46DakE6WPN2
 rRBHuPXdyEKRt5Wn7KVIRgSJNOXRlkmA00bH84qBEZCqZLpPe5vYnVKUt
 9eJJ7bw6Gq4FCB9eqak/bt9/WDXt7LDQniiIDmZ4MBG98f5r6brahQ/Y5
 AuX245+UEs/r8e3u4btNetQWczLE6Pc/ZgwpUyB7Pb5uWsaNUMkie0swI
 Ixj/sMyuItOFO0kRGK+nHnIrRLHJpJN2HSfkRph3UiVFBxtq4lc+t1CjD
 30ol2ItV8xAXHmLDvtptC+A2tWtOQHLPU11UhMwM346m1Y+0jDdNINN84 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635453"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635453"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655360"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655360"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:43:03 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:07 +0300
Message-Id: <20231010114120.2504103-13-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/25] drm/i915/display: Move disable_power_well
 module parameter under display
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
index c117a3c1c590..feae0c5f0364 100644
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
 
 i915_param_named(fastboot, int, 0400,
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index e90e34cc8b2a..b24d9d3c05b7 100644
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

