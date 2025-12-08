Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A589CADFC7
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C5D910E4BB;
	Mon,  8 Dec 2025 18:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EicblbfR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D63A10E477;
 Mon,  8 Dec 2025 18:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218426; x=1796754426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OOWGX9Oh3GogryKDZ+WlRplLtkYHdJ8lgXpId1xdpQA=;
 b=EicblbfRlBYA4ZrE050QBLso1lPH06/0j1IQ8w1NOp5w2h9fc++oVITF
 /I2/dkKGDRghWptGd4LTlGP38P2ZSVIPdzaTUejNt2VYCbi2dYAu9RVWR
 DDBTjeWgT5dBhbHN+dW3FfPLPd1bfy5t1yy1IOaUMxRwaDHcQa4Fm1vBS
 NPTohytKYn1Zccd5B3/t1hG+FVo0+z8dU546/fjOt509RmaXHFkLnEn25
 waM5VJREXsJvj5pQOdSwYlZKPT7njgO6qVrTUQC0dnr8EOpZXP8blQaM3
 3YzfeG7C22r0xOJRwztWWQ+x3wEhyoEnwvR1u/dGIVJ9m7VYZNV+cXGt5 A==;
X-CSE-ConnectionGUID: 9KsTtISwTlGXrek9Dl3fEg==
X-CSE-MsgGUID: OckHi0u5RkW/u9uHZjUt6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051262"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051262"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:05 -0800
X-CSE-ConnectionGUID: KaGpm0iuSPexVmZRMFiJ5w==
X-CSE-MsgGUID: 46pq2aKkRsC2C+f+dSQehA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460443"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:04 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 06/19] drm/i915/vga: Clean up VGA registers even if VGA plane
 is disabled
Date: Mon,  8 Dec 2025 20:26:24 +0200
Message-ID: <20251208182637.334-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Turns out at least some systems (eg. HSW Lenovo ThinKCentre E73)
confgiure the VGA registers even when booting in UEFI mode. So
in order to avoid any issues with the MSR register we should
clean up the VGA registers anyway.

For now this mostly avoids the potential for unclaimed register
acceses due to the power well vs. MDA/CGA selection. But this
will become more important soon as we'll start to rely on the
MSR register to control VGA memory decode as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 40 ++++++++++++++++--------
 1 file changed, 27 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 744812260ae3..6a19fb242248 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -63,7 +63,6 @@ void intel_vga_disable(struct intel_display *display)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
-	enum pipe pipe;
 	u8 msr, sr1;
 	u32 tmp;
 
@@ -79,18 +78,33 @@ void intel_vga_disable(struct intel_display *display)
 	}
 
 	tmp = intel_de_read(display, vga_reg);
-	if (tmp & VGA_DISP_DISABLE)
-		return;
-
-	if (display->platform.cherryview)
-		pipe = REG_FIELD_GET(VGA_PIPE_SEL_MASK_CHV, tmp);
-	else if (has_vga_pipe_sel(display))
-		pipe = REG_FIELD_GET(VGA_PIPE_SEL_MASK, tmp);
-	else
-		pipe = PIPE_A;
-
-	drm_dbg_kms(display->drm, "Disabling VGA plane on pipe %c\n",
-		    pipe_name(pipe));
+
+	if ((tmp & VGA_DISP_DISABLE) == 0) {
+		enum pipe pipe;
+
+		if (display->platform.cherryview)
+			pipe = REG_FIELD_GET(VGA_PIPE_SEL_MASK_CHV, tmp);
+		else if (has_vga_pipe_sel(display))
+			pipe = REG_FIELD_GET(VGA_PIPE_SEL_MASK, tmp);
+		else
+			pipe = PIPE_A;
+
+		drm_dbg_kms(display->drm, "Disabling VGA plane on pipe %c\n",
+			    pipe_name(pipe));
+	} else {
+		drm_dbg_kms(display->drm, "VGA plane is disabled\n");
+
+		/*
+		 * Unfortunately at least some BIOSes (eg. HSW Lenovo
+		 * ThinkCentre E73) set up the VGA registers even when
+		 * in UEFI mode with the VGA plane disabled. So we need to
+		 * always clean up the mess for iGPUs. For discrete GPUs we
+		 * don't really care about the state of the VGA registers
+		 * since all VGA accesses can be blocked via the bridge.
+		 */
+		if (display->platform.dgfx)
+			goto reset_vgacntr;
+	}
 
 	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
-- 
2.51.2

