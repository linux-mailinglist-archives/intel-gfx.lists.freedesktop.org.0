Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD96FAB4AD9
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 07:19:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7453210E51C;
	Tue, 13 May 2025 05:19:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AJOcmGPR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CAD110E51C;
 Tue, 13 May 2025 05:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747113543; x=1778649543;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=11pkTPDe9nYa2bibDrf4hgTWvPbjacNqIZbnMXxQnGs=;
 b=AJOcmGPRxixScAwXTGbSN13DlYuF+OPvkDtPs4mxqTnUpILi0LxgRa4X
 ztHhNmQNzzbTbWcb8Py2F+cPAjS5Awo/xEgvSTTlZ0K6VRWMCjXDnqr3U
 v9YAPLUSjerDTp/jjGjkgvwd6P8UIzq7BthC59CIuHbniOHCO9KtptdjZ
 PxcJnDwem1MRCJgNlBKrvB9OAGsfeXlo5rWgA/EIjakQfhBx+IYM4ml1z
 Drn+Abw0ipXK0aXzDLrfoUKfLlrdKKx3Va5w7Thgo3mAxfApRH0H2bmaH
 a3yfKNLmLnpWZW0cbQcPbjjDwGNh8/ILtsgqYxH+sz9EGgTwGAmWCUdsg w==;
X-CSE-ConnectionGUID: 3ymz0iU0QfuNSzV+CWhuUw==
X-CSE-MsgGUID: 23Mx4Sl0TySK/E5sA6it/w==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="51597801"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="51597801"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 22:19:03 -0700
X-CSE-ConnectionGUID: p7zMJtUARMmme1rFuAa6Tw==
X-CSE-MsgGUID: OejlY2ZXRGCZ+J5cV5WoEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="137506148"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa006.jf.intel.com with ESMTP; 12 May 2025 22:19:01 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@intel.com
Subject: [PATCH v5 07/17] drm/i915/vrr: Add state dump for DC Balance params
Date: Tue, 13 May 2025 10:46:50 +0530
Message-ID: <20250513051700.507389-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
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

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index 0c7f91046996..7a3d97df24c0 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -304,6 +304,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 	drm_printf(&p, "vrr: vmin vblank: %d, vmax vblank: %d, vmin vtotal: %d, vmax vtotal: %d\n",
 		   intel_vrr_vmin_vblank_start(pipe_config), intel_vrr_vmax_vblank_start(pipe_config),
 		   intel_vrr_vmin_vtotal(pipe_config), intel_vrr_vmax_vtotal(pipe_config));
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
-- 
2.48.1

