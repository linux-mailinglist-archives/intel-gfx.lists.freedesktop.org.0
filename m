Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 493DA1B7D84
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 20:06:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 953686EAF7;
	Fri, 24 Apr 2020 18:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F391B6EAF7;
 Fri, 24 Apr 2020 18:06:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ECFE4A3ECB;
 Fri, 24 Apr 2020 18:06:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Fri, 24 Apr 2020 18:06:54 -0000
Message-ID: <158775161493.10800.2864110039183516915@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20200424163843.16585-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Add_engine_scrat?=
 =?utf-8?q?ch_register_to_live=5Flrc=5Ffixed_=28rev3=29?=
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

Series: series starting with [1/4] drm/i915: Add engine scratch register to live_lrc_fixed (rev3)
URL   : https://patchwork.freedesktop.org/series/76443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
48f89e7502e0 drm/i915: Add engine scratch register to live_lrc_fixed
c24957004e6a drm/i915: Add per ctx batchbuffer wa for timestamp
-:152: CHECK:SPACING: spaces preferred around that '*' (ctx:VxW)
#152: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3246:
+	*cs++ = lrc_offset + (lrc_ring_gpr0(ce->engine) + 1)* sizeof(u32);
 	                                                    ^

-:190: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#190: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3284:
+			 I915_GTT_PAGE_SIZE/sizeof(*cs));
 			                   ^

-:224: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#224: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3330:
+
+	}

total: 0 errors, 0 warnings, 3 checks, 249 lines checked
433caccc67a1 drm/i915: Add live selftests for indirect ctx batchbuffers
-:55: CHECK:SPACING: spaces preferred around that '*' (ctx:VxV)
#55: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5733:
+#define CTX_BB_CANARY_OFFSET (3*1024)
                                ^

-:56: CHECK:SPACING: spaces preferred around that '/' (ctx:VxV)
#56: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5734:
+#define CTX_BB_CANARY_INDEX  (CTX_BB_CANARY_OFFSET/sizeof(u32))
                                                   ^

-:170: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#170: FILE: drivers/gpu/drm/i915/gt/selftest_lrc.c:5848:
+	for_each_engine(engine, gt, id) {
+

total: 0 errors, 0 warnings, 3 checks, 163 lines checked
b9ae36b10e73 drm/i915: Use indirect ctx bb to mend CMD_BUF_CCTL
-:42: ERROR:COMPLEX_MACRO: Macros with complex values should be enclosed in parentheses
#42: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:619:
+#define END(total_state_size) 0, (total_state_size)

-:50: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#50: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1027:
+	NOP(3+9+1),
 	     ^

-:50: CHECK:SPACING: spaces preferred around that '+' (ctx:VxV)
#50: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:1027:
+	NOP(3+9+1),
 	       ^

-:127: CHECK:SPACING: spaces preferred around that '*' (ctx:VxW)
#127: FILE: drivers/gpu/drm/i915/gt/intel_lrc.c:3327:
+	*cs++ = lrc_offset + (lrc_ring_cmd_buf_cctl(ce->engine) + 1)* sizeof(u32);
 	                                                            ^

total: 1 errors, 0 warnings, 3 checks, 160 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
