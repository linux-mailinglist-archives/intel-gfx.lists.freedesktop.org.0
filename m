Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CF59DF903
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2024 03:43:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6893410E204;
	Mon,  2 Dec 2024 02:43:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="khu26crZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7056810E204;
 Mon,  2 Dec 2024 02:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733107411; x=1764643411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=K0uDzE0j0lffgNsjDsF3u5Bv3hPcPjqbURUnsPDz6es=;
 b=khu26crZNX35Ropw+OrzinXnj71hiF6B2sUHdEcfiVW4S/lAfp45bPnD
 nhKfu/x/O+WcxPu3jci3rArsXxFfOLQPIAtVspbXcGpTozzPwEGxsDDOi
 5nEmJ2kI0Z0jbzfZu3SjqaUpxOonPhfLwLRwX83glpwDZBQdnowrDRlzH
 z20JS+MOvTkamrALX0XXizNkBhRjGLNgI1bOZtV4sMFj6zhMmL2EGWkZM
 wzYuAZJICLPy56TCg6szImeOB6MD7jduWARMmgl3LiByTWQu0l0Y7OvVx
 bAEyUFYft7dRL4ulzP8kxGvw5jhhWslMFUMdArAYkHS5tjXTGOt1p7mdf w==;
X-CSE-ConnectionGUID: 20K11LJbTWSI14Al5DP4GA==
X-CSE-MsgGUID: C0U3eYaHTlejVeXSpm7/IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11273"; a="44634841"
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="44634841"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2024 18:43:31 -0800
X-CSE-ConnectionGUID: 1WF7WUPUTl+z9V+pwcFKWg==
X-CSE-MsgGUID: alIwvgKnQT6PsTMaZ4PoLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,201,1728975600"; d="scan'208";a="92878179"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa010.jf.intel.com with ESMTP; 01 Dec 2024 18:43:29 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Subject: [PATCH v5 1/6] drm/i915/vrr: Add crtc_state dump for vrr.vsync params
Date: Mon,  2 Dec 2024 08:15:35 +0530
Message-ID: <20241202024540.2578856-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add crtc_state dump for vrr.vsync_{start/end} params to track the
state correctly.

--v2:
- remove vrr_ pretext and use space instead of underscore (Jani).

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 705ec5ad385c..221be4f44104 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -296,11 +296,13 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vsync start: %d, vsync end: %d, vmin vblank: %d, vmax vblank: %d\n",
 		   str_yes_no(pipe_config->vrr.enable),
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
+		   pipe_config->vrr.vsync_start,
+		   pipe_config->vrr.vsync_end,
 		   intel_vrr_vmin_vblank_start(pipe_config),
 		   intel_vrr_vmax_vblank_start(pipe_config));
 
-- 
2.46.0

