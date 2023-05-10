Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 400AE6FE74A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 00:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96E7C10E0EA;
	Wed, 10 May 2023 22:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF00810E0EA
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 22:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683758236; x=1715294236;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PRki2V4UFWCRdPI8RU0NezCR5Kk65ZhYUR04nD/n6TI=;
 b=Aj0h5cm8KxCgfat6UFnBZ/m0UcyjSfPkPm0I4RPyMQ/ZakXxccaL5SRM
 jdBpXke13Tm9qYzBz3KI5DkAiodnuupWgjVpl1WWdEQpJDf+IqIwrjjX6
 eqGY5W5beVVCDRMUHRRzk20RfCzY6SV/bSICv8ZLaWUjEsu9thKFmCjoN
 +TYJj7pvI5SboAR7KDUhNhKZK79ccXGRmMy5teHoBP8PvM1soC7zIuVae
 8xoxFxS462asHbVB5FNTEvPGvIFTxBiBmzfPdpXgJa5hXFcgrYu8LgxQU
 S/00vS90I8ae0E6QmpPc2BCMTOL7s8JZc37nnM0VWwbUah+yyaxKVabhE g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="339595354"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="339595354"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 15:37:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="732317521"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="732317521"
Received: from invictus.jf.intel.com ([10.165.21.201])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 15:37:15 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 May 2023 15:35:51 -0700
Message-Id: <20230510223552.89656-1-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Extend Wa_16014892111 to MTL
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

The dg2 workaround which is used for performance tuning
is needed for Meteorlake.

Bspec: 68331
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 81a96c52a92b..78ec350188b6 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -1370,7 +1370,7 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
 					      cs, GEN12_GFX_CCS_AUX_NV);
 
 	/* Wa_16014892111 */
-	if (IS_DG2(ce->engine->i915))
+	if (IS_DG2(ce->engine->i915) || IS_METEORLAKE(ce->engine->i915))
 		cs = dg2_emit_draw_watermark_setting(cs);
 
 	return cs;
-- 
2.34.1

