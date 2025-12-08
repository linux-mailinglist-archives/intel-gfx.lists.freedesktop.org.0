Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE3FCADFBE
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:26:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9431E10E08D;
	Mon,  8 Dec 2025 18:26:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d+0yJCmI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BA8A10E457;
 Mon,  8 Dec 2025 18:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218416; x=1796754416;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mbhNQyl+7PYxdjpHamJpnNUHjqXvpxH3yvKaBXLJ7ms=;
 b=d+0yJCmIOV+STFacSQgBukRdly9Ahx7f4AzGFgc5cK5gjykGUtyMIGHq
 S0O9WF7ZcImQQgcTLHwEAhNcE6NSnWubSDEcWkNM3JEvN7Vm94e8pBVMk
 21hIAEiI7REwMFtVlyxZs937e34jkU4H5vEYUN2897NN+fwYc2J720cf2
 VNGULQonzt6hkqmdhmsLzsPXef7TZ0LBcuGWo+XOM/AWlNVco08izksWs
 /N09X0DrBO5y90aFxF4TYhhUAilprRcI69zGT1DQdpjYeyvC/aAJwNqMK
 PikYSthZHL0C/JucuYlus3GR8nVF2okkhbp8OYkO8niU8RHZbsQkKgo6I Q==;
X-CSE-ConnectionGUID: p6JyhZZTRZSKpoWZW+GkcQ==
X-CSE-MsgGUID: DMPAO6uRRPKDz+Jt1B2KEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67051254"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67051254"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:54 -0800
X-CSE-ConnectionGUID: 4UoBrnwlQBeVpaFAcZHSqA==
X-CSE-MsgGUID: dohrPC55S9GVijJ+d0CleA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196460357"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:26:52 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 03/19] drm/i915/power: Remove i915_power_well_desc::has_vga
Date: Mon,  8 Dec 2025 20:26:21 +0200
Message-ID: <20251208182637.334-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

We no longer have any need for the has_vga flag in the
display power well descriptor. Get rid of it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_power_map.c  | 13 -------------
 .../gpu/drm/i915/display/intel_display_power_well.c |  5 ++---
 .../gpu/drm/i915/display/intel_display_power_well.h |  2 --
 3 files changed, 2 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 9b49952994ce..638d971a3a6c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -112,7 +112,6 @@ static const struct i915_power_well_desc hsw_power_wells_main[] = {
 				.id = HSW_DISP_PW_GLOBAL),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 	},
 };
 
@@ -146,7 +145,6 @@ static const struct i915_power_well_desc bdw_power_wells_main[] = {
 				.id = HSW_DISP_PW_GLOBAL),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 	},
 };
@@ -390,7 +388,6 @@ static const struct i915_power_well_desc skl_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.has_fuses = true,
 	}, {
@@ -469,7 +466,6 @@ static const struct i915_power_well_desc bxt_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.has_fuses = true,
 	}, {
@@ -572,7 +568,6 @@ static const struct i915_power_well_desc glk_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B) | BIT(PIPE_C),
 		.has_fuses = true,
 	}, {
@@ -748,7 +743,6 @@ static const struct i915_power_well_desc icl_power_wells_main[] = {
 				.id = ICL_DISP_PW_3),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_fuses = true,
 	}, {
@@ -914,7 +908,6 @@ static const struct i915_power_well_desc tgl_power_wells_main[] = {
 				.id = ICL_DISP_PW_3),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.irq_pipe_mask = BIT(PIPE_B),
 		.has_fuses = true,
 	}, {
@@ -1071,7 +1064,6 @@ static const struct i915_power_well_desc rkl_power_wells_main[] = {
 		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
-		.has_vga = true,
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
@@ -1166,7 +1158,6 @@ static const struct i915_power_well_desc dg1_power_wells_main[] = {
 		),
 		.ops = &hsw_power_well_ops,
 		.irq_pipe_mask = BIT(PIPE_B),
-		.has_vga = true,
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
@@ -1325,7 +1316,6 @@ static const struct i915_power_well_desc xelpd_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
@@ -1482,7 +1472,6 @@ static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
@@ -1649,7 +1638,6 @@ static const struct i915_power_well_desc xe3lpd_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
@@ -1722,7 +1710,6 @@ static const struct i915_power_well_desc wcl_power_wells_main[] = {
 				.id = SKL_DISP_PW_2),
 		),
 		.ops = &hsw_power_well_ops,
-		.has_vga = true,
 		.has_fuses = true,
 	}, {
 		.instances = &I915_PW_INSTANCES(
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 52b20118ace6..68f293c3ac01 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -202,7 +202,7 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
  * requesting it to be enabled.
  */
 static void hsw_power_well_post_enable(struct intel_display *display,
-				       u8 irq_pipe_mask, bool has_vga)
+				       u8 irq_pipe_mask)
 {
 	if (irq_pipe_mask)
 		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
@@ -415,8 +415,7 @@ static void hsw_power_well_enable(struct intel_display *display,
 	}
 
 	hsw_power_well_post_enable(display,
-				   power_well->desc->irq_pipe_mask,
-				   power_well->desc->has_vga);
+				   power_well->desc->irq_pipe_mask);
 }
 
 static void hsw_power_well_disable(struct intel_display *display,
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
index ec8e508d0593..8f5524da2d06 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
@@ -103,8 +103,6 @@ struct i915_power_well_desc {
 	 * the well enabled.
 	 */
 	u16 fixed_enable_delay:1;
-	/* The pw is backing the VGA functionality */
-	u16 has_vga:1;
 	u16 has_fuses:1;
 	/*
 	 * The pw is for an ICL+ TypeC PHY port in
-- 
2.51.2

