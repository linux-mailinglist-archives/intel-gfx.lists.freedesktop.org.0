Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38D24A85A9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 15:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6618C10F97A;
	Thu,  3 Feb 2022 14:02:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67DFF10F97A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 14:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643896968; x=1675432968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pgFENU1SQzD9IX3ntb2zRYra+H281ep/75+v1rO2NwE=;
 b=K1C3hSEFv97mUiJiSyu3sNMnpG4POVY9QvlbbzFFuyzGR+PgjpsjUMqq
 dakayXr/2aOVSRpy7yQwLba7nrtuMX29QFyp/QCiub1axiCoc+V/psMMh
 SnSzHYTTJu8ImEgmmcDF6qrI8RoffsxRk9zu6vOQeFTZQq/hFl0JC37QW
 od4xfUcFj8J5+KAceZOapsaszhU6FGaLMgFpBczfDZ1c81/75mo7N7ZYU
 QhEETg6odl9CixaswRg3qHUzZu/mNtyBGmlXqHOAArGpRqrb2r5K71m8u
 wJ+a9GwCLwX6yYcQApz0P37PAVWp2nMEG9j4LQWFx4Q5XJQ37k6oS5RMW w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="311452764"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="311452764"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:47 -0800
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="483246825"
Received: from cbrady-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.6.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 06:02:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Feb 2022 16:02:28 +0200
Message-Id: <68cf44fab55c047253c3ed87f8afcf0a86fa157a.1643896905.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1643896905.git.jani.nikula@intel.com>
References: <cover.1643896905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/color: hide struct
 intel_color_funcs
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

The struct is only needed in intel_color.c, move it there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h            | 20 +-------------------
 2 files changed, 20 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index de3ded1e327a..8f8b34b60f27 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -28,6 +28,25 @@
 #include "intel_dpll.h"
 #include "vlv_dsi_pll.h"
 
+struct intel_color_funcs {
+	int (*color_check)(struct intel_crtc_state *crtc_state);
+	/*
+	 * Program double buffered color management registers during
+	 * vblank evasion. The registers should then latch during the
+	 * next vblank start, alongside any other double buffered registers
+	 * involved with the same commit.
+	 */
+	void (*color_commit)(const struct intel_crtc_state *crtc_state);
+	/*
+	 * Load LUTs (and other single buffered color management
+	 * registers). Will (hopefully) be called during the vblank
+	 * following the latching of any double buffered registers
+	 * involved with the same commit.
+	 */
+	void (*load_luts)(const struct intel_crtc_state *crtc_state);
+	void (*read_luts)(struct intel_crtc_state *crtc_state);
+};
+
 #define CTM_COEFF_SIGN	(1ULL << 63)
 
 #define CTM_COEFF_1_0	(1ULL << 32)
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 5a1615c02971..cac18b57808e 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -115,6 +115,7 @@ struct intel_cdclk_config;
 struct intel_cdclk_funcs;
 struct intel_cdclk_state;
 struct intel_cdclk_vals;
+struct intel_color_funcs;
 struct intel_connector;
 struct intel_crtc;
 struct intel_dp;
@@ -320,25 +321,6 @@ struct drm_i915_wm_disp_funcs {
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
 };
 
-struct intel_color_funcs {
-	int (*color_check)(struct intel_crtc_state *crtc_state);
-	/*
-	 * Program double buffered color management registers during
-	 * vblank evasion. The registers should then latch during the
-	 * next vblank start, alongside any other double buffered registers
-	 * involved with the same commit.
-	 */
-	void (*color_commit)(const struct intel_crtc_state *crtc_state);
-	/*
-	 * Load LUTs (and other single buffered color management
-	 * registers). Will (hopefully) be called during the vblank
-	 * following the latching of any double buffered registers
-	 * involved with the same commit.
-	 */
-	void (*load_luts)(const struct intel_crtc_state *crtc_state);
-	void (*read_luts)(struct intel_crtc_state *crtc_state);
-};
-
 struct intel_hotplug_funcs {
 	void (*hpd_irq_setup)(struct drm_i915_private *dev_priv);
 };
-- 
2.30.2

