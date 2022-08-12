Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1428E59155D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 20:16:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D44519B601;
	Fri, 12 Aug 2022 18:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC18F9B4D0;
 Fri, 12 Aug 2022 18:15:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C42AAA00A0;
 Fri, 12 Aug 2022 18:15:48 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Fri, 12 Aug 2022 18:15:48 -0000
Message-ID: <166032814877.17844.14095477085430088236@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220812173715.2398586-1-badal.nilawar@intel.com>
In-Reply-To: <20220812173715.2398586-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Add_HWMON_support_=28rev3=29?=
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

Series: drm/i915: Add HWMON support (rev3)
URL   : https://patchwork.freedesktop.org/series/104278/
State : warning

== Summary ==

Error: dim checkpatch failed
1de65e10c7ff drm/i915/hwmon: Add HWMON infrastructure
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:81: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#81: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 197 lines checked
bd255119218f drm/i915/hwmon: Add HWMON current voltage support
-:23: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#23: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 98 lines checked
76f73f1465a1 drm/i915/hwmon: Power PL1 limit and TDP setting
-:70: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__mask' - possible side-effects?
#70: FILE: drivers/gpu/drm/i915/i915_hwmon.c:21:
+#define FIELD_SHIFT(__mask)				    \
+	(BUILD_BUG_ON_ZERO(!__builtin_constant_p(__mask)) + \
+		BUILD_BUG_ON_ZERO((__mask) == 0) +	    \
+		__bf_shf(__mask))

total: 0 errors, 0 warnings, 1 checks, 292 lines checked
0ca509ffa1ae drm/i915/hwmon: Show device level energy usage
543c91fde2e1 drm/i915/hwmon: Expose card reactive critical power
f027f0c2de33 drm/i915/hwmon: Expose power1_max_interval
0868fe54f0a0 drm/i915/hwmon: Extend power/energy for XEHPSDV


