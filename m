Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0364F6BDA1D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 21:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FF8810E367;
	Thu, 16 Mar 2023 20:26:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C73310E2FB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 20:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678998390; x=1710534390;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ifjCVwhmdlCRaKo8k2ZE6PVWo9d7x3FuQKE9BFPU3/4=;
 b=WavQsGYJwL8hd6PtEfLwRAOsiwONOJW1ixlQQxSfDUiUwsUt6iiD+Xm7
 7odnimB92Drv2H4YC4qn+Ek98hfZcl3Lz+4qYaLnZXnbmcaBDWMbhEdZY
 Zcs9IgM5KoDOykcCLkPUOT4rF9EuUCdEazvfcdKoqPWcWFQvW326MrYS4
 sV8xXG5kAsnTxePffoDF4b5e85jrBu6aev/ALxkbQ2pi7MVD78Sx52D/D
 74yvBygiAMHBxd61BfnMmlXGM3zXIgD/JVHRfSY7zJ8fnZ7g2EB6Ex5zK
 adr5MI0vuvX9GV165PBgfLehILvBTdnvaNkNK29RMoobyLjx8eNb/vELR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340475489"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="340475489"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="680031884"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="680031884"
Received: from invictus.jf.intel.com ([10.165.21.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 13:26:27 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 13:25:47 -0700
Message-Id: <20230316202549.1764024-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
References: <20230316202549.1764024-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915/mtl: Extend Wa_22011802037 to MTL
 A-step
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
Cc: lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Wa_22011802037 was being applied to all graphics_ver 11 & 12. This patch
updates the if statement to apply the W/A to right platforms and extends
it to MTL-M:A0.

Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 88e881b100cf..e8c4fb9c4901 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1629,7 +1629,9 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
 
 static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 {
-	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
+	if (!(IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(engine->i915) >= 11 &&
+	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))))
 		return;
 
 	intel_engine_stop_cs(engine);
-- 
2.34.1

