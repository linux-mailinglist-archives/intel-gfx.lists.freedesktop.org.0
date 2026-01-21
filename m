Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOyxOpFccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A33035F4E7
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1893310E8D0;
	Wed, 21 Jan 2026 23:09:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PWBmNaYn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9B110E8C9;
 Wed, 21 Jan 2026 23:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036943; x=1800572943;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+1Mv6GTE6Yqi/jcD4e/SYmmAOutwFt3T/ei1g1TA57I=;
 b=PWBmNaYne99CkgPU9GG1U3qN7CqVDyn+TlyzRv+P0aLxDrs7mZ3xfrjC
 u1/HDC4Cqiy1Nb9bxk7YRzGEoRhEkuuQhD1xGFTy//QobryuyPFiQ1FMf
 86Zf3nXAgNnhSMoyRK3NB9XH0XHXNWBzD3oG4vOPr7S6y/AwPa02/0tXY
 iIIBkwJ5jJKtTWuy6HObOxFaa+B9T4z14lSoh7KXl5kfeGskVh5UGF6kA
 2daOQra5liq0oczFlGlQi6h9r5Hi5oyoFriMg8EeBHcI6l0UGEq7+HYA2
 EyV5QcqfC9frgehHf3CXH7gZqIR/bZHBp/37Mmv6xFF1KGI2bPHNZOcVj w==;
X-CSE-ConnectionGUID: 8a218UDfSEKXEwIaI3pniA==
X-CSE-MsgGUID: OW2fxtwLQgatiDBlH0HaqA==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70245006"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70245006"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:09:03 -0800
X-CSE-ConnectionGUID: /XZIIrVoSAeRRgbSgr1/BA==
X-CSE-MsgGUID: qz5tj3hWT0Ww1lvzThxJPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889686"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:09:01 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 18/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_modeset_setup.c
Date: Thu, 22 Jan 2026 04:54:13 +0530
Message-ID: <20260121232414.707192-19-uma.shankar@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: A33035F4E7
X-Rspamd-Action: no action

Move GEN9_CLKGATE_DIS_0 reg to display header to make
intel_modeset_setup.c free from i915_reg.h include.

v2: Remove from gmd common header and use display_regs.h (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_regs.h  | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_modeset_setup.c |  1 -
 drivers/gpu/drm/i915/i915_reg.h                    | 13 -------------
 3 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 1def3dccdf61..ec18ad9a262c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -377,6 +377,19 @@
 #define   SKL_EDP_PSR_FIX_RDWRAP	REG_BIT(3)
 #define   IGNORE_PSR2_HW_TRACKING	REG_BIT(1)
 
+/*
+ * GEN9 clock gating regs
+ */
+#define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
+#define   DARBF_GATING_DIS		REG_BIT(27)
+#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
+#define   PWM2_GATING_DIS		REG_BIT(14)
+#define   PWM1_GATING_DIS		REG_BIT(13)
+
+#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
+#define   TGL_VRH_GATING_DIS		REG_BIT(31)
+#define   DPT_GATING_DIS		REG_BIT(22)
+
 #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
 #define   BXT_GMBUS_GATING_DIS		(1 << 14)
 #define   DG2_DPFC_GATING_DIS		REG_BIT(31)
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index d10cbf69a5f8..9b0becee221c 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -11,7 +11,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
 
-#include "i915_reg.h"
 #include "i9xx_wm.h"
 #include "intel_atomic.h"
 #include "intel_bw.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c68a64bc7646..86035f54ae7a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -629,19 +629,6 @@
 #define VLV_CLK_CTL2			_MMIO(0x101104)
 #define   CLK_CTL2_CZCOUNT_30NS_SHIFT	28
 
-/*
- * GEN9 clock gating regs
- */
-#define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
-#define   DARBF_GATING_DIS		REG_BIT(27)
-#define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
-#define   PWM2_GATING_DIS		REG_BIT(14)
-#define   PWM1_GATING_DIS		REG_BIT(13)
-
-#define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
-#define   TGL_VRH_GATING_DIS		REG_BIT(31)
-#define   DPT_GATING_DIS		REG_BIT(22)
-
 #define VLV_DPFLIPSTAT				_MMIO(VLV_DISPLAY_BASE + 0x70028)
 #define   PIPEB_LINE_COMPARE_INT_EN			REG_BIT(29)
 #define   PIPEB_HLINE_INT_EN			REG_BIT(28)
-- 
2.50.1

