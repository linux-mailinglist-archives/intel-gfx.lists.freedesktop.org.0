Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1CB7CA66A
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6F610E1BC;
	Mon, 16 Oct 2023 11:17:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36FE710E1BB
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455039; x=1728991039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mmesDVjjKzJ3qlY7MkGhydp3U+sLYonikGGJbSBdVLA=;
 b=dl3uRIFqX4vPIpvagU8v2qV2Bcwx+gddlmWEe77K/t5ypJM24R2aPsZg
 WQs34gOkKmAAiSYnivojfPIuXdSH5+0qf5/2zST0iVDIeo1HPMpLmG9Em
 abM+oxH/W4arGdj729L8jz7ax1Tl59zCWa4FbfXtqzkY0PxE8FrNoZCzO
 Mmg2ZAU5Gk5XyzLcgr/8XNO30EdZiDd5g/wPVNLaFGgOgEHhz4hW9B04D
 aR1SsPRtX2P7MxteOogbNktyySehVjM6Y0LEbKuR6Um11MgGO/OG4CLNY
 wEzOYuZV1zMmKmmrM90GiGw3pZlmk6O050qrm162DCvLLFAq4OC6tm0gk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341346"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341346"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532540"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532540"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:17 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:37 +0300
Message-Id: <20231016111658.3432581-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/24] drm/i915/display: Move enable_fbc
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
index a0fb3e1aa2f5..f1bdf2c6e5cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -21,7 +21,8 @@ struct drm_i915_private;
  * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not create
  *       debugfs file
  */
-#define INTEL_DISPLAY_PARAMS_FOR_EACH(param)
+#define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
+	param(int, enable_fbc, -1, 0600)     \
 
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

