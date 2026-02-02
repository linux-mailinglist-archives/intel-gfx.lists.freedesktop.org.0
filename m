Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EOj+NXiwgGn6AQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 15:11:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10897CD2DC
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 15:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B33210E2AE;
	Mon,  2 Feb 2026 14:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFwwYaz/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 768FE10E2AE;
 Mon,  2 Feb 2026 14:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770041462; x=1801577462;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tGdh1Zt07Yc/aQsZwfNaZFZHC+pVd2xgpTeBQaOMgA0=;
 b=PFwwYaz/XxHlbA75QK6Y3QvKb9u9nORFK99ryrShD1iqbY6wCsg7ofQi
 5xOeB5/+1fd6JQF/jamGA7RaWjZVryqch5019CkFCVrjcgt8cIL4+1XG1
 3j7xUipP3UsYHzwPsZYuz243W1w2W3htdifdYyRQ+0dFwm37dsfMbF+C9
 K3DHb56LBwzq9jnAAzJRzyTrJA3pO68gO/969a0BOYx9aj9yrz+xbHGNG
 FmQXqdzt/51MT0NWi45tG9sAZXgVHmsJiwXQvBAU3KmHiYPCbR5K88tw8
 gRMyucGM8cr0aUwKCSbTV2BqequGe3cAFlGnMZY6CWUX/VJLwszjtEG9z A==;
X-CSE-ConnectionGUID: rICa+MM7Sz613lNzsE0GQQ==
X-CSE-MsgGUID: OXOid2flRZuPrZ2F+EnWXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="88774533"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="88774533"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 06:11:01 -0800
X-CSE-ConnectionGUID: dGdJGdetSvKY8H2xC5IiyQ==
X-CSE-MsgGUID: MTMOmV6jQI2jtbg30vNX9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="209792099"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa010.fm.intel.com with ESMTP; 02 Feb 2026 06:02:45 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 matthew.d.roper@intel.com, jani.nikula@linux.intel.com,
 suraj.kandpal@intel.com
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v3] drm/i915/power_well: Enable workaround for DSS clock
 gating issue
Date: Mon,  2 Feb 2026 14:02:42 +0000
Message-ID: <20260202140242.704234-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 10897CD2DC
X-Rspamd-Action: no action

Prevent display corruption observed after restart, hotplug, or unplug
operations on Meteor Lake and newer platforms. The issue is caused by
DSS clock gating affecting DSC logic when pipe power wells are disabled.

Apply this WA by disabling DSS clock gating for the affected pipes
before turning off their power wells. This avoids DSC corruption on
external displays.

v2: Use single intel_de_rmw() (Jani)
    Switch to use drm_dbg_kms() instead of drm_printf() (Jani)
    Remove WA number from commit message (Suraj)
    rename dss_clock_gating_enable_disable() to
    dss_pipe_gating_enable_disable();
v3: Do not use open ended display version when checking
    wa (Matt)

WA: 22021048059
BSpec: 690991, 666241
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 .../i915/display/intel_display_power_well.c   | 55 ++++++++++++++++++-
 .../gpu/drm/i915/display/intel_display_regs.h |  7 +++
 .../gpu/drm/i915/display/intel_display_wa.c   |  2 +
 .../gpu/drm/i915/display/intel_display_wa.h   |  1 +
 4 files changed, 63 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 6f9bc6f9615e..78f707b00550 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -18,6 +18,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_wa.h"
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dmc.h"
@@ -194,6 +195,48 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
 	return power_well->count;
 }
 
+static u32 dss_pipe_gating_bits(u8 irq_pipe_mask)
+{
+	u32 bits = 0;
+
+	if (irq_pipe_mask & BIT(PIPE_A))
+		bits |= DSS_PIPE_A_GATING_DISABLED;
+	if (irq_pipe_mask & BIT(PIPE_B))
+		bits |= DSS_PIPE_B_GATING_DISABLED;
+	if (irq_pipe_mask & BIT(PIPE_C))
+		bits |= DSS_PIPE_C_GATING_DISABLED;
+	if (irq_pipe_mask & BIT(PIPE_D))
+		bits |= DSS_PIPE_D_GATING_DISABLED;
+
+	return bits;
+}
+
+static void dss_pipe_gating_enable_disable(struct intel_display *display,
+					   u8 irq_pipe_mask,
+					   bool disable)
+{
+	u32 bits = dss_pipe_gating_bits(irq_pipe_mask);
+	u32 clear, set;
+
+	if (!bits)
+		return;
+
+	/*
+	 * Single intel_de_rmw() for both enable/disable:
+	 *  - disable == true, set bits (disable clock gating)
+	 *  - disable == false, clear bits (re-enable clock gating)
+	 */
+	set = disable ? bits : 0;
+	clear = disable ? 0 : bits;
+
+	intel_de_rmw(display, CLKGATE_DIS_DSSDSC, clear, set);
+
+	drm_dbg_kms(display->drm,
+		    "DSS clock gating %sd for pipe_mask=0x%x (CLKGATE_DIS_DSSDSC=0x%08x)\n",
+		    str_enable_disable(!disable), irq_pipe_mask,
+		    intel_de_read(display, CLKGATE_DIS_DSSDSC));
+}
+
 /*
  * Starting with Haswell, we have a "Power Down Well" that can be turned off
  * when not needed anymore. We have 4 registers that can request the power well
@@ -203,15 +246,23 @@ int intel_power_well_refcount(struct i915_power_well *power_well)
 static void hsw_power_well_post_enable(struct intel_display *display,
 				       u8 irq_pipe_mask)
 {
-	if (irq_pipe_mask)
+	if (irq_pipe_mask) {
 		gen8_irq_power_well_post_enable(display, irq_pipe_mask);
+
+		if (intel_display_wa(display, 22021048059))
+			dss_pipe_gating_enable_disable(display, irq_pipe_mask, false);
+	}
 }
 
 static void hsw_power_well_pre_disable(struct intel_display *display,
 				       u8 irq_pipe_mask)
 {
-	if (irq_pipe_mask)
+	if (irq_pipe_mask) {
+		if (intel_display_wa(display, 22021048059))
+			dss_pipe_gating_enable_disable(display, irq_pipe_mask, true);
+
 		gen8_irq_power_well_pre_disable(display, irq_pipe_mask);
+	}
 }
 
 #define ICL_AUX_PW_TO_PHY(pw_idx)	\
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9e0d853f4b61..9740f32ced24 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2211,6 +2211,13 @@
 #define   HSW_PWR_WELL_FORCE_ON			(1 << 19)
 #define HSW_PWR_WELL_CTL6			_MMIO(0x45414)
 
+/* clock gating DSS DSC disable register */
+#define CLKGATE_DIS_DSSDSC			_MMIO(0x46548)
+#define   DSS_PIPE_D_GATING_DISABLED		REG_BIT(31)
+#define   DSS_PIPE_C_GATING_DISABLED		REG_BIT(29)
+#define   DSS_PIPE_B_GATING_DISABLED		REG_BIT(27)
+#define   DSS_PIPE_A_GATING_DISABLED		REG_BIT(25)
+
 /* SKL Fuse Status */
 enum skl_power_gate {
 	SKL_PG0,
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index 2eb4af62d556..b1979ee9d836 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -85,6 +85,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 		return intel_display_needs_wa_16025573575(display);
 	case INTEL_DISPLAY_WA_22014263786:
 		return IS_DISPLAY_VERx100(display, 1100, 1400);
+	case INTEL_DISPLAY_WA_22021048059:
+		return IS_DISPLAY_VER(display, 14, 35);
 	default:
 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
 		break;
diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
index 40f989f19df1..767420d5f406 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
@@ -34,6 +34,7 @@ enum intel_display_wa {
 	INTEL_DISPLAY_WA_16023588340,
 	INTEL_DISPLAY_WA_16025573575,
 	INTEL_DISPLAY_WA_22014263786,
+	INTEL_DISPLAY_WA_22021048059,
 };
 
 bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
-- 
2.43.0

