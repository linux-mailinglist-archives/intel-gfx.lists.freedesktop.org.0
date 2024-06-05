Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 504AC8FCA3D
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 13:18:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41A110E76B;
	Wed,  5 Jun 2024 11:18:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eb0HRZVJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B10A710E76B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 11:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717586334; x=1749122334;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sOlJbO7mMdSL1n9OdTdhPbfjl0TWOWnQWanG1WA/5xM=;
 b=eb0HRZVJt88mnK+145/5lXW4fmOoobOx3Zr3yNzLQ8QZqS8u2bKcQySl
 wqTRyR780spV76+PrC9Ok2dK3LcxVDSBmeT2kKutl8UohYfylgBYxBxgX
 a4fGgLn08veOVG9u4DMg7Wap4ONGTRilWAXbOi07TMCv1F5hY8XIk1CnG
 ZyXoUIk27vbp4I6fccW1WLYm/1DYezeem/Pil+mI35URuIN35tXrnRlwY
 LbbaBH0y8yyoqDMfFWxRj22O3j8kEbOIAKyd2sGhNGipYV90IhvBHx93h
 Lkvdz0l7P5utukpLSlrY3xX5TGKQ5E+igv6GXogITWkZdHdzCP5CPUsdk w==;
X-CSE-ConnectionGUID: oIlLRsScQP2YRlde++nqtg==
X-CSE-MsgGUID: PxDv6+e3QG21caXrORuwrQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11920184"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="11920184"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 04:18:54 -0700
X-CSE-ConnectionGUID: 7r9of2TFQ7ev3YFtM5A30Q==
X-CSE-MsgGUID: UO9qN00sS46g8psG/9z/zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37566114"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 04:18:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 14:18:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 7/7] drm/i915: Enable plane/pipeDMC ATS fault interrupts on mtl
Date: Wed,  5 Jun 2024 14:18:32 +0300
Message-ID: <20240605111832.21373-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

MTL has some new IOMMU thing that has a few new fault interrupts.
Enable those so we can know if things are going poorly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 10 ++++++++++
 drivers/gpu/drm/i915/i915_reg.h                  |  2 ++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 6eb14ffc3c1b..49bcba5e38cb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -835,6 +835,16 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 
 static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
 {
+	if (DISPLAY_VER(dev_priv) >= 14)
+		return MTL_PIPEDMC_ATS_FAULT |
+			MTL_PLANE_ATS_FAULT |
+			GEN12_PIPEDMC_FAULT |
+			GEN9_PIPE_CURSOR_FAULT |
+			GEN11_PIPE_PLANE5_FAULT |
+			GEN9_PIPE_PLANE4_FAULT |
+			GEN9_PIPE_PLANE3_FAULT |
+			GEN9_PIPE_PLANE2_FAULT |
+			GEN9_PIPE_PLANE1_FAULT;
 	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		return GEN12_PIPEDMC_FAULT |
 			GEN9_PIPE_CURSOR_FAULT |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8cd5abc52a2d..33822816c27e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2627,12 +2627,14 @@
 #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
 #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
 #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */
+#define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl+ */
 #define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
 #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
 #define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */
 #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
 #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
+#define  MTL_PLANE_ATS_FAULT		REG_BIT(18) /* mtl+ */
 #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
 #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
-- 
2.44.1

