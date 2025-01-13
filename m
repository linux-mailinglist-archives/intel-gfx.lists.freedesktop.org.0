Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 101B9A0B436
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 11:11:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A345410E630;
	Mon, 13 Jan 2025 10:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XkYltIYx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 864DE10E630
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 10:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736763107; x=1768299107;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HWXJAfdoJR8YnQRCTlRDPU6CtxEXq+6ohbvUcMepGXc=;
 b=XkYltIYx9mM8+XS5CZhrs3nrLZYyA+xzvZagk2vPx3pOzthFoyUrrdzP
 QFmg7LUb7/pMJ8JzWnxPh8FkwGfIyD6/2xdRPP9KLh1uHjvUqKGMJ2U0o
 //ghURyTxIC/8KyXm9h4S88seQrSPKYioXqMSuZZqJq0UGfoINkcDF5v7
 wkVtY+TxkCfrnhBAquuFUIsEqHyVTLM0X8DhQLyGtjZUZHhivFiYUKzW0
 Ms+3ltMGrhlKkqrMR5ucKL1y0mP/jJgrlxw72a/9JNl+qmBCHhk5ZMpGy
 50tucHG6kNIAjXW3N78Ip67UF+qgk+yJrCHkHW5AwoCLx7kk8gPuLVlUp A==;
X-CSE-ConnectionGUID: zPhv/k07QsaMGZ0xCRYfhw==
X-CSE-MsgGUID: B5QqYeMiQOG7LaFk3eF6bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11313"; a="40696349"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="40696349"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:11:28 -0800
X-CSE-ConnectionGUID: klUJerIjRSCxcRbl+jOUaA==
X-CSE-MsgGUID: PGmaO+10Rxapk3TWWywM8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127689604"
Received: from anirban-z690i-a-ultra-plus.iind.intel.com ([10.145.169.150])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 02:11:26 -0800
From: Sk Anirban <sk.anirban@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, raag.jadav@intel.com,
 Sk Anirban <sk.anirban@intel.com>
Subject: [PATCH 2/2] drm/i915/guc/slpc: Add helper function slpc_measure_power
Date: Mon, 13 Jan 2025 15:29:12 +0530
Message-Id: <20250113095912.356147-3-sk.anirban@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250113095912.356147-1-sk.anirban@intel.com>
References: <20250113095912.356147-1-sk.anirban@intel.com>
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

Previously, the RPS function was being used, which utilizes
raw frequency to calculate measured power. This commit introduces
a dedicated function specifically for measuring power in SLPC,
ensuring more accurate and reliable power measurements.

Signed-off-by: Sk Anirban <sk.anirban@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_slpc.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
index 4ecc4ae74a54..cb5d5e2c5dbe 100644
--- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
@@ -95,6 +95,21 @@ static int slpc_restore_freq(struct intel_guc_slpc *slpc, u32 min, u32 max)
 	return 0;
 }
 
+static u64 slpc_measure_power(struct intel_rps *rps, int *freq)
+{
+	u64 x[5];
+	int i;
+
+	for (i = 0; i < 5; i++)
+		x[i] = __measure_power(5);
+
+	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
+
+	/* A simple triangle filter for better result stability */
+	sort(x, 5, sizeof(*x), cmp_u64, NULL);
+	return div_u64(x[1] + 2 * x[2] + x[3], 4);
+}
+
 static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
 {
 	int err = 0;
@@ -103,7 +118,7 @@ static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
 	if (err)
 		return err;
 	*freq = intel_rps_read_actual_frequency(&gt->rps);
-	*power = measure_power(&gt->rps, freq);
+	*power = slpc_measure_power(&gt->rps, freq);
 
 	return err;
 }
-- 
2.34.1

