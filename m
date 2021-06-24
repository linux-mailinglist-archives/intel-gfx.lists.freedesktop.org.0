Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BFA3B2DE5
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jun 2021 13:31:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB2A36EACA;
	Thu, 24 Jun 2021 11:31:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A2766EACA
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jun 2021 11:31:45 +0000 (UTC)
IronPort-SDR: 3QTi6uknOCwjCmQdQPmTIbEPBjaUVl95n7Mz8YeE0S5SFoeJEduI1q7I/R8tCC1Yi+jdulkmfp
 S1fCJV5V3YRw==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="205623195"
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="205623195"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 04:31:45 -0700
IronPort-SDR: g76qRHbW4StpsaC9mpCoqpWZan7obCAQVjBmhgQHWKt/Lw2ONWauo3Zq6V6KZgbs1MrSlTsToH
 qjDvx1Ckinfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,296,1616482800"; d="scan'208";a="481474296"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Jun 2021 04:31:42 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Jun 2021 16:52:50 +0530
Message-Id: <20210624112250.895410-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V2] drm/i915/selftest: Extend ctx_timestamp ICL
 workaround to GEN11
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

EHL and JSL are also observing requirement for 80ns interval for
CTX_TIMESTAMP thus extending it to GEN11.

Changes since V1:
	- IS_GEN replaced by GRAPHICS_VER - Tvrtko

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 72cca3f0da21..75569666105d 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -173,8 +173,8 @@ static int __live_engine_timestamps(struct intel_engine_cs *engine)
 	d_ctx = trifilter(s_ctx);
 
 	d_ctx *= engine->gt->clock_frequency;
-	if (IS_ICELAKE(engine->i915))
-		d_ring *= 12500000; /* Fixed 80ns for icl ctx timestamp? */
+	if (GRAPHICS_VER(engine->i915) == 11)
+		d_ring *= 12500000; /* Fixed 80ns for GEN11 ctx timestamp? */
 	else
 		d_ring *= engine->gt->clock_frequency;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
