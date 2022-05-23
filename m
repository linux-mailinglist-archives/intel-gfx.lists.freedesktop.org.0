Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5826F53152E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 May 2022 19:04:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 793F610E301;
	Mon, 23 May 2022 17:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8648F10E1FC;
 Mon, 23 May 2022 17:03:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7E904A47DF;
 Mon, 23 May 2022 17:03:58 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Mon, 23 May 2022 17:03:58 -0000
Message-ID: <165332543848.9280.6137017268097288688@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220523110841.1151431-1-badal.nilawar@intel.com>
In-Reply-To: <20220523110841.1151431-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_HWMON_support?=
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

Series: drm/i915: Add HWMON support
URL   : https://patchwork.freedesktop.org/series/104278/
State : warning

== Summary ==

Error: dim checkpatch failed
461a66ade2f0 drm/i915/hwmon: Add HWMON power sensor support
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 10, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:15: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#15: 
new file mode 100644

-:135: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#135: FILE: drivers/gpu/drm/i915/i915_hwmon.c:24:
+#define FIELD_SHIFT(__mask)				    \
+	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
+		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
+		__bf_shf(__mask))

total: 0 errors, 1 warnings, 1 checks, 559 lines checked
14d8fb223c66 drm/i915/hwmon: Add HWMON energy support
629e24ca4b59 drm/i915/hwmon: Add HWMON current voltage support


