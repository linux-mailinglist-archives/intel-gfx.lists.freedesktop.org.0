Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA5BA91B28
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B08B10EADE;
	Thu, 17 Apr 2025 11:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Oibd3QlJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97D1510EADD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890310; x=1776426310;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=RTj6I8JtrGI0o43rrhjFYFE+9ItUtJWn3dNz4SLgeFs=;
 b=Oibd3QlJtY9SulFDhOptj2HI67cMRfAIPOoiw0Eo6dQxqlmjk7OiIP6l
 HqdQYCFzR51DzNRvdjr5VQJEsbJaMfgM8LhAS/fLnOdEsglc4u6L/LMzW
 2TjX12n/9OVE4Oat+U8sQomJOXb9+I6ibOZskZmDnUCRMKGoFS6XSli5P
 +BgEATCB3MF/xQ8U+9Go3DrILIeLn9jCNsoJ5ElhLwcmNS6S1PnjYRlIn
 28NhWoWQDBayYt6NIzwzYrZ9yv3Tn3DB6n8gdfHYmJY7UJrybdLu5dLDx
 Dq82ryk78syULzPwYPJ1Xt7BTNPYDjTNQjqvckmLTHB761zGDGKs9Cpc0 A==;
X-CSE-ConnectionGUID: BbMHnWJzRsCDLv26SvQX+w==
X-CSE-MsgGUID: J9NjeDaFRnyHDRd6YpUXTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638259"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638259"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:45:09 -0700
X-CSE-ConnectionGUID: BZkYhM4KQrerjp7rBKHfbA==
X-CSE-MsgGUID: HyAvpwhaSbm+Mpmh7D+YnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943652"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:45:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:45:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/6] drm/i915/vga: Include the current pipe in the VGA disable
 debug message
Date: Thu, 17 Apr 2025 14:44:52 +0300
Message-ID: <20250417114454.12836-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add some debugs to the VGA plane disable so that we can at least
see from the logs when it happens (and on which pipe). I was curious
about this at some point when I was seeing some random underruns
near the time when we disable the VGA plane, but I think in the end
that turned out to be a red herring.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vga.c | 29 +++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/i915/display/intel_vga.c
index 56047f701798..7ee689a9da92 100644
--- a/drivers/gpu/drm/i915/display/intel_vga.c
+++ b/drivers/gpu/drm/i915/display/intel_vga.c
@@ -12,6 +12,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display.h"
 #include "intel_vga.h"
 #include "intel_vga_regs.h"
 
@@ -25,16 +26,42 @@ static i915_reg_t intel_vga_cntrl_reg(struct intel_display *display)
 		return VGACNTRL;
 }
 
+static bool has_vga_pipe_sel(struct intel_display *display)
+{
+	if (display->platform.i845g ||
+	    display->platform.i865g)
+		return false;
+
+	if (display->platform.valleyview ||
+	    display->platform.cherryview)
+		return true;
+
+	return DISPLAY_VER(display) < 7;
+}
+
 /* Disable the VGA plane that we never use */
 void intel_vga_disable(struct intel_display *display)
 {
 	struct pci_dev *pdev = to_pci_dev(display->drm->dev);
 	i915_reg_t vga_reg = intel_vga_cntrl_reg(display);
+	enum pipe pipe;
+	u32 tmp;
 	u8 sr1;
 
-	if (intel_de_read(display, vga_reg) & VGA_DISP_DISABLE)
+	tmp = intel_de_read(display, vga_reg);
+	if (tmp & VGA_DISP_DISABLE)
 		return;
 
+	if (display->platform.cherryview)
+		pipe = REG_FIELD_GET(VGA_PIPE_SEL_MASK_CHV, tmp);
+	else if (has_vga_pipe_sel(display))
+		pipe = REG_FIELD_GET(VGA_PIPE_SEL_MASK, tmp);
+	else
+		pipe = PIPE_A;
+
+	drm_dbg_kms(display->drm, "Disabling VGA plane on pipe %c\n",
+		    pipe_name(pipe));
+
 	/* WaEnableVGAAccessThroughIOPort:ctg,elk,ilk,snb,ivb,vlv,hsw */
 	vga_get_uninterruptible(pdev, VGA_RSRC_LEGACY_IO);
 	outb(0x01, VGA_SEQ_I);
-- 
2.49.0

