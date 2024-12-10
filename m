Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 265C09EBB91
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07AFD10E5D5;
	Tue, 10 Dec 2024 21:10:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNUEpIb3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B2F810E5E1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865029; x=1765401029;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KlltM/VsvKRgcEiEf+tGNR7Yd0LfvqJCEHqRjFNWAUs=;
 b=KNUEpIb316zOOQUzmYwKmDyckgYLONRXq1R2fgao2dLAFWMvxqjxLHOm
 nKXS7/EW493gL0PCdAhnnLdGg0RBS1ImjygVmaWG+kTcZdqNQTXh9wwfr
 zle32SemwqyuQbTgWmndGPOjlfF7q4VBRl78dlUWTMiZrN7/hsEovCkl8
 GvjEZW2NiIefegA3DAW8XIYHonoYqTfyWl8ZBd7rip/rGcyRtsksHjTKg
 tzxEbq5pbrhUDhbGdKwak5cueWBK2LfBhCgPtrEhT+f31KgoBUaJB7wIr
 05pADBWnIglUCnu+UY7NgG5Tq/6qz6EZykDwrMUlzCAyvxcdWLKM+SXpW Q==;
X-CSE-ConnectionGUID: Z4wzf906RLufDr5Tf3GrAA==
X-CSE-MsgGUID: QNNM9AHWTced44bZhTqphQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620186"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620186"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:29 -0800
X-CSE-ConnectionGUID: v1YzQGJvRfKZjKhoUxd+6g==
X-CSE-MsgGUID: sjayJ8ACSwSAkzspM/8jMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735090"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 07/18] drm/i915/vrr: Improve VRR state dump
Date: Tue, 10 Dec 2024 23:09:56 +0200
Message-ID: <20241210211007.5976-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Dump the calculated vmin/vmax vtotal values in addition to the
raw vmin/vmax/flipline values. Makes it much easier to see what
kind of scanline values we should be expecting from the hardware.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_crtc_state_dump.c    | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 27ce34df8482..97e3cdccda01 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -288,13 +288,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, flipline: %d, pipeline full: %d, guardband: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
-		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
-		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
-		   pipe_config->vrr.flipline,
-		   intel_vrr_vmin_vblank_start(pipe_config),
-		   intel_vrr_vmax_vblank_start(pipe_config));
+		   pipe_config->vrr.vmin, pipe_config->vrr.vmax, pipe_config->vrr.flipline,
+		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband);
+
+	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
+		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
+		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
 
 	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.mode));
-- 
2.45.2

