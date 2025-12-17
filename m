Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A2CCC626C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D9BA10EB69;
	Wed, 17 Dec 2025 06:10:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ErV7thKf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF41A10EB5A;
 Wed, 17 Dec 2025 06:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951822; x=1797487822;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6i5FaQgJn342pTxNqqjh8uJu5/Zrd9YRb2fSY5UOThA=;
 b=ErV7thKf2GOzNdw92BpHa2AEC3oxfTb7lQIUO86TzoNQltXrzdbyRhFB
 bJ+aJT3RQt2w756475G6iv9q2hBbbAp09ljKFr10579s9wSo8O59y57Zx
 IzfKBcoDqQuJUg2mWthekzObjG6GRrv4fIXHpUmye2rcuje17V2wfmEjn
 hyJ/urEIMtqq1aYixVy/8zvc++iPynjVT+52I99hk5ZEODeKct621r4TA
 3sqRwUl8YGVYK23axT7252n9a1V8bsis+IvpoGp4T1vvGMSmj1d5UYAL/
 YuF9Mc3YffvCWHWLByYwe0Pi/QlfFyqIp+IDGKxDuAdcYYeTcJCcxPDTV A==;
X-CSE-ConnectionGUID: +YJ+KfTxQc6Ga1jtANjT5A==
X-CSE-MsgGUID: kFcxPQNiRh+yc+z5cpHKrg==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471127"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471127"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:22 -0800
X-CSE-ConnectionGUID: T/6Fv8msTuOcrBI/ccGfmQ==
X-CSE-MsgGUID: H3kUu5QeSG+jKp5pnfPDXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105151"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:20 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 03/19] drm/{i915, xe}: Extract display interrupt definitions
Date: Wed, 17 Dec 2025 11:51:53 +0530
Message-ID: <20251217062209.852324-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
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

Move common registers to display to allow intel_display_rps.c
free of i915_reg.h dependency.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_regs.h | 34 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_display_rps.c  |  2 +-
 drivers/gpu/drm/i915/i915_reg.h               | 33 ------------------
 3 files changed, 35 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9e0d853f4b61..566de308e482 100644
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
index c1f33c11ac1b..a338f01a539b 100644
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

