Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6042E9B5A94
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:08:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E1810E74A;
	Wed, 30 Oct 2024 04:08:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gn3dx3XC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23C7510E74C;
 Wed, 30 Oct 2024 04:08:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730261301; x=1761797301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Igyu7k2cVnyqvAOAzvsLUjTFzydGdf4UYglTFEpoYsM=;
 b=gn3dx3XCLnkn2jfD6c/r42iePikF0e9hyWjxun/SuO/8nI6dG/G4oIkA
 C5g8dDz1HX+fWTdUcql1OHXn1x2kARMPcCd+OeTKmSQ1UeP5CWcoU9aAJ
 xBdbLmDcAQW0T5Ma2uuohdMCrvNZQlenOXPJcZc+ujIVY7z/Odqe7vpVB
 Kskt8nuM9ufoeHPbvTy8vHd5o9mE7yLBTqmc2Irr4+VaAueRTqR0ZfCji
 tE7m/w0XcPg5XA77IbplA5k2aUBdsJHcL7yjK2te9DFunKbV2Ft5AgvH/
 vGtayoR6/zS/4A6JGIOGyHK9Jo7gPsbYNCUvL52WK6lPsPBWdv9WcMenI A==;
X-CSE-ConnectionGUID: 0KLh2KsUTWO8mItEyPAWxg==
X-CSE-MsgGUID: BNGGf0/7QF+qyp8oxkZlLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30088436"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30088436"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:21 -0700
X-CSE-ConnectionGUID: rtvH8vonTGiHKyN1wtUdrw==
X-CSE-MsgGUID: 78jS9o6ZS96uYLzLy6PzmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82510504"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:19 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 3/7] drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
Date: Wed, 30 Oct 2024 09:40:32 +0530
Message-ID: <20241030041036.1238006-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
References: <20241030041036.1238006-1-ankit.k.nautiyal@intel.com>
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

Drop use of LEFT/RIGHT VDSC engine and use VDSC0/VDSC1 instead.
While at it, use REG_BIT macro for the bits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 ++++----
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 168f39499c66..bd6480e373f7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -770,9 +770,9 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_dsc_pps_configure(crtc_state);
 
-	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
+	dss_ctl2_val |= VDSC0_ENABLE;
 	if (vdsc_instances_per_pipe > 1) {
-		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
+		dss_ctl2_val |= VDSC1_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
 	if (crtc_state->joiner_pipes) {
@@ -972,11 +972,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
 	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
 
-	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
+	crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE)
+	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & VDSC1_ENABLE)
 		crtc_state->dsc.num_streams = 2;
 	else
 		crtc_state->dsc.num_streams = 1;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index bf32a3b46fb1..d7a72b95ee7e 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -21,8 +21,8 @@
 #define  MAX_DL_BUFFER_TARGET_DEPTH		0x5a0
 
 #define DSS_CTL2				_MMIO(0x67404)
-#define  LEFT_BRANCH_VDSC_ENABLE		(1 << 31)
-#define  RIGHT_BRANCH_VDSC_ENABLE		(1 << 15)
+#define  VDSC0_ENABLE				REG_BIT(31)
+#define  VDSC1_ENABLE				REG_BIT(15)
 #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
 #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
 
-- 
2.45.2

