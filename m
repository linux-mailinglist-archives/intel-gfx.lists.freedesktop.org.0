Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455B4634D94
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 03:07:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1AC710E1E7;
	Wed, 23 Nov 2022 02:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEBEE10E1E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Nov 2022 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669169227; x=1700705227;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FImGkvNXaIEcXt7uNMehPZwxpxznPCZ/2U2FqRPXCjc=;
 b=OX2O1rRkL7oAvwUcSo/xJMl2P+FW2LAAiyon8/aLL09HgbYd/ghswf7W
 R0YhMX0/A3sJSGOhL4I6CF6LCGfZ7P6rm3V+gH0fFRSkbD29ZWP42DUiw
 51CBFF+opF2o5Nb26/rel+l6eAj1Lb8zJGrha7rdV5LXeBZ3cw+ClV0Kp
 6Ftb7BzsbQmN4nlb9nhEQNXX0F0tAqegzG/NcOVchy9Z81dq2wGyG/QAL
 UDK4b1+oidtYKsDyvUySRGzl1o1hUjDcLufRjZQYqjGoXwAiv2xCAdlhp
 Cem5Gsh6AZ4NM2opMK7ESTBNkgyI1ae5nnlzE+jRWCysHSw47amyOwo2N w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="400252420"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="400252420"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 18:07:04 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="705184950"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="705184950"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 18:07:04 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 22 Nov 2022 18:07:00 -0800
Message-Id: <20221123020700.603256-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/perf: Do not parse context image
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7432
Fixes: a5c3a3cbf029 ("drm/i915/perf: Determine gen12 oa ctx offset at runtime")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 00e09bb18b13..dbd785974f20 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1383,6 +1383,9 @@ static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
 	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
 	u32 *state = ce->lrc_reg_state;
 
+	if (drm_WARN_ON(&ce->engine->i915->drm, state == NULL))
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

