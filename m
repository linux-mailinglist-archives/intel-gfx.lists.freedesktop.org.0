Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC67E5B0FA9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 00:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D36210E400;
	Wed,  7 Sep 2022 22:09:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A30710E400
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Sep 2022 22:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662588596; x=1694124596;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=btv2VnwAltW8ukKCVX4l5DzDBJlXuIj4zjmkgMz9/Dk=;
 b=aCT0riZDmYC6npPKvIsWyxEGjARmLo7NHHazEcdHmpPk0DWR9YVpFt4P
 C9P0JGq4xcoxcK2iRmvSPJS1BjtA2m0pcCq3rowbmthB+yCNfy6lipkh3
 WbvVUbmdyDIbvn8OrA48Q/g3XBl6vzvnEhgHhlhzSKh58UJL4T15acw4B
 n32DyVagNeELhnE233YXnJAvrG431L9g8AY916L8nrdB5icDIc2xGliat
 gY6xlHK21O/gtRuKhMHTh+jQ5F/SAWLSOrVRIOF3dSDqCH4DvM40ONSur
 mPc+fG/pdksqSq0XM/52wi1BDqLV4B1R3vaeCm0H3VhRQpkXPh0wjfhhs Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="277399637"
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="277399637"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 15:09:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,298,1654585200"; d="scan'208";a="676401016"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 15:09:55 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 15:09:52 -0700
Message-Id: <20220907220952.1611811-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Fix perf limit reasons bit
 positions
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
Cc: Andi Shyti <andi.shyti@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Perf limit reasons bit positions were off by one.

Fixes: fa68bff7cf27 ("drm/i915/gt: Add sysfs throttle frequency interfaces")
Cc: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c413eec3373f..24009786f88b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1794,14 +1794,14 @@
 
 #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
 #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
-#define   PROCHOT_MASK			REG_BIT(1)
-#define   THERMAL_LIMIT_MASK		REG_BIT(2)
-#define   RATL_MASK			REG_BIT(6)
-#define   VR_THERMALERT_MASK		REG_BIT(7)
-#define   VR_TDC_MASK			REG_BIT(8)
-#define   POWER_LIMIT_4_MASK		REG_BIT(9)
-#define   POWER_LIMIT_1_MASK		REG_BIT(11)
-#define   POWER_LIMIT_2_MASK		REG_BIT(12)
+#define   PROCHOT_MASK			REG_BIT(0)
+#define   THERMAL_LIMIT_MASK		REG_BIT(1)
+#define   RATL_MASK			REG_BIT(5)
+#define   VR_THERMALERT_MASK		REG_BIT(6)
+#define   VR_TDC_MASK			REG_BIT(7)
+#define   POWER_LIMIT_4_MASK		REG_BIT(8)
+#define   POWER_LIMIT_1_MASK		REG_BIT(10)
+#define   POWER_LIMIT_2_MASK		REG_BIT(11)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
-- 
2.34.1

