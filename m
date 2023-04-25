Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B72116EE8EB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0D2010E7C7;
	Tue, 25 Apr 2023 20:19:35 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C122A10E5A5;
 Tue, 25 Apr 2023 20:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682453973; x=1713989973;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gW5ZRfQC2tnIDoL8RSxFJTicrGygEyiTgOIiS3c3IcU=;
 b=BjkKDbZzvdpL1UfiGT597LHpqzsLBjLXmyvJOk7Qmg9ryN8gGlbK0+u4
 LLMWzUg8lnjx8OFyrcW7dq0kFgzwWVNIGogPHtNpb25OHPuogdVQFy5rr
 vRkJdTyIgYtFS4DRuv4gkT3694I+18gWk8JWvC1PED/e4lZLSP+qa+pMt
 npsCX8eRk1HrDrIAoyQfozAk46JAVKtuODhVfbvnEiLoe1voIzZO/+7z9
 aBnxMf2zYgXKHXasY4G+JqJ/H4lhCpFxoo/JjOI9zBbPdSyIjvbOKY/Cu
 k8/a3t3kcs/8EypHw/HhJymo/7/wcBX6X/Fvv51wGbaxy6CIbnK/14gIK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="348820553"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="348820553"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="726251115"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="726251115"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by orsmga001.jf.intel.com with ESMTP; 25 Apr 2023 13:19:25 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Tue, 25 Apr 2023 13:19:25 -0700
Message-Id: <20230425201926.99086-2-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230425201926.99086-1-John.C.Harrison@Intel.com>
References: <20230425201926.99086-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/2] lib/intel_decode: Decode Gen12
 ring/batch instructions correctly
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Some MI_ instructions have changed (or are just new) for Gen12. So
update the decoder code to match.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 lib/i915/intel_decode.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/lib/i915/intel_decode.c b/lib/i915/intel_decode.c
index 80b92d90c61c..1b6de5edafad 100644
--- a/lib/i915/intel_decode.c
+++ b/lib/i915/intel_decode.c
@@ -236,7 +236,7 @@ decode_mi(struct intel_decode *ctx)
 		{ 0x08, 0, 1, 1, "MI_ARB_ON_OFF" },
 		{ 0x0a, 0, 1, 1, "MI_BATCH_BUFFER_END" },
 		{ 0x30, 0x3f, 3, 3, "MI_BATCH_BUFFER" },
-		{ 0x31, 0x3f, 2, 2, "MI_BATCH_BUFFER_START" },
+		{ 0x31, 0x3f, 2, 3, "MI_BATCH_BUFFER_START" },
 		{ 0x14, 0x3f, 3, 3, "MI_DISPLAY_BUFFER_INFO" },
 		{ 0x04, 0, 1, 1, "MI_FLUSH" },
 		{ 0x22, 0x1f, 3, 3, "MI_LOAD_REGISTER_IMM" },
@@ -256,6 +256,7 @@ decode_mi(struct intel_decode *ctx)
 		{ 0x28, 0x3f, 3, 3, "MI_REPORT_PERF_COUNT" },
 		{ 0x29, 0xff, 3, 3, "MI_LOAD_REGISTER_MEM" },
 		{ 0x0b, 0, 1, 1, "MI_SUSPEND_FLUSH"},
+		{ 0x05, 0, 1, 1, "MI_ARB_CHECK"},
 	}, *opcode_mi = NULL;
 
 	/* check instruction length */
@@ -3623,7 +3624,17 @@ decode_3d_965(struct intel_decode *ctx)
 		return len;
 
 	case 0x7a00:
-		if (IS_GEN6(devid) || IS_GEN7(devid)) {
+		if (IS_GEN12(devid)) {
+			if (len != 6)
+				fprintf(out, "Bad count in PIPE_CONTROL\n");
+			instr_out(ctx, 0, "PIPE_CONTROL\n");
+			instr_out(ctx, 1, "flags\n");
+			instr_out(ctx, 2, "write address low\n");
+			instr_out(ctx, 3, "write address high\n");
+			instr_out(ctx, 4, "write data low\n");
+			instr_out(ctx, 5, "write data high\n");
+			return len;
+		} else if (IS_GEN6(devid) || IS_GEN7(devid)) {
 			if (len != 4 && len != 5)
 				fprintf(out, "Bad count in PIPE_CONTROL\n");
 
-- 
2.39.1

