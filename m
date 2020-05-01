Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D07B1C1B32
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 19:08:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B73D6ECF7;
	Fri,  1 May 2020 17:08:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C7C96ECEB
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 17:08:00 +0000 (UTC)
IronPort-SDR: rlHyZlj2PqEDWBvC4t6lwCwui4afb2bdwuc+rRiRaXpX5C9eSI6O9dfbqZ9MOzHlBNIbmrJeFg
 lViwmjboNkgQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 10:07:59 -0700
IronPort-SDR: o2LhcBjyYLPY/n6n+MHvCdsUP8+WE57ZM6m6L5sCldzHJvmNFQkTxWjJ3E6jtmpYVU35OWuWiY
 jtlhzdxV2NYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,340,1583222400"; d="scan'208";a="250062107"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by fmsmga008.fm.intel.com with ESMTP; 01 May 2020 10:07:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 May 2020 10:07:28 -0700
Message-Id: <20200501170748.358135-4-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200501170748.358135-1-matthew.d.roper@intel.com>
References: <20200501170748.358135-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/23] drm/i915/rkl: Re-use TGL GuC/HuC firmware
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

RKL uses the same GuC and HuC as TGL and should load the same firmwares.

Bspec: 50668
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index e1caae93996d..9b6218128d09 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -47,8 +47,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * TGL 35.2 is interface-compatible with 33.0 for previous Gens. The deltas
  * between 33.0 and 35.2 are only related to new additions to support new Gen12
  * features.
+ *
+ * Note that RKL uses the same firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
+	fw_def(ROCKETLAKE,  0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 0, 12)) \
 	fw_def(TIGERLAKE,   0, guc_def(tgl, 35, 2, 0), huc_def(tgl,  7, 0, 12)) \
 	fw_def(ELKHARTLAKE, 0, guc_def(ehl, 33, 0, 4), huc_def(ehl,  9, 0, 0)) \
 	fw_def(ICELAKE,     0, guc_def(icl, 33, 0, 0), huc_def(icl,  9, 0, 0)) \
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
