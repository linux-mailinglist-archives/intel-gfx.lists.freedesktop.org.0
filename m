Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4273695286
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 22:01:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2461B10E742;
	Mon, 13 Feb 2023 21:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68E3C10E0C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676322054; x=1707858054;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=UmwGrPjnRhFzP/OBAjzwoYLe01fRGSOwy7yvhaUNJI4=;
 b=KdKwSBUvU9an0K8o21n979GQhfnh0pnDd0j2uJMjG5QtnWrsHN0h8nuc
 kFQSzytAkVk1np9XP5jdMdB0JGNnnF93fHoUCZjQPDLdDESX0jkYevToS
 lNa4Fu5JJDaydvHXyXXYs9tok2GgkZ5A8paL9W0mNuY9MC0Jf8PuDPrFu
 5OXfO64SIv6xLCHsRUCPHCropID8qgwV48FjNiA5EvZKX0ccraqb9x3YN
 01mIyB5qi55GYchkJvE2k/7uR5EQu1qDYtmmtWdLBzdUSErXHhq0eoR+9
 BWgRM4LWocc9mzahDyfrbBhqyvQvOSj9Fo/l0KiyOWlMJckd4CjRhGXWM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310633174"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="310633174"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792856387"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792856387"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 13:00:48 -0800
Message-Id: <20230213210049.1900681-3-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/hwmon: Enable PL1 limit when
 writing limit value to HW
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

Previous documentation suggested that the PL1 power limit is always enabled
in HW. However we now find this not to be the case on some platforms (such
as ATSM). Therefore enable the PL1 power limit (by setting the enable bit)
when writing the PL1 limit value to HW.

Bspec: 51864

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 85195d61f89c7..7c20a6f47b92e 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -385,10 +385,11 @@ hwm_power_max_write(struct hwm_drvdata *ddat, long val)
 
 	/* Computation in 64-bits to avoid overflow. Round to nearest. */
 	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
+	nval = PKG_PWR_LIM_1_EN | REG_FIELD_PREP(PKG_PWR_LIM_1, nval);
 
 	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
-					    PKG_PWR_LIM_1,
-					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
+					    PKG_PWR_LIM_1_EN | PKG_PWR_LIM_1,
+					    nval);
 	return 0;
 }
 
-- 
2.38.0

