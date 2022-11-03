Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 609EA6188C9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 20:32:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B20B10E2B0;
	Thu,  3 Nov 2022 19:31:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9F17210E197;
 Thu,  3 Nov 2022 19:31:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 61C24A47EB;
 Thu,  3 Nov 2022 19:31:55 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Thu, 03 Nov 2022 19:31:55 -0000
Message-ID: <166750391536.9193.13659511685922651718@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1667486144.git.mchehab@kernel.org>
In-Reply-To: <cover.1667486144.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_KUnit_support_for_i915_driver?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Add KUnit support for i915 driver
URL   : https://patchwork.freedesktop.org/series/110483/
State : warning

== Summary ==

Error: dim checkpatch failed
1c12427bb8a0 drm/i915: export all selftest functions
100f0a51abe8 drm/i915: place selftest preparation on a separate function
0865f4e46dc3 drm/i915: allow running mock selftests via Kunit
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
	$ qemu-system-x86_64 -nodefaults -m 1024 -kernel .kunit/arch/x86/boot/bzImage -append 'kunit.enable=1 console=ttyS0 kunit_shutdown=reboot' -no-reboot -nographic -serial stdio

-:269: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#269: 
new file mode 100644

-:340: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#340: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:49:
+	pr_notice("Setting dangerous option KUnit %s - tainting kernel\n",
+			  test->name);

-:351: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#351: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:60:
+#define selftest(x, __y) int __y(void);

-:357: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#357: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:66:
+	static void mock_##__x(struct kunit *test) {	\

-:369: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#369: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:78:
+};
+#undef selftest

-:385: WARNING:MODULE_LICENSE: Prefer "GPL" over "GPL v2" - see commit bf7fbeeae6db ("module: Cure the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity")
#385: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:94:
+MODULE_LICENSE("GPL v2");

total: 1 errors, 4 warnings, 2 checks, 139 lines checked
d2c5ae3de848 drm/i915: add support to run KUnit tests on bare metal
-:119: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#119: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:106:
+		if (WARN(ret > 0 || ret == -ENOTTY,
+			"%s returned %d, conflicting with selftest's magic values!\n",

total: 0 errors, 0 warnings, 1 checks, 109 lines checked
c8c52b04820b drm/i915: add live selftests to KUnit
-:27: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#27: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:185:
+#define selftest(x, __y) int __y(struct drm_i915_private *i915);

-:32: WARNING:SPACE_BEFORE_TAB: please, no space before tabs
#32: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:190:
+#define selftest(__x, __y) ^I^I^I^I\$

-:33: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#33: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:191:
+	static void live_##__x(struct kunit *test) {	\

-:45: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#45: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:203:
+};
+#undef selftest

total: 1 errors, 2 warnings, 1 checks, 49 lines checked
8f10df5e6a29 drm/i915: add perf selftests to KUnit
-:22: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#22: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:209:
+#define selftest(x, __y) int __y(struct drm_i915_private *i915);

-:28: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#28: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:215:
+	static void perf_##__x(struct kunit *test) {	\

-:40: CHECK:LINE_SPACING: Please use a blank line after function/struct/union/enum declarations
#40: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:227:
+};
+#undef selftest

total: 1 errors, 1 warnings, 1 checks, 49 lines checked
3ad2a4823bf9 drm/i915: now that all functions are used, remove __maybe_unused
36f4738dd786 drm/i915: check if current->mm is not NULL
-:49: WARNING:TYPO_SPELLING: 'an user' may be misspelled - perhaps 'a user'?
#49: FILE: drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c:1849:
+		pr_err("Test called without an user context!\n");
 		                            ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 11 lines checked


