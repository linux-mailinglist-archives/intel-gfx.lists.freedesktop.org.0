Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7810C9B5A95
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 05:08:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C1B710E751;
	Wed, 30 Oct 2024 04:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUCE4Lli";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0EB310E74C;
 Wed, 30 Oct 2024 04:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730261302; x=1761797302;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vwJcduUq98pV83cibwnaIyp6Ss9w+RJ6bTUzVTqe8+E=;
 b=hUCE4LliM8s66wEuPF5hY+tcjCTda6fm+fe/j7UvKMElohlp/3y3Y1AV
 A+XoUZkfWjLNRDxxlYLv6x898hGxEYBqCle7kbN9zphVzE+hxUtNEFhv+
 wILk0VGE0WzyQ8ch/4CvLw5offZBw+seA0QIceIhBb1jlvee1z7RyFEXL
 t/Be4qoKDX1nlP8cyYRq9iYOLMp9PHKd/h/iYt67poe25IDAB2XJWLyET
 gtBw5kOm5dlzCqfM1dGW19Ej1NxYDZK1Rwdc70nXdWBtLckqoE52OOkrj
 xqXrxpNBLFvXIjf41SjM3Pv+v9eIDWxCIHvUCu8Gf7sJNrtTAcq7r9fXo A==;
X-CSE-ConnectionGUID: +rwxJU+BRJqNlq7dN/EKVQ==
X-CSE-MsgGUID: CguyLbZVR+aqCc71kRoohw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30088439"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30088439"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:22 -0700
X-CSE-ConnectionGUID: fagZF7GTQAGgxtbjEJtPKA==
X-CSE-MsgGUID: KgyQaNyRSUGFWm85cZDriw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,244,1725346800"; d="scan'208";a="82510518"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 21:08:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 4/7] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
Date: Wed, 30 Oct 2024 09:40:33 +0530
Message-ID: <20241030041036.1238006-5-ankit.k.nautiyal@intel.com>
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

Introduce the register bits to enable the 3rd DSC engine VDSC2.
Add support to read/write these bits.

v2: Only introduce bits that are used and update the subject and commit
message. (Suraj)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 10 +++++++++-
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  2 ++
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index bd6480e373f7..053f1d126c7a 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -775,6 +775,12 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 		dss_ctl2_val |= VDSC1_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
+
+	if (vdsc_instances_per_pipe > 2) {
+		dss_ctl2_val |= VDSC2_ENABLE;
+		dss_ctl2_val |= SMALL_JOINER_CONFIG_3_ENGINES;
+	}
+
 	if (crtc_state->joiner_pipes) {
 		if (intel_crtc_ultrajoiner_enable_needed(crtc_state))
 			dss_ctl1_val |= ULTRA_JOINER_ENABLE;
@@ -976,7 +982,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
-	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & VDSC1_ENABLE)
+	if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
+		crtc_state->dsc.num_streams = 3;
+	else if (dss_ctl1 & JOINER_ENABLE && dss_ctl2 & VDSC1_ENABLE)
 		crtc_state->dsc.num_streams = 2;
 	else
 		crtc_state->dsc.num_streams = 1;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
index d7a72b95ee7e..474a7f9f3881 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
@@ -22,6 +22,8 @@
 
 #define DSS_CTL2				_MMIO(0x67404)
 #define  VDSC0_ENABLE				REG_BIT(31)
+#define  VDSC2_ENABLE				REG_BIT(30)
+#define  SMALL_JOINER_CONFIG_3_ENGINES		REG_BIT(23)
 #define  VDSC1_ENABLE				REG_BIT(15)
 #define  RIGHT_DL_BUF_TARGET_DEPTH_MASK		(0xfff << 0)
 #define  RIGHT_DL_BUF_TARGET_DEPTH(pixels)	((pixels) << 0)
-- 
2.45.2

