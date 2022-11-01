Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFC6615445
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 22:30:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6B8F10E41F;
	Tue,  1 Nov 2022 21:30:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 510EA10E41F;
 Tue,  1 Nov 2022 21:30:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 04A69A77A5;
 Tue,  1 Nov 2022 21:30:07 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mauro Carvalho Chehab" <mchehab@kernel.org>
Date: Tue, 01 Nov 2022 21:30:06 -0000
Message-ID: <166733820698.13545.15646658961276858274@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <e7ace6f673b10898c8b5401aaca466e8105cbc1c.1667320524.git.mchehab@kernel.org>
In-Reply-To: <e7ace6f673b10898c8b5401aaca466e8105cbc1c.1667320524.git.mchehab@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_allow_running_mock_selftests_via_Kunit?=
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

Series: drm/i915: allow running mock selftests via Kunit
URL   : https://patchwork.freedesktop.org/series/110383/
State : warning

== Summary ==

Error: dim checkpatch failed
a4f3a5c88a10 drm/i915: allow running mock selftests via Kunit
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:24: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#24: 
	$ qemu-system-x86_64 -nodefaults -m 1024 -kernel .kunit/arch/x86/boot/bzImage -append 'kunit.enable=1 console=ttyS0 kunit_shutdown=reboot' -no-reboot -nographic -serial stdio

-:373: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#373: 
new file mode 100644

-:432: WARNING:TRAILING_SEMICOLON: macros should not use a trailing semicolon
#432: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:13:
+#define selftest(x, __y) int __y(void);

-:438: ERROR:OPEN_BRACE: open brace '{' following function definitions go on the next line
#438: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:19:
+	static void mock_##__x(struct kunit *test) {		\

-:467: WARNING:MODULE_LICENSE: Prefer "GPL" over "GPL v2" - see commit bf7fbeeae6db ("module: Cure the MODULE_LICENSE "GPL" vs. "GPL v2" bogosity")
#467: FILE: drivers/gpu/drm/i915/selftests/i915_kunit.c:48:
+MODULE_LICENSE("GPL v2");

total: 1 errors, 4 warnings, 0 checks, 243 lines checked


