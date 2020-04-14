Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9569B1A7A92
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 14:20:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0526D6E0D3;
	Tue, 14 Apr 2020 12:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DEC06E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 12:20:28 +0000 (UTC)
IronPort-SDR: l56eim/A4xbR/cjkrcR5dF8FqSbFCphB0gXeesgwFib9RA8YDpFdfo4YQ6IJuyVhnwO/V9OTGm
 4WK/TU4MvFJg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 05:20:27 -0700
IronPort-SDR: uLuxO1FX+dyWtXZq80GRspn2ZtsebepJDnFw9pGkT7uPmGYXp+sho7CYROViXnhO+SWjiYhStS
 yEN8AJOkxjuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,382,1580803200"; d="scan'208";a="243798868"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 14 Apr 2020 05:20:26 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 93570843785; Tue, 14 Apr 2020 15:20:03 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 15:20:00 +0300
Message-Id: <20200414122000.19353-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix indirect context size calculation
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hardware needs cacheline count for indirect context size.
Count of zero means that the feature is disabled.
If we only divide size with cacheline bytes, we get
one cacheline short of execution.

Divide by rounding up to a cacheline size so that
hardware executes everything intended.

Bspec: 11739
Fixes: 17ee950df38b ("drm/i915/gen8: Add infrastructure to initialize WA batch buffers")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 6fbad5e2343f..acbb36ad17ff 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -4739,7 +4739,8 @@ static void init_wa_bb_reg_state(u32 * const regs,
 
 		regs[pos_bb_per_ctx + 2] =
 			(ggtt_offset + wa_ctx->indirect_ctx.offset) |
-			(wa_ctx->indirect_ctx.size / CACHELINE_BYTES);
+			DIV_ROUND_UP(wa_ctx->indirect_ctx.size,
+				     CACHELINE_BYTES);
 
 		regs[pos_bb_per_ctx + 4] =
 			intel_lr_indirect_ctx_offset(engine) << 6;
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
