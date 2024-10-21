Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8E29A6885
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437EE10E4D4;
	Mon, 21 Oct 2024 12:32:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="asdK0UPs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6055710E4C8;
 Mon, 21 Oct 2024 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513942; x=1761049942;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FVFf5WVf9WLYyR0bGP5755zR/GpK/07AQJOOMrnRsYI=;
 b=asdK0UPs3orzGLaYXp+F7HldMF13DmRRL2YRYRu/X0SAqQbxRkcei25c
 485v7OF7eGel7b1s0lFhOoISi7iUxmzn5R6li2F15wwmRr3rUWjCNDv3A
 TZJZRqFqNu5eukWTrXlDvc4fUm3jLcP3gOY1Z309Hf7P2oEAGlV7nitkl
 3Bjd6HwNbPlWpmspiqKKh+dCQMXgtowOyiUWqAShfcnmyhj8RoqnYoDth
 H+uvN+J9r6Sssb1+cuMfRnQxOJ7R53xfA58RTyEk9GUgE5oISBvdgBSwa
 TMU5nJHelK4gJVabjDsgDeGYW/bdLwZD5UhBQkO1YK3VvNH3I9k5eaYv2 A==;
X-CSE-ConnectionGUID: r/RFVT+RRRShGYtrjoN48w==
X-CSE-MsgGUID: zFW8DDzJTNWeBFNYYQPZFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459650"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459650"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:22 -0700
X-CSE-ConnectionGUID: PINBdPs4S8CNimkBoNDR1g==
X-CSE-MsgGUID: RaXrAEG0Rdaz00H4ggJ26g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866112"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:21 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 14/16] drm/i915/dsc: Introduce odd pixel removal
Date: Mon, 21 Oct 2024 18:04:12 +0530
Message-ID: <20241021123414.3993899-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
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

With 3 DSC engines we can support 12 slices. With ultra joiner
usecase while dividing the width into 12 slices, we might
end up having odd number of pixels per pipe.

As per Bspec, pipe src size should be even, so an extra pixel is added
in each pipe. For Pipe A and C the odd pixel is added at the end of
pipe and for Pipe B and D it is added at the beginning of the pipe.
This extra pixel needs to be dropped in Splitter hardware.

Introduce bits to account for odd pixel removal while programming DSS CTL.
Add a new member in crtc state to track if we need to account for the
odd pixel.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c       | 1 +
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_vdsc.c          | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h     | 2 ++
 4 files changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index de682fec45cd..ac4a5809efd6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5762,6 +5762,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.dsc_split);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 	PIPE_CONF_CHECK_I(dsc.replicated_pixels);
+	PIPE_CONF_CHECK_BOOL(dsc.has_odd_pixel);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
 	PIPE_CONF_CHECK_I(splitter.link_count);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 17554f52611c..92c362b9f63c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1235,6 +1235,7 @@ struct intel_crtc_state {
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
+		bool has_odd_pixel;
 		int dsc_split;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index c279f59fdda8..d3d36cb9859c 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -806,6 +806,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
 
+	if (crtc_state->dsc.has_odd_pixel) {
+		dss_ctl2_val |= ODD_PIXEL_REMOVAL;
+		if (crtc->pipe == PIPE_A || crtc->pipe == PIPE_C)
+			dss_ctl2_val |= ODD_PIXEL_REMOVAL_CONFIG_EOL;
+	}
+
 	if (crtc_state->dsc.replicated_pixels)
 		dss_ctl3_val = DSC_PIXEL_REPLICATION(crtc_state->dsc.replicated_pixels);
 
@@ -1019,6 +1025,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->dsc.dsc_split = 0;
 	}
 
+	if (dss_ctl2 & ODD_PIXEL_REMOVAL)
+		crtc_state->dsc.has_odd_pixel = true;
+
 	if (dss_ctl3 & DSC_PIXEL_REPLICATION_MASK)
 		crtc_state->dsc.replicated_pixels =
 			dss_ctl3 & DSC_PIXEL_REPLICATION_MASK;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index f07fad6239bc..9c4cf80c2064 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -24,6 +24,8 @@
 #define  VDSC0_ENABLE				REG_BIT(31)
 #define  VDSC2_ENABLE				REG_BIT(30)
 #define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
+#define  ODD_PIXEL_REMOVAL			REG_BIT(18)
+#define  ODD_PIXEL_REMOVAL_CONFIG_EOL		REG_BIT(17)
 #define  VDSC1_ENABLE				REG_BIT(15)
 #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
 #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-- 
2.45.2

