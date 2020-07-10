Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 389FF21B466
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD1926EBEA;
	Fri, 10 Jul 2020 11:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008CA6EBEA
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:23 +0000 (UTC)
IronPort-SDR: av/fQQIGsRbt4E0dc5mJijE4uP4ADp84XXys+nWmV8Cj/ONg8Rnut8vCjwUall79skKX28xldV
 /7ViKQIUVmJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653663"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653663"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:23 -0700
IronPort-SDR: HxHCCtRhw9Bm+JSRGfgs/ixRFsvVo4js080vWvfnzmcZkwEIREikCIiEBTyPWcEqPTb0FMPANm
 NCyLYiQMfWZA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257383"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:21 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:07 +0100
Message-Id: <20200710115757.290984-11-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 10/60] drm/i915/dg1: Increase mmio size to 4MB
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

On dgfx register range has been extended to go up to 4MB.

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index f5edee17902a..8f9c82aa7338 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1701,11 +1701,15 @@ static int uncore_mmio_setup(struct intel_uncore *uncore)
 	 * clobbering the GTT which we want ioremap_wc instead. Fortunately,
 	 * the register BAR remains the same size for all the earlier
 	 * generations up to Ironlake.
+	 * For dgfx chips register range is expanded to 4MB.
 	 */
 	if (INTEL_GEN(i915) < 5)
 		mmio_size = 512 * 1024;
+	else if (IS_DGFX(i915))
+		mmio_size = 4 * 1024 * 1024;
 	else
 		mmio_size = 2 * 1024 * 1024;
+
 	uncore->regs = pci_iomap(pdev, mmio_bar, mmio_size);
 	if (uncore->regs == NULL) {
 		drm_err(&i915->drm, "failed to map registers\n");
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
