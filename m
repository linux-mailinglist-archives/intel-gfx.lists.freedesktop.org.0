Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82CC7376E8D
	for <lists+intel-gfx@lfdr.de>; Sat,  8 May 2021 04:28:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 492216E825;
	Sat,  8 May 2021 02:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24E3B6E825
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 May 2021 02:28:29 +0000 (UTC)
IronPort-SDR: So8yBcOQ6TzC5XPuiKdUcffDRt0v733KB3OA8MF5HgssZ0zZ2rkbdEsVva0ULChdUTHL4ts5v6
 7k+18TdHVPGA==
X-IronPort-AV: E=McAfee;i="6200,9189,9977"; a="198933628"
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="198933628"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
IronPort-SDR: KiVPa2VShWxf9KuRis0WeRss3SxKijh9w/mF3Lc2R25eZk41lgNqyHve0l9AHMM7wrY3PjDMxX
 kj/+bb4F8aQA==
X-IronPort-AV: E=Sophos;i="5.82,282,1613462400"; d="scan'208";a="533910029"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2021 19:28:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  7 May 2021 19:27:33 -0700
Message-Id: <20210508022820.780227-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210508022820.780227-1-matthew.d.roper@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/48] drm/i915/xelpd: Handle proper AUX
 interrupt bits
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

XE_LPD has new AUX interrupt bits for DDI-D and DDI-E that take the
spots that were used by TC5/TC6 on Display12 platforms.

While we're at it, let's convert the bit definitions for all TGL+ aux
bits over to the modern REG_BIT() notation.

v2:
 - Maintain bit order rather than logical order.  (Lucas)
 - Convert surrounding code to REG_BIT() notation.  (Lucas)

Bspec: 50064
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 12 +++++++++++-
 drivers/gpu/drm/i915/i915_reg.h | 20 +++++++++++---------
 2 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index f6967a93ec7a..26a5474bb145 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2270,7 +2270,17 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 13)
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB |
+			TGL_DE_PORT_AUX_DDIC |
+			XELPD_DE_PORT_AUX_DDID |
+			XELPD_DE_PORT_AUX_DDIE |
+			TGL_DE_PORT_AUX_USBC1 |
+			TGL_DE_PORT_AUX_USBC2 |
+			TGL_DE_PORT_AUX_USBC3 |
+			TGL_DE_PORT_AUX_USBC4;
+	else if (DISPLAY_VER(dev_priv) >= 12)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 846fa927a3d8..87d7257922d0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7873,15 +7873,17 @@ enum {
 #define  BDW_DE_PORT_HOTPLUG_MASK	GEN8_DE_PORT_HOTPLUG(HPD_PORT_A)
 #define  BXT_DE_PORT_GMBUS		(1 << 1)
 #define  GEN8_AUX_CHANNEL_A		(1 << 0)
-#define  TGL_DE_PORT_AUX_USBC6		(1 << 13)
-#define  TGL_DE_PORT_AUX_USBC5		(1 << 12)
-#define  TGL_DE_PORT_AUX_USBC4		(1 << 11)
-#define  TGL_DE_PORT_AUX_USBC3		(1 << 10)
-#define  TGL_DE_PORT_AUX_USBC2		(1 << 9)
-#define  TGL_DE_PORT_AUX_USBC1		(1 << 8)
-#define  TGL_DE_PORT_AUX_DDIC		(1 << 2)
-#define  TGL_DE_PORT_AUX_DDIB		(1 << 1)
-#define  TGL_DE_PORT_AUX_DDIA		(1 << 0)
+#define  TGL_DE_PORT_AUX_USBC6		REG_BIT(13)
+#define  XELPD_DE_PORT_AUX_DDIE		REG_BIT(13)
+#define  TGL_DE_PORT_AUX_USBC5		REG_BIT(12)
+#define  XELPD_DE_PORT_AUX_DDID		REG_BIT(12)
+#define  TGL_DE_PORT_AUX_USBC4		REG_BIT(11)
+#define  TGL_DE_PORT_AUX_USBC3		REG_BIT(10)
+#define  TGL_DE_PORT_AUX_USBC2		REG_BIT(9)
+#define  TGL_DE_PORT_AUX_USBC1		REG_BIT(8)
+#define  TGL_DE_PORT_AUX_DDIC		REG_BIT(2)
+#define  TGL_DE_PORT_AUX_DDIB		REG_BIT(1)
+#define  TGL_DE_PORT_AUX_DDIA		REG_BIT(0)
 
 #define GEN8_DE_MISC_ISR _MMIO(0x44460)
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
