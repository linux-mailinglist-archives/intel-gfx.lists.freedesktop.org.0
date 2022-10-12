Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C485FCE6B
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Oct 2022 00:28:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67D6710E149;
	Wed, 12 Oct 2022 22:28:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08A5A10E2C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 22:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665613668; x=1697149668;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=R1tMTR0ZUBq4wr1vAoMQn/fvSiKQZ60r6FrM6wdMTWA=;
 b=UuggbiQzl/rETOLhrLImsWXf/hyXzFRbB7iOzh99BiA34CaGJk1p6ZYC
 XuZfcqF18TJA0bYADecpiu9yiuL3Zes4xcGo6FrY+0x9FzuFRA6KrIsxM
 ptYvjWKFcqun7pGZ9rVyYggYHsNXKSO5iDGYpfdytMmFeWX3VeC7IY7d+
 U+gPC63qUKF6ipMVksYCcpU1+dpo7XiD1pgHFaVYq5BR9f7tCrAoI1cT1
 0qBKtPy4TKm0i0YQBQqBU0zFxQZTkTBANeJhswROdW18HB1J6/5eO9Ek8
 /Y7LfTSUTF3m1jIYBT3riV01VphAZwj33SukrQsKNBFn8o34edM39FSlH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="305983965"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="305983965"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="660097654"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="660097654"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 15:27:46 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Wed, 12 Oct 2022 22:27:29 +0000
Message-Id: <20221012222739.27296-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
References: <20221012222739.27296-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 06/16] drm/i915/perf: Simply use stream->ctx
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

Earlier code used exclusive_stream to check for user passed context.
Simplify this by accessing stream->ctx.

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0f2d531fd831..595f2f349d24 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -776,7 +776,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * switches since it's not-uncommon for periodic samples to
 		 * identify a switch before any 'context switch' report.
 		 */
-		if (!stream->perf->exclusive_stream->ctx ||
+		if (!stream->ctx ||
 		    stream->specific_ctx_id == ctx_id ||
 		    stream->oa_buffer.last_ctx_id == stream->specific_ctx_id ||
 		    reason & OAREPORT_REASON_CTX_SWITCH) {
@@ -785,7 +785,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 			 * While filtering for a single context we avoid
 			 * leaking the IDs of other contexts.
 			 */
-			if (stream->perf->exclusive_stream->ctx &&
+			if (stream->ctx &&
 			    stream->specific_ctx_id != ctx_id) {
 				report32[2] = INVALID_CTX_ID;
 			}
-- 
2.25.1

