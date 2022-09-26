Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F84E5EB5DE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 01:38:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9508110E1A2;
	Mon, 26 Sep 2022 23:37:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9661910E1A2;
 Mon, 26 Sep 2022 23:37:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8D658A7DFB;
 Mon, 26 Sep 2022 23:37:52 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Badal Nilawar" <badal.nilawar@intel.com>
Date: Mon, 26 Sep 2022 23:37:52 -0000
Message-ID: <166423547255.15111.9193646260119422810@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926175211.3473371-1-badal.nilawar@intel.com>
In-Reply-To: <20220926175211.3473371-1-badal.nilawar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Add_HWMON_support?=
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

Series: Add HWMON support
URL   : https://patchwork.freedesktop.org/series/109069/
State : warning

== Summary ==

Error: dim checkpatch failed
2f9dc1a45021 drm/i915/hwmon: Add HWMON infrastructure
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 11, in <module>
    import git
ModuleNotFoundError: No module named 'git'
-:89: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#89: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 182 lines checked
ac158be23983 drm/i915/hwmon: Add HWMON current voltage support
-:27: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#27: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 104 lines checked
58db0dd7ab66 drm/i915/hwmon: Power PL1 limit and TDP setting
edeaa31c49d0 drm/i915/hwmon: Show device level energy usage
06878f5673c7 drm/i915/hwmon: Expose card reactive critical power
c0dff62dc9a3 drm/i915/hwmon: Expose power1_max_interval
137c4d35ccb2 drm/i915/hwmon: Extend power/energy for XEHPSDV


