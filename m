Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D92E731A6B2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 22:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB5D26E802;
	Fri, 12 Feb 2021 21:19:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32B4A6E802
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 21:19:42 +0000 (UTC)
IronPort-SDR: BXpvsexUvbd0o7pQ57ag9a2WjAyRKrV5xZq+6jPKjYlwqFffnet8UF9OTyxrpcXPI9tu1SFrr7
 x/lq9iseSafQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="182609135"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="182609135"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 13:19:42 -0800
IronPort-SDR: 1CzD4aE23+Z9qbI1JUNVstfaRFBZ5nw/xLvr+S/FUpho+dxv3dVHATueceA97vrCM6Zp652KWf
 q1+mTLFcgs9w==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="381867055"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 13:19:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 13:19:25 -0800
Message-Id: <20210212211925.3418280-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210212211925.3418280-1-matthew.d.roper@intel.com>
References: <20210212211925.3418280-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Try to detect sudden loss of MMIO
 access
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

In rare circumstances bugs in PCI programming, broken BIOS, or failing
hardware can cause the CPU to lose access to the MMIO BAR on dgfx
platforms.  This is a pretty catastrophic failure since all register
reads come back with values of 0xFFFFFFFF.  Let's check for this special
case while doing our usual checks for unclaimed registers; the FPGA_DBG
register we use for those checks on modern platforms has some unused
bits that will always read back as 0 when things are behaving properly;
we can use them as canaries to detect when MMIO itself has suddenly
broken and try to print a more informative error message in the logs.

v2: Let the detection function still return 'true' if we've lost our
    MMIO access.  We'll still get an extra false positive message about
    an unclaimed register access, but we'll still honor the 'mmio_debug'
    limit and not spam the log.  (Lucas)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 5098f95d71b0..661b50191f2b 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -465,6 +465,22 @@ fpga_check_for_unclaimed_mmio(struct intel_uncore *uncore)
 	if (likely(!(dbg & FPGA_DBG_RM_NOCLAIM)))
 		return false;
 
+	/*
+	 * Bugs in PCI programming (or failing hardware) can occasionally cause
+	 * us to lose access to the MMIO BAR.  When this happens, register
+	 * reads will come back with 0xFFFFFFFF for every register and things
+	 * go bad very quickly.  Let's try to detect that special case and at
+	 * least try to print a more informative message about what has
+	 * happened.
+	 *
+	 * During normal operation the FPGA_DBG register has several unused
+	 * bits that will always read back as 0's so we can use them as canaries
+	 * to recognize when MMIO accesses are just busted.
+	 */
+	if (unlikely(dbg == ~0))
+		drm_err(&uncore->i915->drm,
+			"Lost access to MMIO BAR; all registers now read back as 0xFFFFFFFF!\n");
+
 	__raw_uncore_write32(uncore, FPGA_DBG, FPGA_DBG_RM_NOCLAIM);
 
 	return true;
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
