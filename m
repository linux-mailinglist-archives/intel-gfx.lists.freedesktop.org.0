Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0CD63F0D1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 13:47:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BE8510E11A;
	Thu,  1 Dec 2022 12:47:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B05EA10E036;
 Thu,  1 Dec 2022 12:47:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9389AADF0;
 Thu,  1 Dec 2022 12:47:14 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Thu, 01 Dec 2022 12:47:14 -0000
Message-ID: <166989883465.14636.4487569991968177383@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1669897668.git.mchehab@kernel.org>
In-Reply-To: <cover.1669897668.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_KUnit_support_for_i915_mock_selftests?=
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

Series: Add KUnit support for i915 mock selftests
URL   : https://patchwork.freedesktop.org/series/111530/
State : warning

== Summary ==

Error: dim checkpatch failed
729ffb89e113 drm/i915: place selftest preparation on a separate function
b4a91d0d11ad drm/i915: export all mock selftest functions
21f5325a221b drm/i915: allow running mock selftests via Kunit
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


