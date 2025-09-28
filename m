Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80076BA69D3
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 09:19:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C5210E385;
	Sun, 28 Sep 2025 07:19:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLnPXin0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9574210E384;
 Sun, 28 Sep 2025 07:19:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759043970; x=1790579970;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/yYx6kZ4XkBvG58i9i9oXDgDSXSMw9Od3KbUqPD2IuQ=;
 b=FLnPXin0ugmrgICZs3P9QefTAS2W4Jee/9jhDEcAC+DbVsUh+Fb9VV+J
 MS8oXJmUNufFG9yaDxE0vvxkTlAGTGqQR65qh0fatnHjagADwRQ5Xo1vk
 2WqJuE47tAlTAFEyxCXyn+Rlp8NaL5fqIdHaTyJ4QtziXomajMa7M8lQE
 IVQCMcLK+/rP5kbL2ybcxuI/bhMsEdDDon319kmftzeFFZORnCRcCFus9
 t20M5Se4lCJ1oduXawLpIDkI3Q2i1oz2pimBOKLmDV7sWxfmYPfgiC1JZ
 /dOHLxA6FM9sMpYbK9mbbGIApMv0ihvf+lcNHPZipcCCN/nPtj+ZTJYxe Q==;
X-CSE-ConnectionGUID: nuDJU1PqTzGmjBzTvpJnYA==
X-CSE-MsgGUID: GCvZanR9R1KtiBSZ8ph7/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="60528596"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="60528596"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:30 -0700
X-CSE-ConnectionGUID: GtS38shnRmymwoXvAVcnGA==
X-CSE-MsgGUID: LGeQYs4fTVidVmPITRnRDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="215094071"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/15] drm/i915/display:
 s/allow_vblank_delay_fastset/allow_vblank_delay_fastset_lrr
Date: Sun, 28 Sep 2025 12:35:39 +0530
Message-ID: <20250928070541.3892890-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
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

The function allow_vblank_delay_fastset specifically checks for conditions
under which vblank delay is allowed via LRR codepaths. To make its purpose
clearer and prepare for future extensions, rename it to
allow_vblank_delay_fastset_lrr.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ec415b939770..4135f9be53fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5097,7 +5097,7 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
 	intel_cx0pll_dump_hw_state(display, b);
 }
 
-static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
+static bool allow_vblank_delay_fastset_lrr(const struct intel_crtc_state *old_crtc_state)
 {
 	struct intel_display *display = to_intel_display(old_crtc_state);
 
@@ -5242,7 +5242,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
 	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
 	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
-	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
+	if (!fastset || !allow_vblank_delay_fastset_lrr(current_config)) \
 		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
 	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
 	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
@@ -5851,7 +5851,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 		drm_dbg_kms(display->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
 			    crtc->base.base.id, crtc->base.name);
 	} else {
-		if (allow_vblank_delay_fastset(old_crtc_state))
+		if (allow_vblank_delay_fastset_lrr(old_crtc_state))
 			new_crtc_state->update_lrr = true;
 		new_crtc_state->uapi.mode_changed = false;
 	}
-- 
2.45.2

