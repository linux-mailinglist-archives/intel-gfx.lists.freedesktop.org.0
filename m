Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGc3KrBihGkK2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:16 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C93DF0B52
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 845B610E832;
	Thu,  5 Feb 2026 09:28:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hN3UqR3T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B0310E830;
 Thu,  5 Feb 2026 09:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283693; x=1801819693;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z0wc9ksnCP6KOYUmyd0af5IJYE5nfGJN/nTS7eeCdOk=;
 b=hN3UqR3ThnNc+F4tgiXj/weN/HF1zNha9BWIepfO3xdMtV1gICkjvOu9
 HWeARct3wmJeoENj4E5T/PP1Vf26cyID5LYg/uXCSW2VDuyCqpY656mJ0
 SDC0Vsb6Mq+WgxDZlWkHpu/s/J0HqcApcWvOQb2qNVPv/+Tvj520qgl87
 1oHl/qCeiBCNPK55ik/DAXv86UDlsk8CfUbW+OIbIDmhroDWnWaq9Mhpi
 ZqvASGuuumlJde3xkiCX3T36xFjva+x7JCaU+c15bdAgHT2CyxfzQGJTQ
 jHWPel5otLRUE7FdM52sI2N3NpevDOQZN9gfMYGSZMnWgzaA8ebmXr1Za Q==;
X-CSE-ConnectionGUID: x8XkNdyJToOTvGnzUFKwgA==
X-CSE-MsgGUID: /gecbIJvRd+FWeaIEdyH0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060116"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060116"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:13 -0800
X-CSE-ConnectionGUID: m/TnHOGdTEmRANHE6445Tg==
X-CSE-MsgGUID: i+ZUZ/CBSzuK3gW6uf703Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807781"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:11 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 09/20] drm/i915: Remove i915_reg.h from intel_display.c
Date: Thu,  5 Feb 2026 15:13:30 +0530
Message-ID: <20260205094341.1882816-10-uma.shankar@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5C93DF0B52
X-Rspamd-Action: no action

Move CHICKEN_PIPESL_1 register definition to display header.
This allows intel_display.c free of i915_reg.h include.

v3: Fix commit header (Jani)

v2: Drop common header in include and use display_regs.h (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 -
 .../gpu/drm/i915/display/intel_display_regs.h | 23 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               | 22 ------------------
 3 files changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 295f14416be7..bd93add5101b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -50,7 +50,6 @@
 #include "g4x_hdmi.h"
 #include "hsw_ips.h"
 #include "i915_config.h"
-#include "i915_reg.h"
 #include "i9xx_plane.h"
 #include "i9xx_plane_regs.h"
 #include "i9xx_wm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 42aef6300320..0ee7295e1d4e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1543,6 +1543,29 @@
 #define   CHICKEN_FBC_STRIDE_MASK	REG_GENMASK(12, 0)
 #define   CHICKEN_FBC_STRIDE(x)		REG_FIELD_PREP(CHICKEN_FBC_STRIDE_MASK, (x))
 
+#define _CHICKEN_PIPESL_1_A	0x420b0
+#define _CHICKEN_PIPESL_1_B	0x420b4
+#define CHICKEN_PIPESL_1(pipe)	_MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
+#define   HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
+#define   HSW_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
+#define   HSW_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
+#define   HSW_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
+#define   HSW_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
+#define   HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
+#define   HSW_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
+#define   HSW_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
+#define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
+#define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
+#define   HSW_FBCQ_DIS			REG_BIT(22)
+#define   HSW_UNMASK_VBL_TO_REGS_IN_SRD REG_BIT(15) /* hsw */
+#define   SKL_PSR_MASK_PLANE_FLIP	REG_BIT(11) /* skl+ */
+#define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
+#define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
+#define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
+#define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
+#define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
+#define   BDW_UNMASK_VBL_TO_REGS_IN_SRD	REG_BIT(0) /* bdw */
+
 #define _CHICKEN_TRANS_A	0x420c0
 #define _CHICKEN_TRANS_B	0x420c4
 #define _CHICKEN_TRANS_C	0x420c8
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e905250f4fa5..2be799ffbc2b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -878,28 +878,6 @@
 #define CHICKEN_PAR2_1		_MMIO(0x42090)
 #define   KVM_CONFIG_CHANGE_NOTIFICATION_SELECT	REG_BIT(14)
 
-#define _CHICKEN_PIPESL_1_A	0x420b0
-#define _CHICKEN_PIPESL_1_B	0x420b4
-#define CHICKEN_PIPESL_1(pipe)	_MMIO_PIPE(pipe, _CHICKEN_PIPESL_1_A, _CHICKEN_PIPESL_1_B)
-#define   HSW_PRI_STRETCH_MAX_MASK	REG_GENMASK(28, 27)
-#define   HSW_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 0)
-#define   HSW_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 1)
-#define   HSW_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 2)
-#define   HSW_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_PRI_STRETCH_MAX_MASK, 3)
-#define   HSW_SPR_STRETCH_MAX_MASK	REG_GENMASK(26, 25)
-#define   HSW_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 0)
-#define   HSW_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 1)
-#define   HSW_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 2)
-#define   HSW_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(HSW_SPR_STRETCH_MAX_MASK, 3)
-#define   HSW_FBCQ_DIS			REG_BIT(22)
-#define   HSW_UNMASK_VBL_TO_REGS_IN_SRD REG_BIT(15) /* hsw */
-#define   SKL_PSR_MASK_PLANE_FLIP	REG_BIT(11) /* skl+ */
-#define   SKL_PLANE1_STRETCH_MAX_MASK	REG_GENMASK(1, 0)
-#define   SKL_PLANE1_STRETCH_MAX_X8	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 0)
-#define   SKL_PLANE1_STRETCH_MAX_X4	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 1)
-#define   SKL_PLANE1_STRETCH_MAX_X2	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 2)
-#define   SKL_PLANE1_STRETCH_MAX_X1	REG_FIELD_PREP(SKL_PLANE1_STRETCH_MAX_MASK, 3)
-#define   BDW_UNMASK_VBL_TO_REGS_IN_SRD	REG_BIT(0) /* bdw */
 
 #define DISP_ARB_CTL	_MMIO(0x45000)
 #define   DISP_FBC_MEMORY_WAKE		REG_BIT(31)
-- 
2.50.1

