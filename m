Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 47D2827E16F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:42:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7215D6E4FE;
	Wed, 30 Sep 2020 06:42:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E126E4FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:45 +0000 (UTC)
IronPort-SDR: RuIHWqrvvyfjMWjboVHIpJIJIZ5vHMBD4Y75OXQoZF3te3SetfwB79RJbyyPtXevHQFA63IEvo
 oiIpzQNkuhXw==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387752"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387752"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:45 -0700
IronPort-SDR: LYI2OfQotz7op429yvt7xfS2r4N9lWbt8wLShoFHnTHBNefFRrvo8SNarHtMpgsPzEI9BtbdmB
 TSEJo7QtUb4g==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487694"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:44 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:15 -0700
Message-Id: <20200930064234.85769-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 05/24] drm/i915/dg1: Increase mmio size to 4MB
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

On DGFX the register range has been extended to go up to 8MB. However we
only actually use up to address 280000h, so let's increase it to 4MB.

v2 (Lucas):  add bspec reference and reword commit message to explain
   the 4 vs 8 MB used (requested by Matt Roper)

Bspec: 53616

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Michael J. Ruhl <michael.j.ruhl@intel.com>
Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 263ffcb832b7..54e201fdeba4 100644
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
