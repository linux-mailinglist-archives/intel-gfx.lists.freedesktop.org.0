Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA506BC228
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 01:09:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9184D10EA45;
	Thu, 16 Mar 2023 00:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 632AB10EA3C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 00:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678925374; x=1710461374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2y+JodBWya1uCUdnw6FJ6BwF/neAPlGG8I1pgj8ECRU=;
 b=GHSLKbVJoF1vFKBhtmaZi6t4gseRzI1EK9TCe3GdvMuslI0i7D4z3QNY
 2dn3TiPdgS/AFpKcgEW64FCityEgsgXicyS/mgLdynrbW2EmmIB3b0sfJ
 lM+BRniAjb/GjreXEihI0nika4gPOU+YKTx4r1XGzngtv5rbF1YA0fvfu
 03wmhVk4seHLT+jchAvbKwh6/CXmAJ4sx8YczHCCcGSlTTDWopVEbiLsC
 6VOqtuQCbJWbh1PEItIMjVyG4+oESwEOW/Cca9Ya1+Yc6tbzY5srN2r/l
 4iWLlDkg4225Kx38cPAo5dEFOfWvNozhGNcOhf1+T1gu6SQ4naq0QvN6w Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="402718809"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="402718809"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709863697"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; d="scan'208";a="709863697"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2023 17:09:33 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Mar 2023 17:09:23 -0700
Message-Id: <20230316000932.2525744-4-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
References: <20230316000932.2525744-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 03/12] drm/i915/perf: Add helper to check
 supported OA engines
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

With an intention to add more engines that are supported by OA, add
helper to check for supported OA engines.

v2: (Ashutosh)
- Update commit message
- Drop virtual engine check since we support only one render engine

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 283a4a3c6862..b0e1acbe90fc 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1570,6 +1570,16 @@ free_noa_wait(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
 }
 
+static bool engine_supports_oa(const struct intel_engine_cs *engine)
+{
+	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
+
+	switch (platform) {
+	default:
+		return engine->class == RENDER_CLASS;
+	}
+}
+
 static void i915_oa_stream_destroy(struct i915_perf_stream *stream)
 {
 	struct i915_perf *perf = stream->perf;
@@ -2505,7 +2515,7 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
 		GEM_BUG_ON(ce == ce->engine->kernel_context);
 
-		if (ce->engine->class != RENDER_CLASS)
+		if (!engine_supports_oa(ce->engine))
 			continue;
 
 		/* Otherwise OA settings will be set upon first use */
@@ -2656,7 +2666,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	for_each_uabi_engine(engine, i915) {
 		struct intel_context *ce = engine->kernel_context;
 
-		if (engine->class != RENDER_CLASS)
+		if (!engine_supports_oa(ce->engine))
 			continue;
 
 		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
@@ -3369,7 +3379,7 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 {
 	struct i915_perf_stream *stream;
 
-	if (engine->class != RENDER_CLASS)
+	if (!engine_supports_oa(engine))
 		return;
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
-- 
2.36.1

