Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239E07D4DD2
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 12:32:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C80010E32A;
	Tue, 24 Oct 2023 10:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FBC510E32B
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 10:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698143568; x=1729679568;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ciB/VFW+dr11eYhbxvecmOOLrdZdyBsIHl4qVAu8Kl4=;
 b=lxsh/erViivxP0ElPTe9oqqOQCZ/blyqDNE/V5gt30W0zQWEbV/210t0
 MUCsz6NhegkUATg5fOZe1eDkiVJ3rneCfVOJb6sMxeu8qC6noc/D3KQk/
 HnLl4jNdEk3uB8ESKpPrVOH/MvOQUjBL2v63h95pV+D33jJnkVLhg8bS0
 bnd0zfyHKuy5oJWYNtwKCQLj/t6R+Y5ALu4v6aYPcvJajnHOESfHDfEPp
 iuYJHpHLcNSETMfwMC0h+21OfBw2dNYEru1kzk4jmk/J+q+IGC17MB9kM
 r7jlGoNZdNn2ecRIBgLcarGv8lxN1oJaE15Pr/4FTpouU7MDto4uigIm4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="386839435"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="386839435"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="793439340"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="793439340"
Received: from cpantea-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.63.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 03:32:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 13:32:02 +0300
Message-Id: <20231024103222.302256-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231024103222.302256-1-jouni.hogander@intel.com>
References: <20231024103222.302256-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 03/23] drm/i915/display: Move enable_fbc
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
Cc: Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c              |  2 +-
 drivers/gpu/drm/i915/display/intel_display_params.c |  4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h |  3 ++-
 drivers/gpu/drm/i915/display/intel_fbc.c            | 10 +++++-----
 drivers/gpu/drm/i915/i915_params.c                  |  4 ----
 drivers/gpu/drm/i915/i915_params.h                  |  1 -
 6 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index af0c79a4c9a4..b37c0d02d500 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -2993,7 +2993,7 @@ static void ilk_wm_merge(struct drm_i915_private *dev_priv,
 
 	/* ILK: LP2+ must be disabled when FBC WM is disabled but FBC enabled */
 	if (DISPLAY_VER(dev_priv) == 5 && HAS_FBC(dev_priv) &&
-	    dev_priv->params.enable_fbc && !merged->fbc_wm_enabled) {
+	    dev_priv->display.params.enable_fbc && !merged->fbc_wm_enabled) {
 		for (level = 2; level < num_levels; level++) {
 			struct intel_wm_level *wm = &merged->wm[level];
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 11ee73a98b5b..330613cd64db 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -27,6 +27,10 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+intel_display_param_named_unsafe(enable_fbc, int, 0400,
+	"Enable frame buffer compression for power savings "
+	"(default: -1 (use per-chip default))");
+
 __maybe_unused
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index eac66042da4d..198b03da8055 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -21,7 +21,8 @@ struct drm_i915_private;
  * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not create
  *       debugfs file
  */
-#define INTEL_DISPLAY_PARAMS_FOR_EACH(param) /* empty define to avoid build failure */
+#define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
+	param(int, enable_fbc, -1, 0600) \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 4820d21cc942..bde12fe62275 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1174,7 +1174,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (!i915->params.enable_fbc) {
+	if (!i915->display.params.enable_fbc) {
 		plane_state->no_fbc_reason = "disabled per module param or by default";
 		return 0;
 	}
@@ -1751,8 +1751,8 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
  */
 static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 {
-	if (i915->params.enable_fbc >= 0)
-		return !!i915->params.enable_fbc;
+	if (i915->display.params.enable_fbc >= 0)
+		return !!i915->display.params.enable_fbc;
 
 	if (!HAS_FBC(i915))
 		return 0;
@@ -1824,9 +1824,9 @@ void intel_fbc_init(struct drm_i915_private *i915)
 	if (need_fbc_vtd_wa(i915))
 		DISPLAY_RUNTIME_INFO(i915)->fbc_mask = 0;
 
-	i915->params.enable_fbc = intel_sanitize_fbc_option(i915);
+	i915->display.params.enable_fbc = intel_sanitize_fbc_option(i915);
 	drm_dbg_kms(&i915->drm, "Sanitized enable_fbc value: %d\n",
-		    i915->params.enable_fbc);
+		    i915->display.params.enable_fbc);
 
 	for_each_fbc_id(i915, fbc_id)
 		i915->display.fbc[fbc_id] = intel_fbc_create(i915, fbc_id);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 036c4c3ed6ed..42700b854b79 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -72,10 +72,6 @@ i915_param_named_unsafe(enable_dc, int, 0400,
 	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
 	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
 
-i915_param_named_unsafe(enable_fbc, int, 0400,
-	"Enable frame buffer compression for power savings "
-	"(default: -1 (use per-chip default))");
-
 i915_param_named_unsafe(lvds_channel_mode, int, 0400,
 	 "Specify LVDS channel mode "
 	 "(0=probe BIOS [default], 1=single-channel, 2=dual-channel)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index d5194b039aab..e674de29f92c 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -52,7 +52,6 @@ struct drm_printer;
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
-	param(int, enable_fbc, -1, 0600) \
 	param(int, enable_psr, -1, 0600) \
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, psr_safest_params, false, 0400) \
-- 
2.34.1

