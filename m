Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A1E9C6E34
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 12:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3269410E6D7;
	Wed, 13 Nov 2024 11:53:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MENyIsz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A35710E6D8;
 Wed, 13 Nov 2024 11:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731498780; x=1763034780;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=O7D8Tw4sUe9Md62HtnkXWozpxfymFiYSDTueoBsrDeI=;
 b=MENyIsz7/YwYrO8hwNSGJziSaRopVjQ2ash6N82nVC+I4cvjK+sYAj4y
 ccw/hv1TxADjyHxTywsv2DrLGUfZonNhqMoUKac9+zsOrOyK4HYC85YJL
 YRBfP9A9NsND1xUOoggKBctrMdooW1Yk5Fzl4q0ud+BoUDUQb7OmtS7KT
 FbiOrZHSXcWlZZbzbyEGZD8NH4/9Ts3OWKi1N1fWICbz+5tOfnjlliWiF
 m5/ygbZbYZ+1KBuJswsmKoz5vBp61JiK/UakykOUCMH1nhRtv7NCe0nAL
 JHIOpQvI9hzDPWynBgey9k0qzyHT/Sf8ppJlk6qh8A3OGvd8N5I6orJHA A==;
X-CSE-ConnectionGUID: ajrwBXrdSTKT0BYUc9DiUA==
X-CSE-MsgGUID: nR7jAk7QQ4SBp1xWZe7pcQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11254"; a="35313740"
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="35313740"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 03:53:00 -0800
X-CSE-ConnectionGUID: 9z0ftaFRQqyHImfXBu3UMQ==
X-CSE-MsgGUID: SQBm9G3ISXeixOtR8G7FYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,150,1728975600"; d="scan'208";a="87840435"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 03:52:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH] drm/i915/display/xe3lpd: Avoid setting YUV420_MODE in
 PIPE_MISC
Date: Wed, 13 Nov 2024 17:25:31 +0530
Message-ID: <20241113115531.3394962-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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

For Xe3_LPD the PIPE_MISC YUV420 Enable (bit 27), already implies enabling
full blend YUV420 mode and YUV420 Mode (bit 26) is removed.
Therefore, avoid setting YUV420 Mode for Xe3_LPD+ while programming
PIPE_MISC for YCbCr420 output format.

Bspec: 69749
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e790a2de5b3d..9db255bb1230 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3137,9 +3137,14 @@ bdw_get_pipe_misc_output_format(struct intel_crtc *crtc)
 	tmp = intel_de_read(dev_priv, PIPE_MISC(crtc->pipe));
 
 	if (tmp & PIPE_MISC_YUV420_ENABLE) {
-		/* We support 4:2:0 in full blend mode only */
-		drm_WARN_ON(&dev_priv->drm,
-			    (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) == 0);
+		/*
+		 * We support 4:2:0 in full blend mode only.
+		 * For xe3_lpd+ this is implied in YUV420 Enable bit.
+		 * Ensure the same for prior platforms in YUV420 Mode bit.
+		 */
+		if (DISPLAY_VER(dev_priv) < 30)
+			drm_WARN_ON(&dev_priv->drm,
+				    (tmp & PIPE_MISC_YUV420_MODE_FULL_BLEND) == 0);
 
 		return INTEL_OUTPUT_FORMAT_YCBCR420;
 	} else if (tmp & PIPE_MISC_OUTPUT_COLORSPACE_YUV) {
@@ -3388,8 +3393,8 @@ static void bdw_set_pipe_misc(struct intel_dsb *dsb,
 		val |= PIPE_MISC_OUTPUT_COLORSPACE_YUV;
 
 	if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
-		val |= PIPE_MISC_YUV420_ENABLE |
-			PIPE_MISC_YUV420_MODE_FULL_BLEND;
+		val |= DISPLAY_VER(display) >= 30 ? PIPE_MISC_YUV420_ENABLE :
+			PIPE_MISC_YUV420_ENABLE | PIPE_MISC_YUV420_MODE_FULL_BLEND;
 
 	if (DISPLAY_VER(dev_priv) >= 11 && is_hdr_mode(crtc_state))
 		val |= PIPE_MISC_HDR_MODE_PRECISION;
-- 
2.45.2

