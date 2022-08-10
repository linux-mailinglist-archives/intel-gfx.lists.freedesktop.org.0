Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4F358ECFE
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 15:20:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8774B0A40;
	Wed, 10 Aug 2022 13:19:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B80BB05EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 13:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660137555; x=1691673555;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EF+nzwLBzbp/P1tCd/pcAmOrwW66WpETteg+IMjhjmE=;
 b=KkORyGaJz4+GFdfMXpx2CmRZgAkv9y0cD6bxtfBOZJmu3cDp/yxrowX/
 +PYQzizcU/4B6KqtiPa+n3r1WAyQEPRZpILTL0yAnnba/OM5kAT5utJXu
 8sbT146+iOszXSuncF+rVILhQ9++EDjMmV+Lj6mVoGGNE7jUws8iI1Isx
 wrqzpbVu3KalUknnZjJfj7psacjml6U+um6aTiVCEepFRR+wgqVcYhxdh
 MNeyAwVv/b+HtWYDfsxsjr6M+Zbi2/SMV60PECMtC9W1LbrV+cnS+oIZ0
 vE/6gOJc5PhNitjX0Q+vePAWCiqM9+tNR8E9LsEZOaxQZY8WF6eAfx5ix Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="292331646"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="292331646"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:14 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="731491295"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 06:19:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Aug 2022 16:18:17 +0300
Message-Id: <ded81a41a5a305f89eda7cde15a873183fdec073.1660137416.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660137416.git.jani.nikula@intel.com>
References: <cover.1660137416.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/15] drm/i915: move has_dsc to runtime info
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
index 3cbab3ead2ab..a8f29a98e208 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -833,7 +833,7 @@ static const struct intel_device_info cml_gt2_info = {
 	ICL_COLORS, \
 	.display.dbuf.size = 2048, \
 	.display.dbuf.slice_mask = BIT(DBUF_S1) | BIT(DBUF_S2), \
-	.display.has_dsc = 1, \
+	.__runtime.has_dsc = 1, \
 	.has_coherent_ggtt = false, \
 	.has_logical_ring_elsq = 1
 
@@ -955,7 +955,7 @@ static const struct intel_device_info adl_s_info = {
 	.__runtime.has_dmc = 1,							\
 	.display.has_dp_mst = 1,						\
 	.display.has_dsb = 1,							\
-	.display.has_dsc = 1,							\
+	.__runtime.has_dsc = 1,							\
 	.__runtime.fbc_mask = BIT(INTEL_FBC_A),					\
 	.display.has_fpga_dbg = 1,						\
 	.__runtime.has_hdcp = 1,						\
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index b0b37e98b112..0a1f97b35f2b 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -128,6 +128,7 @@ void intel_device_info_print(const struct intel_device_info *info,
 
 	drm_printf(p, "has_hdcp: %s\n", str_yes_no(runtime->has_hdcp));
 	drm_printf(p, "has_dmc: %s\n", str_yes_no(runtime->has_dmc));
+	drm_printf(p, "has_dsc: %s\n", str_yes_no(runtime->has_dsc));
 
 	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
 }
@@ -408,7 +409,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 
 		if (DISPLAY_VER(dev_priv) >= 10 &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
-			info->display.has_dsc = 0;
+			runtime->has_dsc = 0;
 	}
 
 	if (GRAPHICS_VER(dev_priv) == 6 && i915_vtd_active(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index d94fc4ee3805..0e02b48121f5 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -181,7 +181,6 @@ enum intel_ppgtt_type {
 	func(has_ddi); \
 	func(has_dp_mst); \
 	func(has_dsb); \
-	func(has_dsc); \
 	func(has_fpga_dbg); \
 	func(has_gmch); \
 	func(has_hotplug); \
@@ -241,6 +240,7 @@ struct intel_runtime_info {
 
 		bool has_hdcp;
 		bool has_dmc;
+		bool has_dsc;
 	};
 };
 
-- 
2.34.1

