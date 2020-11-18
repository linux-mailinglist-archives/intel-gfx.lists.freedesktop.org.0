Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E9D2B8206
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 17:38:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AF3C6E457;
	Wed, 18 Nov 2020 16:38:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 666FE6E453;
 Wed, 18 Nov 2020 16:38:22 +0000 (UTC)
IronPort-SDR: RnvHZsJutmlDEtdsxbjJoOp33QPkfzi8MMNarjwsOapA4M7GUdk3LOFJdLwuds6IEsvJv8ujBl
 wSox8qaEggEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9809"; a="255854691"
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="255854691"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:38:21 -0800
IronPort-SDR: 6bQi2YhamrIKRwWdKO0JyYVO5Ly0G8x6h252+O/mcIaYUDW+OmIggVcZzoZKtIFY5hO1OyovDZ
 fbzn6rcYBjBw==
X-IronPort-AV: E=Sophos;i="5.77,488,1596524400"; d="scan'208";a="534373078"
Received: from shaid-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.202.56])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2020 08:38:19 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 18 Nov 2020 16:38:09 +0000
Message-Id: <20201118163809.959127-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel_error_decode: Handle no decoding
 context
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

If decoding context couldn't be created, say the local libdrm does not
support the GPU which created the error state, it is much more handy to
at least decode and dump metadata and rings.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 tools/intel_error_decode.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/tools/intel_error_decode.c b/tools/intel_error_decode.c
index 356ce37274f9..90a18a07ba17 100644
--- a/tools/intel_error_decode.c
+++ b/tools/intel_error_decode.c
@@ -465,7 +465,7 @@ static void decode(struct drm_intel_decode *ctx,
 		       (unsigned)((head_offset + gtt_offset) & 0xffffffff));
 	printf("\n");
 
-	if (decode) {
+	if (decode && ctx) {
 		drm_intel_decode_set_batch_pointer(ctx, data, gtt_offset,
 						   *count);
 		drm_intel_decode(ctx);
@@ -707,7 +707,10 @@ read_data_file(FILE *file)
 			matched = sscanf(line, "  ACTHD: 0x%08x\n", &reg);
 			if (matched == 1) {
 				print_acthd(reg, ring_length);
-				drm_intel_decode_set_head_tail(decode_ctx, reg, 0xffffffff);
+				if (decode_ctx)
+					drm_intel_decode_set_head_tail(decode_ctx,
+								       reg,
+								       0xffffffff);
 			}
 
 			matched = sscanf(line, "  PGTBL_ER: 0x%08x\n", &reg);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
