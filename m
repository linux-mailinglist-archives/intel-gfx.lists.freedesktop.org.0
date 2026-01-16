Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1D1D2E545
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 09:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79FC210E83B;
	Fri, 16 Jan 2026 08:55:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NyG4dj72";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C281110E838;
 Fri, 16 Jan 2026 08:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768553713; x=1800089713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fczOrfYCPSaCl534a2o6Tv7VCcvorjuYDoxucnHwYlI=;
 b=NyG4dj72N8kTya8Jo5/i+X+AAWlL9dRc9De0HuSrs3QHT01bghEUyqJE
 zT/Im1ZnmQcVJPy9Y/yP5uAhdI8od/+uSFaUCGy5/dYPuGP69gj2xPTI/
 ea64it0LuUwkKi3pCTT1w83Tv4C3KJYoO85X8BDhB49Zb9w/xCVqYUWcL
 oA+T+4q3DLU50gTqMl+1sF1IBZJZOG2PreJtlqjLBSc1EPOHT2Yxo5lnH
 mgv6IP/uC005kUuajJtXQRroJB7vBJImenR2x/+pYYhrxV9lkIHl9FMJe
 RyNgKqFGjyTt+tFjaOjL001BQLkIQAu/bNKd/YvIrwedZf4JzB4nHeSDH A==;
X-CSE-ConnectionGUID: ooI3yVUBTbSy34v7DZXiNA==
X-CSE-MsgGUID: 0fQsjj1cQBGt5W5TYrXkLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="69918125"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="69918125"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 00:55:13 -0800
X-CSE-ConnectionGUID: yFVQ0+E8S7akLausbSQq7w==
X-CSE-MsgGUID: U8+7WjVmR5mU5z+PhaIYQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="204398198"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 16 Jan 2026 00:55:03 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Mika Kahola <mika.kahola@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 1/3] drm/i915/pps: Enable panel power earlier
Date: Fri, 16 Jan 2026 14:24:53 +0530
Message-Id: <20260116085455.571766-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260116085455.571766-1-suraj.kandpal@intel.com>
References: <20260116085455.571766-1-suraj.kandpal@intel.com>
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

From: Mika Kahola <mika.kahola@intel.com>

Move intel_pps_on() to intel_dpll_mgr PLL enabling
.enable function hook to enable panel power earlier.
We need to do this to make sure we are following the
modeset sequences of Bspec. This had changed when we
moved the PLL PHY enablement for CX0 from .enable_clock
to dpll.enable hook

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---

v2 -> v3: 
- Rather than splitting the PHY enablement sequence, enable PPS
earlier (Imre)
  
 drivers/gpu/drm/i915/display/intel_ddi.c      | 6 ++++--
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 5 +++++
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index cb91d07cdaa6..1784fa687c03 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2653,8 +2653,10 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/* 3. Select Thunderbolt */
 	mtl_port_buf_ctl_io_selection(encoder);
 
-	/* 4. Enable Panel Power if PPS is required */
-	intel_pps_on(intel_dp);
+	/*
+	 * 4. Enable Panel Power if PPS is required
+	 *    moved to intel_dpll_mgr .enable hook
+	 */
 
 	/* 5. Enable the port PLL */
 	intel_ddi_enable_clock(encoder, crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 9aa84a430f09..b5655c734c53 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -40,6 +40,7 @@
 #include "intel_hti.h"
 #include "intel_mg_phy_regs.h"
 #include "intel_pch_refclk.h"
+#include "intel_pps.h"
 #include "intel_step.h"
 #include "intel_tc.h"
 
@@ -4401,6 +4402,10 @@ static void mtl_pll_enable(struct intel_display *display,
 	if (drm_WARN_ON(display->drm, !encoder))
 		return;
 
+	/* Enable Panel Power if PPS is required */
+	if (intel_encoder_is_dp(encoder))
+		intel_pps_on(enc_to_intel_dp(encoder));
+
 	intel_mtl_pll_enable(encoder, pll, dpll_hw_state);
 }
 
-- 
2.34.1

