Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E361BDC4F1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA75510E702;
	Wed, 15 Oct 2025 03:17:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d64Xens0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D512310E702;
 Wed, 15 Oct 2025 03:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498274; x=1792034274;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=Hmv3xncpvyuYC1+nN+34eLw7n9m75M+A5DleYMJWJyM=;
 b=d64Xens0m0RomF+mc8u1FTHxaGNDD+rDsZU/WPDZK8sWpuXqrOMh7Ibx
 Rd0hKh+xxFeDKZTNOsd4SUVEZPyqfoeiVZXFcq5L06Xv8ibUxcunn7mdK
 f0PAN1Db9mdKTiQ7Eu9ouV1WeAQqULv7OGnnmtf3cWVTJfWsre1OYSLYl
 gTwZj45Oao40SJwjO+50x+Be8E3lo7fStMEOQXzCtieebOaMNpbPXaeBQ
 9HCDpvFZCQ8ClC9lYtirlzXyncSOCmeZqIX1uPNaoUn/if7B9ReuYTaiF
 SmKveLb5eIpyXXzwkvA5gFiTjOhBpy148EVa3C01q8iAhzAzmkERyB6I7 g==;
X-CSE-ConnectionGUID: XA8L3TFXQ1qhDbaS5h/euA==
X-CSE-MsgGUID: 7qZpMCvyQmGfa+sEUtqfaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62577240"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62577240"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:54 -0700
X-CSE-ConnectionGUID: xNwJRPLxTcydGZsEJBB7pQ==
X-CSE-MsgGUID: 99eBbNizQHeVzAfolj9/KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186302880"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:17:50 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:18 -0300
Subject: [PATCH 18/32] drm/i915/xe3p_lpd: Drop support for interlace mode
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-18-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Interlace mode is officially removed from HW from Xe3p_LPD.  The
register TRANS_VSYNCSHIFT and the bits in TRANS_CONF are now removed, so
make sure we do not set/get these anymore.

Bspec: 69961, 70000
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d5b2612d4ec2..6ac718192e1c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2631,7 +2631,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		crtc_vblank_start = 1;
 	}
 
-	if (DISPLAY_VER(display) >= 4)
+	if (DISPLAY_VER(display) >= 4 && DISPLAY_VER(display) < 35)
 		intel_de_write(display,
 			       TRANS_VSYNCSHIFT(display, cpu_transcoder),
 			       vsyncshift);
@@ -2769,7 +2769,7 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
-	if (DISPLAY_VER(display) == 2)
+	if (DISPLAY_VER(display) == 2 || DISPLAY_VER(display) >= 35)
 		return false;
 
 	if (DISPLAY_VER(display) >= 9 ||
@@ -3160,10 +3160,12 @@ static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
 	if (display->platform.haswell && crtc_state->dither)
 		val |= TRANSCONF_DITHER_EN | TRANSCONF_DITHER_TYPE_SP;
 
-	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-		val |= TRANSCONF_INTERLACE_IF_ID_ILK;
-	else
-		val |= TRANSCONF_INTERLACE_PF_PD_ILK;
+	if (DISPLAY_VER(display) < 35) {
+		if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+			val |= TRANSCONF_INTERLACE_IF_ID_ILK;
+		else
+			val |= TRANSCONF_INTERLACE_PF_PD_ILK;
+	}
 
 	if (display->platform.haswell &&
 	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB)

-- 
2.51.0

