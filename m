Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34E29457051
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 15:09:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B29806E49B;
	Fri, 19 Nov 2021 14:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749A16E270
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Nov 2021 14:09:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10172"; a="234248900"
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="234248900"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 06:09:05 -0800
X-IronPort-AV: E=Sophos;i="5.87,247,1631602800"; d="scan'208";a="537111965"
Received: from sjschmid-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.22.100])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2021 06:09:04 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Nov 2021 06:09:30 -0800
Message-Id: <20211119140931.32791-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] Revert "drm/i915: Implement Wa_1508744258"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This workarounds are causing hangs, because I missed the fact that it
needs to be enabled for all cases and disabled when doing a resolve
pass.

So KMD only needs to whitelist it and UMD will be the one setting it
on per case.

This reverts commit 28ec02c9cbebf3feeaf21a59df9dfbc02bda3362.

Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/4145
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index a9727447c0379..cd2935b9e7c81 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -637,13 +637,6 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
 	       FF_MODE2_GS_TIMER_MASK,
 	       FF_MODE2_GS_TIMER_224,
 	       0, false);
-
-	/*
-	 * Wa_14012131227:dg1
-	 * Wa_1508744258:tgl,rkl,dg1,adl-s,adl-p
-	 */
-	wa_masked_en(wal, GEN7_COMMON_SLICE_CHICKEN1,
-		     GEN9_RHWO_OPTIMIZATION_DISABLE);
 }
 
 static void dg1_ctx_workarounds_init(struct intel_engine_cs *engine,
-- 
2.33.1

