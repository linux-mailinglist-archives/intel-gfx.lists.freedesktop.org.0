Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C98A46E6F12
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Apr 2023 00:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B039A10E07B;
	Tue, 18 Apr 2023 22:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8585210E1AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 22:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681855565; x=1713391565;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=bHRnNR0You1Crdm8kE51zXEoqYKC3SUaSfoNn79NMGA=;
 b=QpIODxRsUGdrTCJD1oxd7syRohubQx3MS9rQq9gpbC7E/EiS4LqAOM85
 4hDnF5yCY7vXeStmeimmekzaOaQevpyW8FyUS+T3vIp7wLieHYW2qOmjz
 UMXC3YQbvV5wWHVl/4TbQJyIREXk6wick0F8qy2IjcnOlHaWubF2S9XSJ
 WhLTALfr43/PWgRbvTidSpAytIdTlkHGQ4v9kfi3anHrp7izbICj0c6i+
 5Ew5HqwxaBATWmFJybu5/DNMZ//04o9Nr8uAb4xc7Wvuj1t/DEYPDH/BR
 3oRBQLzeoJgvm+nrMRFp3hRDGInVSoFtzs0FakvohKegZgMGlqTxb/FHV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334101437"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334101437"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:06:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="684761348"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="684761348"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 15:05:59 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 15:04:45 -0700
Message-Id: <20230418220446.2205509-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
References: <20230418220446.2205509-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/4] drm/i915/mtl: Extend Wa_22011802037 to
 MTL A-step
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

From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>

Wa_22011802037 was being applied to all graphics_ver 11 & 12. This patch
updates the if statement to apply the W/A to right platforms and extends
it to MTL-M:A step.

v1.1: Fix checkpatch warning.
v2: Change the check to reflect the wa at other palces(Lucas)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 88e881b100cf..ee3e8352637f 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -1629,16 +1629,16 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
 
 static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
 {
-	if (!IS_GRAPHICS_VER(engine->i915, 11, 12))
-		return;
-
-	intel_engine_stop_cs(engine);
-
 	/*
 	 * Wa_22011802037: In addition to stopping the cs, we need
 	 * to wait for any pending mi force wakeups
 	 */
-	intel_engine_wait_for_pending_mi_fw(engine);
+	if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
+	    (GRAPHICS_VER(engine->i915) >= 11 &&
+	     GRAPHICS_VER_FULL(engine->i915) < IP_VER(12, 70))) {
+		intel_engine_stop_cs(engine);
+		intel_engine_wait_for_pending_mi_fw(engine);
+	}
 }
 
 static void guc_reset_nop(struct intel_engine_cs *engine)
-- 
2.34.1

