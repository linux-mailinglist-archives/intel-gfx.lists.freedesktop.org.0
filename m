Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C01B418855B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 14:22:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 134CD6E124;
	Tue, 17 Mar 2020 13:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD15F6E116
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 13:22:27 +0000 (UTC)
IronPort-SDR: bOeA4w5Y+7HkfOEQdZ6htD2QtDnIEF5HXIsUWzabrwh6luSQ2X5JPlPloN+7t8X39wNJmAngIe
 7/twKyGFzvtQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 06:22:27 -0700
IronPort-SDR: wct3FMDZ5/lQP4TLUKCZwx/UGxMkDkUbvrnbshj9kYuQr+quotvx2opp8H/v01z6OBCiEnFUwv
 3d6Gfuv/aBcA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,564,1574150400"; d="scan'208";a="290991144"
Received: from msomar-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.252.38.211])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Mar 2020 06:22:26 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Mar 2020 15:22:21 +0200
Message-Id: <20200317132222.2638719-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317132222.2638719-1-lionel.g.landwerlin@intel.com>
References: <20200317132222.2638719-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 2/3] drm/i915/perf: remove redundant power
 configuration register override
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

The caller of i915_oa_init_reg_state() already sets this.

Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0069f09b988c..86c6abaa3e0e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2098,9 +2098,6 @@ gen8_update_reg_state_unlocked(const struct intel_context *ce,
 	for (i = 0; i < ARRAY_SIZE(flex_regs); i++)
 		reg_state[ctx_flexeu0 + i * 2 + 1] =
 			oa_config_flex_reg(stream->oa_config, flex_regs[i]);
-
-	reg_state[CTX_R_PWR_CLK_STATE] =
-		intel_sseu_make_rpcs(ce->engine->i915, &ce->sseu);
 }
 
 struct flex {
@@ -2906,10 +2903,6 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
 	stream = READ_ONCE(engine->i915->perf.exclusive_stream);
-	/*
-	 * For gen12, only CTX_R_PWR_CLK_STATE needs update, but the caller
-	 * is already doing that, so nothing to be done for gen12 here.
-	 */
 	if (stream && INTEL_GEN(stream->perf->i915) < 12)
 		gen8_update_reg_state_unlocked(ce, stream);
 }
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
