Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B04800D22
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 15:27:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B432F10E108;
	Fri,  1 Dec 2023 14:27:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D659B10E108
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 14:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701440835; x=1732976835;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6/eZIQ6arrSIZ6Y8Na0KCfZo931riJxATeH1GwTiYeQ=;
 b=ZNWsFGRIKE86cu4XHNxo0kRAwNTzkk8iB4l7lBwihd8amAOUM+2ghHkY
 tYc6q6AE7RyzQ+gmj5N9e9/9S9CNzQlJO+q87KkWbmM1rkOD51K/EKxa+
 6sbBUAyR99rUuCqnTCrHrAaEFbj8oFjfPsguVLO/9kVy4Re16OjBZYWLK
 4YgZ0fTaxCVpRyNDLegXc/UCdxCn3DwOwPdihX6xO+OBLQpPDdSfWcuhm
 X4+ADgB3YoHhns8SF0Lw8aG3bptV4xb2y24d+t9ULa4uStnPemgBYMBUQ
 W0K2mGSdkOC69IRQcmQEll9pFq9n/EmN7pl59szESRntkCXszk2FhUkRL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="383899293"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="383899293"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 06:27:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="893234115"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="893234115"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 06:27:13 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Dec 2023 20:04:30 +0530
Message-Id: <20231201143430.1320510-1-karthik.poosa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix issues found by static
 analysis tool in i915 hwmon
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
Cc: Karthik Poosa <karthik.poosa@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Updated i915 hwmon with fixes for issues reported by static analysis tool.
Fixed unintentional buffer overflow (OVERFLOW_BEFORE_WIDEN) with upcasting.

Fixes: 4c2572fe0ae7 ("drm/i915/hwmon: Expose power1_max_interval")
Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 975da8e7f2a9..8c3f443c8347 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device *dev, struct device_attribute *attr,
 	 *     tau4 = (4 | x) << y
 	 * but add 2 when doing the final right shift to account for units
 	 */
-	tau4 = ((1 << x_w) | x) << y;
+	tau4 = (u64)((1 << x_w) | x) << y;
 	/* val in hwmon interface units (millisec) */
 	out = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
 
@@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device *dev,
 	r = FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
 	x = REG_FIELD_GET(PKG_MAX_WIN_X, r);
 	y = REG_FIELD_GET(PKG_MAX_WIN_Y, r);
-	tau4 = ((1 << x_w) | x) << y;
+	tau4 = (u64)((1 << x_w) | x) << y;
 	max_win = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
 
 	if (val > max_win)
-- 
2.25.1

