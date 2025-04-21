Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6028BA953BD
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Apr 2025 17:51:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB1D810E484;
	Mon, 21 Apr 2025 15:51:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HGBYTVU+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D493410E481;
 Mon, 21 Apr 2025 15:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745250677; x=1776786677;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WN3itfkeV7NhX5febiwPzzTOzcjfElDwvkgGc9l1MXk=;
 b=HGBYTVU+UuJC0j7qRx8L3daRqCqeOPuEweFAK0yGQOMMPeYKlek74+3u
 nTRpXypoX9DleZ9SwRPY8L7Kn0wlKhzBeA8SRKlMA+M+OzG32rbSD/cWZ
 JBWBs21MWPh2mWUrPrUE4M+/MSDL7R1u/gXw+2m3+ePiGD51rMdA7wBop
 HzBi+ptu4UrNoSU9VjaaxEXpaL1MDJr1UwDeOM1Qrjxh7X/hGPce3Jdif
 cKquTyivlZi2DJJh8TiTzguQmTujaS0aOcbeZMWVJmLE2Ov22vWM3WaLd
 os3MV8u4OFdf4KMMeasFt/mZAewJrAMxsQxqbJJdN9SJI3xA/yi9bjrYW g==;
X-CSE-ConnectionGUID: xniDrIN2RL6R1T7aa013hA==
X-CSE-MsgGUID: eXAYGz01R3GMcEOqL2j5kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="57434073"
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="57434073"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 08:51:16 -0700
X-CSE-ConnectionGUID: AMJyDZcPQ5KaDx5yqYyaDQ==
X-CSE-MsgGUID: aSBZXrT7TZWsVBcR75n/Aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,228,1739865600"; d="scan'208";a="162725606"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa002.jf.intel.com with ESMTP; 21 Apr 2025 08:51:15 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH v2 06/13] drm/i915/vrr: Add state dump for dc balance params
Date: Mon, 21 Apr 2025 21:18:53 +0530
Message-ID: <20250421154900.2095202-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add state dump for dc balance params to track dc balance
crtc state config.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 0c7f91046996..9baafc63d9ea 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -304,7 +304,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
 		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
 		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
-
+	drm_printf(&p, "vrr: dc balance: %s, vmin: %d vmax: %d guardband: %d, slope: %d max increase: %d max decrease: %d Vblank target: %d\n",
+		   str_yes_no(pipe_config->vrr.dc_balance.enable),
+		   pipe_config->vrr.dc_balance.vmin, pipe_config->vrr.dc_balance.vmax,
+		   pipe_config->vrr.dc_balance.guardband,
+		   pipe_config->vrr.dc_balance.slope,
+		   pipe_config->vrr.dc_balance.max_increase,
+		   pipe_config->vrr.dc_balance.max_decrease,
+		   pipe_config->vrr.dc_balance.vblank_target);
 	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.mode));
 	drm_printf(&p, "adjusted mode: " DRM_MODE_FMT "\n",
-- 
2.48.1

