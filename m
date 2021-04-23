Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6FF369CE4
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 00:49:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30E896ECAB;
	Fri, 23 Apr 2021 22:49:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D54426ECAB;
 Fri, 23 Apr 2021 22:49:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD809A7DFC;
 Fri, 23 Apr 2021 22:49:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 23 Apr 2021 22:49:34 -0000
Message-ID: <161921817482.2793.748701149661331550@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423223131.879208-1-jason@jlekstrand.net>
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gem=3A_ioctl_clean-ups?=
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

Series: drm/i915/gem: ioctl clean-ups
URL   : https://patchwork.freedesktop.org/series/89443/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
468456983a83 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE
-:176: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#176: 
deleted file mode 100644

total: 0 errors, 1 warnings, 0 checks, 159 lines checked
79a91e982ff7 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
31e3478abfe0 drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem
-:25: WARNING:LINE_SPACING: Missing a blank line after declarations
#25: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:239:
+		unsigned int timeout_ms = ctx->i915->params.request_timeout_ms;
+		intel_context_set_watchdog_us(ce, (u64)timeout_ms * 1000);

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
53f030af52d4 drm/i915/gem: Return void from context_apply_all
4b9a8e315c1c drm/i915: Drop the CONTEXT_CLONE API
ebe52e477467 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v3)
65796fb10e50 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
d3ad59ed0a22 drm/i915/gem: Disallow bonding of virtual engines
21cb51520e4b drm/i915/gem: Disallow creating contexts with too many engines
b6ef4a4c6f47 drm/i915/request: Remove the hook from await_execution
ab3620b9adb5 drm/i915: Stop manually RCU banging in reset_stats_ioctl
fa138a73374c drm/i915/gem: Add a separate validate_priority helper
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 56 lines checked
c50f4dd9ee3f drm/i915/gem: Add an intermediate proto_context struct
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 268 lines checked
70451a1734a2 drm/i915/gem: Return an error ptr from context_lookup
-:59: WARNING:LIKELY_MISUSE: nested (un)?likely() calls, IS_ERR already uses unlikely() internally
#59: FILE: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:742:
+	if (unlikely(IS_ERR(ctx)))

total: 0 errors, 1 warnings, 0 checks, 60 lines checked
d0f063d4604e drm/i915/gt: Drop i915_address_space::file
6fce8cf246ee drm/i915/gem: Delay context creation
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

-:106: WARNING:UNSPECIFIED_INT: Prefer 'unsigned int' to bare use of 'unsigned'
#106: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:358:
+	unsigned num_engines;

-:287: ERROR:CODE_INDENT: code indent should use tabs where possible
#287: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:539:
+^I^I^I         struct i915_gem_proto_context *pc,$

-:287: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#287: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:539:
+static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
+			         struct i915_gem_proto_context *pc,

-:288: ERROR:CODE_INDENT: code indent should use tabs where possible
#288: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:540:
+^I^I^I         const struct drm_i915_gem_context_param *args)$

-:412: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#412: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:664:
+		ret = -ENOTSUPP;

-:807: WARNING:ENOTSUPP: ENOTSUPP is not a SUSV4 error code, prefer EOPNOTSUPP
#807: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:2719:
+	if (ret == -ENOTSUPP) {

-:925: CHECK:UNCOMMENTED_DEFINITION: struct mutex definition without comment
#925: FILE: drivers/gpu/drm/i915/i915_drv.h:203:
+	struct mutex proto_context_lock;

total: 2 errors, 4 warnings, 2 checks, 901 lines checked
40c7b0f86bc0 drm/i915/gem: Don't allow changing the VM on running contexts
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 424 lines checked
9bd5fd34f557 drm/i915/gem: Don't allow changing the engine set on running contexts
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 313 lines checked
1694fd69838b drm/i915/selftests: Take a VM in kernel_context()
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 131 lines checked
e1c0a99c4bc6 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
-:8: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
0c4562693de5 drm/i915/gem: Roll all of context creation together
-:176: WARNING:BLOCK_COMMENT_STYLE: Block comments use a trailing */ on a separate line
#176: FILE: drivers/gpu/drm/i915/gem/i915_gem_context.c:1291:
+	 * is no remap info, it will be a NOP. */

total: 0 errors, 1 warnings, 0 checks, 246 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
