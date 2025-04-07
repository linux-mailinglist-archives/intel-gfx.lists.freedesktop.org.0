Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3856FA7D767
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 10:16:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B936A10E3B4;
	Mon,  7 Apr 2025 08:16:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXqTqJCC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F57710E3B3;
 Mon,  7 Apr 2025 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744013813; x=1775549813;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wrj99EfV8esTJL5oMsFFL60p2Jk0rGE+TvRAMib0/eM=;
 b=kXqTqJCCdxz3P9EKTWqCbsf7/fm97XNVm2Hr/6DPCLGHAr12KfTgmYJe
 mFIb+GV7CDUpcF7mhpyvKlqKmXqibHBy16axCp6iDJdBDTW3C/YlpEX8y
 D+Bj00hxdT4w7ZP+q/6WLqaqr1YCJCxjPbBxtYQ42tNE+qizuBBFZMs6l
 VxGvVpApAlKAXqWFgmsT6nCMzvuru5mAzTrdPwULcdVchBGbhDSQa+OQo
 dJ1r3Aj3MtLdn4IGXMaQU8ILSw2QTxcWiwZvyaVINg1p3bvHfZErTa8pg
 pGRoKq+VOXoYF8CyHwRiAO3q9Z4x3XBxOyLfJqLtcbujs4CFYOwiD4M5i g==;
X-CSE-ConnectionGUID: 16+gBYENRa2I/6lP24CGbw==
X-CSE-MsgGUID: vOKIT576SY6yixeJCX9uNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11396"; a="56755757"
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="56755757"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 01:16:53 -0700
X-CSE-ConnectionGUID: bNDYvY44RFqPR38GzniLUg==
X-CSE-MsgGUID: X7fQ3WQeQZmFXz4FqqAiuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,193,1739865600"; d="scan'208";a="127727912"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 07 Apr 2025 01:16:50 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, jani.nikula@intel.com,
 mika.kahola@intel.com, ville.syrjala@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 02/18] drm/i915/dpll: Rename intel_dpll_funcs
Date: Mon,  7 Apr 2025 13:46:38 +0530
Message-Id: <20250407081654.2013680-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250407081654.2013680-1-suraj.kandpal@intel.com>
References: <20250407081654.2013680-1-suraj.kandpal@intel.com>
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
---
 .../gpu/drm/i915/display/intel_display_core.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_dpll.c     | 22 +++++++++----------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 3da1e4738c5a..03989d5023c7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -44,7 +44,7 @@ struct intel_color_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dmc;
-struct intel_dpll_funcs;
+struct intel_dpll_global_funcs;
 struct intel_dpll_mgr;
 struct intel_fbdev;
 struct intel_fdi_funcs;
@@ -298,7 +298,7 @@ struct intel_display {
 		const struct intel_cdclk_funcs *cdclk;
 
 		/* Display pll funcs */
-		const struct intel_dpll_funcs *dpll;
+		const struct intel_dpll_global_funcs *dpll;
 
 		/* irq display functions */
 		const struct intel_hotplug_funcs *hotplug;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index 0481b1365b85..638f7f63c818 100644
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
@@ -1693,45 +1693,45 @@ static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
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

