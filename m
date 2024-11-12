Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C097F9C5122
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Nov 2024 09:48:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2030310E592;
	Tue, 12 Nov 2024 08:48:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LZ9LOFVs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8437B10E5A3;
 Tue, 12 Nov 2024 08:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731401325; x=1762937325;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=L9sYV1F/dxkjRcp25HSxYkxlOjrQaZtAgZsIH5gO7Eo=;
 b=LZ9LOFVsBue9li3dhuX/+Pkx58aSThYDlGgIdUXd8qVrAD8NyuL9Yuhw
 BJU6F1SL7JwWaoXW5p4tO+irUp7Sysmx4AB6aOXDMLcow3XM93vElhdQd
 dvxdoVcD0flWSQv33zTPiUgPzaCINkkj2rdQkPvMN3kOAzuw6JoF01gzl
 rHodnPb1mYJcrFm3qwlab3Bqj089OAElBVN5XfeEbtoatnP2qTe12OcYE
 SalEUlAk3whpOWwyJhcdmT11SGzsZjU5OX4SPvuH8qKhKM2aWqZ4YYhGg
 CTjT9kOa43p2aPfC2yZ6D0QqQ9BoNTjj/FRNJ+7m0qCG2c7RxsIPYF2da A==;
X-CSE-ConnectionGUID: M6SLX63pQy2UzuIEX1zRGQ==
X-CSE-MsgGUID: ZLeNt+QjS9CQpI00x6/A5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="18835750"
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="18835750"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2024 00:48:45 -0800
X-CSE-ConnectionGUID: PuwpjjXoTR68M8mjJ+ACSA==
X-CSE-MsgGUID: ZRXiUcuiStmSkURnCHAXcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,147,1728975600"; d="scan'208";a="87759886"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa009.fm.intel.com with ESMTP; 12 Nov 2024 00:48:44 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [RFC v1 4/4] display/vrr: Update guardband based on enabled latency
Date: Tue, 12 Nov 2024 14:20:39 +0530
Message-ID: <20241112085039.1258860-5-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241112085039.1258860-1-mitulkumar.ajitkumar.golani@intel.com>
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

Instead of computing guardband to max vblank, account for
the differenct feature latency.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 19a5d0076bb8..de5113ab018b 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -10,7 +10,12 @@
 #include "intel_display_types.h"
 #include "intel_vrr.h"
 #include "intel_vrr_regs.h"
+#include "skl_watermark_regs.h"
+#include "intel_crtc.h"
 #include "intel_dp.h"
+#include "intel_psr.h"
+#include "skl_watermark.h"
+#include "skl_scaler.h"
 
 #define FIXED_POINT_PRECISION		100
 #define CMRR_PRECISION_TOLERANCE	10
@@ -255,8 +260,17 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		return;
 
 	if (DISPLAY_VER(display) >= 13) {
-		crtc_state->vrr.guardband =
-			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
+		int sagv_block_time_in_scanline =
+			intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
+						 display->sagv.block_time_us);
+		/*
+		 * TODO: DSC , PKGC and SDP latency to be computed
+		 */
+		crtc_state->vrr.guardband = MAX(crtc_state->framestart_delay +
+						 skl_calc_scaler_prefill_latency(crtc_state) +
+						 skl_calc_wm0_prefill_latency(crtc_state) +
+						 sagv_block_time_in_scanline,
+						 intel_psr2_calc_prefill(crtc_state));
 	} else {
 		crtc_state->vrr.pipeline_full =
 			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
-- 
2.46.0

