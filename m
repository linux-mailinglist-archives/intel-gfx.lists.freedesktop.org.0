Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2B7C0F49D
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:29:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2435510E503;
	Mon, 27 Oct 2025 16:29:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I2wVyoce";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0459010E502;
 Mon, 27 Oct 2025 16:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582583; x=1793118583;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gZR4hBt9UMq6fTzZXnZ1DWPxQqt9M9wiM1wSV6QAO8Q=;
 b=I2wVyoceGrA73ckmfJiV+StJGb8AJhU6prcUS/4GAuPwbdKxInDQ0QrA
 80YJD4FXw/JRSLjHDoxFJsgcSIyFJQWp+EXS8YL+XHIQd0gTMT/qn6POk
 Gj9JTzdTgrETfO21JVs8tsGdRGKaqDap/PVI5vfHOm4dabRlxInL4W/Wq
 U0a1rP/qgPUMU7bNRsmM1ttkYtcTsMgn5m8OSJcrGuwld9ruS+f4nI4g4
 ixeSQMfqDRdPDDKrtDxXZUa97UU4p8YM8i88qJ4XQ7fdsKvHXqyaN6Clf
 s/ukebi11WEtxaH0c9Un+YWtHcyZkDQ3e50KYQ19ZoGQwacEdWtPYGftT w==;
X-CSE-ConnectionGUID: xhzya2NCQ9SEyehUb6bbgg==
X-CSE-MsgGUID: zic2bX6GRQOOnT8NR1uqvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299333"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299333"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:43 -0700
X-CSE-ConnectionGUID: w8nhyiajSj+U/13B6Yw5JA==
X-CSE-MsgGUID: mkRlIFkpTBumniVZfbLW8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785574"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:41 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 06/22] drm/i915/vrr: Add state dump for DC Balance params
Date: Mon, 27 Oct 2025 21:59:11 +0530
Message-ID: <20251027162927.2655581-7-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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
index e6f300dbb5ee..0f97c7adbb42 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -303,6 +303,14 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
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

