Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A38946E0E41
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 15:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2261A10E387;
	Thu, 13 Apr 2023 13:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 966A110E387;
 Thu, 13 Apr 2023 13:15:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 63490A47DF;
 Thu, 13 Apr 2023 13:15:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 13 Apr 2023 13:15:26 -0000
Message-ID: <168139172637.3696.14059588797179244061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1681379167.git.jani.nikula@intel.com>
In-Reply-To: <cover.1681379167.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display=3A_split_out_high_level_display_entry_poin?=
 =?utf-8?q?ts?=
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

Series: drm/i915/display: split out high level display entry points
URL   : https://patchwork.freedesktop.org/series/116431/
State : warning

== Summary ==

Error: dim checkpatch failed
fbb7502dc824 drm/i915/display: remove intel_display_commit_duplicated_state()
f16b8371b8f4 drm/i915/display: start high level display driver file
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:124: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#124: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 180 lines checked
8a9ef874b10f drm/i915/display: move intel_modeset_probe_defer() to intel_display_driver.[ch]
43949ccaacb2 drm/i915/display: rename intel_modeset_probe_defer() -> intel_display_driver_probe_defer()
e5556962b69b drm/i915/display: move modeset probe/remove functions to intel_display_driver.c
-:617: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#617: FILE: drivers/gpu/drm/i915/display/intel_display_driver.c:86:
+	cdclk_state->logical = cdclk_state->actual = i915->display.cdclk.hw;

total: 0 errors, 0 warnings, 1 checks, 929 lines checked
96de27eb41aa drm/i915/display: rename intel_display_driver_* functions
a02c04b793b4 drm/i915/display: add intel_display_reset.[ch]
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:192: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#192: 
new file mode 100644

-:234: WARNING:MEMORY_BARRIER: memory barrier without comment
#234: FILE: drivers/gpu/drm/i915/display/intel_display_reset.c:38:
+	smp_mb__after_atomic();

total: 0 errors, 2 warnings, 0 checks, 332 lines checked
ffc17a84f51d drm/i915/display: move display suspend/resume to intel_display_driver.[ch]
607713a78bc3 drm/i915/display: rename intel_display_driver_suspend/resume functions
4bad69e7cd40 drm/i915/display: add intel_display_driver_early_probe()


