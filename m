Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC23896E15
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B36AD112A20;
	Wed,  3 Apr 2024 11:23:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rf8UWSFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FD2D112A15;
 Wed,  3 Apr 2024 11:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143396; x=1743679396;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YeoE5vnilR4xzfgmQaJ8FsfFdXvALwby8HGzz5Qir6A=;
 b=Rf8UWSFqnaots0CIxAQF5rWZfdvur4DVvrTh7Na0BTj8j15wyIu/Xj66
 tL5CYC27PnOPi0m4XPcKFVsi/zSBSYeAGqo6+Vx0ayGgVSZ/UP1G1O5b1
 v7sCVMCafv8Cqjzfji/E3tKhAD6/85gzL79FQvKdE0dqRyI0n0ty+KNff
 o6timNkZKmXyrVP3ngvYjtiUJCNDJh6OvbX0SqatHvmcoLAm2dE3X6abl
 AN6xdumMljxJp6zE/JGNhHwxa4w5Cea2/pFYlzbPmMD1dTh1W2monMWMh
 1pje10DI1Yhg4Ym5bAsATUccphnuZ1Z4FxaI0qRdR42FE8p2sTOaJ9Lo/ Q==;
X-CSE-ConnectionGUID: Lmp773y/QveDstmwwwFtIw==
X-CSE-MsgGUID: UlYPpExiRTenOZImkCJhJg==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824103"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824103"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:16 -0700
X-CSE-ConnectionGUID: /EGfXdZ/RWGguYS+ljYcvA==
X-CSE-MsgGUID: ayqSFxD9SxqHbSXAMfmN/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358528"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:14 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 13/25] drm/i915/xe2hpd: Add display info
Date: Wed,  3 Apr 2024 16:52:41 +0530
Message-Id: <20240403112253.1432390-14-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
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

From: Lucas De Marchi <lucas.demarchi@intel.com>

Add initial display info for xe2hpd. It is similar to xelpd, but with no
PORT_B.

Bspec: 67066
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index b8903bd0e82a..0a26012041e9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -771,6 +771,21 @@ static const struct intel_display_device_info xe2_lpd_display = {
 		BIT(INTEL_FBC_C) | BIT(INTEL_FBC_D),
 };
 
+static const struct intel_display_device_info xe2_hpd_display = {
+	XE_LPD_FEATURES,
+	.has_cdclk_crawl = 1,
+	.has_cdclk_squash = 1,
+
+	.__runtime_defaults.ip.ver = 14,
+	.__runtime_defaults.ip.rel = 1,
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime_defaults.port_mask = BIT(PORT_A) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+};
+
 __diag_pop();
 
 /*
@@ -852,6 +867,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 14,  1, &xe2_hpd_display },
 	{ 20,  0, &xe2_lpd_display },
 };
 
-- 
2.25.1

