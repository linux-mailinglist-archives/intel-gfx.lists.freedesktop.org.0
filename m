Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D27B70766C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 01:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A1610E4AF;
	Wed, 17 May 2023 23:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0711710E2E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 May 2023 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684366343; x=1715902343;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=trydcNa+nPRAo7YF84LAZrB3lvD/MRmUcjYGLh/qYuM=;
 b=L3d+5V3a6SohcRLJl2apJa9l8/2HphV8wSzOOsRY0ZDSOXEBMSl8JVEh
 J3jmSUMGJ1L6QFkP9bZ2SDZr2s37PGqWmBcFo3x2V2/o4FyQfvh6Ya3mb
 k9JbEvpkM+5zYQpYGeW4KGoXD6vfdZO/Er7Nm5f0OzzNlCUxjH55+pG61
 uWVxYM2Ia8Oj1ykFpXgS+eSAHxR2vfOk+UiyXWgnAlBoRnCQPpV94+/01
 aMJ9pr8buppcGc031A9HqPFPuGP8AexQtSGylVH17p0evOhEf/GRbC2WQ
 grWe6aJMfyo45MidusjH91F9L9Kz6QcssIN6Jv4q+SJG7rnXDu0CZ5BOk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="355087912"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="355087912"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 16:32:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="732642913"
X-IronPort-AV: E=Sophos;i="5.99,283,1677571200"; d="scan'208";a="732642913"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 16:32:21 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 May 2023 16:31:11 -0700
Message-Id: <20230517233111.297542-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230517233111.297542-1-radhakrishna.sripada@intel.com>
References: <20230517233111.297542-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 2/2] drm/i915/mtl: Extend Wa_16014892111 to
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
Cc: Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Like DG2, MTL a-step hardware is subject to Wa_16014892111 which
requires that any changes made to the DRAW_WATERMARK register be
done via an INDIRECT_CTX batch buffer rather than through a regular
context workaround.

The bspec gives the same non-default recommended tuning value
for DRAW_WATERMARK as DG2, so we can re-use the INDIRECT_CTX code
to apply that tuning setting on A-step hardware.

Application of the tuning setting on B-step and later does not
need INDIRECT_CTX handling and is already done in
mtl_ctx_workarounds_init() as usual.

v2: Limit the WA for A-step
v3: Update the commit message.
v4: Reorder platform checks and update commit message.

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 81a96c52a92b..a4ec20aaafe2 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 					      cs, GEN12_GFX_CCS_AUX_NV);
 
 	/* Wa_16014892111 */
-	if (IS_DG2(ce->engine->i915))
+	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
+	    IS_DG2(ce->engine->i915))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
 	return cs;
-- 
2.34.1

