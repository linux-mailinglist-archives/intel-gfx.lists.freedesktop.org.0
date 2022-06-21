Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F1C5528A8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 02:39:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 271F310E33D;
	Tue, 21 Jun 2022 00:39:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73AC410E22A;
 Tue, 21 Jun 2022 00:39:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 69B29A77A5;
 Tue, 21 Jun 2022 00:39:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Tue, 21 Jun 2022 00:39:02 -0000
Message-ID: <165577194240.13646.4078056508919887237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220620204649.894703-1-badal.nilawar@intel.com>
In-Reply-To: <20220620204649.894703-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_HWMON_support_=28rev2=29?=
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

Series: drm/i915: Add HWMON support (rev2)
URL   : https://patchwork.freedesktop.org/series/104278/
State : warning

== Summary ==

Error: dim checkpatch failed
b435e8c95f2c drm/i915/hwmon: Add HWMON infrastructure patch
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:80: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#80: 
new file mode 100644

-:102: CHECK:LINE_SPACING: Please don't use multiple blank lines
#102: FILE: drivers/gpu/drm/i915/i915_hwmon.c:18:
+
+

-:139: CHECK:LINE_SPACING: Please don't use multiple blank lines
#139: FILE: drivers/gpu/drm/i915/i915_hwmon.c:55:
+
+

-:188: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#188: FILE: drivers/gpu/drm/i915/i915_hwmon.c:104:
+{
+

-:189: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#189: FILE: drivers/gpu/drm/i915/i915_hwmon.c:105:
+
+}

total: 0 errors, 1 warnings, 4 checks, 226 lines checked
26283e8ff1e5 drm/i915/hwmon: Add HWMON current voltage support
-:18: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#18: 
new file mode 100644

-:144: WARNING:BRACES: braces {} are not necessary for any arm of this statement
#144: FILE: drivers/gpu/drm/i915/i915_hwmon.c:162:
+	if (IS_DG1(i915) || IS_DG2(i915)) {
[...]
+	} else {
[...]

total: 0 errors, 2 warnings, 0 checks, 116 lines checked
c8f29d0a1e7a drm/i915/hwmon: Add HWMON power sensor support
-:64: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#64: FILE: drivers/gpu/drm/i915/i915_hwmon.c:25:
+#define FIELD_SHIFT(__mask)				    \
+	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
+		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
+		__bf_shf(__mask))

-:351: CHECK:LINE_SPACING: Please don't use multiple blank lines
#351: FILE: drivers/gpu/drm/i915/i915_hwmon.c:374:
 
+

-:361: CHECK:BRACES: braces {} should be used on all arms of this statement
#361: FILE: drivers/gpu/drm/i915/i915_hwmon.c:384:
+		if (i915_mmio_reg_valid(hwmon->rg.pkg_power_sku_unit)) {
[...]
+		} else
[...]

-:364: CHECK:BRACES: Unbalanced braces around else statement
#364: FILE: drivers/gpu/drm/i915/i915_hwmon.c:387:
+		} else

total: 0 errors, 0 warnings, 4 checks, 370 lines checked
cf8df8d7e58f drm/i915/hwmon: Add HWMON energy support


