Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D052F7ECA6F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 19:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DCC410E157;
	Wed, 15 Nov 2023 18:21:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B5210E157
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 18:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700072487; x=1731608487;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sKhE5twSeGAHMcaBvbxpvlvNhOS8r0t0UbYSuSkSgQo=;
 b=EcUSdHZPbZ35FsdmKI2Sm7oJfXShfCE193NSyWTfxZYZH6rEIQt9a8YO
 ou0n9pF943Q8Y/mfqfzfnhqnQLrBpNTDfYK34az7CwHjLzT0kwzVnlPxA
 1LPA95JXPyLuWgpR6725fTLTWNgY0WndhgMAjk5UQr65Rkf8oNdqpsbqQ
 g6wWyRM73/KuCXbuoV/a2s/qnNxCZldhGzQiiUXxVwk7GfRz1IIbrWEUj
 VPX8q5VzCx4th90AE0zT5qTPosOmiXXbrysHwtAHgWB2o2Il5ti27XIdC
 5Jxx7TUAfNxUmee4YRptdqG1WP8+HbGJhahWDsmcLKm1F7bkgsi+wRtHe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="388089066"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="388089066"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 10:21:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="758563082"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="758563082"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.131])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 10:21:25 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Nov 2023 10:21:18 -0800
Message-ID: <20231115182117.2551522-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/dg2: Wa_18028616096 now applies to all
 DG2
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The workaround database was just updated to extend this workaround to
DG2-G11 (whereas previously it applied only to G10 and G12).

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 63205edfea50..9bc0654efdc0 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2937,6 +2937,9 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 		 * Wa_22015475538:dg2
 		 */
 		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, DIS_CHAIN_2XSIMD8);
+
+		/* Wa_18028616096 */
+		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
 	}
 
 	if (IS_DG2_G11(i915)) {
@@ -2965,11 +2968,6 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
 			   true);
 	}
 
-	if (IS_DG2_G10(i915) || IS_DG2_G12(i915)) {
-		/* Wa_18028616096 */
-		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW, UGM_FRAGMENT_THRESHOLD_TO_3);
-	}
-
 	if (IS_XEHPSDV(i915)) {
 		/* Wa_1409954639 */
 		wa_mcr_masked_en(wal,
-- 
2.41.0

