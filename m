Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95681AE6C3
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 22:29:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1455F6EA46;
	Fri, 17 Apr 2020 20:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 396796EA46;
 Fri, 17 Apr 2020 20:29:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35958A0088;
 Fri, 17 Apr 2020 20:29:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 17 Apr 2020 20:29:18 -0000
Message-ID: <158715535821.10467.8927018001887373467@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200417144429.20575-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Add_per_ctx_batc?=
 =?utf-8?q?hbuffer_wa_for_timestamp?=
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
Reply-To: intel-gfx@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/3] drm/i915: Add per ctx batchbuffer wa for timestamp
URL   : https://patchwork.freedesktop.org/series/76102/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
41bd098fd910 drm/i915: Add per ctx batchbuffer wa for timestamp
-:51: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#51: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:141:
+#define   MI_LRI_LRM_CS_MMIO		(1<<19)
                             		  ^

-:59: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#59: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:158:
+#define   MI_LRM_ASYNC			(1<<21)
                       			  ^

-:191: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#191: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3247:
+			 (I915_GTT_PAGE_SIZE - 4)/sizeof(*cs));
 			                         ^

-:228: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#228: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3283:
+		execlists_setup_indirect_ctx_bb(ce,
+					gen12_emit_timestamp_wa_lrr);

-:244: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#244: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3312:
+
+	}

total: 0 errors, 0 warnings, 5 checks, 264 lines checked
384079efb59c drm/i915: Add live selftests for indirect ctx batchbuffers
-:39: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#39: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5387:
+#define CTX_BB_CANARY_OFFSET (3*1024)
                                ^

-:40: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#40: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5388:
+#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
                                                   ^

-:150: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#150: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5498:
+	for_each_engine(engine, gt, id) {
+

total: 0 errors, 0 warnings, 3 checks, 167 lines checked
eae7f1fa6697 drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
