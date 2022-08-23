Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5430059ED9F
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 22:42:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3C0510E857;
	Tue, 23 Aug 2022 20:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D4C10E783
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 20:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661287319; x=1692823319;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Pmum5KbHsNF4oDsMMEvDLe3nj+qVNVPppGIceGWlsEs=;
 b=hRkY9+eKmRhKC+eRpuecxGgp63+ZwT+l+TZGLtDriANRxR2M4vtSw8iB
 VUWg/M2lTFVAyCxLGj8eUEj7dweFKyP2sQmMnrZbLLmbM1K287oXEDRdt
 lHvS1U35Aba9Hf+cS681p578rs1eBDRO+tyYg7eoLqbqtIKmJ1M7erTtQ
 VQDzfkRPDsBsyBrZl3SvZhRyo/XY0y2n2gL05s/BD79Pjn8tTcFTJtuWD
 06Re3v207QCj3SNvPIk3PxYmMpAKoVz4GeApzuAixdWwu/fEubjGa4x/2
 smveBSQmWf9ZzjUlyTtie87t0LS56guouQdhf8xyxdvX2wRMeYTJmJM6u A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="319843591"
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="319843591"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:41:59 -0700
X-IronPort-AV: E=Sophos;i="5.93,258,1654585200"; d="scan'208";a="638815641"
Received: from dut042-dg2frd.fm.intel.com ([10.105.19.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 13:41:58 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Aug 2022 20:41:43 +0000
Message-Id: <20220823204155.8178-8-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
References: <20220823204155.8178-1-umesh.nerlige.ramappa@intel.com>
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
index bbf1c574f393..3e3bda147c48 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -801,7 +801,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * switches since it's not-uncommon for periodic samples to
 		 * identify a switch before any 'context switch' report.
 		 */
-		if (!stream->perf->exclusive_stream->ctx ||
+		if (!stream->ctx ||
 		    stream->specific_ctx_id == ctx_id ||
 		    stream->oa_buffer.last_ctx_id == stream->specific_ctx_id ||
 		    reason & OAREPORT_REASON_CTX_SWITCH) {
@@ -810,7 +810,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
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

