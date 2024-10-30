Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F22869B6CCF
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:22:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DB3E10E7E8;
	Wed, 30 Oct 2024 19:22:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LsptX0Rf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAB6710E0CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 19:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730316172; x=1761852172;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jejkoxck4xjSqARiiqXdaZqSa6nRul3iKsIkGmVlCQQ=;
 b=LsptX0RfZH78CHtgC2BBc6z/Fq3bPNAh+ZjSR35LpJWxm0M1CMVKa2r7
 1dwlbBs2UP15LsCrk81Ew7qEt/47m3cc3d7OptBdVOLrv8CcmN56LH4Hv
 FMsTqFiLKFfjsNQC4HTPNkYx9dq5GfIO0q3iA1+WfP1wfxz5VKZZ4zrFu
 L4mUHsKt0guU+ebzFCiGME1fMa+2h9mtCT0wHHeQLlSZVDDOySBo1uFh1
 1cjqMHJefyjlXc/mOsN2+HT7JpuUm9cp5kutPt7hNiLwLX+9B5VVY59Sr
 WKu47yM1GBnSv5fMthh6Ge0o3BDskRKobPSiDRr6ov6GeyryYFzEGYDVR g==;
X-CSE-ConnectionGUID: lQL6q1dYTjKLf+cPN5j3dQ==
X-CSE-MsgGUID: nUNfyY8WSvyXb3ph6v9k/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41435010"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41435010"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:44 -0700
X-CSE-ConnectionGUID: hLKSlOc2SDClimzfakqy8w==
X-CSE-MsgGUID: tS2MH927Rp6uIPYKe1WqXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82521966"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 3/5] drm/i915/dp_mst: Add a way to disable the DP2 config
Date: Wed, 30 Oct 2024 21:23:11 +0200
Message-ID: <20241030192313.4030617-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241030192313.4030617-1-imre.deak@intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
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

Add a way to disable the DP2 configuration, required by the next patch
during transcoder disabling.

While at it drop the redundant encoder parameter.

v2:
- Keep intel_ddi_config_transcoder_dp2() static. (Jani)
- Remove the encoder parameter.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 069cca4b38b2e..dcd43087fa7ed 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -455,14 +455,18 @@ static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
 }
 
 static void
-intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+intel_ddi_config_transcoder_dp2(const struct intel_crtc_state *crtc_state,
+				bool enable)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
-	if (intel_dp_is_uhbr(crtc_state))
+	if (!HAS_DP20(i915))
+		return;
+
+	if (enable && intel_dp_is_uhbr(crtc_state))
 		val = TRANS_DP2_128B132B_CHANNEL_CODING;
 
 	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
@@ -2549,7 +2553,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/*
 	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
 	 */
-	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
+	intel_ddi_config_transcoder_dp2(crtc_state, true);
 
 	/*
 	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
@@ -2686,8 +2690,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
-	if (HAS_DP20(dev_priv))
-		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
+	intel_ddi_config_transcoder_dp2(crtc_state, true);
 
 	/*
 	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
-- 
2.44.2

