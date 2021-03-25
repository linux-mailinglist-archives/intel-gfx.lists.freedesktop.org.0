Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC3349902
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152246EE25;
	Thu, 25 Mar 2021 18:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8EB86EDDF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:29 +0000 (UTC)
IronPort-SDR: 5SSXwC0VLKcljiDjPVVArxCLkzWSXUvKnPd50kSPe9v9HatPLK9XUjWfLAn7KmOPrRui64PL9H
 2xnzglj/z8LA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="276113769"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="276113769"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:29 -0700
IronPort-SDR: aY1Q/BuGHY6ufezDBzEgrXnKsaddbmKMh7k6f39qEfOVuRy8AMRAZyV3zL3mFSGMHSUglu9R2r
 7q2AtX2pvyqA==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176563"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:41 -0700
Message-Id: <20210325180720.401410-12-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 11/50] drm/i915/xelpd: Add Wa_14011503030
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cc: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index e3495d3305b3..930488fba3cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5840,6 +5840,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 		      DCPR_MASK_LPMODE | DCPR_MASK_MAXLATENCY_MEMUP_CLR;
 		intel_uncore_rmw(&dev_priv->uncore, GEN11_CHICKEN_DCPR_2, 0, val);
 	}
+
+	/* Wa_14011503030:xelpd */
+	if (DISPLAY_VER(dev_priv) >= 13)
+		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
 }
 
 static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d16f228bbef2..22beacb28920 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7791,6 +7791,8 @@ enum {
 #define  GEN8_GT_BCS_IRQ		(1 << 1)
 #define  GEN8_GT_RCS_IRQ		(1 << 0)
 
+#define XELPD_DISPLAY_ERR_FATAL_MASK	_MMIO(0x4421c)
+
 #define GEN8_GT_ISR(which) _MMIO(0x44300 + (0x10 * (which)))
 #define GEN8_GT_IMR(which) _MMIO(0x44304 + (0x10 * (which)))
 #define GEN8_GT_IIR(which) _MMIO(0x44308 + (0x10 * (which)))
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
