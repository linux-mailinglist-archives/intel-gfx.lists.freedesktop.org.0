Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E80B4C626F2
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Nov 2025 06:44:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6862510E18E;
	Mon, 17 Nov 2025 05:44:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LyLq8OjY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D65610E2C7;
 Mon, 17 Nov 2025 05:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763358282; x=1794894282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OZxOjNZrVIME2cSsv1rDFuLg1PCVRyr0uKMY1l2uqEE=;
 b=LyLq8OjYaNfhUKw+svBaV7XGiTE/ls2NWzgfczSCeZU89eV+VD4nx23K
 h84hl80Ryt/dd7N8O0VtvdaXRpml3YeYa4SVzw43oM56ipyHcvBWK4naV
 2Rag0nfhCoephgIOoxz3hAMfr+4isUFrsixtk6PGXx2K6QBR0Y0RDPMpb
 v2P173twaNqwpnqE68b1GLkY5k9Cqb50jZD+DGmHV4kvKQs9UDT9Hf8QY
 VWEtl6EyG+FYFrqoJAVF2cXK5+WQpAZ2GOJHfL8gBEaPvFaovIasRDbb+
 uNTQhygiiGX+PvMp83noP+GAfB2OcZyMRWbQjdXeTgj0xiido6YYFxlhB Q==;
X-CSE-ConnectionGUID: aWDjr9DgSie54KVgvVzugQ==
X-CSE-MsgGUID: qzdvIKNvSQeCgGe+yhdVIA==
X-IronPort-AV: E=McAfee;i="6800,10657,11615"; a="65446022"
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="65446022"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2025 21:44:42 -0800
X-CSE-ConnectionGUID: 4ucZ0VY2SHO4yl5rxwBaDA==
X-CSE-MsgGUID: hVkWsBojTtqdVF9ADZtB3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,311,1754982000"; d="scan'208";a="190016329"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 16 Nov 2025 21:44:40 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH v8 06/18] drm/i915/vrr: Add state dump for DC Balance params
Date: Mon, 17 Nov 2025 11:14:30 +0530
Message-ID: <20251117054442.4047665-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add state dump for dc balance params to track DC Balance
crtc state config.

-v1:
-- nitpick: s/Vblank target/vblank target. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index c2a6217c2262..234843b8f83a 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -303,6 +303,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
 		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
 		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
+	drm_printf(&p, "vrr: dc balance: %s, vmin: %d vmax: %d guardband: %d, slope: %d max increase: %d max decrease: %d vblank target: %d\n",
+		   str_yes_no(pipe_config->vrr.dc_balance.enable),
+		   pipe_config->vrr.dc_balance.vmin, pipe_config->vrr.dc_balance.vmax,
+		   pipe_config->vrr.dc_balance.guardband,
+		   pipe_config->vrr.dc_balance.slope,
+		   pipe_config->vrr.dc_balance.max_increase,
+		   pipe_config->vrr.dc_balance.max_decrease,
+		   pipe_config->vrr.dc_balance.vblank_target);
 
 	drm_printf(&p, "requested mode: " DRM_MODE_FMT "\n",
 		   DRM_MODE_ARG(&pipe_config->hw.mode));
-- 
2.48.1

