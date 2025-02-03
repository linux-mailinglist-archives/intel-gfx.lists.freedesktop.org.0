Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13756A2550C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 09:56:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD5D10E3F6;
	Mon,  3 Feb 2025 08:56:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="haewQKWv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83D3B10E3F6
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 08:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738572980; x=1770108980;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rJ00Xu1skq4M+cCPfXcauN6lRndIJsLFRIrVGEWEwJY=;
 b=haewQKWvURGBn9ukT67wVI94x9d6EfTZOUFqk06qxp/qqPW1XQJJxj2H
 m7JhUg/7qP6KVYR6ErLBjKf4Cp+5w0Fs8a8dfWV+WgssMGwNe9EoGVegw
 9upl3FeltFvA7u3KFtTtuK5TqSIyRyeElydkV0r14PcQveagYXL3mJ/+A
 GzrhNFgMTPAVy16grnAr6SBGRI1XqptJ5tTyhIfDtYCdMoyANEAW2dD4o
 ihLoJ10KPoN5uWu6Sb41/lo6fRXMU7abNLMPcn6uQI0tkKmhQLbQjKQTB
 JvOqOVIbZAoEfPpZ9dbgQQe2Rrl/8dg3yJ6JL3yfHsDidR5EIyovG7RQG Q==;
X-CSE-ConnectionGUID: 0KNK8PTOQPmeC5WU4mZ9eA==
X-CSE-MsgGUID: AwoI6F9PSj6mrTMt89vvfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50472408"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50472408"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 00:56:19 -0800
X-CSE-ConnectionGUID: jRCTckGIQLeTIEwnJn0o1Q==
X-CSE-MsgGUID: NiRBpdzgRiOojP7Cdog2fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="110382577"
Received: from lnl-rocket-lake-client-platform.iind.intel.com (HELO
 lnl-Tiger-Lake-Client-Platform.iind.intel.com) ([10.145.169.162])
 by fmviesa008.fm.intel.com with ESMTP; 03 Feb 2025 00:56:17 -0800
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Date: Mon,  3 Feb 2025 14:26:13 +0530
Message-ID: <20250203085613.236340-1-mohammed.thasleem@intel.com>
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

Starting from MTl we don't have a platform agnostic way to validate DC6 state
due to dc6 counter has been removed to validate DC state.
Adding dc6_entry_counter at display dirver to validate dc6 state.

Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
 drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
 3 files changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 554870d2494b..cc244617011f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -376,6 +376,7 @@ struct intel_display {
 	struct {
 		struct intel_dmc *dmc;
 		intel_wakeref_t wakeref;
+		u32 dc6_entry_counter;
 	} dmc;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index f45a4f9ba23c..0eb178aa618d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
 	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
 
 	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
+
+	display->dmc.dc6_entry_counter++;
 }
 
 void bxt_enable_dc9(struct intel_display *display)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 221d3abda791..f51bd8e6011d 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
 	if (i915_mmio_reg_valid(dc6_reg))
 		seq_printf(m, "DC5 -> DC6 count: %d\n",
 			   intel_de_read(display, dc6_reg));
+	seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
 
 	seq_printf(m, "program base: 0x%08x\n",
 		   intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
-- 
2.43.0

