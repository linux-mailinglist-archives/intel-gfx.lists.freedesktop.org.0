Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBAC7CA67C
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE57E10E1DE;
	Mon, 16 Oct 2023 11:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F87810E1BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455048; x=1728991048;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ddYKtA57PGDH5/J+v7t7Hu42/0AgFrzGQVUcM3AjOBw=;
 b=MizUTod6xgXXHdLnm2CGajZP1BpHWghrIqAmsjbG8i9KVh/sD7d1v7lD
 /VXsseDNd0Dfbhtg0CG2zo3UrayXP6n+uyMwg1MLzG79apwGDpHsf//oX
 aftEw0rI8B85lYGSWQ+6W3W3UkO2VW+gnEi5w3LLwggWiUedL3qj9IcYT
 O2ON3bK41kKffev2T+CB3RKrSx0ZnUB0jW32h/YkBUxQ9ZEkrA3naQjOR
 WgBtEQydNkAjFkGYNUqdUzvY4Q3+QYvbbZrbe5rItiy7wDx4anKCOiOKq
 s/wT/6kcXgIoTp39LGEVXm93oYbdoKI+AHWJmf9JDZbdwy+qeNeOoJ04x w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341362"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341362"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532599"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532599"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:26 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:43 +0300
Message-Id: <20231016111658.3432581-10-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/24] drm/i915/display: Move enable_dc
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
index d0abcbd526a7..3d370e43df3c 100644
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
index 1ea332dfbb5d..c3487b9d6937 100644
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

