Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF67C9B1DDF
	for <lists+intel-gfx@lfdr.de>; Sun, 27 Oct 2024 14:43:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B3B110E2E8;
	Sun, 27 Oct 2024 13:43:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLoMPlLj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68EFE10E2E9;
 Sun, 27 Oct 2024 13:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730036626; x=1761572626;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XiMVt2TJ9ag2br8mb0SB09Ri4dBUvbuqS79owQ49kNI=;
 b=dLoMPlLj9DAgf8eiAJ0cTlhLfFn3obQLrfUZYPfS3/FuuINX2A/M6eut
 sHZGOFw73wVlXv/paaZ1mcmpdgDejSydcqjJHHrnWRmNuGgiQo3w5+0R3
 w2TCb16RdRUCd9V60KRqUHUEfLAPwb6ljFi4NZKso2idjL270jBy1KmYD
 +cM6tG+cmM1SMsw6G/4OVhqXhsflZH4XgVT+ojTMWDrioDVkkuGRKUOYz
 K39o4e2w/hRkRFWF+qeUtOR4T/E6vUP+Xkls3nc3C1v9NuwNfh0bYnV5U
 hVB3M5NxmLyHyALaVHs+ZkoEiclDT/CD7HGwNRoiW1nx8v1E6HuSGcxNJ A==;
X-CSE-ConnectionGUID: s6Y1azjkRUmCjoaHEo0EJA==
X-CSE-MsgGUID: NYP0H5p6QOKbiTu5+0McKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29780952"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29780952"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:45 -0700
X-CSE-ConnectionGUID: jUFZoH1ATH64DYkQlJXYgA==
X-CSE-MsgGUID: n5gXJ3y/RjKCBTxLRjrZww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,237,1725346800"; d="scan'208";a="118841463"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2024 06:43:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	suraj.kandpal@intel.com
Subject: [PATCH 4/7] drm/i915/vdsc: Introduce 3rd VDSC engine VDSC2
Date: Sun, 27 Oct 2024 19:15:54 +0530
Message-ID: <20241027134557.862036-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
References: <20241027134557.862036-1-ankit.k.nautiyal@intel.com>
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
index 159f83edd5b0..29b1aa7f4f94 100644
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
@@ -977,7 +983,9 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 		goto out;
 
 	if (dss_ctl1 & JOINER_ENABLE) {
-		if (dss_ctl2 & VDSC1_ENABLE)
+		if (dss_ctl2 & (VDSC2_ENABLE | SMALL_JOINER_CONFIG_3_ENGINES))
+			crtc_state->dsc.num_streams = 3;
+		else if (dss_ctl2 & VDSC1_ENABLE)
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

