Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5B19EBB90
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 22:10:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC83F10E3D0;
	Tue, 10 Dec 2024 21:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LPQpgQmP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACB2D10E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 21:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733865027; x=1765401027;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Hu4YYAAZWCcB0q+MTP7SuEnGgHY5UDo7yaEmJN5BDVg=;
 b=LPQpgQmPsEMZoCILgCtsNMoYmLr5SE3VykyT0S8LHVbwtwTGhxmohBL/
 nWylqvT0Mtqno/HDc3LPn8UMWaWbK7FpGopjZaWYnYlFBIfqYdfgD04i0
 I0zazXjfh8RWM2frJXDb3EwWRADFj4MTTZ15k0GEVvmG9e4BnkzBpmOJE
 V0mQhIRHP1p8GNfyClCW1wXI31jlPpQgr9UEDnF7v0y6w8ENNnq6O07ut
 sBz84g4De+L8IwGcf+A5VoUum8oExjGm9Z6FBSV1fPeAzlW6xRpOvcWHC
 VdNP0gZMvoNso5mIa+ETeBYGmtlSq3pKaObQeBIkkmlvSifVX9Ys2p86W g==;
X-CSE-ConnectionGUID: gdL1gqkCT221l5qaV6/07A==
X-CSE-MsgGUID: iLquHyrNTBO21azM/kSSzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="59620181"
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="59620181"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 13:10:27 -0800
X-CSE-ConnectionGUID: XI7glWTKSXyhcRFCobFS4A==
X-CSE-MsgGUID: H+EWS1ABTkKJFX2hFeVksQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="95735079"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Dec 2024 13:10:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Dec 2024 23:10:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/18] drm/i915: Include the vblank delay in the state dump
Date: Tue, 10 Dec 2024 23:09:55 +0200
Message-ID: <20241210211007.5976-7-ville.syrjala@linux.intel.com>
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

While one can look at the crtc timings to determine the actual
vblank dealy, it seems nicer to provide a more human readable
dump of it to ease our lives.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 9d930ff862cf..27ce34df8482 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -283,7 +283,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		drm_print_hex_dump(&p, "ELD: ", pipe_config->eld,
 				   drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "framestart delay: %d, MSA timing delay: %d\n",
+	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
+		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
+		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
 		   pipe_config->framestart_delay, pipe_config->msa_timing_delay);
 
 	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
-- 
2.45.2

