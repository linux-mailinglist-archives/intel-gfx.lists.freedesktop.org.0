Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1768706A58
	for <lists+intel-gfx@lfdr.de>; Wed, 17 May 2023 15:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D78C10E036;
	Wed, 17 May 2023 13:59:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1034010E036
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 13:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684331989; x=1715867989;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=7CoGNpcAPPqIA6P4NSIL9o0JfWtE7q/7oy7oI8avWos=;
 b=ZHRPPtWwakr9rupaA+wQEBKJd42xZYoCvCpIaLdl3Ujn+e87xhbDlhui
 vbQEKWBhReITXdldgjh/gYoYYLel9KCO2RoDiuA3gCLQ9L1ibCrlwFJDj
 j6ODk12yQLqGBieedf9oIgULTFRPHPOHAf5sUzgNWggyexu9yRCKCfqHm
 u46juS0xDYJ9jWxH3VbHzCZT7AHPvSAUrhTTFmppthALDmsvX1sUvYOa4
 oWeMGvQNz1f8OTd4ZgfKC28S1srUd6xYmTD8roDubLxJK93FWtj3NH+9O
 IDd0eNxS98wEkS/Rg4sPurPnKG1YgnM9u+Smjb0yssqqjSrTIk43IDMBv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="415178643"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="415178643"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:59:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="701767811"
X-IronPort-AV: E=Sophos;i="5.99,282,1677571200"; d="scan'208";a="701767811"
Received: from lab-ah.igk.intel.com ([10.102.138.202])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 06:59:46 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
Date: Wed, 17 May 2023 15:59:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com>
X-B4-Tracking: v=1; b=H4sIAMTdZGQC/x2NQQqDMBAAvyJ7bqixWEm/UiQkZqMLJg27thTEv
 zf2ODDD7CDIhAKPZgfGDwm9cgV9aWBaXJ5RUagMXdvd2l4PKm2rDSTOr2gZc0C2ZVbeRBN1fx+i
 Qaitd4LKs8vTctbvIhujS9fASW1UTqUwRvr+18/xOH5vQQWKigAAAA==
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
X-Mailer: b4 0.11.1
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: do not enable render power-gating
 on MTL
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Multiple CI tests fails with forcewake ack timeouts
if render power gating is enabled.
BSpec 52698 clearly states it should be 0 for MTL.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 908a3d0f2343f4..ebb2373dd73640 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -117,8 +117,9 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 			GEN6_RC_CTL_RC6_ENABLE |
 			GEN6_RC_CTL_EI_MODE(1);
 
-	/* Wa_16011777198 - Render powergating must remain disabled */
-	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	/* Wa_16011777198 and BSpec 52698 - Render powergating must be off */
+	if (IS_METEORLAKE(gt->i915) ||
+	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |

---
base-commit: 01d3dd92d1b71421f6ee85e1bea829e0a917d979
change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e

Best regards,
-- 
Andrzej Hajda <andrzej.hajda@intel.com>
