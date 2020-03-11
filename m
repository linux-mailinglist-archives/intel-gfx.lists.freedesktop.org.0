Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A019181DAA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:23:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078836E9BC;
	Wed, 11 Mar 2020 16:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 034A66E9BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 16:23:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 09:23:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="389312723"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.64])
 by orsmga004.jf.intel.com with ESMTP; 11 Mar 2020 09:23:17 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Mar 2020 09:23:00 -0700
Message-Id: <20200311162300.1838847-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200311162300.1838847-1-matthew.d.roper@intel.com>
References: <20200311162300.1838847-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: Add Wa_1605460711 /
 Wa_1408767742 to ICL and EHL
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

This workaround appears under two different numbers (and with somewhat
confused stepping applicability on ICL).  Ultimately it appears we
should just implement this for all stepping of ICL and EHL.

Note that this is identical to Wa_1407928979:tgl that already exists in
our driver too...yet another number referencing the same actual
workaround.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index cbfc8d5ebb3e..5176ad1a3976 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1487,6 +1487,14 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 		wa_write_or(wal,
 			    SUBSLICE_UNIT_LEVEL_CLKGATE,
 			    GWUNIT_CLKGATE_DIS);
+
+		/*
+		 * Wa_1408767742:icl[a2..forever],ehl[all]
+		 * Wa_1605460711:icl[a0..c0]
+		 */
+		wa_write_or(wal,
+			    GEN7_FF_THREAD_MODE,
+			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
 	}
 
 	if (IS_GEN_RANGE(i915, 9, 12)) {
-- 
2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
