Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BECC0A61468
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 16:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59DE910EA08;
	Fri, 14 Mar 2025 15:01:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MvXz0CIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67AE810EA0A
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 15:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741964500; x=1773500500;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+avra1l6FMYaIyTUD9JRwLUHuvx6hmFvpR80C6BMmcc=;
 b=MvXz0CIRs6ERrCEKMpfxa6+Lfl4QIGVw0Td/xcw7YE8GSeiSPU8SGA7J
 byYYUDkiwN+3UhXI2yJos1NzriYJ7FQqoUGjMwu1b3qExl8mu24DPSpCc
 16SHoMgvPYTgB1Q1h1G0ndpVt+axialZpaIrkmeEnrJLKdg7AjkdPAu2T
 Pu5AcyQC6v5Gb9W1nsKy5Ni827hShu7HQ6Gj1bwBf76X7hrJS9moTnCL3
 0QuRGHCpUtKdLrpZm5i95mM9qPmIOz85TS71b1kLZuS95Ymf8X3xw79Jd
 Os3MMZxC+3mOFnShVBx9bEWnGHtTnXLs0TRli0jMU0dvWqTtpyVOXu0JS Q==;
X-CSE-ConnectionGUID: aOW0lzxiSlmp24c++h4SVg==
X-CSE-MsgGUID: OESZ43piTbaJ84gV12TARg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60657571"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60657571"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 08:01:40 -0700
X-CSE-ConnectionGUID: uyTPo/sMSqOiu5hcoKRMfA==
X-CSE-MsgGUID: fmFeYKtiQkG1T7OVCPBSzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126515059"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 14 Mar 2025 08:01:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Mar 2025 17:01:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/dsi: Fix off by one in BXT_MIPI_TRANS_VTOTAL
Date: Fri, 14 Mar 2025 17:01:34 +0200
Message-ID: <20250314150136.22564-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
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

BXT_MIPI_TRANS_VTOTAL must be programmed with vtotal-1
instead of vtotal. Make it so.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index af717df83197..661de51dfd22 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1060,7 +1060,7 @@ static void bxt_dsi_get_pipe_config(struct intel_encoder *encoder,
 				              BXT_MIPI_TRANS_VACTIVE(port));
 	adjusted_mode->crtc_vtotal =
 				intel_de_read(display,
-				              BXT_MIPI_TRANS_VTOTAL(port));
+				              BXT_MIPI_TRANS_VTOTAL(port)) + 1;
 
 	hactive = adjusted_mode->crtc_hdisplay;
 	hfp = intel_de_read(display, MIPI_HFP_COUNT(display, port));
@@ -1265,7 +1265,7 @@ static void set_dsi_timings(struct intel_encoder *encoder,
 			intel_de_write(display, BXT_MIPI_TRANS_VACTIVE(port),
 				       adjusted_mode->crtc_vdisplay);
 			intel_de_write(display, BXT_MIPI_TRANS_VTOTAL(port),
-				       adjusted_mode->crtc_vtotal);
+				       adjusted_mode->crtc_vtotal - 1);
 		}
 
 		intel_de_write(display, MIPI_HACTIVE_AREA_COUNT(display, port),
-- 
2.45.3

