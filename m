Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B18563A0BEE
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 07:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA28E6E1F3;
	Wed,  9 Jun 2021 05:44:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 159156E1F3;
 Wed,  9 Jun 2021 05:44:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0DCF0A47EA;
 Wed,  9 Jun 2021 05:44:56 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 05:44:56 -0000
Message-ID: <162321749603.27476.7621035460479216947@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609043613.102962-1-jason@jlekstrand.net>
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_ioctl_clean-ups_=28rev6=29?=
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

Series: drm/i915/gem: ioctl clean-ups (rev6)
URL   : https://patchwork.freedesktop.org/series/89443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
9bed855e16a0 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
-:177: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#177: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
bcc3d9296cf1 drm/i915: Stop storing the ring size in the ring pointer (v2)
30643107eda9 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
d15967a05b62 drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
9128ae468d28 drm/i915/gem: Return void from context_apply_all
f3f668886b95 drm/i915: Drop the CONTEXT_CLONE API (v2)
e3f2ad211e12 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
6b3e766c7441 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
7ca2359062f7 drm/i915/gem: Disallow bonding of virtual engines (v3)
054b1f8e7432 drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT (v2)
6fe842590232 drm/i915/request: Remove the hook from await_execution
f5928334153d drm/i915/gem: Disallow creating contexts with too many engines
a7a8f8d5ff55 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)
93a5d3ac059d drm/i915/gem: Add a separate validate_priority helper
ebec0e49d883 drm/i915: Add gem/i915_gem_context.h to the docs
92cb528d35f6 drm/i915/gem: Add an intermediate proto_context struct (v4)
-:276: WARNING:REPEATED_WORD: Possible repeated word: 'See'
#276: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:87:
+	/** @single_timeline: See See &i915_gem_context.syncobj */

total: 0 errors, 1 warnings, 0 checks, 259 lines checked
9ba4bec35eb8 drm/i915/gem: Rework error handling in default_engines
cfe2616bb981 drm/i915/gem: Optionally set SSEU in intel_context_set_gem
ce5911d9f97c drm/i915: Add an i915_gem_vm_lookup helper
abdf4766d581 drm/i915/gem: Make an alignment check more sensible
c2ee5d981222 drm/i915/gem: Use the proto-context to handle create parameters (v3)
-:100: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#100: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:310:
+	unsigned num_engines;

-:281: ERROR:CODE_INDENT: code indent should use tabs where possible
#281: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:491:
+^I^I^I         struct i915_gem_proto_context *pc,$

-:281: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#281: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:491:
+static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
+			         struct i915_gem_proto_context *pc,

-:282: ERROR:CODE_INDENT: code indent should use tabs where possible
#282: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:492:
+^I^I^I         const struct drm_i915_gem_context_param *args)$

-:385: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#385: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:595:
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))

-:385: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pc->num_user_engines >= 0'
#385: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:595:
+	if (!!(user_sseu.flags & I915_CONTEXT_SSEU_FLAG_ENGINE_INDEX) != (pc->num_user_engines >= 0))

total: 2 errors, 2 warnings, 2 checks, 693 lines checked
8d3126761267 drm/i915/gem: Return an error ptr from context_lookup
-:60: WARNING:LIKELY_MISUSE: nested (un)?likely() calls, IS_ERR already uses unlikely() internally
#60: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:742:
+	if (unlikely(IS_ERR(ctx)))

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
c66b333bcf0d drm/i915/gt: Drop i915_address_space::file (v2)
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
c201ac1b1cac drm/i915/gem: Delay context creation (v2)
e68bf5e2b2d3 drm/i915/gem: Don't allow changing the VM on running contexts (v2)
1fa13abc7009 drm/i915/gem: Don't allow changing the engine set on running contexts (v2)
-:25: WARNING:TYPO_SPELLING: 'mesage' may be misspelled - perhaps 'message'?
#25: 
 - Expand the commit mesage
                     ^^^^^^

total: 0 errors, 1 warnings, 0 checks, 315 lines checked
d7367f2713d1 drm/i915/selftests: Take a VM in kernel_context()
fdef01939517 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
a44b64394c89 drm/i915/gem: Roll all of context creation together
-:202: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#202: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1388:
+	 * is no remap info, it will be a NOP. */

total: 0 errors, 1 warnings, 0 checks, 273 lines checked
cebbfc1e7a57 drm/i915: Finalize contexts in GEM_CONTEXT_CREATE on version 13+
5d88c5acb5a7 drm/i915: Drop some RCU usage around context VMs


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
