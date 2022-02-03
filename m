Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4393C4A85A8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:02:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DA3110F979;
	Thu,  3 Feb 2022 14:02:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90F010F979
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896963; x=1675432963;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ugDfchOZWQMlH0SdTCAEq4i1gU6h4zMYCTwwJyqwNV0=;
 b=jz0jU0nDDed1OHnVxLxKNpTBhGam1+sTTXyRovuTUWig3CBYKIhAICG3
 L9afYzWV5TSd9BpigsJqI+DCox0JapuBi/Z8YbMcHWTzbOXTW3eTRoX10
 V3gv/fogUucU6S21zfr1PsR8SnPWYc+Yq+Ad/WuO1oDVHBTKuwBWBcwZf
 z2fM93sJN3YNTepgN1kwzz9Dje03ZFY++FtX5P1ydTdMpTqlOjNtGBbH0
 n2P0T1eNn66hFdnvBYI/serpvK+mFfo/rvE3CrdTddiTFZazTaMw5TTWX
 UpxmMFWb1tZbOiiUHyLZfm/EkR4+26sn8iCcO4MoTcR+zljJknC6qA0gl g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="231717791"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="231717791"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:43 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="523931876"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:41 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:27 +0200
Message-Id: <67f2ed8a9166daa891aa6d89f93eb629145d1c15.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: group i915_drv.h forward
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

Group the forward declarations in i915_drv.h together near the top, like
in other header files, and sort.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 44 ++++++++++++++-------------------
 1 file changed, 19 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 8c1706fd81f9..5a1615c02971 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -106,6 +106,25 @@
 #include "gt/intel_timeline.h"
 #include "i915_vma.h"
 
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
 
 /* General customization:
  */
@@ -115,8 +134,6 @@
 #define DRIVER_DATE		"20201103"
 #define DRIVER_TIMESTAMP	1604406085
 
-struct drm_i915_gem_object;
-
 /* Threshold == 5 for long IRQs, 50 for short */
 #define HPD_STORM_DEFAULT_THRESHOLD 50
 
@@ -166,8 +183,6 @@ struct i915_hotplug {
 	 I915_GEM_DOMAIN_INSTRUCTION | \
 	 I915_GEM_DOMAIN_VERTEX)
 
-struct drm_i915_private;
-
 struct drm_i915_file_private {
 	struct drm_i915_private *dev_priv;
 
@@ -274,9 +289,6 @@ struct drm_i915_file_private {
 #define DRIVER_MINOR		6
 #define DRIVER_PATCHLEVEL	0
 
-struct intel_overlay;
-struct intel_overlay_error_state;
-
 struct sdvo_device_mapping {
 	u8 initialized;
 	u8 dvo_port;
@@ -286,18 +298,6 @@ struct sdvo_device_mapping {
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
@@ -385,7 +385,6 @@ enum drrs_support_type {
 	SEAMLESS_DRRS_SUPPORT = 2
 };
 
-struct intel_dp;
 struct i915_drrs {
 	struct mutex mutex;
 	struct delayed_work work;
@@ -403,8 +402,6 @@ struct i915_drrs {
 #define QUIRK_INCREASE_DDI_DISABLED_TIME (1<<7)
 #define QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK (1<<8)
 
-struct intel_fbdev;
-
 struct intel_gmbus {
 	struct i2c_adapter adapter;
 #define GMBUS_FORCE_BIT_RETRY (1U << 31)
@@ -423,8 +420,6 @@ struct i915_suspend_saved_registers {
 	u16 saveGCDGMBUS;
 };
 
-struct vlv_s0ix_state;
-
 #define MAX_L3_SLICES 2
 struct intel_l3_parity {
 	u32 *remap_info[MAX_L3_SLICES];
@@ -613,7 +608,6 @@ struct i915_selftest_stash {
 };
 
 /* intel_audio.c private */
-struct intel_audio_funcs;
 struct intel_audio_private {
 	/* Display internal audio functions */
 	const struct intel_audio_funcs *funcs;
-- 
2.30.2

