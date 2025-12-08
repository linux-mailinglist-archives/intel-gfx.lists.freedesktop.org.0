Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19159CADFC1
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A69610E4B6;
	Mon,  8 Dec 2025 18:26:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dq/Ndtga";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EAFC10E4B6;
 Mon,  8 Dec 2025 18:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218418; x=1796754418;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w91nfuYOmigXXIYpMu3kyZjppp2VPZRMH1WlvDtTdSQ=;
 b=Dq/Ndtgawyub8VyyDdyBHRm6a1Zh9hw4VLGeziZdXJ1B5OLu1RFjE2L7
 m9SdWTxf0hi4/xjNfXLHV7WSV6P/dglr/q/yPKWkywxdC27pg21EPMm2r
 /SdsA+Rl+VJorxgLcs1uOPtySyAxGxY48tqJZzvTgzzpn5VpDYsqa8BFX
 mVPSqK/bcE4ss4JD9Ge/vNXn26vyrrre4uW/pwS7Mf4HNEA9TAmtqZyqY
 YbRBBjq3lLqHaHcgeo63n9hDYEbyLse704HAqA3+uuv/EwWaitWfeODJI
 tMEuVRz0Q+bslwFymCY6EmLpCIs4wJvDn26x9Eeycs4ZYIJzKmwaOpUCo A==;
X-CSE-ConnectionGUID: 1zNrevmBS3+aW/1cSmAnYw==
X-CSE-MsgGUID: CtCdblsYR6a/QGqxdGWtpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051256"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051256"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:58 -0800
X-CSE-ConnectionGUID: 8anWpmSYRTOg07C0bEcHyA==
X-CSE-MsgGUID: 5uJgjaFPSBKQaUOfMI9Y0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460373"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:56 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/19] drm/i915/vga: Extract intel_gmch_ctrl_reg()
Date: Mon,  8 Dec 2025 20:26:22 +0200
Message-ID: <20251208182637.334-5-ville.syrjala@linux.intel.com>
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

Extract the GMCH_CTLR register offset determination into a helper
rather than using a local varaible. I'll be needing this in another
function soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 39c68aec647b..84fd5475d336 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -18,6 +18,11 @@
 #include "intel_vga.h"
 #include "intel_vga_regs.h"
 
+static unsigned int intel_gmch_ctrl_reg(struct intel_display *display)
+{
+	return DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
+}
+
 static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 {
 	if (display->platform.valleyview || display->platform.cherryview)
@@ -98,10 +103,10 @@ void intel_vga_disable(struct intel_display *display)
 static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_decode)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
-	unsigned int reg = DISPLAY_VER(display) >= 6 ? SNB_GMCH_CTRL : INTEL_GMCH_CTRL;
 	u16 gmch_ctrl;
 
-	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, &gmch_ctrl)) {
+	if (pci_bus_read_config_word(pdev->bus, PCI_DEVFN(0, 0),
+				     intel_gmch_ctrl_reg(display), &gmch_ctrl)) {
 		drm_err(display->drm, "failed to read control word\n");
 		return -EIO;
 	}
@@ -114,7 +119,8 @@ static int intel_gmch_vga_set_state(struct intel_display *display, bool enable_d
 	else
 		gmch_ctrl |= INTEL_GMCH_VGA_DISABLE;
 
-	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0), reg, gmch_ctrl)) {
+	if (pci_bus_write_config_word(pdev->bus, PCI_DEVFN(0, 0),
+				      intel_gmch_ctrl_reg(display), gmch_ctrl)) {
 		drm_err(display->drm, "failed to write control word\n");
 		return -EIO;
 	}
-- 
2.51.2

