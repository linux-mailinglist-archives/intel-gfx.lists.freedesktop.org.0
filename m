Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEF39C1107
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5265810E8ED;
	Thu,  7 Nov 2024 21:37:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nTsW+CU/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E75710E8ED;
 Thu,  7 Nov 2024 21:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015427; x=1762551427;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i1tmVgdy1yrRWLRilmXPsIct4+2Qk5TVPEuSn0UeBBo=;
 b=nTsW+CU/ZZCGl+fpANXHTPmxxtMrinsKD2oWE+nryKNDjo2WGi2r13M8
 9xZvF/Wq3Q4JXIMlYeMKeRs9AE/fnPOSP3hVlkZxfJmYCjQXXDd7yVGgU
 9H6qU/BgcQNRjE8UKKHwA1J6YMkcoLQSehdXj77K6lzRUUrPkLkM9/6aB
 9c0vFQ6vcOwWCcBJW4qfu4ZFYiN+Tav256WspRXBnIKmHyIgwE5XAb453
 MvDPEPjnRx0V1EDw8E2zUZHhBmuwDHjhKYDeqG0x92gSIstNKuxRojLw8
 C51Yw5NKtyA47fObZh63Nti0iCdvSq40JIj7TcCGq6KhS8WZtWw1fczgu A==;
X-CSE-ConnectionGUID: qq9hl3ekQiW37mbyJcOPLA==
X-CSE-MsgGUID: hoFKxZ/uQqW5dzTM1HDHWw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41504420"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="41504420"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:06 -0800
X-CSE-ConnectionGUID: /Obc9gwYQ7qVU3dq/os0mg==
X-CSE-MsgGUID: Tjdo+K/STxChJhiNep2Kig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85171082"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 02/15] drm/i915/display: convert
 HAS_D12_PLANE_MINIMIZATION() to struct intel_display
Date: Thu,  7 Nov 2024 23:36:36 +0200
Message-Id: <750cdf1840178d077c9903d00c5ee98525bd1228.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Convert HAS_D12_PLANE_MINIMIZATION() to struct intel_display. Do minimal
drive-by conversions to struct intel_display in the callers while at it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c |  2 +-
 drivers/gpu/drm/i915/display/intel_display_device.h |  2 +-
 drivers/gpu/drm/i915/display/intel_display_irq.c    | 12 +++++++-----
 drivers/gpu/drm/i915/display/skl_universal_plane.c  |  4 +++-
 4 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 47957384d56d..1e561df02751 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -1687,7 +1687,7 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 		display_runtime->num_scalers[PIPE_C] = 1;
 	}
 
-	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
+	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
 		for_each_pipe(i915, pipe)
 			display_runtime->num_sprites[pipe] = 4;
 	else if (DISPLAY_VER(i915) >= 11)
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 83177fa142a5..5a8a8e3379af 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -144,7 +144,7 @@ struct intel_display_platforms {
 #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
 #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
 #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
-#define HAS_D12_PLANE_MINIMIZATION(i915) (IS_ROCKETLAKE(i915) || IS_ALDERLAKE_S(i915))
+#define HAS_D12_PLANE_MINIMIZATION(__display)	((__display)->platform.rocketlake || (__display)->platform.alderlake_s)
 #define HAS_DBUF_OVERLAP_DETECTION(__i915) (DISPLAY_RUNTIME_INFO(__i915)->has_dbuf_overlap_detection)
 #define HAS_DDI(i915)			(DISPLAY_INFO(i915)->has_ddi)
 #define HAS_DISPLAY(i915)		(DISPLAY_RUNTIME_INFO(i915)->pipe_mask != 0)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index e1547ebce60e..f0d3bdb5fc60 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -843,7 +843,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
-	if (DISPLAY_VER(dev_priv) >= 14)
+	struct intel_display *display = &dev_priv->display;
+
+	if (DISPLAY_VER(display) >= 14)
 		return MTL_PIPEDMC_ATS_FAULT |
 			MTL_PLANE_ATS_FAULT |
 			GEN12_PIPEDMC_FAULT |
@@ -853,7 +855,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 			GEN9_PIPE_PLANE3_FAULT |
 			GEN9_PIPE_PLANE2_FAULT |
 			GEN9_PIPE_PLANE1_FAULT;
-	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
+	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
 		return GEN12_PIPEDMC_FAULT |
 			GEN9_PIPE_CURSOR_FAULT |
 			GEN11_PIPE_PLANE5_FAULT |
@@ -861,7 +863,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 			GEN9_PIPE_PLANE3_FAULT |
 			GEN9_PIPE_PLANE2_FAULT |
 			GEN9_PIPE_PLANE1_FAULT;
-	else if (DISPLAY_VER(dev_priv) == 12)
+	else if (DISPLAY_VER(display) == 12)
 		return GEN12_PIPEDMC_FAULT |
 			GEN9_PIPE_CURSOR_FAULT |
 			GEN11_PIPE_PLANE7_FAULT |
@@ -871,7 +873,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 			GEN9_PIPE_PLANE3_FAULT |
 			GEN9_PIPE_PLANE2_FAULT |
 			GEN9_PIPE_PLANE1_FAULT;
-	else if (DISPLAY_VER(dev_priv) == 11)
+	else if (DISPLAY_VER(display) == 11)
 		return GEN9_PIPE_CURSOR_FAULT |
 			GEN11_PIPE_PLANE7_FAULT |
 			GEN11_PIPE_PLANE6_FAULT |
@@ -880,7 +882,7 @@ static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 			GEN9_PIPE_PLANE3_FAULT |
 			GEN9_PIPE_PLANE2_FAULT |
 			GEN9_PIPE_PLANE1_FAULT;
-	else if (DISPLAY_VER(dev_priv) >= 9)
+	else if (DISPLAY_VER(display) >= 9)
 		return GEN9_PIPE_CURSOR_FAULT |
 			GEN9_PIPE_PLANE4_FAULT |
 			GEN9_PIPE_PLANE3_FAULT |
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 038ca2ec5d7a..c6e464d70cc7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -239,7 +239,9 @@ int skl_format_to_fourcc(int format, bool rgb_order, bool alpha)
 
 static u8 icl_nv12_y_plane_mask(struct drm_i915_private *i915)
 {
-	if (DISPLAY_VER(i915) >= 13 || HAS_D12_PLANE_MINIMIZATION(i915))
+	struct intel_display *display = &i915->display;
+
+	if (DISPLAY_VER(display) >= 13 || HAS_D12_PLANE_MINIMIZATION(display))
 		return BIT(PLANE_4) | BIT(PLANE_5);
 	else
 		return BIT(PLANE_6) | BIT(PLANE_7);
-- 
2.39.5

