Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4583FCADFD0
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD7D10E4BE;
	Mon,  8 Dec 2025 18:27:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhJZ4Vwr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C02B510E4BF;
 Mon,  8 Dec 2025 18:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218437; x=1796754437;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wIR9yTh+TH5We/SWYo+sh59OASF7084NUCAZpmQOvOM=;
 b=lhJZ4VwrOWvF+8Jl7EdbYFtJAb/E9eYj+Mz5R0jgo4NHiOcUTVAGvZyq
 qVNW7fya0y6XsN4NP277aRRxko9RYOyYXiUfSIe6A6ERn1WmaTuxS8Guw
 3B1L9ntYe1NrJwOFyIpTQbXGTlHcNzktKc9u3jKhjZyuPqtdb9UlQjK2G
 tK3LBdrmurUVPjuQDDx7Ka+VYT81YYg2iZuA2Qf2uFlktL7+fn53FkUMW
 BQ8uazEHwEMEEVV6xzV1tVH5zMCLsdHppDfKd1rWQy4nzJSbUYI3LSvIc
 II2NoVT6T4due6SyGeMEv9ZwcC5uRuG4+cX1N2fGttZwriX1J7WSc7bA6 Q==;
X-CSE-ConnectionGUID: CzLXcDtBQvmk0QrcX8HTxQ==
X-CSE-MsgGUID: h20uq4vGQeCHLqTqav6xwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051294"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051294"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:16 -0800
X-CSE-ConnectionGUID: NmPA/9g4SbapS4Ion6QFuQ==
X-CSE-MsgGUID: gnAAV0d2QrybBeWmc4Z8yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460493"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:15 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 09/19] drm/i915/vga: Assert that VGA register accesses are
 going to the right GPU
Date: Mon,  8 Dec 2025 20:26:27 +0200
Message-ID: <20251208182637.334-10-ville.syrjala@linux.intel.com>
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

We want out VGA register accesses to land on the correct GPU.
Check that the VGA routing is appropriately configured.

For the iGPU this just means the IO decode enable on the GPU, but
for dGPUs we also need the entire chain of bridges to forward the
VGA accesses.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index f2f7d396c556..e51451966f72 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -58,6 +58,28 @@ static bool has_vga_pipe_sel(struct intel_display *display)
 	return DISPLAY_VER(display) < 7;
 }
 
+static bool intel_pci_has_vga_io_decode(struct pci_dev *pdev)
+{
+	u16 cmd = 0;
+
+	pci_read_config_word(pdev, PCI_COMMAND, &cmd);
+	if ((cmd & PCI_COMMAND_IO) == 0)
+		return false;
+
+	pdev = pdev->bus->self;
+	while (pdev) {
+		u16 ctl = 0;
+
+		pci_read_config_word(pdev, PCI_BRIDGE_CONTROL, &ctl);
+		if ((ctl & PCI_BRIDGE_CTL_VGA) == 0)
+			return false;
+
+		pdev = pdev->bus->self;
+	}
+
+	return true;
+}
+
 static bool intel_pci_set_io_decode(struct pci_dev *pdev, bool enable)
 {
 	u16 old = 0, cmd;
@@ -169,6 +191,8 @@ void intel_vga_disable(struct intel_display *display)
 
 	io_decode = intel_vga_get(display);
 
+	drm_WARN_ON(display->drm, !intel_pci_has_vga_io_decode(pdev));
+
 	outb(0x01, VGA_SEQ_I);
 	sr1 = inb(VGA_SEQ_D);
 	outb(sr1 | VGA_SR01_SCREEN_OFF, VGA_SEQ_D);
-- 
2.51.2

