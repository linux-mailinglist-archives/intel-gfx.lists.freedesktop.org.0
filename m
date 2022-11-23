Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8C4636E9C
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Nov 2022 00:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D03B10E653;
	Wed, 23 Nov 2022 23:53:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBCA10E653
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 23:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669247628; x=1700783628;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cmZJY5vVrFs0DUy3IBv+fpKRvUKzMDkSogdrg1I/R54=;
 b=jkt0eiT54xjyrEsXiZbbDq3Vzc1VnX9v03cgVaTu8AR/WhCFZlMVSCle
 iT3pD+4kb4QnYp5IOS/ffglIn1WC+QLMIfmM0QrYfCHOIDYeuaBT0jLac
 uW1A1mpiDdE3rBU4U7OOw9wXAPGgf2IF1Oo4oaoVUKkSYixKWR40shQjc
 GUkYWgcCv0k0I/E+Q9i7ydu3WNrNf9NbXwGi5jCbGB0bwVAsKgr1Sues/
 hxgsFAOpMGlV2oz3pytrEFVCHdpsbHRCK9uIAk8v0NI8fk0LRxh04wo2I
 iQ+iKNOPzp2aj332PUvK0tYfmIV/urB6AZKSrWq3ubCgs/VQLkkEKKkTF g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378439308"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="378439308"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 15:53:47 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="642042036"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="642042036"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 15:53:47 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Nov 2022 15:53:42 -0800
Message-Id: <20221123235342.713068-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/perf: Do not parse context image
 for HSW
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

An earlier commit introduced a mechanism to parse the context image to
find the OA context control offset. This resulted in an NPD on haswell
when gem_context was passed into i915_perf_open_ioctl params. Haswell
does not support logical ring contexts, so ensure that the context image
is parsed only for platforms with logical ring contexts and also
validate lrc_reg_state.

v2: Fix build failure
v3: Fix checkpatch error

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7432
Fixes: a5c3a3cbf029 ("drm/i915/perf: Determine gen12 oa ctx offset at runtime")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 00e09bb18b13..125b6ca25a75 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1383,6 +1383,9 @@ static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
 	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
 	u32 *state = ce->lrc_reg_state;
 
+	if (drm_WARN_ON(&ce->engine->i915->drm, !state))
+		return U32_MAX;
+
 	for (offset = 0; offset < len; ) {
 		if (IS_MI_LRI_CMD(state[offset])) {
 			/*
@@ -1447,7 +1450,8 @@ static int oa_get_render_ctx_id(struct i915_perf_stream *stream)
 	if (IS_ERR(ce))
 		return PTR_ERR(ce);
 
-	if (engine_supports_mi_query(stream->engine)) {
+	if (engine_supports_mi_query(stream->engine) &&
+	    HAS_LOGICAL_RING_CONTEXTS(stream->perf->i915)) {
 		/*
 		 * We are enabling perf query here. If we don't find the context
 		 * offset here, just return an error.
-- 
2.36.1

