Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF838A674F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 11:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 991B810EF7D;
	Tue, 16 Apr 2024 09:40:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eockLTj7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D2910EF86
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 09:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713260414; x=1744796414;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zUuvHWuVlq0F7fTqqytZIKcOWo6b6ERYbLfqte+jQEc=;
 b=eockLTj7qh+Nk0rDugahrMn4B632FI9TcpVFrJCNsobo2uFArWKA4Jqp
 X2waqfJvtx0dCbxzw6ujEdpo7zVADRfxpo7flOeoeIsGkhi4EtVJneCMG
 5rip3MMXFmCOeiq381xztoF5nQ2T//TpYnRCiQcl9MKDTWEENwTAG8lGp
 gzl0dvSCU9LqnI+8rVHxdIzbN3hajrkvfbH0bA26q4BMfSySoHu0zW/XU
 BNbMrXNChtOqJwQrn90f+7RbGr1OoyfI4wY6ca8yBteBZI+r2TObschOQ
 8/GcEhzLTNOttLnpzw5ojgLN1bpT+El4uyFXiM8da7xF7vjhejm+zLmEe g==;
X-CSE-ConnectionGUID: RiVk4mm0RtWaZCkAHfL9iQ==
X-CSE-MsgGUID: Zvd2TZpRS+mtviB/YS707g==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19291764"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="19291764"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 02:40:14 -0700
X-CSE-ConnectionGUID: Z/Nx0r1SRn2Jmtc7u6uVLg==
X-CSE-MsgGUID: xTn5ashySDa/0tXMxvpczQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="27001399"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa005.jf.intel.com with ESMTP; 16 Apr 2024 02:40:12 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/pps: Disable DPLS_GATING around pps sequence
Date: Tue, 16 Apr 2024 15:07:31 +0530
Message-ID: <20240416093730.625486-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
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

Bspec: 49304
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
 drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 3078dfac7817..2b2cead22a7d 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -948,6 +948,14 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 		intel_de_posting_read(dev_priv, pp_ctrl_reg);
 	}
 
+	/*
+	 * WA: 16023567976
+	 * Disable DPLS gating around power sequence.
+	 */
+	if (IS_DISPLAY_VER(dev_priv, 12, 14))
+		intel_de_rmw(dev_priv, SCLKGATE_DIS,
+			     DPLS_GATING_DISABLE, 1);
+
 	pp |= PANEL_POWER_ON;
 	if (!IS_IRONLAKE(dev_priv))
 		pp |= PANEL_POWER_RESET;
@@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
 	wait_panel_on(intel_dp);
 	intel_dp->pps.last_power_on = jiffies;
 
+	if (IS_DISPLAY_VER(dev_priv, 12, 14))
+		intel_de_rmw(dev_priv, SCLKGATE_DIS,
+			     DPLS_GATING_DISABLE, 0);
+
 	if (IS_IRONLAKE(dev_priv)) {
 		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
 		intel_de_write(dev_priv, pp_ctrl_reg, pp);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 3f34efcd7d6c..1c2cd6cc254f 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6250,6 +6250,10 @@ enum skl_power_gate {
 #define  SFUSE_STRAP_DDIC_DETECTED	(1 << 1)
 #define  SFUSE_STRAP_DDID_DETECTED	(1 << 0)
 
+/* SCLKGATE_DIS */
+#define SCLKGATE_DIS			_MMIO(0xc2020)
+#define  DPLS_GATING_DISABLE		REG_BIT(29)
+
 #define WM_MISC				_MMIO(0x45260)
 #define  WM_MISC_DATA_PARTITION_5_6	(1 << 0)
 
-- 
2.43.2

