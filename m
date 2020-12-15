Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B242DA531
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Dec 2020 02:08:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 821786E054;
	Tue, 15 Dec 2020 01:08:03 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18036E045
 for <Intel-gfx@lists.freedesktop.org>; Tue, 15 Dec 2020 01:08:01 +0000 (UTC)
IronPort-SDR: UI7fSVIr1bcdm+4OcQxypdqiMprLniPBC55rMld0NtGhc/Hwu78ydwRMuwKimXu1j2Hwnl/+10
 ciKGcw4j6KNQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9835"; a="171297984"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="171297984"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 17:08:01 -0800
IronPort-SDR: yrqaLttbHgq2hxauDgSbDNnqkw92TA5qgA2C7bvjBGYRhuZSwifKAn+/MYDn4XVZASgyDCW/MT
 2dYfkvcqAhaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; d="scan'208";a="331861122"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga007.fm.intel.com with ESMTP; 14 Dec 2020 17:08:01 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 14 Dec 2020 17:07:05 -0800
Message-Id: <20201215010726.15898-3-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201215010726.15898-1-sean.z.huang@intel.com>
References: <20201215010726.15898-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v9 02/23] drm/i915/pxp: set KCR reg init during
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Set the KCR init during the boot time, which is
required by hardware, to allow us doing further
protection operation such as sending commands to
GPU or TEE.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index ba43b2c923c7..c4815950567d 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -6,6 +6,12 @@
 #include "intel_pxp.h"
 #include "intel_pxp_context.h"
 
+/* KCR register definitions */
+#define KCR_INIT            _MMIO(0x320f0)
+#define KCR_INIT_MASK_SHIFT (16)
+/* Setting KCR Init bit is required after system boot */
+#define KCR_INIT_ALLOW_DISPLAY_ME_WRITES (BIT(14) | (BIT(14) << KCR_INIT_MASK_SHIFT))
+
 int intel_pxp_init(struct intel_pxp *pxp)
 {
 	struct intel_gt *gt = container_of(pxp, struct intel_gt, pxp);
@@ -16,6 +22,8 @@ int intel_pxp_init(struct intel_pxp *pxp)
 
 	intel_pxp_ctx_init(&pxp->ctx);
 
+	intel_uncore_write(gt->uncore, KCR_INIT, KCR_INIT_ALLOW_DISPLAY_ME_WRITES);
+
 	drm_info(&gt->i915->drm, "Protected Xe Path (PXP) protected content support initialized\n");
 
 	return 0;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
