Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA00A8AF74
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Apr 2025 07:03:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEA610E1FC;
	Wed, 16 Apr 2025 04:53:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VC/5AavK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D94D410E1FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Apr 2025 04:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744779197; x=1776315197;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hlUm+nhCNAuSYOK2BNFMAAC6DHrgwj4pzk9RAbRuO58=;
 b=VC/5AavKsXDXOeNNn2uU7IMngws/ctFHTqVEyWQC0UBQDTzAsy3na/RN
 JUnABfRCG37wIgfzak6C5kb/y/gu+ZBfAQ1XEqVuh5eEltBQ2yBNBiLmz
 2Qoy/1IE0+oRXKo0KUlcZTXSNyhAhbda0kKWX0we/tt6NPL6cKILRiiLP
 ZMVrymnmN/kjutWSAnNIga/T62ix5N037ChQOmQKV/yYg+MPvQv3CjNAn
 ayeRNlqiy44ipYq9w/AS8wqNPQz46VLWD3BDGQBOWlC8I2eNROQOgEXT/
 7OQuS3iSu5JekhWsfOKMU2zeeIeBohBQEIlShGaodTDu1Tsd4kOwrswxX Q==;
X-CSE-ConnectionGUID: ubBQD178Tbadga7EJDVWBA==
X-CSE-MsgGUID: 6yeMXd9YRBiABPkA2rp6Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="57304240"
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="57304240"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 21:53:17 -0700
X-CSE-ConnectionGUID: fFJ5yvJpQb+IlPTmmb3BEw==
X-CSE-MsgGUID: BP9au95CSRW00lGI5iZQkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,215,1739865600"; d="scan'208";a="153544984"
Received: from shekharc-mobl2.iind.intel.com ([10.190.239.16])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 21:53:15 -0700
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: shekhar.chauhan@intel.com,
	gustavo.sousa@intel.com
Subject: [PATCH] drm/i915/display: Avoid touching interlace mode registers
Date: Wed, 16 Apr 2025 10:23:07 +0530
Message-Id: <20250416045307.814825-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
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

Commit f71c9b7bc35f("drm/i915/display: Prune Interlace modes for Display >=12")
defeatures interlace modes starting with display version 12. However,
there are some paths in the driver that still touch interlace-related
registers/fields for display version >= 12. So, avoid touching those
registers/fields.

Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 3afb85fe8536..73b1fdf0b0ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2686,7 +2686,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		crtc_vblank_start = 1;
 	}
 
-	if (DISPLAY_VER(display) >= 4)
+	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 12)
 		intel_de_write(display,
 			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
 			       vsyncshift);
@@ -2790,7 +2790,7 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(display) == 2)
+	if (DISPLAY_VER(display) == 2 || DISPLAY_VER(display) >= 12)
 		return false;
 
 	if (DISPLAY_VER(display) >= 9 ||
@@ -3164,10 +3164,12 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	if (display->platform.haswell && crtc_state->dither)
 		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
 
-	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-		val |= TRANSCONF_INTERLACE_IF_ID_ILK;
-	else
-		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
+	if (DISPLAY_VER(display) < 12) {
+		if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+			val |= TRANSCONF_INTERLACE_IF_ID_ILK;
+		else
+			val |= TRANSCONF_INTERLACE_PF_PD_ILK;
+	}
 
 	if (display->platform.haswell &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)
-- 
2.34.1

