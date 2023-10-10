Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0749F7BFA08
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Oct 2023 13:43:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DADF10E348;
	Tue, 10 Oct 2023 11:43:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E02910E33B
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Oct 2023 11:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696938176; x=1728474176;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qNHfRFbIzj6QBXyds/iAFadfJhByumvXDb4dlh7NU0A=;
 b=m7DSKhpolmYUKhyuJmuzQi8qgu8uFbcBXDa5rsVkO/nYJA9mNFKaKKRE
 q55syHPJTZVZ7jc5OaEp3gRAAUV86iqABQ2LrIVhOsvzWVCrCchDdI5qO
 IrngEFfENyqQHjKAQZ/HIUtXGhwlVnuiuH2TfmOKVk1DGzI/SZS6LVzaq
 9jdNjMjFUcfd5zjXjq+aXJFfN5L4eAn6cvelITmXhIfy5Epeesh4Doz25
 ++jLu+zy/BdMJonHT7ylZIDbZTiCrAW4A48N24BnVA2QxV5p0tPA8npX6
 XiYUDzZZ9+x9DWTEPkdgZImpVWhCa8C7GYA2q4F5SFVEy/rYiLFjPEufH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="470635439"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="470635439"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="869655324"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="869655324"
Received: from snutt-mobl1.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.57.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:42:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Oct 2023 14:41:02 +0300
Message-Id: <20231010114120.2504103-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231010114120.2504103-1-jouni.hogander@intel.com>
References: <20231010114120.2504103-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/25] drm/i915/display: Move panel_use_ssc
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
 drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
 drivers/gpu/drm/i915/display/intel_panel.c          | 4 ++--
 drivers/gpu/drm/i915/i915_params.c                  | 4 ----
 drivers/gpu/drm/i915/i915_params.h                  | 1 -
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers/gpu/drm/i915/display/intel_display_params.c
index cdc42bc575b8..e25d70653c0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.c
+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
@@ -34,6 +34,10 @@ intel_display_param_named_unsafe(lvds_channel_mode, int, 0400,
 	 "Specify LVDS channel mode "
 	 "(0=probe BIOS [default], 1=single-channel, 2=dual-channel)");
 
+intel_display_param_named_unsafe(panel_use_ssc, int, 0400,
+	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
+	"(default: auto from VBT)");
+
 intel_display_param_named_unsafe(enable_fbc, int, 0400,
 	"Enable frame buffer compression for power savings "
 	"(default: -1 (use per-chip default))");
diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers/gpu/drm/i915/display/intel_display_params.h
index a4988ef44837..4b326baf146f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_params.h
+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
@@ -26,6 +26,7 @@ struct drm_i915_private;
 #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
 	param(char *, vbt_firmware, NULL, 0400) \
 	param(int, lvds_channel_mode, 0, 0400) \
+	param(int, panel_use_ssc, -1, 0600) \
 	param(int, enable_fbc, -1, 0600)	\
 	param(int, enable_psr, -1, 0600) \
 	param(bool, psr_safest_params, false, 0400) \
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 483beedac5b8..0d8e5320a4f8 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -46,8 +46,8 @@
 
 bool intel_panel_use_ssc(struct drm_i915_private *i915)
 {
-	if (i915->params.panel_use_ssc >= 0)
-		return i915->params.panel_use_ssc != 0;
+	if (i915->display.params.panel_use_ssc >= 0)
+		return i915->display.params.panel_use_ssc != 0;
 	return i915->display.vbt.lvds_use_ssc &&
 		!intel_has_quirk(i915, QUIRK_LVDS_SSC_DISABLE);
 }
diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 46859a99fe20..466e7fe1d548 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -72,10 +72,6 @@ i915_param_named_unsafe(enable_dc, int, 0400,
 	"(-1=auto [default]; 0=disable; 1=up to DC5; 2=up to DC6; "
 	"3=up to DC5 with DC3CO; 4=up to DC6 with DC3CO)");
 
-i915_param_named_unsafe(panel_use_ssc, int, 0400,
-	"Use Spread Spectrum Clock with panels [LVDS/eDP] "
-	"(default: auto from VBT)");
-
 i915_param_named_unsafe(vbt_sdvo_panel_type, int, 0400,
 	"Override/Ignore selection of SDVO panel mode in the VBT "
 	"(-2=ignore, -1=auto [default], index in VBT BIOS table)");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index ddd0adb786a3..01282f1b04b6 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -47,7 +47,6 @@ struct drm_printer;
  */
 #define I915_PARAMS_FOR_EACH(param) \
 	param(int, modeset, -1, 0400) \
-	param(int, panel_use_ssc, -1, 0600) \
 	param(int, vbt_sdvo_panel_type, -1, 0400) \
 	param(int, enable_dc, -1, 0400) \
 	param(bool, enable_dpt, true, 0400) \
-- 
2.34.1

