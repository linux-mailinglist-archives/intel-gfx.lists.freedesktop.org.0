Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJ0hAHRccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B605F44C
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:08:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 422BC10E8A1;
	Wed, 21 Jan 2026 23:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ERseV3ro";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997B410E27F;
 Wed, 21 Jan 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036914; x=1800572914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mpBmMfJYqtv6dSF/YJ+x1YASRzTwb4kAdM4JTEgWLq8=;
 b=ERseV3roGCDkcpiBSU3cwjeeP4dt6y+N7LiaLBcZkEj0ejkzj8ksyvBQ
 qTsCsdMCgYaj0RbOCAezH1D1sqM5pr74gfmzvyACCNFffCfp5f+ol9+u+
 PADatI7I2YG7Y9C1nW4TLHeZK1QqIquWqbnTmwBTc18WPs7Hx5F11I3bX
 5b9URzAiltP1F4Fm1FEeSL0S89CPqFKa4ixlxkxELfGNc78gtN2BU3xUO
 lpQn3UvDcQR4oiDh0ICyPjYNXxNtEXZ2fYY383QKrcZby14/uCUGA5tP7
 te7bvVsAyajVF8zlwP/EE5Yve7YoRY34aIDjgqRcsvv60pMlKXinsoCrb g==;
X-CSE-ConnectionGUID: hu3QEw86RASjFAhfEorYgw==
X-CSE-MsgGUID: TxTgqOcKS6yx4a61+Tb5Ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70244968"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70244968"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:33 -0800
X-CSE-ConnectionGUID: 9NfDRGsaSaeC8KXs1jzvEg==
X-CSE-MsgGUID: dvFDRY+JQIqC5HjJvSaZHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889561"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:31 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 03/19] drm/{i915, xe}: Extract display interrupt definitions
Date: Thu, 22 Jan 2026 04:53:58 +0530
Message-ID: <20260121232414.707192-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260121232414.707192-1-uma.shankar@intel.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A2B605F44C
X-Rspamd-Action: no action

Move common registers to display to allow intel_display_rps.c
free of i915_reg.h dependency.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 34 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rps.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 33 ------------------
 3 files changed, 35 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 4759a9600d3f..1f922d013cd3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1333,6 +1333,40 @@
 						      GEN8_DE_PORT_IER, \
 						      GEN8_DE_PORT_IIR)
 
+/* interrupts */
+#define DE_MASTER_IRQ_CONTROL   (1 << 31)
+#define DE_SPRITEB_FLIP_DONE    (1 << 29)
+#define DE_SPRITEA_FLIP_DONE    (1 << 28)
+#define DE_PLANEB_FLIP_DONE     (1 << 27)
+#define DE_PLANEA_FLIP_DONE     (1 << 26)
+#define DE_PLANE_FLIP_DONE(plane) (1 << (26 + (plane)))
+#define DE_PCU_EVENT            (1 << 25)
+#define DE_GTT_FAULT            (1 << 24)
+#define DE_POISON               (1 << 23)
+#define DE_PERFORM_COUNTER      (1 << 22)
+#define DE_PCH_EVENT            (1 << 21)
+#define DE_AUX_CHANNEL_A        (1 << 20)
+#define DE_DP_A_HOTPLUG         (1 << 19)
+#define DE_GSE                  (1 << 18)
+#define DE_PIPEB_VBLANK         (1 << 15)
+#define DE_PIPEB_EVEN_FIELD     (1 << 14)
+#define DE_PIPEB_ODD_FIELD      (1 << 13)
+#define DE_PIPEB_LINE_COMPARE   (1 << 12)
+#define DE_PIPEB_VSYNC          (1 << 11)
+#define DE_PIPEB_CRC_DONE	(1 << 10)
+#define DE_PIPEB_FIFO_UNDERRUN  (1 << 8)
+#define DE_PIPEA_VBLANK         (1 << 7)
+#define DE_PIPE_VBLANK(pipe)    (1 << (7 + 8 * (pipe)))
+#define DE_PIPEA_EVEN_FIELD     (1 << 6)
+#define DE_PIPEA_ODD_FIELD      (1 << 5)
+#define DE_PIPEA_LINE_COMPARE   (1 << 4)
+#define DE_PIPEA_VSYNC          (1 << 3)
+#define DE_PIPEA_CRC_DONE	(1 << 2)
+#define DE_PIPE_CRC_DONE(pipe)	(1 << (2 + 8 * (pipe)))
+#define DE_PIPEA_FIFO_UNDERRUN  (1 << 0)
+#define DE_PIPE_FIFO_UNDERRUN(pipe)  (1 << (8 * (pipe)))
+
+
 #define GEN8_DE_MISC_ISR _MMIO(0x44460)
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gpu/drm/i915/display/intel_display_rps.c
index e77811396474..bf00266dae4b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
@@ -8,8 +8,8 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_reg.h"
 #include "intel_display_core.h"
+#include "intel_display_regs.h"
 #include "intel_display_irq.h"
 #include "intel_display_rps.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 80ea0df40b1e..5cd124083c17 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -804,39 +804,6 @@
 #define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
 #define  MMIO_TIMEOUT_US(us)	((us) << 0)
 
-/* interrupts */
-#define DE_MASTER_IRQ_CONTROL   (1 << 31)
-#define DE_SPRITEB_FLIP_DONE    (1 << 29)
-#define DE_SPRITEA_FLIP_DONE    (1 << 28)
-#define DE_PLANEB_FLIP_DONE     (1 << 27)
-#define DE_PLANEA_FLIP_DONE     (1 << 26)
-#define DE_PLANE_FLIP_DONE(plane) (1 << (26 + (plane)))
-#define DE_PCU_EVENT            (1 << 25)
-#define DE_GTT_FAULT            (1 << 24)
-#define DE_POISON               (1 << 23)
-#define DE_PERFORM_COUNTER      (1 << 22)
-#define DE_PCH_EVENT            (1 << 21)
-#define DE_AUX_CHANNEL_A        (1 << 20)
-#define DE_DP_A_HOTPLUG         (1 << 19)
-#define DE_GSE                  (1 << 18)
-#define DE_PIPEB_VBLANK         (1 << 15)
-#define DE_PIPEB_EVEN_FIELD     (1 << 14)
-#define DE_PIPEB_ODD_FIELD      (1 << 13)
-#define DE_PIPEB_LINE_COMPARE   (1 << 12)
-#define DE_PIPEB_VSYNC          (1 << 11)
-#define DE_PIPEB_CRC_DONE	(1 << 10)
-#define DE_PIPEB_FIFO_UNDERRUN  (1 << 8)
-#define DE_PIPEA_VBLANK         (1 << 7)
-#define DE_PIPE_VBLANK(pipe)    (1 << (7 + 8 * (pipe)))
-#define DE_PIPEA_EVEN_FIELD     (1 << 6)
-#define DE_PIPEA_ODD_FIELD      (1 << 5)
-#define DE_PIPEA_LINE_COMPARE   (1 << 4)
-#define DE_PIPEA_VSYNC          (1 << 3)
-#define DE_PIPEA_CRC_DONE	(1 << 2)
-#define DE_PIPE_CRC_DONE(pipe)	(1 << (2 + 8 * (pipe)))
-#define DE_PIPEA_FIFO_UNDERRUN  (1 << 0)
-#define DE_PIPE_FIFO_UNDERRUN(pipe)  (1 << (8 * (pipe)))
-
 #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master IER */
 #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
 
-- 
2.50.1

