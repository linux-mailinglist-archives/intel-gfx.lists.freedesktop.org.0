Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C80172C24
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 00:16:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAE489DFE;
	Thu, 27 Feb 2020 23:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBF0A6ED8D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 23:15:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 15:15:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,493,1574150400"; d="scan'208";a="242210508"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 27 Feb 2020 15:15:54 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 15:14:58 -0800
Message-Id: <20200227231458.76159-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200227231458.76159-1-matthew.d.roper@intel.com>
References: <20200227231458.76159-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Apply Wa_1406680159:icl,
 ehl as an engine workaround
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

The register this workaround updates is a render engine register in the
MCR range, so we should initialize this in rcs_engine_wa_init() rather
than gt_wa_init().

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1222
Fixes: 36204d80bacb ("drm/i915/icl: Wa_1406680159")
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 0932db5194ad..5fb50191c945 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -903,11 +903,6 @@ icl_gt_workarounds_init(struct drm_i915_private *i915, struct i915_wa_list *wal)
 			    SLICE_UNIT_LEVEL_CLKGATE,
 			    MSCUNIT_CLKGATE_DIS);
 
-	/* Wa_1406680159:icl */
-	wa_write_or(wal,
-		    SUBSLICE_UNIT_LEVEL_CLKGATE,
-		    GWUNIT_CLKGATE_DIS);
-
 	/* Wa_1406838659:icl (pre-prod) */
 	if (IS_ICL_REVID(i915, ICL_REVID_A0, ICL_REVID_B0))
 		wa_write_or(wal,
@@ -1430,6 +1425,11 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				   GEN11_SCRATCH2,
 				   GEN11_COHERENT_PARTIAL_WRITE_MERGE_ENABLE,
 				   0);
+
+		/* Wa_1406680159:icl,ehl */
+		wa_write_or(wal,
+			    SUBSLICE_UNIT_LEVEL_CLKGATE,
+			    GWUNIT_CLKGATE_DIS);
 	}
 
 	if (IS_GEN_RANGE(i915, 9, 11)) {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
