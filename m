Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6149278A5B9
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D60D010E20E;
	Mon, 28 Aug 2023 06:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD70B10E20E
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Aug 2023 06:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693204046; x=1724740046;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1BoxS37ArbPiikAMgQDDtOEw3Zw3trwtL+8E8jXgWBs=;
 b=WG95NHWyd48vEMInzBa5WEBWbmPOdYyE2ZEL7YAPpi5Wsp/ZybtzJnDM
 kZ+qd2dB0QM9EaPvE3PymN7P55BiPtnKK/YaDCqvKmoQ4vpcZRH82B0GU
 wkz//8Tkf1OBqg9mYW+xNK6O+ifyjjS6El9uDdPI/UBdFG5mwM2szWclM
 ahgRWzB1tdO+DOGZ3Ws3sWolmMEoUc7JFzg2LlHuonc9gKNUPFpZ2QRf/
 KL5J06D1X7J1UnWlpXDN5vTboKiNWhVanOrM0ATHql1GXE8hYtch5lmeJ
 xXtIQFF6zNasQwtosTSKTOx+gQwvNxd75Fmz1ctsWJO4A/V6jAtxLSHNP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="374994884"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="374994884"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:27:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="767546737"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="767546737"
Received: from tejas-super-server.iind.intel.com ([10.145.169.166])
 by orsmga008.jf.intel.com with ESMTP; 27 Aug 2023 23:27:24 -0700
From: Tejas Upadhyay <tejas.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Aug 2023 12:04:50 +0530
Message-Id: <20230828063450.2642748-1-tejas.upadhyay@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Update workaround 14016712196
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Now this workaround is permanent workaround on MTL and DG2,
earlier we used to apply on MTL A0 step only.
VLK-45480

Fixes: d922b80b1010 ("drm/i915/gt: Add workaround 14016712196")
Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 6187b25b67ab..0143445dba83 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -226,8 +226,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_engine_cs *engine, u32 *cs)
 static int mtl_dummy_pipe_control(struct i915_request *rq)
 {
 	/* Wa_14016712196 */
-	if (IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
-	    IS_GFX_GT_IP_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
+	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 71)) ||
+	    IS_DG2(rq->i915)) {
 		u32 *cs;
 
 		/* dummy PIPE_CONTROL + depth flush */
@@ -810,8 +810,7 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
 		     PIPE_CONTROL_FLUSH_ENABLE);
 
 	/* Wa_14016712196 */
-	if (IS_GFX_GT_IP_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
-	    IS_GFX_GT_IP_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
+	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) || IS_DG2(i915))
 		/* dummy PIPE_CONTROL + depth flush */
 		cs = gen12_emit_pipe_control(cs, 0,
 					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
-- 
2.25.1

