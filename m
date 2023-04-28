Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305FD6F1886
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 14:55:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5296F10ED39;
	Fri, 28 Apr 2023 12:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC8910ED3B
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 12:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682686517; x=1714222517;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ylqk0g3xN2IIhrd0tS6F3WJrLkUuzEiSeGYXvzHI4jo=;
 b=dYt0Pfz5EAw2U32xSwRsZsJ3uPFP/bQlo51CoCvSiIAh+Q+Fqs6GrIRj
 PPDkbOOQWifUs6xDtI/lK+dbvCW0QDWugugnTAjMBJXU44zlnYTqrU+tL
 0ZiQu+sotjpaGao7kEUGnfYK+LnKwrLKM31Oh03EftayehqM6eBf4Cvd2
 jo0AO80n+BI6UDEtCGXAH/zjEAswXfqEwnsNR0OBiaetW0FjeJ1H/4732
 0c9dIlcFpS5Bq+mILHNy76Rm+kkreOdaSDYDkhHrrCYdtfzBgGPOfZOWZ
 80Q0jVDpfLPpd+C4inCL460/ZgkGYnZG8SiF34i6shFIkrHX9i8Cq30/h Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="413127888"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="413127888"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 05:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="759646892"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="759646892"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by fmsmga008.fm.intel.com with ESMTP; 28 Apr 2023 05:55:03 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Apr 2023 18:29:51 +0530
Message-Id: <20230428125952.4037964-2-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
References: <20230428125952.4037964-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Use gt_err for GT info
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

It will be more informative regarding
GT if we use gt_err instead.

Cc: Andi Shyti <andi.shyti@intel.com>
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 87c94314cf67..10e556a7eac4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -5,6 +5,7 @@
 
 #include <linux/sort.h>
 
+#include "gt/intel_gt_print.h"
 #include "i915_selftest.h"
 #include "intel_engine_regs.h"
 #include "intel_gpu_commands.h"
@@ -402,7 +403,7 @@ static int live_engine_pm(void *arg)
 
 			/* gt wakeref is async (deferred to workqueue) */
 			if (intel_gt_pm_wait_for_idle(gt)) {
-				pr_err("GT failed to idle\n");
+				gt_err(gt, "GT failed to idle\n");
 				return -EINVAL;
 			}
 		}
-- 
2.25.1

