Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0AB17B9CF
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 11:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B55E6ECB8;
	Fri,  6 Mar 2020 10:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A6D6ECB9
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Mar 2020 10:06:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 02:06:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="320496332"
Received: from caunits-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.51.158])
 by orsmga001.jf.intel.com with ESMTP; 06 Mar 2020 02:06:03 -0800
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Mar 2020 12:05:56 +0200
Message-Id: <20200306100557.2077450-2-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
References: <20200306100557.2077450-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/3] drm/i915/perf: remove redundant power
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
