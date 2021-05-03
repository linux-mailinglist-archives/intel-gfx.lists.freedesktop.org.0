Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3750C37215C
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 22:33:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BC26E15D;
	Mon,  3 May 2021 20:33:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 80FDB6E15D;
 Mon,  3 May 2021 20:33:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A155A47E2;
 Mon,  3 May 2021 20:33:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Mon, 03 May 2021 20:33:40 -0000
Message-ID: <162007402047.13686.14496457674228621234@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210503155748.1961781-1-jason@jlekstrand.net>
In-Reply-To: <20210503155748.1961781-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_ioctl_clean-ups_=28rev4=29?=
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

Series: drm/i915/gem: ioctl clean-ups (rev4)
URL   : https://patchwork.freedesktop.org/series/89443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
8d290e6238e7 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
-:177: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#177: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
904e773fd289 drm/i915: Stop storing the ring size in the ring pointer
1c4bd7993075 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
8a99bfd835ff drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
715ae33bf9aa drm/i915/gem: Return void from context_apply_all
5e5b1ed85776 drm/i915: Drop the CONTEXT_CLONE API
8032eecf682d drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
895c2e4c3bdb drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
25801b1c52c4 drm/i915/gem: Disallow bonding of virtual engines (v3)
c8b0561320c7 drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT
9ce8f241d55a drm/i915/request: Remove the hook from await_execution
255f845b4348 drm/i915/gem: Disallow creating contexts with too many engines
178b1c5883fd drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)
b8dd7d97db62 drm/i915/gem: Add a separate validate_priority helper
72c4d93eb050 drm/i915: Add gem/i915_gem_context.h to the docs
4b7c0de90422 drm/i915/gem: Add an intermediate proto_context struct
-:274: WARNING:REPEATED_WORD: Possible repeated word: 'See'
#274: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:87:
+	/** @single_timeline: See See i915_gem_context::syncobj */

total: 0 errors, 1 warnings, 0 checks, 271 lines checked
b3c8a4f17cc3 drm/i915/gem: Rework error handling in default_engines
3353ac966ea8 drm/i915/gem: Optionally set SSEU in intel_context_set_gem
56d933b875f6 drm/i915/gem: Use the proto-context to handle create parameters
-:79: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#79: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:326:
+	unsigned num_engines;

-:260: ERROR:CODE_INDENT: code indent should use tabs where possible
#260: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:507:
+^I^I^I         struct i915_gem_proto_context *pc,$

-:260: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#260: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:507:
+static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
+			         struct i915_gem_proto_context *pc,

-:261: ERROR:CODE_INDENT: code indent should use tabs where possible
#261: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:508:
+^I^I^I         const struct drm_i915_gem_context_param *args)$

-:369: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#369: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:616:
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))

-:369: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pc->num_user_engines >= 0'
#369: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:616:
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))

total: 2 errors, 2 warnings, 2 checks, 698 lines checked
0a99acad1096 drm/i915/gem: Return an error ptr from context_lookup
-:60: WARNING:LIKELY_MISUSE: nested (un)?likely() calls, IS_ERR already uses unlikely() internally
#60: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:742:
+	if (unlikely(IS_ERR(ctx)))

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
c7bd40e3ab15 drm/i915/gt: Drop i915_address_space::file (v2)
-:9: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 2bfa996e031b ("drm/i915: Store owning file on the i915_address_space")'
#9: 
It was added in 2bfa996e031b ("drm/i915: Store owning file on the

-:11: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit f6e8aa387171 ("drm/i915: Report the number of closed vma held by each context in debugfs")'
#11: 
the difference between the global GTT and a PPGTT.  In f6e8aa387171

-:15: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit db80a1294c23 ("drm/i915/gem: Remove per-client stats from debugfs/i915_gem_objects")'
#15: 
were entirely nuked in db80a1294c23 ("drm/i915/gem: Remove per-client

total: 3 errors, 0 warnings, 0 checks, 55 lines checked
4dced50754af drm/i915/gem: Delay context creation
6c98c574e624 drm/i915/gem: Don't allow changing the VM on running contexts
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 424 lines checked
60bb25bf2322 drm/i915/gem: Don't allow changing the engine set on running contexts
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 316 lines checked
c7405d6d9678 drm/i915/selftests: Take a VM in kernel_context()
304ef8c57818 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
bd3af6aa2571 drm/i915/gem: Roll all of context creation together
-:176: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#176: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1392:
+	 * is no remap info, it will be a NOP. */

total: 0 errors, 1 warnings, 0 checks, 246 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
