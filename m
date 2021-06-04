Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F71F39C35E
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Jun 2021 00:14:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3756F598;
	Fri,  4 Jun 2021 22:14:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 871C56F598
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 22:14:51 +0000 (UTC)
IronPort-SDR: XSFZ9YX+h+ANmIQz6b+tW5qRiSDfu9+GIfRKiwAGYUMdCyB7sDBX5WO9du+XHQIIH6AROR1Qb8
 kXMWgoF391JA==
X-IronPort-AV: E=McAfee;i="6200,9189,10005"; a="290007752"
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="290007752"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2021 15:14:31 -0700
IronPort-SDR: gKkfz9wML2C0pSbOSOPTR/HI+TzitZddrqqHrzCdEPjqGKo6aeqsn3vKNXWAchvz/q8Wn0d8a2
 CjEPX0gMpx7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,249,1616482800"; d="scan'208";a="446835655"
Received: from otc-chromeosbuild-4.jf.intel.com ([10.54.30.39])
 by orsmga008.jf.intel.com with ESMTP; 04 Jun 2021 15:14:30 -0700
From: Nataraj Deshpande <nataraj.deshpande@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Jun 2021 15:14:25 -0700
Message-Id: <20210604221425.154917-1-nataraj.deshpande@intel.com>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/adl_p: Extend Wa_1606931601 for ADL-P
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
Cc: lucas.demarchi@intel.com, Nataraj Deshpande <nataraj.deshpande@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Helps to fixe skia test failures on adl_p platform.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Nataraj Deshpande <nataraj.deshpande@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 62cb9ee5bfc3..38efc1e0ccfa 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -1633,9 +1633,9 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			    GEN7_DISABLE_SAMPLER_PREFETCH);
 	}
 
-	if (IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
+	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
 	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
-		/* Wa_1606931601:tgl,rkl,dg1,adl-s */
+		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
 		wa_masked_en(wal, GEN7_ROW_CHICKEN2, GEN12_DISABLE_EARLY_READ);
 
 		/*
-- 
2.29.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
