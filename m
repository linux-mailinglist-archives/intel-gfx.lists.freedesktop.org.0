Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA847BFA07
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3E5510E335;
	Tue, 10 Oct 2023 11:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D17CF10E1E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938174; x=1728474174;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Vvx3rpO/SHeoTbNcc2/pZUyFQWjib/ucBxhtMM/9v3A=;
 b=Vz+1Ffv1roUBZdlA2NpKD01XKY2ncy61XhiirezFI4MKpumHxMqyMH6C
 smrl5+dliKSK0O5RgsLymQmC24l9n8nwmiRjQK2Ra/XoAoT2H4HQDugWG
 KS9O2kAh7fTv0vB654ZVvQjFPA1JopoIXeZfFOd3CFuzxTPq1qAcPeCwF
 7nMc/MqInaikidYQpvqTzGGVoAlhhfzNFsZElKxV5BEOyf2qelhQK3y6b
 abv4ztAHV7m3Ms1q5ALpKI9DU4vMb0u53gI48a7wppBWi0NJ5Y804mT8S
 kv8qZH7j0k9RVMw35aAWwzyZ4r8wyAO3OHdKHDFKwTXuuyQXvY8w0Pqqe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635438"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635438"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655320"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655320"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:53 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:01 +0300
Message-Id: <20231010114120.2504103-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/25] drm/i915/display: Move lvds_channel_mode
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
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_lvds.c           | 4 ++--
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 72f1782e27fe..cdc42bc575b8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -30,6 +30,10 @@ static struct intel_display_params intel_display_modparams __read_mostly = {
 intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
 	"Load VBT from specified file under /lib/firmware");
 
+intel_display_param_named_unsafe(lvds_channel_mode, int, 0400,
+	 "Specify LVDS channel mode "
+	 "(0=probe BIOS [default], 1=single-channel, 2=dual-channel)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index a6f37c55523d..a4988ef44837 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -25,7 +25,8 @@ struct drm_i915_private;
  */
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
 	param(char *, vbt_firmware, NULL, 0400) \
-	param(int, enable_fbc, -1, 0600)     \
+	param(int, lvds_channel_mode, 0, 0400) \
+	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
 	param(bool, enable_psr2_sel_fetch, true, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 2a4ca7e65775..4b114fde57b1 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -794,8 +794,8 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 	unsigned int val;
 
 	/* use the module option value if specified */
-	if (i915->params.lvds_channel_mode > 0)
-		return i915->params.lvds_channel_mode == 2;
+	if (i915->display.params.lvds_channel_mode > 0)
+		return i915->display.params.lvds_channel_mode == 2;
 
 	/* single channel LVDS is limited to 112 MHz */
 	if (fixed_mode->clock > 112999)
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 12a2bd59303e..46859a99fe20 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -72,10 +72,6 @@ i915_param_named_unsafe(enable_dc, int, 0400,
 	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
 	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
 
-i915_param_named_unsafe(lvds_channel_mode, int, 0400,
-	 "Specify LVDS channel mode "
-	 "(0=probe BIOS [default], 1=single-channel, 2=dual-channel)");
-
 i915_param_named_unsafe(panel_use_ssc, int, 0400,
 	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
 	"(default: auto from VBT)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 702da3a8d471..ddd0adb786a3 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, lvds_channel_mode, 0, 0400) \
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
-- 
2.34.1

