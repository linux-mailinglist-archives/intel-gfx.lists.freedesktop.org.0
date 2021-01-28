Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82890307EA1
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 20:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC16F6E9E6;
	Thu, 28 Jan 2021 19:24:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF8B6E9CF
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jan 2021 19:24:38 +0000 (UTC)
IronPort-SDR: 4sSCfD+m1KN6Uh05OqWaRPUb+JM9qn3wvoivCNGQxkA+PfokWDwYStkqQywAVxLXKF1sFKug1k
 x46EcizPLVFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="244384030"
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="244384030"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:37 -0800
IronPort-SDR: 6iWty1rckElKr/urcLFX9M3AU2o//z77ii8+XIownXlZqax8VMuYYf2FD2N7wOcAOBdVN2x2sF
 v1X1Hs5gzXNg==
X-IronPort-AV: E=Sophos;i="5.79,383,1602572400"; d="scan'208";a="411110145"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2021 11:24:36 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 Jan 2021 11:23:57 -0800
Message-Id: <20210128192413.1715802-3-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210128192413.1715802-1-matthew.d.roper@intel.com>
References: <20210128192413.1715802-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/18] drm/i915/display13: Handle proper AUX
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display13 has new AUX interrupt bits for DDI-D and DDI-E.

Bspec: 50064
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 12 +++++++++++-
 drivers/gpu/drm/i915/i915_reg.h |  2 ++
 2 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 06937a2d2714..1bced71470a5 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -2251,7 +2251,17 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
 {
 	u32 mask;
 
-	if (INTEL_GEN(dev_priv) >= 12)
+	if (HAS_DISPLAY13(dev_priv))
+		return TGL_DE_PORT_AUX_DDIA |
+			TGL_DE_PORT_AUX_DDIB |
+			TGL_DE_PORT_AUX_DDIC |
+			D13_DE_PORT_AUX_DDID |
+			D13_DE_PORT_AUX_DDIE |
+			TGL_DE_PORT_AUX_USBC1 |
+			TGL_DE_PORT_AUX_USBC2 |
+			TGL_DE_PORT_AUX_USBC3 |
+			TGL_DE_PORT_AUX_USBC4;
+	else if (INTEL_GEN(dev_priv) >= 12)
 		return TGL_DE_PORT_AUX_DDIA |
 			TGL_DE_PORT_AUX_DDIB |
 			TGL_DE_PORT_AUX_DDIC |
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3031897239a0..10fd0e3af2d4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7858,6 +7858,8 @@ enum {
 #define  TGL_DE_PORT_AUX_USBC3		(1 << 10)
 #define  TGL_DE_PORT_AUX_USBC2		(1 << 9)
 #define  TGL_DE_PORT_AUX_USBC1		(1 << 8)
+#define  D13_DE_PORT_AUX_DDIE		(1 << 13)
+#define  D13_DE_PORT_AUX_DDID		(1 << 12)
 #define  TGL_DE_PORT_AUX_DDIC		(1 << 2)
 #define  TGL_DE_PORT_AUX_DDIB		(1 << 1)
 #define  TGL_DE_PORT_AUX_DDIA		(1 << 0)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
