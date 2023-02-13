Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2951C695287
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 22:01:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 781A510E740;
	Mon, 13 Feb 2023 21:00:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 356E810E742
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Feb 2023 21:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676322055; x=1707858055;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ix5naOuvpmI2kFrePBmIigfG97g3Qk93xksaOm38yKE=;
 b=AzfNZy/X+uS2Hh1GGFJvVhSPn9q4hAo0pQDDs2bEi8K8N+kwcQG66/Q3
 n7f1BKz4Vos8ogzYvGTW0t6aG8jB5lPGWyT78AyoTYCAhGKoDDZNlylVb
 /uBQvUdjU8pQGIzQ+es8LPW4Eo1WlGeByXzXyGugAjq2t1FexPBUQaNIb
 UffhWqsXdB490oq3t1731nCCDGNPt1Gnn8vjfsgtowU5b4CFdmsWmrlK2
 p0Qma34JoDzGuyNZK4bZIq6HgfxUYfCF3Bd7RmlBD1Mcv9bW1G+P5d/hg
 qIfUCOOetdL4C/c+LXf0nJbGpOewweFF0xn8pdNhPSRP1Tj7OVKisUaj8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="310633175"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="310633175"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="792856388"
X-IronPort-AV: E=Sophos;i="5.97,294,1669104000"; d="scan'208";a="792856388"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2023 13:00:53 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Feb 2023 13:00:49 -0800
Message-Id: <20230213210049.1900681-4-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hwmon: Use -1 to designate
 disabled PL1 power limit
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

On ATSM the PL1 limit is disabled at power up. The previous uapi assumed
that the PL1 limit is always enabled and therefore did not have a notion of
a disabled PL1 limit. This results in erroneous PL1 limit values when the
PL1 limit is disabled. For example at power up, the disabled ATSM PL1 limit
was previously shown as 0 which means a low PL1 limit whereas the limit
being disabled actually implies a high effective PL1 limit value.

To get round this problem, the PL1 limit uapi is expanded to include a
special value, -1, to designate a disabled PL1 limit.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 .../ABI/testing/sysfs-driver-intel-i915-hwmon |  3 ++-
 drivers/gpu/drm/i915/i915_hwmon.c             | 24 +++++++++++++++++++
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
index 2d6a472eef885..7386c39c65cd9 100644
--- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
+++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
@@ -14,7 +14,8 @@ Description:	RW. Card reactive sustained  (PL1/Tau) power limit in microwatts.
 
 		The power controller will throttle the operating frequency
 		if the power averaged over a window (typically seconds)
-		exceeds this limit.
+		exceeds this limit. A value of -1 indicates that the PL1
+		power limit is disabled.
 
 		Only supported for particular Intel i915 graphics platforms.
 
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index 7c20a6f47b92e..e926f2feaef4b 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -345,6 +345,8 @@ hwm_power_is_visible(const struct hwm_drvdata *ddat, u32 attr, int chan)
 	}
 }
 
+#define PL1_DISABLE	-1
+
 /*
  * HW allows arbitrary PL1 limits to be set but silently clamps these values to
  * "typical but not guaranteed" min/max values in rg.pkg_power_sku. Follow the
@@ -358,6 +360,14 @@ hwm_power_max_read(struct hwm_drvdata *ddat, long *val)
 	intel_wakeref_t wakeref;
 	u64 r, min, max;
 
+	/* Check if PL1 limit is disabled */
+	with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
+		r = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_rapl_limit);
+	if (!(r & PKG_PWR_LIM_1_EN)) {
+		*val = PL1_DISABLE;
+		return 0;
+	}
+
 	*val = hwm_field_read_and_scale(ddat,
 					hwmon->rg.pkg_rapl_limit,
 					PKG_PWR_LIM_1,
@@ -381,8 +391,22 @@ static int
 hwm_power_max_write(struct hwm_drvdata *ddat, long val)
 {
 	struct i915_hwmon *hwmon = ddat->hwmon;
+	intel_wakeref_t wakeref;
 	u32 nval;
 
+	if (val == PL1_DISABLE) {
+		/* Disable PL1 limit */
+		hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
+						    PKG_PWR_LIM_1_EN, 0);
+
+		/* Verify, because PL1 limit cannot be disabled on all platforms */
+		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
+			nval = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_rapl_limit);
+		if (nval & PKG_PWR_LIM_1_EN)
+			return -EPERM;
+		return 0;
+	}
+
 	/* Computation in 64-bits to avoid overflow. Round to nearest. */
 	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
 	nval = PKG_PWR_LIM_1_EN | REG_FIELD_PREP(PKG_PWR_LIM_1, nval);
-- 
2.38.0

