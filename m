Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 321901FDA74
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 02:43:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44AB46E8DC;
	Thu, 18 Jun 2020 00:43:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92A246E223
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 00:42:52 +0000 (UTC)
IronPort-SDR: J94eBdecFFXQo8/hq6QwIs9ANxufWcR3KR9DeviEfDvX3W0eAVUFORw96eehmkE2fg0zqm5JvC
 48hH2MqSue/Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 17:42:52 -0700
IronPort-SDR: 4qhH9xiHgs0dIaRB/IO7huqNdPxythEEaS43ZCZ5TeHhdiEUWUoeW4hnMy73OJ4QLteU8FF19w
 Jkv8bztz5jXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,524,1583222400"; d="scan'208";a="477011874"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jun 2020 17:42:51 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:42:23 -0700
Message-Id: <20200618004240.16263-16-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200618004240.16263-1-lucas.demarchi@intel.com>
References: <20200618004240.16263-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 15/32] drm/i915/dg1: Increase mmio size to 4MB
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
index 7d6b9ae7403cb..ed56608ae925a 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -1699,11 +1699,15 @@ static int uncore_mmio_setup(struct intel_uncore *uncore)
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
