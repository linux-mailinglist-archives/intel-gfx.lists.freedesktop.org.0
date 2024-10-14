Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B566899C289
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 10:07:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5350E10E3BA;
	Mon, 14 Oct 2024 08:07:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gbZHD9Bn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0A7D10E3C0;
 Mon, 14 Oct 2024 08:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728893275; x=1760429275;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uUCuUDv7PwNXW/CbOIhPkZSRJNu3mzSj3haiQJHEoJk=;
 b=gbZHD9BnojZjUadVNYybU7YtfR+cn8Ba0XrhX0qGHGBiCLRvHJFdtBGz
 kaWVPnsMK6YHDovtcLLNuo48OiCT5JkZPqpVH5kLjOXVjsZozUvGqR/cL
 iH71h8BzymU9RnxBo/vH8HGUzBLG8wf1zvKf3Bk6etH25fi/7qwx5EZlH
 CrpuOg3WjJMg60l3FlIvi+VW0vE5r+w3pdTC3U0USwaQ1cqkBELRMICdY
 jZKxSFQyMWI7zUqU/a6zT6F8lw7haMweY3h6th+kfYtWu7x2SS/UF6wZm
 OLB830YG8QTBnlOy3ZZc3QBojsU5Jd5DPB4MkQVWisS8Czr4hHBaEPIbn w==;
X-CSE-ConnectionGUID: u5QcQLKzRiKddZC4bk2Ncg==
X-CSE-MsgGUID: DkoPLyX4Q0qoOKKsiULOxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="38784418"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="38784418"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:55 -0700
X-CSE-ConnectionGUID: /cr6lRa+QcW67FUI+tySXA==
X-CSE-MsgGUID: SLwhniFUS9qToPlw5bu7fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,202,1725346800"; d="scan'208";a="100834873"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 01:07:53 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/9] drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC engine
Date: Mon, 14 Oct 2024 13:39:53 +0530
Message-ID: <20241014081000.2844245-3-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
References: <20241014081000.2844245-1-ankit.k.nautiyal@intel.com>
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

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 ++++----
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 14f3dd241e93..33cd3d7e9b94 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -777,9 +777,9 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
 
 	intel_dsc_pps_configure(crtc_state);
 
-	dss_ctl2_val |= LEFT_BRANCH_VDSC_ENABLE;
+	dss_ctl2_val |= VDSC0_ENABLE;
 	if (vdsc_instances_per_pipe > 1) {
-		dss_ctl2_val |= RIGHT_BRANCH_VDSC_ENABLE;
+		dss_ctl2_val |= VDSC1_ENABLE;
 		dss_ctl1_val |= JOINER_ENABLE;
 	}
 	if (crtc_state->joiner_pipes) {
@@ -979,12 +979,12 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder));
 	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder));
 
-	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
+	crtc_state->dsc.compression_enable = dss_ctl2 & VDSC0_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
 		goto out;
 
 	if ((dss_ctl1 & JOINER_ENABLE) &&
-	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
+	    (dss_ctl2 & VDSC1_ENABLE))
 		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_2_STREAMS;
 	else
 		crtc_state->dsc.dsc_split = INTEL_DSC_SPLIT_DISABLED;
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

