Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2227FD3EA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 11:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8476610E468;
	Wed, 29 Nov 2023 10:18:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAC7010E468
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 10:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701253123; x=1732789123;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RDqK1XG/IRFgzTDKKv0xOtlyzXvVgf5D3Ss5tmoC9rM=;
 b=RtTarEFtR9UkaHi0Ky44/RemLC+vYOsOUY+8kZbqgFRskYqinB3hIVXc
 KcE7bXcJjDHEaHyUv28NPT2vWdoRni8s+Wh8TI8LaAblVPS9zMfvef9Bf
 HsD+UR6mFQY5vSnOzjtFE1qLZYRBLrTQc0XBs3JXqpaFaJh5O2Py7D0jp
 XxYYSJME61vJQI5/vnrJHdPq9ZTvc1I8UiE0tmT7muZydk1649HSihxlX
 5IGspSEDwke6G2F3QOOUsMyD2FxXVKynKD+fJqbL9Bbb1gVNF23FKc0fx
 fA20JB/fXhbddhtw8KLOAjdnfbaCljveonbBCZogzpedIdzgC1PdqNnhz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="397038922"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="397038922"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 02:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="886799661"
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600"; d="scan'208";a="886799661"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 02:18:41 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Nov 2023 15:55:55 +0530
Message-Id: <20231129102555.978644-1-karthik.poosa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix static analysis tool errors
 in i915 hwmon
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

Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 975da8e7f2a9..69bb49a684b6 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -175,7 +175,7 @@ hwm_power1_max_interval_show(struct device *dev, struct device_attribute *attr,
 	 *     tau4 = (4 | x) << y
 	 * but add 2 when doing the final right shift to account for units
 	 */
-	tau4 = ((1 << x_w) | x) << y;
+	tau4 = ((u64)(1 << x_w) | x) << y;
 	/* val in hwmon interface units (millisec) */
 	out = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
 
@@ -211,7 +211,7 @@ hwm_power1_max_interval_store(struct device *dev,
 	r = FIELD_PREP(PKG_MAX_WIN, PKG_MAX_WIN_DEFAULT);
 	x = REG_FIELD_GET(PKG_MAX_WIN_X, r);
 	y = REG_FIELD_GET(PKG_MAX_WIN_Y, r);
-	tau4 = ((1 << x_w) | x) << y;
+	tau4 = ((u64)(1 << x_w) | x) << y;
 	max_win = mul_u64_u32_shr(tau4, SF_TIME, hwmon->scl_shift_time + x_w);
 
 	if (val > max_win)
-- 
2.25.1

