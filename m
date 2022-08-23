Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1A35A0297
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:18:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CB67C6D28;
	Wed, 24 Aug 2022 20:18:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02D4A74B7
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 00:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661213024; x=1692749024;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0YAo9wFGMTFgIDeven+g5JeMfmMzLD0h+lwsWNZ+mwo=;
 b=DOZ4MhkJRNZXoA3/GqDUhl3PYiyG2RX0m1fNUAL6LQzwMcQmGFymmzKr
 H31wwhhSCY9z1/+bBVUqQKoxvXY7j92dbiJRqsbUSFNfKgo2qAPGGpS1/
 ii1QwgeVjeU5pB1vz53ieJfmZdszErFCubV9suubSG8Ip5zYere7Nrn9O
 IrbZlrbqe8UKYlqXoK09jXUjdkCxYSQpqE6WSVuUemayxr+3N4adiJBBc
 N5WQsJuc5K8DljO0ljvtIsvhLyitE0JnA7SjfbLRLIxQhVCQVkB3F0eD+
 AE1Y2tM1F1VArrjd68cOVEbAldV5fmGkeAdSw2tpGgjtvvDZEDmb2N8AS w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10447"; a="273304833"
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="273304833"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
X-IronPort-AV: E=Sophos;i="5.93,255,1654585200"; d="scan'208";a="669775526"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2022 17:03:42 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 23 Aug 2022 00:03:30 +0000
Message-Id: <20220823000342.281222-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
References: <20220823000342.281222-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/19] drm/i915/perf: Simply use stream->ctx
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
---
 drivers/gpu/drm/i915/i915_perf.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 18cc9a311b7e..7920b91e1c6b 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -802,7 +802,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * switches since it's not-uncommon for periodic samples to
 		 * identify a switch before any 'context switch' report.
 		 */
-		if (!stream->perf->exclusive_stream->ctx ||
+		if (!stream->ctx ||
 		    stream->specific_ctx_id == ctx_id ||
 		    stream->oa_buffer.last_ctx_id == stream->specific_ctx_id ||
 		    reason & OAREPORT_REASON_CTX_SWITCH) {
@@ -811,7 +811,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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

