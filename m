Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C74409ABF50
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 08:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F4B010E767;
	Wed, 23 Oct 2024 06:51:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Do23YrD7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E932F10E763;
 Wed, 23 Oct 2024 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729666266; x=1761202266;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cTlIa9kS8e7QMzqDxqx2/v01aOrad15U0zT8Nlvpnlc=;
 b=Do23YrD7/cvERteBxh/cREDE+uNmICQ3KBoy1imiAGGl66tyX75DIvAF
 Mi/l7PwCYB1wA+m6HMQPEvX7MWXl+uq+odi1WwPa5F+XMEyMlUVPkQeoW
 I+BHXh1vnfqtmAMG5XqlTWvH13C3eSPaX4t1wX2tTxaneoEfrqJ8oMT3y
 r2Du8pjXsPeQ0QmVenCew5DccJQehKBj6MHpzlOvzNFpGvyJoviIXmmaO
 6NFVIuP+/pgRmVinTiaKgX3jTcL06c0WtIFbBBlhiIOdGQfpIps/fghf0
 VPAbRFlqVbE5A9/aTI/VcQVg9iB3/gyn3Ve4yTpx/mwQlBf/E0hxrX4xv A==;
X-CSE-ConnectionGUID: hl6yorvDQqyLbbXEHhS2ZQ==
X-CSE-MsgGUID: WnVfBjeqSU2YBTUV6bXGVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="32097502"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="32097502"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:06 -0700
X-CSE-ConnectionGUID: k9bGlUx7SWGh8r2lCH3ApA==
X-CSE-MsgGUID: Q1SgWRQhS8u7qs9zc5Mxow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84691630"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 23:51:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 14/16] drm/i915/dsc: Introduce odd pixel removal
Date: Wed, 23 Oct 2024 12:22:55 +0530
Message-ID: <20241023065257.190035-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
References: <20241023065257.190035-1-ankit.k.nautiyal@intel.com>
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
index 8065ed921952..bab1ab1236df 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5762,6 +5762,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(dsc.num_streams);
 	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
 	PIPE_CONF_CHECK_I(dsc.replicated_pixels);
+	PIPE_CONF_CHECK_BOOL(dsc.has_odd_pixel);
 
 	PIPE_CONF_CHECK_BOOL(splitter.enable);
 	PIPE_CONF_CHECK_I(splitter.link_count);
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 282aab2d1b5d..9a4a699d34c4 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1235,6 +1235,7 @@ struct intel_crtc_state {
 	/* Display Stream compression state */
 	struct {
 		bool compression_enable;
+		bool has_odd_pixel;
 		int num_streams;
 		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
 		u16 compressed_bpp_x16;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 0aa2d96ee329..71c69be7989f 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -797,6 +797,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
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
 
@@ -1011,6 +1017,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		crtc_state->dsc.num_streams = 0;
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

