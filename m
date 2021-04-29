Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 698AC36F13F
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 22:46:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4506F4B6;
	Thu, 29 Apr 2021 20:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 345326F4B6;
 Thu, 29 Apr 2021 20:46:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C827A47DF;
 Thu, 29 Apr 2021 20:46:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 29 Apr 2021 20:46:40 -0000
Message-ID: <161972920015.20427.16340397040080706244@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429190340.1555632-1-jason@jlekstrand.net>
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_ioctl_clean-ups_=28rev3=29?=
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

Series: drm/i915/gem: ioctl clean-ups (rev3)
URL   : https://patchwork.freedesktop.org/series/89443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d568c0fd97a3 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
-:176: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#176: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
f6aea3cd1da2 drm/i915: Stop storing the ring size in the ring pointer
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 81 lines checked
b99187a9b6a9 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
6b665f0d251c drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
54566d236033 drm/i915/gem: Return void from context_apply_all
3743384e9f0e drm/i915: Drop the CONTEXT_CLONE API
07ba0d24a10a drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
a9a28d64b5bc drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
058f1057bf1d drm/i915/gem: Disallow bonding of virtual engines (v3)
46e724b65b3c drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT
9f6c3071c818 drm/i915/request: Remove the hook from await_execution
c55c0fc1bc06 drm/i915/gem: Disallow creating contexts with too many engines
1d13e2571078 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)
9a52948d264c drm/i915/gem: Add a separate validate_priority helper
026ab9b0e512 drm/i915: Add gem/i915_gem_context.h to the docs
4919dd9c07a4 drm/i915/gem: Add an intermediate proto_context struct
-:272: WARNING:REPEATED_WORD: Possible repeated word: 'See'
#272: FILE: drivers/gpu/drm/i915/gem/i915_gem_context_types.h:87:
+	/** @single_timeline: See See i915_gem_context::syncobj */

total: 0 errors, 1 warnings, 0 checks, 269 lines checked
79c016fa10e5 drm/i915/gem: Use the proto-context to handle create parameters
-:79: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#79: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:324:
+	unsigned num_engines;

-:260: ERROR:CODE_INDENT: code indent should use tabs where possible
#260: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:505:
+^I^I^I         struct i915_gem_proto_context *pc,$

-:260: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#260: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:505:
+static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
+			         struct i915_gem_proto_context *pc,

-:261: ERROR:CODE_INDENT: code indent should use tabs where possible
#261: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:506:
+^I^I^I         const struct drm_i915_gem_context_param *args)$

-:386: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#386: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:631:
+		ret = -ENOTSUPP;

total: 2 errors, 2 warnings, 1 checks, 604 lines checked
33e918dfd45f drm/i915/gem: Return an error ptr from context_lookup
-:60: WARNING:LIKELY_MISUSE: nested (un)?likely() calls, IS_ERR already uses unlikely() internally
#60: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:742:
+	if (unlikely(IS_ERR(ctx)))

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
db39672ae812 drm/i915/gt: Drop i915_address_space::file (v2)
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
bb2549ed6345 drm/i915/gem: Delay context creation
-:356: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#356: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:2729:
+	if (ret == -ENOTSUPP) {

total: 0 errors, 1 warnings, 0 checks, 451 lines checked
335760197fdf drm/i915/gem: Don't allow changing the VM on running contexts
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 424 lines checked
df6523539e0a drm/i915/gem: Don't allow changing the engine set on running contexts
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 314 lines checked
0c2f94037518 drm/i915/selftests: Take a VM in kernel_context()
d712c48a36e6 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
aa50b01a8994 drm/i915/gem: Roll all of context creation together
-:176: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#176: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1294:
+	 * is no remap info, it will be a NOP. */

total: 0 errors, 1 warnings, 0 checks, 246 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
