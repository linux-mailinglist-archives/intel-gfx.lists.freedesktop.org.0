Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 40086634B46
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Nov 2022 00:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 016A310E4A8;
	Tue, 22 Nov 2022 23:42:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF13F10E140
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 23:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669160522; x=1700696522;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jdiE12Wh3N636hEPLcLFeCkbij7ZYVOhR4nN1u6YxY0=;
 b=WwDaceKRaG4byVbd1wArZxEWp2Zz2Xu9TCgH/ztfIOuRoN0pxTbJYCvd
 23hcGO0C/yr2eOzLYvbsB/rw3L5gp77WGHNWlI0YTDgRRozzse27M27UU
 9q6QO+hrtxqfk3QQNx8FNJkFy0na22dFISe3yJsZySwzHOAcc5HD9dTGo
 YJq8ztWIfHWstziMbPzEot3W0IWjKyQisyKip490sijNM6oV8Wjvth7AT
 yTv995vq0sDo3waDML990Ji5BhEeBAerhBl/r2jkoePGNJP3RY64UKvS3
 1x8w40qWV8pGymO6cfyQzvCTxKhpGLZpPuKuNMhNpx/tFWyvEq7A8YR7D w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="315760495"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="315760495"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 15:42:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="635713819"
X-IronPort-AV: E=Sophos;i="5.96,185,1665471600"; d="scan'208";a="635713819"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 15:42:02 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 22 Nov 2022 15:41:56 -0800
Message-Id: <20221122234156.599924-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/perf: Do not parse context image for
 HSW
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

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7432
Fixes: a5c3a3cbf029 ("drm/i915/perf: Determine gen12 oa ctx offset at runtime")
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 00e09bb18b13..36364fb558d5 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -1383,6 +1383,9 @@ static u32 oa_context_image_offset(struct intel_context *ce, u32 reg)
 	u32 offset, len = (ce->engine->context_size - PAGE_SIZE) / 4;
 	u32 *state = ce->lrc_reg_state;
 
+	if (drm_WARN_ON(&ce->engine->i915->drm, state == NULL)
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

