Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BEF5FA341
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 20:15:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B529D10E6D6;
	Mon, 10 Oct 2022 18:15:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FFE110E6B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 18:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665425677; x=1696961677;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ju3WKNqd9BntqpJAXz08NLYdeTk1TRcREUfk2pAzLH0=;
 b=Ra6UDSol/khHJk+l+L7JrxAWEymDcVErXVeXtgGeafI9gLY0HbOaRqHf
 mtWHAYmA5Z//1LiuwbplhDZzkmHh8C9EG8QjQRtkZX9eNFqjCc4oeKBYS
 UqnHLLy0S5CXaZHjPg2PhoaBAJi1r4SKrUsB54kkCKQdxTpw5iWCB/7LC
 G2PSmZx5bejsMJOnOtK4E95ke5+0dTfZzEjJdk79EFSdfBGe4jHsFvvQ6
 DAqoeSkAolfBA/xjSTYjdVsO+63wXw+NaIN/5AGIlxt3+aVUExHlcQlsi
 rzP65y8JiGQjrYIwWV5UgQFbz0uYGqqVHoN2e+qIAVOmIXjbF7WpsEFmp Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="368439653"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="368439653"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="603820275"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="603820275"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 11:14:35 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Mon, 10 Oct 2022 18:14:24 +0000
Message-Id: <20221010181434.513477-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
References: <20221010181434.513477-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 06/16] drm/i915/perf: Simply use stream->ctx
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
index a22f18554ab9..b60846f5d33c 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -777,7 +777,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * switches since it's not-uncommon for periodic samples to
 		 * identify a switch before any 'context switch' report.
 		 */
-		if (!stream->perf->exclusive_stream->ctx ||
+		if (!stream->ctx ||
 		    stream->specific_ctx_id == ctx_id ||
 		    stream->oa_buffer.last_ctx_id == stream->specific_ctx_id ||
 		    reason & OAREPORT_REASON_CTX_SWITCH) {
@@ -786,7 +786,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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

