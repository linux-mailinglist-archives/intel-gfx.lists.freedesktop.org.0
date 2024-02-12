Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6288A851BD9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Feb 2024 18:43:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E6310EE40;
	Mon, 12 Feb 2024 17:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C9eUqwt8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7349010EE40
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Feb 2024 17:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707759803; x=1739295803;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v1T6PbwdBf9VJTop3t5eH3TNB8RF+ffn3GeVXFTmYnA=;
 b=C9eUqwt8V7DcjCPw7xMgzNJvzSa0NFmrELW5XzfoyrjAcr59HphTRid8
 zuYY2t4KzguLZI5wH++hoLhkiurIDcp2bAijR6aF9WIT3TZ9Z7Q2yjLwq
 DIzbR1HPAfU7YIJhMVQT+nAexHegH4oMnL3mNfBCYebGF4bAp/jqS61AI
 jqAYh1940p3N5RaRurIFqh/8NVVDFM/lzC7cqBJTEJxoDrwg38q1DrqHD
 gi9YDAA7g3vhnWIxClE5lLFR4eJxN71p/YtFx1S4jJz6HWaAtgV/arhzQ
 INBHQpwGfR8cyz6FgMeCcsyckW9YaPSfuGcWpmylk5Q5GudhN/bPGizJA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1871996"
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="1871996"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2024 09:43:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,155,1705392000"; 
   d="scan'208";a="2595382"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Feb 2024 09:43:22 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 1/4] drm/i915/display: Compute TRANS_VRR_VSYNC
Date: Mon, 12 Feb 2024 23:06:20 +0530
Message-Id: <20240212173623.1464540-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240212173623.1464540-1-mitulkumar.ajitkumar.golani@intel.com>
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

Compute TRANS_VRR_VSYNC which sets the position
for hardware to send the Vsync at a fixed position
relative to the end of the Vblank.
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_vrr.c           | 9 +++++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 2 ++
 3 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 01eb6e4e6049..c73a0037f6c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1411,6 +1411,7 @@ struct intel_crtc_state {
 		bool enable, in_range;
 		u8 pipeline_full;
 		u16 flipline, vmin, vmax, guardband;
+		u32 vsync_end, vsync_start;
 	} vrr;
 
 	/* Stream Splitter for eDP MSO */
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5d905f932cb4..59628c360a78 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -149,6 +149,13 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
 
+	crtc_state->vrr.vsync_start =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			VSYNC_START(crtc_state->hw.adjusted_mode.vsync_start));
+	crtc_state->vrr.vsync_end =
+			(crtc_state->hw.adjusted_mode.crtc_vtotal -
+			(VSYNC_END(crtc_state->hw.adjusted_mode.vsync_end) >> 16));
+
 	/*
 	 * For XE_LPD+, we use guardband and pipeline override
 	 * is deprecated.
@@ -201,6 +208,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 
 	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
 	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
+	intel_de_write(dev_priv, TRANS_VRR_VSYNC(cpu_transcoder),
+				   crtc_state->vrr.vsync_end << 16 | crtc_state->vrr.vsync_start);
 	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
 	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e00557e1a57f..3449e65fdf1b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2007,7 +2007,9 @@
 #define _TRANS_VRR_CTL_B		0x61420
 #define _TRANS_VRR_CTL_C		0x62420
 #define _TRANS_VRR_CTL_D		0x63420
+#define _TRANS_VRR_VSYNC_A		0x60078
 #define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_CTL_A)
+#define TRANS_VRR_VSYNC(trans)			_MMIO_TRANS2(trans, _TRANS_VRR_VSYNC_A)
 #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
 #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
 #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
-- 
2.25.1

