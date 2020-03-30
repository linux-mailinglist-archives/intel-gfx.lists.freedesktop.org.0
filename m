Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF604197AC1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 13:33:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF0196E24E;
	Mon, 30 Mar 2020 11:33:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68136E24E
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 11:33:49 +0000 (UTC)
IronPort-SDR: sFJohv9/aUyS3YTr9iv3LR386CsCeUjiJvjhP50IACjRJ0c4+hFTSy0Q3FVuf8gR04t6axPiFu
 H7ZGIvW9bTjw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 04:33:49 -0700
IronPort-SDR: 34t1DK/m9Aks/wlpKI8LdfAym9e4eBAX6MuanoEAzY17WH3kfk0Rg4ev6Dgs2qSEDJQRT8gGvl
 uVGN+tYPb74Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,324,1580803200"; d="scan'208";a="248671661"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2020 04:33:47 -0700
Received: from mwajdecz-MOBL.ger.corp.intel.com
 (mwajdecz-mobl.ger.corp.intel.com [10.249.134.165])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 02UBXlAI022808; Mon, 30 Mar 2020 12:33:47 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 13:33:38 +0200
Message-Id: <20200330113338.1713-1-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/huc: Fix HuC register used in debugfs
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We report HuC status in debugfs using register read, but
we missed that on Gen11+ HuC uses different register.
Use correct one.

While here, correct placement of the colon.

Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/uc/intel_huc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
index d6097b46600c..3fee65308474 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
@@ -244,6 +244,6 @@ void intel_huc_load_status(struct intel_huc *huc, struct drm_printer *p)
 	intel_uc_fw_dump(&huc->fw, p);
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		drm_printf(p, "\nHuC status 0x%08x:\n",
-			   intel_uncore_read(gt->uncore, HUC_STATUS2));
+		drm_printf(p, "HuC status: 0x%08x\n",
+			   intel_uncore_read(gt->uncore, huc->status.reg));
 }
-- 
2.19.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
