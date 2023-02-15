Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BEF16972E9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 01:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 179E510EA0F;
	Wed, 15 Feb 2023 00:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A68E710E9FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 00:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676422460; x=1707958460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2O6uc+QVi0oARNsPiXOzafZWvULuNta3lfLeuC9bC/c=;
 b=ZQHl6Ctwvt8cZAVXppAmb3/HRDA5Fc+4qvDEzZBUFepxwv0kVlxDedDf
 WAlnAigQH/G0ENTp5cZJ/v3TJhdjsBqW4zh7GUh+z7pQMMwVSNEmALWvO
 Nlg8g4FkRyiY3+criG5vZWDE0lilDii7gECd74RbwIEhH9uoBJDLK0NRi
 +8kUpGYc19/3DH8XqC1IMc5xaU5MqUzL4Y7VQleLYFkab9e58rIxuuNEP
 5Ic+BoK0D8yzl6qxRhLVamlbdFP4ui1FUFNx9nSEXRvWgPZk5AYeH1vz4
 MkyrohFUWiL26iO9QBeRdNtWmfOxnRuz2ltB9OZrz3bLFa6qMCOh62Oy7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="417536036"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="417536036"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="914951616"
X-IronPort-AV: E=Sophos;i="5.97,298,1669104000"; d="scan'208";a="914951616"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 16:54:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Feb 2023 16:54:12 -0800
Message-Id: <20230215005419.2100887-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
References: <20230215005419.2100887-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/9] drm/i915/perf: Add helper to check
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
Cc: Lionel G Landwerlin <lionel.g.landwerlin@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add helper to check for supported OA engines.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 393a0da8b7c8..a879ae4bf8d7 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1570,6 +1570,19 @@ free_noa_wait(struct i915_perf_stream *stream)
 	i915_vma_unpin_and_release(&stream->noa_wait, 0);
 }
 
+static bool engine_supports_oa(const struct intel_engine_cs *engine)
+{
+	enum intel_platform platform = INTEL_INFO(engine->i915)->platform;
+
+	if (intel_engine_is_virtual(engine))
+		return false;
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
@@ -2505,7 +2518,7 @@ static int gen8_configure_context(struct i915_gem_context *ctx,
 	for_each_gem_engine(ce, i915_gem_context_lock_engines(ctx), it) {
 		GEM_BUG_ON(ce == ce->engine->kernel_context);
 
-		if (ce->engine->class != RENDER_CLASS)
+		if (!engine_supports_oa(ce->engine))
 			continue;
 
 		/* Otherwise OA settings will be set upon first use */
@@ -2656,7 +2669,7 @@ oa_configure_all_contexts(struct i915_perf_stream *stream,
 	for_each_uabi_engine(engine, i915) {
 		struct intel_context *ce = engine->kernel_context;
 
-		if (engine->class != RENDER_CLASS)
+		if (!engine_supports_oa(ce->engine))
 			continue;
 
 		regs[0].value = intel_sseu_make_rpcs(engine->gt, &ce->sseu);
@@ -3369,7 +3382,7 @@ void i915_oa_init_reg_state(const struct intel_context *ce,
 {
 	struct i915_perf_stream *stream;
 
-	if (engine->class != RENDER_CLASS)
+	if (!engine_supports_oa(engine))
 		return;
 
 	/* perf.exclusive_stream serialised by lrc_configure_all_contexts() */
-- 
2.36.1

