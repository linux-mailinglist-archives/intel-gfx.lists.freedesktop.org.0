Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5B35B13F9
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E20C10E953;
	Thu,  8 Sep 2022 05:22:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1917A10E953
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614518; x=1694150518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xm0Q7fPy155yKZafxPHpjlak9AVw+4Lg+soEshnENPs=;
 b=ML3GD80x9SR3TVjafUgQBtW7U3t7tqMKIAJ7lIFOaeBWqqE6Tk/xmo5X
 VGFVFZACTxYRjUjOVERuDdzyiaWxC4clzpGRTXaHEzQGhgQ7tgq6oGkdL
 hYVeqkzeltBK60z2d0Qu0uozkmagkBnJvT/m1tjw1dsy7p3KmfO/YmpdT
 bvlSIPGJGIcIv8kz/cAr0WctRop4Ur6Z3p9Yq2ZQYLIhkBRhBYhUWEIPw
 UnpvKWrsNbInUFEsce27qqwZYpUdJLQhFJbxo3DmlPqEWQvJ9s1qMu9LV
 c/+qyK3FZCUn9tJkcD+gpZMeMdYMA6UJyMdznqGiuMyUQ5sHtWyRdiKJQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298408269"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="298408269"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:21:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="610561761"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:21:57 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:21:53 -0700
Message-Id: <e653fabb0b41552f988fbe38ae1d14b7db7f99b8.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/gt: Fix perf limit reasons bit
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
Cc: stable@vger.kernel.org # v5.18+
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

