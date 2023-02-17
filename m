Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0907D69A33D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Feb 2023 01:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E8D10E3CE;
	Fri, 17 Feb 2023 00:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 828B510E1AA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Feb 2023 00:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676595535; x=1708131535;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2y+JodBWya1uCUdnw6FJ6BwF/neAPlGG8I1pgj8ECRU=;
 b=FoILgI1T61xYl462bgp4vc88XPPRMGzYlORBH6OROV9C8VXYNTW0jrrY
 kIFhuAeJksLplWyVjoR9WBRsZcq26/cdRf/gPRtT0nXVL1vauFw4EV1hu
 zRmbs3vTjz1fdxWA5KZo7wrdYNiyU3obYnag43cl4/tq10C69gc2AKSDV
 ui3YnZP//luAa8+pFFsVdcOVRVy/nt6GnpxFpppi22OghFghckB2CN8QX
 3dai/Kdp0I6sYl3rlzfAlT3Qoidhj2fnfKcqtypzgWY/Ad1n5fHxi75y4
 vmzUxwj7XGG93tRffCEzTKRf5RdTI2leiXt2in90OXKX7UFvO6AuxXEKp g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="311512376"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="311512376"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="844390201"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="844390201"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 16:58:54 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 16:58:43 -0800
Message-Id: <20230217005850.2511422-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
References: <20230217005850.2511422-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/9] drm/i915/perf: Add helper to check
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

