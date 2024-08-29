Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE44B96462D
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 15:17:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F6BC10E689;
	Thu, 29 Aug 2024 13:17:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NtG879Sp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACA4810E689;
 Thu, 29 Aug 2024 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724937426; x=1756473426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y3UTVohc5NJliCoh4wP0Y6xHglXNmkTiN05WtesR0Zw=;
 b=NtG879Spq7hwaxdGUFX4oDFqOmNBzE2DjCQQs29lQiXSXar/si2zY6Jk
 wBTxReGjU6YESLqQQ50mULKmiUSqHYbXOz+gVgVkUCKVn+sKG9oxJ/P1o
 uvtp843IWL/Ly7CDR4SngBvlECh9Y4JJ81eWGS2d0mHy2ZiI2rrPyszG/
 pl6O8NTow3D/bNi2PRBQDRGabNDHALv3/JgFhFeyAhhKXf03AS/KTqWqY
 FD74AhljwKhJCG3GhdteoqFw4ueeKpqI5pVp/EnDLOQa5NzloIttlY3aD
 JimiPY31hjc8V8wvAUqo5DmRKiASLXpJQjPpRUH5kGO6s6Jbe32UH5S14 g==;
X-CSE-ConnectionGUID: S587wLCrTYmabYW+q9v5tw==
X-CSE-MsgGUID: 8QklNFONRvOfSOc54RkE2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23667235"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="23667235"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:06 -0700
X-CSE-ConnectionGUID: SkAv6j7BSZ6NXBxUR2gdmQ==
X-CSE-MsgGUID: k1USgwdmQNWpfBIZB/0Erg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63261489"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 06:17:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 05/19] drm/i915/icl_dsi: Avoid using intel_dsi in
 configure_dual_link_mode
Date: Thu, 29 Aug 2024 18:48:13 +0530
Message-ID: <20240829131828.2350930-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
References: <20240829131828.2350930-1-ankit.k.nautiyal@intel.com>
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

DSS control regs have bits to configure dual_link_mode.
Pass dual_link, and pixel_overlap to the configure_dual_link_mode()
instead of deriving from intel_dsi. This will make the movement of
the function to intel_dss files easier and avoid need of intel_dsi in
intel_dss files.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 5ad5011e1fee..2f94644f51f3 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -275,10 +275,10 @@ static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 }
 
 static void configure_dual_link_mode(struct intel_encoder *encoder,
-				     const struct intel_crtc_state *pipe_config)
+				     const struct intel_crtc_state *pipe_config,
+				     u8 dual_link, u8 pixel_overlap)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
 	u32 dss_ctl1;
 
@@ -296,16 +296,16 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
 	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg);
 	dss_ctl1 |= SPLITTER_ENABLE;
 	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
-	dss_ctl1 |= OVERLAP_PIXELS(intel_dsi->pixel_overlap);
+	dss_ctl1 |= OVERLAP_PIXELS(pixel_overlap);
 
-	if (intel_dsi->dual_link == DSI_DUAL_LINK_FRONT_BACK) {
+	if (dual_link == DSI_DUAL_LINK_FRONT_BACK) {
 		const struct drm_display_mode *adjusted_mode =
 					&pipe_config->hw.adjusted_mode;
 		u16 hactive = adjusted_mode->crtc_hdisplay;
 		u16 dl_buffer_depth;
 
 		dss_ctl1 &= ~DUAL_LINK_MODE_INTERLEAVE;
-		dl_buffer_depth = hactive / 2 + intel_dsi->pixel_overlap;
+		dl_buffer_depth = hactive / 2 + pixel_overlap;
 
 		if (dl_buffer_depth > MAX_DL_BUFFER_TARGET_DEPTH)
 			drm_err(&dev_priv->drm,
@@ -791,7 +791,9 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 		}
 
 		/* configure stream splitting */
-		configure_dual_link_mode(encoder, pipe_config);
+		configure_dual_link_mode(encoder, pipe_config,
+					 intel_dsi->dual_link,
+					 intel_dsi->pixel_overlap);
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-- 
2.45.2

