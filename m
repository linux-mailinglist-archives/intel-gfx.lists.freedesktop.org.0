Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB3C1B643D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 21:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71B096E0C2;
	Thu, 23 Apr 2020 19:07:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 05AC36E0C2;
 Thu, 23 Apr 2020 19:07:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9781A432F;
 Thu, 23 Apr 2020 19:07:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Thu, 23 Apr 2020 19:07:51 -0000
Message-ID: <158766887192.26751.10061393870143765642@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200423182355.21837-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/6=5D_drm/i915=3A_Add_engine_scrat?=
 =?utf-8?q?ch_register_to_live=5Flrc=5Ffixed?=
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

Series: series starting with [1/6] drm/i915: Add engine scratch register to live_lrc_fixed
URL   : https://patchwork.freedesktop.org/series/76406/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
56bad9b0154e drm/i915: Add engine scratch register to live_lrc_fixed
a124f376897f drm/i915: Add context batchbuffers to live_lrc_fixed
af7593329e65 drm/i915: Make define for lrc state offset
60f8ab766dee drm/i915: Add per ctx batchbuffer wa for timestamp
-:48: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#48: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:141:
+#define   MI_LRI_LRM_CS_MMIO		(1<<19)
                             		  ^

-:56: CHECK:SPACING: spaces preferred around that '<<' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/gt/intel_gpu_commands.h:158:
+#define   MI_LRM_ASYNC			(1<<21)
                       			  ^

-:195: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#195: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3233:
+			 I915_GTT_PAGE_SIZE/sizeof(*cs));
 			                   ^

-:232: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#232: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3282:
+
+	}

total: 0 errors, 0 warnings, 4 checks, 248 lines checked
ffc915459ec7 drm/i915: Add live selftests for indirect ctx batchbuffers
-:53: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#53: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5733:
+#define CTX_BB_CANARY_OFFSET (3*1024)
                                ^

-:54: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#54: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5734:
+#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
                                                   ^

-:168: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#168: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5848:
+	for_each_engine(engine, gt, id) {
+

total: 0 errors, 0 warnings, 3 checks, 168 lines checked
4c1c50cfa325 drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
-:24: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#24: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:517:
+#define END(total_state_size) 0, (total_state_size)

-:32: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:925:
+	NOP(3+9+1),
 	     ^

-:32: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#32: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:925:
+	NOP(3+9+1),
 	       ^

total: 1 errors, 0 warnings, 2 checks, 140 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
