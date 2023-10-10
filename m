Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B147BFA0A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45E1E10E344;
	Tue, 10 Oct 2023 11:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF03110E33B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938179; x=1728474179;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iaiP4PnEKSV60Mi7rEQ1At/drVxn4vbX4+4Fy8Nli3Y=;
 b=IHkEr22BXlE5r135o4e8RSND2IU/ZtbRMwwa+YZQmcVoK7he6EDaJvbv
 R0l0sWTHm2ROvrjik/2CvazfzB+4DEJmDr1TmXXt8KgE3xOOWXTUm+UrM
 lOkbqYO9ygq+EqjNAVgNlHU3jZ/MN69PSc+eyTOjhAr16kTQN0EkUuflm
 5NtI8HILAt+lXH5S8249OkSvvQdAS1RMrWqRpGE8XyuadjQpF/42Fd5Up
 6DJK49i7WY7Ly+JJpeB4jf77fETtCBeqScPAtzWVSdoBxCzoiaaQhV9U+
 AXToi/Q3dO7kUhw3xLAg9hQE6BLUN4XXHzknu2sdvP7LKvxZ8JCVQLsp+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635444"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635444"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655338"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655338"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:58 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:04 +0300
Message-Id: <20231010114120.2504103-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/25] drm/i915/display: Move enable_dc module
 parameter under display
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
 drivers/gpu/drm/i915/display/intel_display_params.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_display_power.c  | 2 +-
 drivers/gpu/drm/i915/i915_params.c                  | 5 -----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index 6a5be37ec3af..7a528e72c970 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -42,6 +42,11 @@ intel_display_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
 	"Override/Ignore selection of SDVO panel mode in the VBT "
 	"(-2=ignore, -1=auto [default], index in VBT BIOS table)");
 
+intel_display_param_named_unsafe(enable_dc, int, 0400,
+	"Enable power-saving display C-states. "
+	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
+	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index c40a3cd57ffc..8721179b3f09 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -28,6 +28,7 @@ struct drm_i915_private;
 	param(int, lvds_channel_mode, 0, 0400) \
 	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
+	param(int, enable_dc, -1, 0400) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e25785ae1c20..4832eb8da080 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1020,7 +1020,7 @@ int intel_power_domains_init(struct drm_i915_private *dev_priv)
 		sanitize_disable_power_well_option(dev_priv,
 						   dev_priv->params.disable_power_well);
 	power_domains->allowed_dc_mask =
-		get_allowed_dc_mask(dev_priv, dev_priv->params.enable_dc);
+		get_allowed_dc_mask(dev_priv, dev_priv->display.params.enable_dc);
 
 	power_domains->target_dc_state =
 		sanitize_target_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 1745e386de49..b35645e60024 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -67,11 +67,6 @@ i915_param_named(modeset, int, 0400,
 	"Use kernel modesetting [KMS] (0=disable, "
 	"1=on, -1=force vga console preference [default])");
 
-i915_param_named_unsafe(enable_dc, int, 0400,
-	"Enable power-saving display C-states. "
-	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
-	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
-
 i915_param_named_unsafe(reset, uint, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index d5718b64e940..2decb66f3e34 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_sagv, true, 0600) \
 	param(int, disable_power_well, -1, 0400) \
-- 
2.34.1

