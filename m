Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9F43B14A1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 09:30:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7596E311;
	Wed, 23 Jun 2021 07:30:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C9C6E311
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 07:30:38 +0000 (UTC)
IronPort-SDR: uSSq7lQGRxo/wps/kWO7bp3UScW7+ywrseGKQjeIL8R4fB0Ub+s2vwCcZyiEYUilDvYk+5IZ8b
 3XUeP76ujm8A==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="207150082"
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="207150082"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 00:30:37 -0700
IronPort-SDR: 8+xctfFksfhL3ufdjt4A85ZX0L50U4SV+0KQKsueja6dyZslQNcrijdFQlAiDd9YBYXXASGVcL
 e9uhQGDv2MIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,293,1616482800"; d="scan'208";a="406228093"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga006.jf.intel.com with ESMTP; 23 Jun 2021 00:30:36 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Jun 2021 12:51:44 +0530
Message-Id: <20210623072144.890147-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftest: Extend ctx_timestamp ICL
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

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
index 72cca3f0da21..d0afadf34649 100644
--- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
@@ -173,8 +173,8 @@ static int __live_engine_timestamps(struct intel_engine_cs *engine)
 	d_ctx = trifilter(s_ctx);
 
 	d_ctx *= engine->gt->clock_frequency;
-	if (IS_ICELAKE(engine->i915))
-		d_ring *= 12500000; /* Fixed 80ns for icl ctx timestamp? */
+	if (IS_GEN(engine->i915, 11))
+		d_ring *= 12500000; /* Fixed 80ns for GEN11 ctx timestamp? */
 	else
 		d_ring *= engine->gt->clock_frequency;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
