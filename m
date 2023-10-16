Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F029D7CA66D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B8610E1BE;
	Mon, 16 Oct 2023 11:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 957ED10E1BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455045; x=1728991045;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oT5KL/8iIDDAn1TC4NMMpcXF6NoMQhaTuwIuVF3+kUY=;
 b=QhkD67+3a/sFNb5j+wb5dKqzYBxzzG35vgcDjmhB/sQMWB0qVEgnMCEi
 Ej8bRSsQqlgRrs8lW+yubzv2QGNB2Kh0LDqtRO7pDb/iCFyEhJyqRC7AM
 nyKEDmp/M9bfPLXa1Yz2hdjD5zNUai/mSmRJNBv5CmiG7f9+aGHd06HXa
 pP4sDdr7ZC50yN2BT6MxM2ejCS9jTTF4e5m3VC5Py++CiO7Vrc+qK/NNh
 soZ1PMy5BR+RD4qeBQjdpYTiM6fDxwTfPj2BeAc5XYbIWsuwgMC4NUPr8
 MJiCnXp41GpU3JnW8q2znsVUUAkFizmGY8lg1HCLk0dl0r5C9Oq+I4qF3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341355"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341355"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532572"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532572"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:22 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:40 +0300
Message-Id: <20231016111658.3432581-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/24] drm/i915/display: Move
 lvds_channel_mode module parameter under display
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
index 9d0535d774c9..ea55cc2c4854 100644
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
index 37a1d31a233c..03ec2c2b589d 100644
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

