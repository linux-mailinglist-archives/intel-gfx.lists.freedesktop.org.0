Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F62FCADFC4
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71AEF10E2B6;
	Mon,  8 Dec 2025 18:27:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DlL3QGSH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E670510E2B6;
 Mon,  8 Dec 2025 18:27:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218422; x=1796754422;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1XbsSS0wwD2CzaztAMAe/6eQdHaTEsWEUkT+23FaUbw=;
 b=DlL3QGSHQd/0GeSKqWhuV8ndgeszChDbg0ICLPpXinNqtjRPRxaePfnj
 az0o1fdbPTen+ndpTuPJeimTNOts+YZBO12w5FN3tTn7UaQceiTLLqsjl
 5fTVeoSH59tDPQvK/0xSTUtIHCoTBY7eZdgvwfxla45EoA2JTBfeNL4/p
 xj8LscGB4GknFyGPDE4FX3NdNCU6XSlRhmeLd6CXE+IBLn+LF25BFdmst
 lb8YI68rraV6Dgu1oufqflT9MokYo2N3G2U7BwBRd2C9j721yHUIN9eVp
 trjx8vSRqXCOvEoR+I6yzhH8Ge8WuLk1hCj4Umx2kJgiqMnIdQjJrUslX w==;
X-CSE-ConnectionGUID: axw2Q62XTdaNc/SZteNQTQ==
X-CSE-MsgGUID: Hyqa33dCRLyedjOquM99VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051258"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051258"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:02 -0800
X-CSE-ConnectionGUID: 6kQ02g32TZWvlMsMc8fbXQ==
X-CSE-MsgGUID: Du1OdHYkT4G3oLWPRVGc/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460406"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:00 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/19] drm/i915/vga: Don't touch VGA registers if VGA decode
 is fully disabled
Date: Mon,  8 Dec 2025 20:26:23 +0200
Message-ID: <20251208182637.334-6-ville.syrjala@linux.intel.com>
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

On some systems the BIOS will disable the VGA decode logic in the
iGPU (via GMCH_CTRL) when an external GPU is used as the primary
VGA device. In that case the iGPU will never claim any VGA register
accesses, and any access we do will in fact end up on the external
GPU. Don't go poking around in the other GPUs registers.

Note that (at least on the g4x board where I tested this) the BIOS
forgets to set the VGACNTR VGA_DISP_DISABLE bit, and the reset
value for said bit is 0. That apparently prevents the pipes from
running, so we must still remember to set the bit, despite the VGA
plane was never actually enabled. On more modern platforms (hsw+
maybe?) the reset value for VGACNTR was changed to have
VGA_DISP_DISABLE already set.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 84fd5475d336..744812260ae3 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -23,6 +23,18 @@ static unsigned int intel_gmch_ctrl_reg(struct intel_display *display)
 	return DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 }
 
+static bool intel_vga_decode_is_enabled(struct intel_display *display)
+{
+	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
+	u16 gmch_ctrl = 0;
+
+	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0),
+				     intel_gmch_ctrl_reg(display), &gmch_ctrl))
+		return false;
+
+	return !(gmch_ctrl & INTEL_GMCH_VGA_DISABLE);
+}
+
 static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 {
 	if (display->platform.valleyview || display->platform.cherryview)
@@ -55,6 +67,17 @@ void intel_vga_disable(struct intel_display *display)
 	u8 msr, sr1;
 	u32 tmp;
 
+	if (!intel_vga_decode_is_enabled(display)) {
+		drm_dbg_kms(display->drm, "VGA decode is disabled\n");
+
+		/*
+		 * On older hardware VGA_DISP_DISABLE defaults to 0, but
+		 * it *must* be set or else the pipe will be completely
+		 * stuck (at least on g4x).
+		 */
+		goto reset_vgacntr;
+	}
+
 	tmp = intel_de_read(display, vga_reg);
 	if (tmp & VGA_DISP_DISABLE)
 		return;
@@ -96,6 +119,7 @@ void intel_vga_disable(struct intel_display *display)
 
 	udelay(300);
 
+reset_vgacntr:
 	intel_de_write(display, vga_reg, VGA_DISP_DISABLE);
 	intel_de_posting_read(display, vga_reg);
 }
-- 
2.51.2

