Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1CB8002AB
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 05:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F78910E7B6;
	Fri,  1 Dec 2023 04:51:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4994410E7B6
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 04:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701406253; x=1732942253;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CmEAZDM6UrdytohM5/jNAaPd9karzzapOw+kjCwuOQg=;
 b=BxDbI8w5kxhABbJzP+SRnZ32PzBF2bhM5HoUCa91G7+vTyiHXBVFpU7G
 MIU2yxEXaAEtQw/ASzj5pPqkn0h7XrBxM4zhRl59Ne09fZZc+FX7LTVXE
 UKiWgjjbPs+LP1h7rJuRCI17dBVXr6+OkL88IUbTRUefxAofD1ApizL3C
 az6IXB+6h+mITLAWkIW++fDifBM/abWQ4gV29Xr07pVWgRqq6VZlYVvuN
 z2Tw5S11uEV3hnEzhCo+XFI0OhHT6JEzdWn2gpJP4bJD4zTXoP/VgZ3vn
 YM435Bgj1Lb7sWqunkhTGq+DW6dMEeVwi2VvyTOdgM28JhTD+TZU88/Am A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="479636901"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; d="scan'208";a="479636901"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 20:50:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="835654211"
X-IronPort-AV: E=Sophos;i="6.04,240,1695711600"; d="scan'208";a="835654211"
Received: from sinjan-super-server.iind.intel.com ([10.145.169.153])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2023 20:50:45 -0800
From: Karthik Poosa <karthik.poosa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Dec 2023 10:28:03 +0530
Message-Id: <20231201045803.1131795-1-karthik.poosa@intel.com>
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
Fixed unintentional buffer overflow (OVERFLOW_BEFORE_WIDEN) with upcasting.

v2: Updated commit message with details of issue [Jani].

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

