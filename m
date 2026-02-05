Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4B6PNahihGkM2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8443CF0B10
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65DA10E81E;
	Thu,  5 Feb 2026 09:28:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N1HYu80q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A475610E81D;
 Thu,  5 Feb 2026 09:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283683; x=1801819683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i7b5NjMEOg2zMTSsO5HC1iKVRKh23KPMdiW7FVVAb+8=;
 b=N1HYu80qg/VpoGAL0YFUhQpjGngoM6aaRaXkdAt7jVi9uyca4Nhu+aqo
 7yQUilGUbDPKsnzDD/85/a5WePMZBimTwDEWHSirK/ojZKNtvfbvkNHTp
 b3C3NnOT/LIxAhV0GxRAxarUykfQhi2R+EZdDH562wfy7hK6zduA4MyPK
 BF0SRqMOtnF1JfQRoYxZDswQbk/KY8HlgV5jYIKul8lPbIpIN3DoT4KjN
 cl5qqheZ9BOFz/iapDMyn06sTsa8CyRcyc/UfrkAnzltGCkuYjLFEfKN6
 JwMOyl1+ZfVVU2SU/4d9ZUY95W/cKeIFJQZHzlyARf1RsuyXhhqH39/JH g==;
X-CSE-ConnectionGUID: qHVKM7YAQVCv4sNQx7msQA==
X-CSE-MsgGUID: xaAeeM4GQfqrIYDXwv0JRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060094"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060094"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:03 -0800
X-CSE-ConnectionGUID: cLBvk2bVSjyC0Uhpmoksjg==
X-CSE-MsgGUID: oIaY6tzQTi6ISkBPFpLOkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807690"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:27:59 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 03/20] drm/i915: Extract display interrupt definitions
Date: Thu,  5 Feb 2026 15:13:24 +0530
Message-ID: <20260205094341.1882816-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
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
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8443CF0B10
X-Rspamd-Action: no action

Extract DE Interrupt registers from i915_reg.h to display header.
This allows intel_display_rps.c not to include i915_reg.h

v2: Update commit message (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 33 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rps.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 33 -------------------
 3 files changed, 34 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index cf02e567cf99..add9cae3ea30 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1333,6 +1333,39 @@
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
index c2efa50f080d..3f4203a69bcd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -805,39 +805,6 @@
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

