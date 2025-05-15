Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2904DAB7EA4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 May 2025 09:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC89210E774;
	Thu, 15 May 2025 07:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKVgsFeZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 961CD10E774;
 Thu, 15 May 2025 07:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747293513; x=1778829513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y553TQG/58F58LkoJTiXHROXPzHzbIDL07Jkk+xvjAM=;
 b=CKVgsFeZLBzGMxDrBdQpO5XU2gJgCwxd+S04W2xRoZRppgRYkDPIAhlu
 Wus3Exh01nWRZK516hDiRFJsmEFplEZnyZA4JPM6TsLDlJkg5uVwZ2t4y
 eIDxjQYQ/DpfcglQnwl3AGyTB/ktJ9dreQvNxEsALEoSJdJrJBL4NZtKX
 GNMnp3VTSnNhAZc+Hija7Cr+hzkw/Y1a4U7ahPCP3YyscYxaOlpsXQBwd
 gBdtUR6OfrH+St7k/K+FdlMhosswVRpGVC9Y7sYxQp0XL0DB4ACAXAUBZ
 +tYe3YS5zUfCd9aI17rCw9oIPqMsdx+jkAypA5JvR8Ov7msChmH+TZQju Q==;
X-CSE-ConnectionGUID: /CLsx4JDRWqQCFo958wrrA==
X-CSE-MsgGUID: vkWuzBHoSIK5Z8TPDIo3lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11433"; a="48901339"
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="48901339"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2025 00:18:33 -0700
X-CSE-ConnectionGUID: hf6ck/FNTmG+NfdyiP+gYQ==
X-CSE-MsgGUID: SfYDCjmFTkmw9qs8V5175g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,290,1739865600"; d="scan'208";a="142290298"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa003.fm.intel.com with ESMTP; 15 May 2025 00:18:30 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/14] drm/i915/dpll: Rename intel_dpll_funcs
Date: Thu, 15 May 2025 12:47:49 +0530
Message-Id: <20250515071801.2221120-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250515071801.2221120-1-suraj.kandpal@intel.com>
References: <20250515071801.2221120-1-suraj.kandpal@intel.com>
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

Rename intel_dpll_funcs to intel_dpll_global_funcs so that later
on intel_shared_dpll_funcs can be renamed to intel_dpll_funcs.
This is done to move away from the shared naming convention since
starting MTL dpll's are not shared among PHYs.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_dpll.c     | 22 +++++++++----------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 6fc213f84e73..e0221e514326 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -42,7 +42,7 @@ struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dmc;
-struct intel_dpll_funcs;
+struct intel_dpll_global_funcs;
 struct intel_dpll_mgr;
 struct intel_fbdev;
 struct intel_fdi_funcs;
@@ -300,7 +300,7 @@ struct intel_display {
 		const struct intel_cdclk_funcs *cdclk;
 
 		/* Display pll funcs */
-		const struct intel_dpll_funcs *dpll;
+		const struct intel_dpll_global_funcs *dpll;
 
 		/* irq display functions */
 		const struct intel_hotplug_funcs *hotplug;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index a9e9b98d0bf9..8db603d9c823 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -24,7 +24,7 @@
 #include "vlv_dpio_phy_regs.h"
 #include "vlv_sideband.h"
 
-struct intel_dpll_funcs {
+struct intel_dpll_global_funcs {
 	int (*crtc_compute_clock)(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 	int (*crtc_get_shared_dpll)(struct intel_atomic_state *state,
@@ -1690,45 +1690,45 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
 	return 0;
 }
 
-static const struct intel_dpll_funcs mtl_dpll_funcs = {
+static const struct intel_dpll_global_funcs mtl_dpll_funcs = {
 	.crtc_compute_clock = mtl_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs dg2_dpll_funcs = {
+static const struct intel_dpll_global_funcs dg2_dpll_funcs = {
 	.crtc_compute_clock = dg2_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs hsw_dpll_funcs = {
+static const struct intel_dpll_global_funcs hsw_dpll_funcs = {
 	.crtc_compute_clock = hsw_crtc_compute_clock,
 	.crtc_get_shared_dpll = hsw_crtc_get_shared_dpll,
 };
 
-static const struct intel_dpll_funcs ilk_dpll_funcs = {
+static const struct intel_dpll_global_funcs ilk_dpll_funcs = {
 	.crtc_compute_clock = ilk_crtc_compute_clock,
 	.crtc_get_shared_dpll = ilk_crtc_get_shared_dpll,
 };
 
-static const struct intel_dpll_funcs chv_dpll_funcs = {
+static const struct intel_dpll_global_funcs chv_dpll_funcs = {
 	.crtc_compute_clock = chv_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs vlv_dpll_funcs = {
+static const struct intel_dpll_global_funcs vlv_dpll_funcs = {
 	.crtc_compute_clock = vlv_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs g4x_dpll_funcs = {
+static const struct intel_dpll_global_funcs g4x_dpll_funcs = {
 	.crtc_compute_clock = g4x_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs pnv_dpll_funcs = {
+static const struct intel_dpll_global_funcs pnv_dpll_funcs = {
 	.crtc_compute_clock = pnv_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs i9xx_dpll_funcs = {
+static const struct intel_dpll_global_funcs i9xx_dpll_funcs = {
 	.crtc_compute_clock = i9xx_crtc_compute_clock,
 };
 
-static const struct intel_dpll_funcs i8xx_dpll_funcs = {
+static const struct intel_dpll_global_funcs i8xx_dpll_funcs = {
 	.crtc_compute_clock = i8xx_crtc_compute_clock,
 };
 
-- 
2.34.1

