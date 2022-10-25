Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7644E60D564
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 22:18:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A953710E1F8;
	Tue, 25 Oct 2022 20:17:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF6FC10E195
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 20:17:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666729030; x=1698265030;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8fhMJUnphS85HIbgGhFVJCpLu1IjGd4WHwEfzhps+eQ=;
 b=dq3XcL/6uOWBFpGlaT5Z1UkrBIaVq5Zc35a0ZBRKt7xr1yyRDFqo/lxx
 klwfkGAx50po1CkHyCaWcjV+ToAiINjdypBD+6/b4QJgYDHqiFcyr/D/O
 mrer3XEh5s/sldkr0uQEFn59pbQoS1AO0UcOuXvSrZVZTlWQ9pwpoc8vG
 ego/tbO2MGYm8mU+BXoj0sS6UgTTq//aEPANwH/mMjscodQgHXv4dkKRF
 klX++sVMmKHC1zMDcpPcS/KiBf6HB+ArbXxclAUxqhzv93ZnxacHqcXx8
 OAItQXoWn+7rdtviVDaCHhwV+wtAIn/QZz+UhYn0QdyXhREOJ/GQjL941 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369847671"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="369847671"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="609699717"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="609699717"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 13:17:09 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Oct 2022 20:16:58 +0000
Message-Id: <20221025201708.84018-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
References: <20221025201708.84018-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 06/16] drm/i915/perf: Simply use stream->ctx
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
index d11cc949c9be..75d320b2c1f8 100644
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

