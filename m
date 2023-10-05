Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 272A37B9AF7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 07:45:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A4E10E3D3;
	Thu,  5 Oct 2023 05:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5A710E1BA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 05:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696484726; x=1728020726;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZfYwAqrkfy8d7SURMj1hh23yCNBRzVTO5M/VXQdgrVo=;
 b=dCDvezjV1EIB6mDVd7OkDTZz0z0nX84jVaddj87Xz2yqpqQwSuS0ya2B
 YyW1KZGUfL50YwjhyrHo9T2wYf40UUYrQH8qfN+1gkQs/JtRujWWotzPh
 yn/jBEAQ4sG5UNsApIYrOGfebn5gmQMcjZv95lJw+b4kffoGYwnOv08ZD
 oBhFFhKyoAafMC/4i/VgbcQEWj+mHZpHBorZc2Uw13lg0SyisaHdIoLwM
 rdJRgsfW3RJVjn9z32kWznKpRHmLswZriua2iOG5U5xR/aNBFjee24Wr+
 mE/or67+Ot3Gu4+0L1cshI8mL/3cPq2CIUxpy+MNoqPLonar6dnSll4aA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="4971854"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; 
   d="scan'208";a="4971854"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="786821902"
X-IronPort-AV: E=Sophos;i="6.03,202,1694761200"; d="scan'208";a="786821902"
Received: from jlmcclen-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.55.79])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 22:45:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Oct 2023 08:44:59 +0300
Message-Id: <20231005054500.2053070-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005054500.2053070-1-jouni.hogander@intel.com>
References: <20231005054500.2053070-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC PATCH 3/4] drm/i915/display: Move enable_fbc
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
index c782cb7f11cb..a21d4a3be947 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -50,6 +50,10 @@ struct intel_display_params intel_display_modparams __read_mostly = {
  * debugfs mode to 0.
  */
 
+intel_display_param_named_unsafe(enable_fbc, int, 0400,
+	"Enable frame buffer compression for power savings "
+	"(default: -1 (use per-chip default))");
+
 static void _param_print_bool(struct drm_printer *p, const char *driver_name,
 			      const char *name, bool val)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 9bde1823da4c..1b107db226d6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -42,7 +42,8 @@ struct drm_i915_private;
  * mode: debugfs file permissions, one of {0400, 0600, 0}, use 0 to not create
  *       debugfs file
  */
-#define INTEL_DISPLAY_PARAMS_FOR_EACH(param)
+#define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
+	param(int, enable_fbc, -1, 0600)     \
 
 #define MEMBER(T, member, ...) T member;
 struct intel_display_params {
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 1cb9eec29640..32de94e0e69e 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1069,7 +1069,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 		return 0;
 	}
 
-	if (!i915->params.enable_fbc) {
+	if (!i915->display.params.enable_fbc) {
 		plane_state->no_fbc_reason = "disabled per module param or by default";
 		return 0;
 	}
@@ -1645,8 +1645,8 @@ void intel_fbc_handle_fifo_underrun_irq(struct drm_i915_private *i915)
  */
 static int intel_sanitize_fbc_option(struct drm_i915_private *i915)
 {
-	if (i915->params.enable_fbc >= 0)
-		return !!i915->params.enable_fbc;
+	if (i915->display.params.enable_fbc >= 0)
+		return !!i915->display.params.enable_fbc;
 
 	if (!HAS_FBC(i915))
 		return 0;
@@ -1718,9 +1718,9 @@ void intel_fbc_init(struct drm_i915_private *i915)
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
index 0a171b57fd8f..c52021932b8f 100644
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
index 68abf0ad6c00..393633f9222b 100644
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

