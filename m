Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5092A55133D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76DC510E5FE;
	Mon, 20 Jun 2022 08:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F6A10E61B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714996; x=1687250996;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bwLigee0KzZ0kdREMHL1ZdXgOL9LwNeOckCVQG3IFt0=;
 b=ChnVLkQfarpBwoVH9ZrmBYJphM4EQ1iF+RCTbJIkJIGHhcAC6uIinZIj
 lCJOSPga4SlbLxaGhnlm4WClTbbkVy3Di1kwpFCrpXWQ//i7m6xfGbKHQ
 wzQopn9tYhfafB9AGxw8vyzB0TprjpcHlAfRH/OMv21rMK8+4sfGXQFyT
 Rt4qkZHbFPhlMfE7H9NGnyt+2Df1UHSKbkkMoSAA/oJwpedtycY/Dle+d
 HfmjbXHOE0r7sLn9Xk3QWkL2Hcr3k2VmC+0LswqWOlURwsB1PpoWUSicv
 UBSpvjfgElEZ9vJA1BtJy3zd4R0UPOW+ktiRppwWOmHs4Z0lPohLu4hoQ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343833748"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="343833748"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:55 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="833015623"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:34 +0300
Message-Id: <56f6c1a71b8cddf396befee5a7c537613bca25ec.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/16] drm/i915: move has_dsc to runtime info
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

If it's	modified runtime, it's runtime info.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
 drivers/gpu/drm/i915/i915_pci.c           | 4 ++--
 drivers/gpu/drm/i915/intel_device_info.c  | 3 ++-
 drivers/gpu/drm/i915/intel_device_info.h  | 2 +-
 4 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 43e1bbc1e303..bb5c5fa3f157 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -344,7 +344,7 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (!INTEL_INFO(i915)->display.has_dsc)
+	if (!RUNTIME_INFO(i915)->has_dsc)
 		return false;
 
 	if (DISPLAY_VER(i915) >= 12)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index c6637a4982ed..687b49549d13 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -829,7 +829,7 @@ static const struct intel_device_info cml_gt2_info = {
 	ICL_COLORS, \
 	.dbuf.size = 2048, \
 	.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
-	.display.has_dsc = 1, \
+	.__runtime.has_dsc = 1, \
 	.has_coherent_ggtt = false, \
 	.has_logical_ring_elsq = 1
 
@@ -958,7 +958,7 @@ static const struct intel_device_info adl_s_info = {
 	.__runtime.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
-	.display.has_dsc = 1,							\
+	.__runtime.has_dsc = 1,							\
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
 	.__runtime.has_hdcp = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index ed5ad5c60db6..12c776900a40 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -127,6 +127,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
 	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
+	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
 
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
@@ -393,7 +394,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
 		if (DISPLAY_VER(dev_priv) >= 10 &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
-			info->display.has_dsc = 0;
+			runtime->has_dsc = 0;
 	}
 
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 0a3c925d02b7..daeaaad325b7 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -176,7 +176,6 @@ enum intel_ppgtt_type {
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
-	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
 	func(has_hotplug); \
@@ -236,6 +235,7 @@ struct intel_runtime_info {
 
 		bool has_hdcp;
 		bool has_dmc;
+		bool has_dsc;
 	};
 };
 
-- 
2.30.2

