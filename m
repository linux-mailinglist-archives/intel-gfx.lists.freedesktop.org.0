Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD91D3BE99
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 06:00:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F3F10E4BF;
	Tue, 20 Jan 2026 05:00:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F3OF18CZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19CD10E38D;
 Tue, 20 Jan 2026 05:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768885245; x=1800421245;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aQgbBbHpDGwrhFi8ovpwTo/tRxu7dj/seP6c43z3EY0=;
 b=F3OF18CZn42JkXkPwLRlHspd98UgDcZOcqYMkqAWRju4wyUgHpVZFp98
 i6EG1tZHq4tVViykWBQ1lS5P1UA2N1PaTaflJ7Kn0x8T05tJD2C2CnAwr
 e5bGnuHgBzmEzcCUssSqKmJGvyUYWYSEnoGz9VUDsgVTMhMUIxsezOn/x
 djFfY7SczyGPq/Vaert+DEif01MFCq+uYF6RXJWTd8iBg7jGqTfmxAexf
 wODrKUaUkfCpfK/mxpnU+QZ9NI3niFgB62nFYFfTkhGfhP0bqU5/QAuUH
 gRRl9IIpy4xli5v287+AhLKqp9dHoguMZzbNDjivq7VrLbJeleEXd3vbW Q==;
X-CSE-ConnectionGUID: 7W4RbBLYT3Ox3nGsHGcDqg==
X-CSE-MsgGUID: pZKlq6fXRuewknHOxD0OHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="80718696"
X-IronPort-AV: E=Sophos;i="6.21,239,1763452800"; d="scan'208";a="80718696"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 21:00:45 -0800
X-CSE-ConnectionGUID: 9Etu+tOAQj23Ioxj7tTmag==
X-CSE-MsgGUID: GYwHgTHIQziJ5omjMLW3HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,239,1763452800"; d="scan'208";a="205646285"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa007.fm.intel.com with ESMTP; 19 Jan 2026 21:00:43 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/display: Disable DMG Clock Gating
Date: Tue, 20 Jan 2026 10:30:33 +0530
Message-Id: <20260120050033.635681-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Disable DMG Clock gating during display initialization.

WA: 22021451799
Bspec: 69095
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_modeset_setup.c | 7 +++++++
 drivers/gpu/drm/i915/i915_reg.h                    | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index d10cbf69a5f8..2d46f00bd0d8 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -910,6 +910,13 @@ get_encoder_power_domains(struct intel_display *display)
 
 static void intel_early_display_was(struct intel_display *display)
 {
+	/*
+	 * Wa_22021451799
+	 * Disable DMG Clock gating
+	 */
+	if (DISPLAY_VER(display) == 35)
+		intel_de_rmw(display, GEN9_CLKGATE_DIS_0, 0, DMG_GATING_DIS);
+
 	/*
 	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
 	 * Also known as Wa_14010480278.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5bf3b4ab2baa..f928db78a3fa 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -763,6 +763,7 @@
  */
 #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
 #define   DARBF_GATING_DIS		REG_BIT(27)
+#define   DMG_GATING_DIS		REG_BIT(21)
 #define   MTL_PIPEDMC_GATING_DIS(pipe)	REG_BIT(15 - (pipe))
 #define   PWM2_GATING_DIS		REG_BIT(14)
 #define   PWM1_GATING_DIS		REG_BIT(13)
-- 
2.34.1

