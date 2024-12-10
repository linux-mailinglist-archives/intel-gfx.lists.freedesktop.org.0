Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 172F69EBB8F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63BE910E5D1;
	Tue, 10 Dec 2024 21:10:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jt01yDxc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04ABA10E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865024; x=1765401024;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0TX5dvVsfjkpHsantJlU9LYpWGtt2CDsngm1tv1lCI0=;
 b=jt01yDxcLnOTZ18BVsBDQ+U8eLsTQuCXbellHyNB3tWRaJbIF+4xBW7F
 rpykQuXyK3JdIPTK91nTrxjbCazDVklGnBewV+fxap2V065JFhu1s1qxk
 JTdyI6leYRRHN4OB/QervK9ydQdhdwXXs2IVCGaJtNH7ooVSzKUwLb9jj
 1au20Eb4aVnbdU2zzZ81Zew+BxSe1mX6hXwYnA2nlAJQBf0ExypNqgCt3
 4e3Sy/LxY30a4tqU2HCkW0fR7+wXU8lvzGZpGd6+Oe/yvadlqsLGE5RVZ
 GfkDwgoyf2j4+9WQOBvyDcTEyb5Ljk6bOJ9KUTsZW/ivPGJjjLSDOMzFS Q==;
X-CSE-ConnectionGUID: D6wehB3nQDGnDBI18OfsIQ==
X-CSE-MsgGUID: +g3pp1kMTVu40yJkQ8uEyg==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620175"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620175"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:24 -0800
X-CSE-ConnectionGUID: UiydJaGQQ8inSwXzgf4/hQ==
X-CSE-MsgGUID: zuisg0zuRomqOY3eetslBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735068"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/18] drm/i915: Move framestart/etc. state dump to a better
 spot
Date: Tue, 10 Dec 2024 23:09:54 +0200
Message-ID: <20241210211007.5976-6-ville.syrjala@linux.intel.com>
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

Try to dump all the important stuff relating to the display timings
in one spot.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 1faef60be472..9d930ff862cf 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -250,9 +250,6 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 			   str_enabled_disabled(pipe_config->enable_psr2_sel_fetch));
 	}
 
-	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
-		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
-
 	drm_printf(&p, "audio: %i, infoframes: %i, infoframes enabled: 0x%x\n",
 		   pipe_config->has_audio, pipe_config->has_infoframe,
 		   pipe_config->infoframes.enable);
@@ -286,6 +283,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_print_hex_dump(&p, "ELD: ", pipe_config->eld,
 				   drm_eld_size(pipe_config->eld));
 
+	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
+		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
+
 	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
-- 
2.45.2

