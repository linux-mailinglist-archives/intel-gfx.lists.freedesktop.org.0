Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FBC17CA676
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Oct 2023 13:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851B310E1D0;
	Mon, 16 Oct 2023 11:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5A910E1BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Oct 2023 11:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697455046; x=1728991046;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uyGSHO9UrDBsDffN8fWw9xFYfuNUI9KOQBXy1CoZ1bs=;
 b=jDldaaJq1IIHJUDLbSZKRQx/ynBMHgn85tHnhX5NQ+goL/nkojjtJweS
 H07RQ9dTJmmQHq3Vf0cpR8tO5jVks7ipxFF2sKuyvA0Yu9Mr9HsGHgDMt
 eG0LLuGFUFfBYO2wWZWAsv7Eyw27+e8TZ8g+HnP05ccKC1eKarD3Si7l0
 maWI3aFT6UQeZf+ylR+RCvcxYksym7XnIhCepimaI1xiePPlNNP1Rfv6J
 TT+hRZ40Q47fwlY3KN+4yY+fP+jwDSdGvNKohim2VV4qW92q3hIsaVNGM
 9nT4ojhooQGa76ARqnmDBTaSzkqmVSOZlajffJvYhRMFIXA05emZFxZd4 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="385341360"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="385341360"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10863"; a="821532592"
X-IronPort-AV: E=Sophos;i="6.03,229,1694761200"; d="scan'208";a="821532592"
Received: from dleve-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.41.143])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2023 04:17:25 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Oct 2023 14:16:42 +0300
Message-Id: <20231016111658.3432581-9-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231016111658.3432581-1-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 08/24] drm/i915/display: Move
 vbt_sdvo_panel_type module parameter under display
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
 drivers/gpu/drm/i915/display/intel_bios.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4e8f1e91bb08..70c0491aac42 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1116,7 +1116,7 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
 	struct drm_display_mode *panel_fixed_mode;
 	int index;
 
-	index = i915->params.vbt_sdvo_panel_type;
+	index = i915->display.params.vbt_sdvo_panel_type;
 	if (index == -2) {
 		drm_dbg_kms(&i915->drm,
 			    "Ignore SDVO panel mode from BIOS VBT tables.\n");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index e25d70653c0f..6a5be37ec3af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -38,6 +38,10 @@ intel_display_param_named_unsafe(panel_use_ssc, int, 0400,
 	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
 	"(default: auto from VBT)");
 
+intel_display_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
+	"Override/Ignore selection of SDVO panel mode in the VBT "
+	"(-2=ignore, -1=auto [default], index in VBT BIOS table)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index 4b326baf146f..c40a3cd57ffc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -27,6 +27,7 @@ struct drm_i915_private;
 	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, lvds_channel_mode, 0, 0400) \
 	param(int, panel_use_ssc, -1, 0600) \
+	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 4123424b2c2e..d0abcbd526a7 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -72,10 +72,6 @@ i915_param_named_unsafe(enable_dc, int, 0400,
 	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
 	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
 
-i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
-	"Override/Ignore selection of SDVO panel mode in the VBT "
-	"(-2=ignore, -1=auto [default], index in VBT BIOS table)");
-
 i915_param_named_unsafe(reset, uint, 0400,
 	"Attempt GPU resets (0=disabled, 1=full gpu reset, 2=engine reset [default])");
 
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 0bd365889e73..1ea332dfbb5d 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
 	param(bool, enable_sagv, true, 0600) \
-- 
2.34.1

