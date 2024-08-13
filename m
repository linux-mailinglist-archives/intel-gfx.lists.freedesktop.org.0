Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9FE94FCAE
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2024 06:30:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD46F10E265;
	Tue, 13 Aug 2024 04:30:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMwe8klm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F15E210E265
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2024 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723523434; x=1755059434;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VugBsi5ZQ4Q94Eq2SkP0fzD0glSwoLKFKDIpRg5Ed+w=;
 b=DMwe8klmkGcpSpHV7R5J4Lh0yH/jmiL5e9fQuiiVh4W4wW+PiA8RG3zK
 gOOYVGxO8O6oRoIvGsO7JfOmVW3nKuX1ffVwYgz6RpsrR8ESea1UoXEEk
 My4ZH/MXSEt6AgIuKLl24YH7hZHqO+mEYpiPjf/1BvNFPtoBArWKAnBFz
 8d1AY3joRHHzh+5COpsUgLtjPbMIe6BXoM2tPTC8SrKa9owEElPLWkEor
 VWZXZZ/xci+9uwEfSqUJYVmzDhppisbLqxvI77287T68C1UGf3WS0Yc5B
 HJ2gnXBIdo2Yhs/XMzpHENiM1t8gMVJRmmLWZYS+VCj7P0PJu6n9DUsKd g==;
X-CSE-ConnectionGUID: t0GRoMZkRga7csm4VRCFYQ==
X-CSE-MsgGUID: DVggyyTHTOOX316x7SiASg==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21808857"
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="21808857"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 21:30:33 -0700
X-CSE-ConnectionGUID: j1tv6KwYRL6pDUwOlUPXIQ==
X-CSE-MsgGUID: WnxnJcuuTMGHMz5SqQmwLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,285,1716274800"; d="scan'208";a="58607635"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa010.fm.intel.com with ESMTP; 12 Aug 2024 21:30:32 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: dnyaneshwar.bhadane@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Date: Tue, 13 Aug 2024 09:58:07 +0530
Message-ID: <20240813042807.4015214-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509032922.1145558-2-suraj.kandpal@intel.com>
References: <20240509032922.1145558-2-suraj.kandpal@intel.com>
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

Disable bit 29 of SCLKGATE_DIS register around pps sequence
when we turn panel power on.

--v2
-Squash two commit together [Jani]
-Use IS_DISPLAY_VER [Jani]
-Fix multiline comment [Jani]

--v3
-Define register in a more appropriate place [Mitul]

--v4
-Register is already defined no need to define it again [Ville]
-Use correct WA number (lineage no.) [Dnyaneshwar]
-Fix the range on which this WA is applied [Dnyaneshwar]

Bspec: 49304
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 7ce926241e83..0918eb218fc8 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -951,6 +951,14 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 
+	/*
+	 * WA: 22019252566
+	 * Disable DPLS gating around power sequence.
+	 */
+	if (IS_DISPLAY_VER(dev_priv, 13, 14))
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     0, PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
+
 	pp |= PANEL_POWER_ON;
 	if (!IS_IRONLAKE(dev_priv))
 		pp |= PANEL_POWER_RESET;
@@ -961,6 +969,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	wait_panel_on(intel_dp);
 	intel_dp->pps.last_power_on = jiffies;
 
+	if (IS_DISPLAY_VER(dev_priv, 13, 14))
+		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
+			     PCH_DPLSUNIT_CLOCK_GATE_DISABLE, 0);
+
 	if (IS_IRONLAKE(dev_priv)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
 		intel_de_write(dev_priv, pp_ctrl_reg, pp);
-- 
2.43.2

