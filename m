Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C97357040F1
	for <lists+intel-gfx@lfdr.de>; Tue, 16 May 2023 00:25:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B1A10E2AD;
	Mon, 15 May 2023 22:25:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA71110E2B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 22:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684189535; x=1715725535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1ptb0ctfRR/qjQOP5GWqki+RE6QGp4TrzMGFiVlABKs=;
 b=JEFyYEX5FrIdNJ3fpYQ7g8Am9BadOmDCQ7vtfSvDwKfYVhttM8nMJnZG
 aEYhgFKoQVpM9QHNKyF9Wpoaqf8FbpeZSVcGmTtyy+v1kNBVnerPDGgn8
 5mGPrrqorCZ7H9Cz+vAHnEvbWyVLfB7bCVEqWkz9FKfma7zTJfGBc+vTo
 utz0PFPWG8n+UWnQxlyn66O87t+qPaLms7n0t9xvG1eHzr6irlkoOwjno
 sBIxwbWVaAQNX+zL4Iks/ImBK3KovAVAe6XpN4CU9H8KJWl4qNOTLspuR
 AT8Xqs9/HlWuqTWwacwRswC00w6P2VEMAb4yzQJ0ubZu1MMVJy/bXMZfU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="379493666"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="379493666"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:25:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10711"; a="704146054"
X-IronPort-AV: E=Sophos;i="5.99,277,1677571200"; d="scan'208";a="704146054"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 15:25:35 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 15 May 2023 15:24:23 -0700
Message-Id: <20230515222423.224407-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230515222423.224407-1-radhakrishna.sripada@intel.com>
References: <20230515222423.224407-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/mtl: Extend Wa_16014892111 to
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

The dg2 workaround which requires the register for
DRAW_WATERMARK to be saved/restored during context reset/switch
is required on MTL-A step as well.

v2: Limit the WA for A-step
v3: Update the commit message.

Bspec: 68331
Cc: Haridhar Kalvala <haridhar.kalvala@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 81a96c52a92b..9c1007c44298 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1370,7 +1370,9 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 					      cs, GEN12_GFX_CCS_AUX_NV);
 
 	/* Wa_16014892111 */
-	if (IS_DG2(ce->engine->i915))
+	if (IS_DG2(ce->engine->i915) ||
+	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
+	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
 	return cs;
-- 
2.34.1

