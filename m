Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5031B3A1DFC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 22:10:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A5366EAB2;
	Wed,  9 Jun 2021 20:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4CA296EAB2;
 Wed,  9 Jun 2021 20:10:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3C851AA0ED;
 Wed,  9 Jun 2021 20:10:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 20:10:09 -0000
Message-ID: <162326940922.27475.10991592788814957694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609174418.249585-1-jason@jlekstrand.net>
In-Reply-To: <20210609174418.249585-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_ioctl_clean-ups_=28rev7=29?=
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

Series: drm/i915/gem: ioctl clean-ups (rev7)
URL   : https://patchwork.freedesktop.org/series/89443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
100d73aa9252 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
-:177: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#177: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
c3f6a0807a27 drm/i915: Stop storing the ring size in the ring pointer (v2)
a9718291830e drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
ec5522a9644b drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
203766899755 drm/i915/gem: Return void from context_apply_all
835c8348dc42 drm/i915: Drop the CONTEXT_CLONE API (v2)
2dad231d92fb drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
07f876e84333 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
46e86a5d9e0e drm/i915/gem: Disallow bonding of virtual engines (v3)
30fdc9fcedba drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT (v2)
969b77513f32 drm/i915/request: Remove the hook from await_execution
3d0a4c060233 drm/i915/gem: Disallow creating contexts with too many engines
79c699205313 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)
587a7f034af2 drm/i915/gem: Add a separate validate_priority helper
d102d0429864 drm/i915: Add gem/i915_gem_context.h to the docs
3602847dade8 drm/i915/gem: Add an intermediate proto_context struct (v5)
-:281: WARNING:REPEATED_WORD: Possible repeated word: 'See'
#281: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:87:
+	/** @single_timeline: See See &i915_gem_context.syncobj */

total: 0 errors, 1 warnings, 0 checks, 260 lines checked
f6e071ec8bae drm/i915/gem: Rework error handling in default_engines
051bed0b2983 drm/i915/gem: Optionally set SSEU in intel_context_set_gem
f4cebc831245 drm/i915: Add an i915_gem_vm_lookup helper
b0db512b3247 drm/i915/gem: Make an alignment check more sensible
ff8c4049d11e drm/i915/gem: Use the proto-context to handle create parameters (v4)
-:99: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#99: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:310:
+	unsigned num_engines;

-:280: ERROR:CODE_INDENT: code indent should use tabs where possible
#280: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:491:
+^I^I^I         struct i915_gem_proto_context *pc,$

-:280: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#280: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:491:
+static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
+			         struct i915_gem_proto_context *pc,

-:281: ERROR:CODE_INDENT: code indent should use tabs where possible
#281: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:492:
+^I^I^I         const struct drm_i915_gem_context_param *args)$

-:384: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#384: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:595:
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))

-:384: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pc->num_user_engines >= 0'
#384: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:595:
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))

total: 2 errors, 2 warnings, 2 checks, 688 lines checked
5d4b208bfccf drm/i915/gem: Return an error ptr from context_lookup
-:60: WARNING:LIKELY_MISUSE: nested (un)?likely() calls, IS_ERR already uses unlikely() internally
#60: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:742:
+	if (unlikely(IS_ERR(ctx)))

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
a7f403d3da97 drm/i915/gt: Drop i915_address_space::file (v2)
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
0d52b049e5f2 drm/i915/gem: Delay context creation (v3)
b9b1b45bf4fc drm/i915/gem: Don't allow changing the VM on running contexts (v4)
77127cea6b1b drm/i915/gem: Don't allow changing the engine set on running contexts (v3)
-:25: WARNING:TYPO_SPELLING: 'mesage' may be misspelled - perhaps 'message'?
#25: 
 - Expand the commit mesage
                     ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 322 lines checked
5513bcf440f0 drm/i915/selftests: Take a VM in kernel_context()
49694203946f i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
85de5ec656ab drm/i915/gem: Roll all of context creation together
-:202: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#202: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1388:
+	 * is no remap info, it will be a NOP. */

total: 0 errors, 1 warnings, 0 checks, 273 lines checked
26329701bfad drm/i915: Finalize contexts in GEM_CONTEXT_CREATE on version 13+
7f0f5acf30f2 HACK: Always finalize contexts
-:9: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:20: ERROR:MISSING_SIGN_OFF: Missing Signed-off-by: line(s)

total: 1 errors, 1 warnings, 0 checks, 8 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
