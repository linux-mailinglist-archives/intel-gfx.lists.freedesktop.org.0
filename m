Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BECE91B28A1
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 15:57:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FB186E987;
	Tue, 21 Apr 2020 13:57:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37DBF6E05F;
 Tue, 21 Apr 2020 13:57:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32222A008A;
 Tue, 21 Apr 2020 13:57:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Tue, 21 Apr 2020 13:57:49 -0000
Message-ID: <158747746917.17662.13718788022499438509@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200421131633.8246-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/5=5D_drm/i915=3A_Make_define_for_?=
 =?utf-8?q?lrc_state_offset?=
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

Series: series starting with [1/5] drm/i915: Make define for lrc state offset
URL   : https://patchwork.freedesktop.org/series/76262/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
52efd944a36d drm/i915: Make define for lrc state offset
c968fc0ee7cf drm/i915: Add per ctx batchbuffer wa for timestamp
-:51: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#51: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:141:
+#define   MI_LRI_LRM_CS_MMIO		(1<<19)
                             		  ^

-:59: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#59: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:158:
+#define   MI_LRM_ASYNC			(1<<21)
                       			  ^

-:200: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#200: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3256:
+			 (I915_GTT_PAGE_SIZE - 4)/sizeof(*cs));
 			                         ^

-:253: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#253: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3321:
+
+	}

total: 0 errors, 0 warnings, 4 checks, 273 lines checked
2f150abce7d5 drm/i915: Add live selftests for indirect ctx batchbuffers
-:52: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#52: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5387:
+#define CTX_BB_CANARY_OFFSET (3*1024)
                                ^

-:53: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#53: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5388:
+#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
                                                   ^

-:167: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#167: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5502:
+	for_each_engine(engine, gt, id) {
+

total: 0 errors, 0 warnings, 3 checks, 171 lines checked
7a108f5f4ddb drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
-:23: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#23: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:517:
+#define END(total_state_size) 0, (total_state_size)

-:31: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#31: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:925:
+	NOP(3+9+1),
 	     ^

-:31: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#31: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:925:
+	NOP(3+9+1),
 	       ^

total: 1 errors, 0 warnings, 2 checks, 118 lines checked
c99d6bd66f5b drm/i915: Split ctx timestamp selftest into two

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
