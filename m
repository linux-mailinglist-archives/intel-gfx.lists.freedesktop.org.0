Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 673282F911A
	for <lists+intel-gfx@lfdr.de>; Sun, 17 Jan 2021 07:46:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E9589F6D;
	Sun, 17 Jan 2021 06:45:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9459789DDF
 for <Intel-gfx@lists.freedesktop.org>; Sun, 17 Jan 2021 06:45:53 +0000 (UTC)
IronPort-SDR: OayahT/a0HQfHlFQFGKZ7dvfWPUEpLrAimmPX3z9He/DfQFV3rHZoJgjumSzkP7sI14+zmNTH7
 hWPyJhSqgfFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9866"; a="158475685"
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="158475685"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2021 22:45:53 -0800
IronPort-SDR: rZt2zu1lUG7jXZw2PNB0s2Dond0RlwvLB2JamvqHCOGUBtk306LE/rHTU1Sjn0lNCAF6ZkVhEY
 Kb2qCAci5HWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,352,1602572400"; d="scan'208";a="500346796"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga004.jf.intel.com with ESMTP; 16 Jan 2021 22:45:52 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sat, 16 Jan 2021 22:45:37 -0800
Message-Id: <20210117064548.8822-3-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210117064548.8822-1-sean.z.huang@intel.com>
References: <20210106231223.8323-1-sean.z.huang@intel.com>
 <20210117064548.8822-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v21 02/13] drm/i915/pxp: set KCR reg init during
 the boot time
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
Cc: kumar.gaurav@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set the KCR init during the boot time, which is
required by hardware, to allow us doing further
protection operation such as sending commands to
GPU or TEE.

rev21:
    - Remove "#define KCR_INIT_MASK_SHIFT (16)", but still keep the
      macro in this .c file
    - Write KCR_INIT reg inly for gen12 during boot, not required
      for gen13+

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 9bc3c7e30654..4e9cee7df4f2 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,12 @@
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
 
+/* KCR register definitions */
+#define KCR_INIT            _MMIO(0x320f0)
+
+/* Setting KCR Init bit is required after system boot */
+#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << 16))
+
 void intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
@@ -15,6 +21,9 @@ void intel_pxp_init(struct intel_pxp *pxp)
 
 	intel_pxp_ctx_init(&pxp->ctx);
 
+	if (INTEL_GEN(gt->i915) == 12)
+		intel_uncore_write(gt->uncore, KCR_INIT, KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
+
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
 }
 
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
