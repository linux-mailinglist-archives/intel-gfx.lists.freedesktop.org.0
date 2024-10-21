Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F1C79A6877
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 14:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 972BE10E4C6;
	Mon, 21 Oct 2024 12:32:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y1RZar5y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA14810E4C9;
 Mon, 21 Oct 2024 12:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729513924; x=1761049924;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=45Jo4JD1pRmWm0ln4iUp/JE7O+O23vcHkHp8S8vZono=;
 b=Y1RZar5yOCa3wDH4vkNn0kJKpDkzE1vtX5xO9BD9dnN6pg0ygeEUC4t0
 GPArTYygMQbB2aoTJ2CFeP0kbZjUzANS2EPThF+v/fzfeAxH4RJQjdy2Q
 DLSU/OdgF8f326eIqsjfNYjjHsDVZGIPFvoDHiaaeuYczxEFqEM3bBG0P
 p397xYcXJBIuFimmSnlG23Q6Gv86hh3ush/Pz0V8O+Jo/nYyTCqAD7BTx
 F/wqh86sEeMh2wty2kG425EvARHKnlSGZE+7zeBl9776m+Eog0JUBH/I7
 pL2tX82LRUibCT9ycWw40UnNDlkRBFhWJEz7C2/p5b6YsGc1Wrya+F7J8 g==;
X-CSE-ConnectionGUID: 30tUjesYR0q9kKXL72xNyw==
X-CSE-MsgGUID: 0LnDGRJTTTecABW/qXuDZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46459627"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46459627"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:04 -0700
X-CSE-ConnectionGUID: MruH7uBmQTiavXCdCQ+cTA==
X-CSE-MsgGUID: 645pO+KzRY2K0RNypEU1PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="79866050"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 05:32:03 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 03/16] drm/i915/vdsc: Use VDSC0/VDSC1 for LEFT/RIGHT VDSC
 engine
Date: Mon, 21 Oct 2024 18:04:01 +0530
Message-ID: <20241021123414.3993899-4-ankit.k.nautiyal@intel.com>
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

Drop use of LEFT/RIGHT VDSC engine and use VDSC0/VDSC1 instead.
While at it, use REG_BIT macro for the bits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vdsc.c      | 8 ++++----
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 3bce13c21756..198446738662 100644
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
 		crtc_state->dsc.dsc_split = 2;
 	else
 		crtc_state->dsc.dsc_split = 0;
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

