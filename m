Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B99D4859AF
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 20:58:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 874CA10E3F4;
	Wed,  5 Jan 2022 19:58:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3076810E414
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 19:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641412716; x=1672948716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KzUvI1thv9DWVTiXZgMUtZOgtR3tgxYeXE5/AwI/NmM=;
 b=EoJ04FnmVDukP/JFhZCCK/aXGgamQh09yvX228xDhZyvmR2w7lrBjMAq
 svvv/sV9f+W7gAVI374R/oJnLPzfcQU0v9Nd6+ilu72rVYwbNbM/XDWeD
 TTzbTCPZklWBCRddKu+F/tY3QksdXLtNhWvtHl72wIujUv0XJpmHihK+w
 SNCVaYFiTCre3HIx0CkcMNdkp2a2nYjF4zDr/Iw22gJBPuFS9HKNUkvjm
 qoZuGXd0wAgFVkfoHev+7XL5YDPeN4ICYMWrY8hfNTeAwx/LdPx1a86XI
 Zl+EiNvay+DleJInEeq9T2u9KFA27aChIRc7Si+ZkXtK+5FaPmKdgwZDA A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="305877737"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="305877737"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="574501709"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:58:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jan 2022 21:56:37 +0200
Message-Id: <7cc77073d3a31179d623af1df17701979379b334.1641411696.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1641411696.git.jani.nikula@intel.com>
References: <cover.1641411696.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 21/21] drm/i915: group drm_i915.h forward
 declarations together
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Do the same as in other files, group forward declarations together near
the top.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 45 +++++++++++++++------------------
 1 file changed, 20 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index ddd06b6f5f41..ad7d02bffcfb 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -82,6 +82,26 @@
 #include "intel_uncore.h"
 #include "intel_wopcm.h"
 
+struct dpll;
+struct drm_i915_gem_object;
+struct drm_i915_private;
+struct intel_atomic_state;
+struct intel_audio_funcs;
+struct intel_cdclk_config;
+struct intel_cdclk_funcs;
+struct intel_cdclk_state;
+struct intel_cdclk_vals;
+struct intel_connector;
+struct intel_crtc;
+struct intel_dp;
+struct intel_encoder;
+struct intel_fbdev;
+struct intel_initial_plane_config;
+struct intel_limit;
+struct intel_overlay;
+struct intel_overlay_error_state;
+struct vlv_s0ix_state;
+
 /* General customization:
  */
 
@@ -90,8 +110,6 @@
 #define DRIVER_DATE		"20201103"
 #define DRIVER_TIMESTAMP	1604406085
 
-struct drm_i915_gem_object;
-
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
@@ -141,8 +159,6 @@ struct i915_hotplug {
 	 I915_GEM_DOMAIN_INSTRUCTION | \
 	 I915_GEM_DOMAIN_VERTEX)
 
-struct drm_i915_private;
-
 /* Interface history:
  *
  * 1.1: Original.
@@ -157,9 +173,6 @@ struct drm_i915_private;
 #define DRIVER_MINOR		6
 #define DRIVER_PATCHLEVEL	0
 
-struct intel_overlay;
-struct intel_overlay_error_state;
-
 struct sdvo_device_mapping {
 	u8 initialized;
 	u8 dvo_port;
@@ -169,18 +182,6 @@ struct sdvo_device_mapping {
 	u8 ddc_pin;
 };
 
-struct intel_connector;
-struct intel_encoder;
-struct intel_atomic_state;
-struct intel_cdclk_config;
-struct intel_cdclk_funcs;
-struct intel_cdclk_state;
-struct intel_cdclk_vals;
-struct intel_initial_plane_config;
-struct intel_crtc;
-struct intel_limit;
-struct dpll;
-
 /* functions used internal in intel_pm.c */
 struct drm_i915_clock_gating_funcs {
 	void (*init_clock_gating)(struct drm_i915_private *dev_priv);
@@ -268,7 +269,6 @@ enum drrs_support_type {
 	SEAMLESS_DRRS_SUPPORT = 2
 };
 
-struct intel_dp;
 struct i915_drrs {
 	struct mutex mutex;
 	struct delayed_work work;
@@ -286,8 +286,6 @@ struct i915_drrs {
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
 #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
 
-struct intel_fbdev;
-
 struct intel_gmbus {
 	struct i2c_adapter adapter;
 #define GMBUS_FORCE_BIT_RETRY (1U << 31)
@@ -306,8 +304,6 @@ struct i915_suspend_saved_registers {
 	u16 saveGCDGMBUS;
 };
 
-struct vlv_s0ix_state;
-
 #define MAX_L3_SLICES 2
 struct intel_l3_parity {
 	u32 *remap_info[MAX_L3_SLICES];
@@ -504,7 +500,6 @@ struct i915_selftest_stash {
 };
 
 /* intel_audio.c private */
-struct intel_audio_funcs;
 struct intel_audio_private {
 	/* Display internal audio functions */
 	const struct intel_audio_funcs *funcs;
-- 
2.30.2

