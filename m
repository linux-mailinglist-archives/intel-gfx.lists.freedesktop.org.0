Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8910F7D60E1
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 06:30:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 997A610E549;
	Wed, 25 Oct 2023 04:30:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5F6410E548;
 Wed, 25 Oct 2023 04:29:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF58FAADDD;
 Wed, 25 Oct 2023 04:29:59 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 25 Oct 2023 04:29:59 -0000
Message-ID: <169820819988.20490.16377194458771535320@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231024160727.282960-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231024160727.282960-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DRM_scheduling_cgroup_controller_=28rev5=29?=
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

Series: DRM scheduling cgroup controller (rev5)
URL   : https://patchwork.freedesktop.org/series/109902/
State : warning

== Summary ==

Error: dim checkpatch failed
cc8efaeef096 cgroup: Add the DRM cgroup controller
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:11: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#11: 
new file mode 100644

-:74: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'kernel/cgroup/drm.c', please use '//' instead
#74: FILE: kernel/cgroup/drm.c:1:
+/* SPDX-License-Identifier: MIT */

-:74: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#74: FILE: kernel/cgroup/drm.c:1:
+/* SPDX-License-Identifier: MIT */

total: 0 errors, 3 warnings, 0 checks, 97 lines checked
9c250079a63b drm/cgroup: Track DRM clients per cgroup
3604a66e26c3 drm/cgroup: Add ability to query drm cgroup GPU time
-:34: WARNING:SPACING: Unnecessary space before function pointer arguments
#34: FILE: include/drm/drm_drv.h:175:
+	u64 (*active_time_us) (struct drm_file *);

-:34: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_file *' should also have an identifier name
#34: FILE: include/drm/drm_drv.h:175:
+	u64 (*active_time_us) (struct drm_file *);

total: 0 errors, 2 warnings, 0 checks, 72 lines checked
d54ecc03659c drm/cgroup: Add over budget signalling callback
-:26: WARNING:SPACING: Unnecessary space before function pointer arguments
#26: FILE: include/drm/drm_drv.h:183:
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);

-:26: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_file *' should also have an identifier name
#26: FILE: include/drm/drm_drv.h:183:
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);

total: 0 errors, 2 warnings, 0 checks, 36 lines checked
0c7a175c3ee9 drm/cgroup: Only track clients which are providing drm_cgroup_ops
872f8b2b6289 cgroup/drm: Introduce weight based drm cgroup control
-:53: WARNING:TYPO_SPELLING: 'heterogenous' may be misspelled - perhaps 'heterogeneous'?
#53: FILE: Documentation/admin-guide/cgroup-v2.rst:2433:
+Because of the heterogenous hardware and driver DRM capabilities, time control
                ^^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 530 lines checked
60e88112f662 drm/i915: Implement cgroup controller over budget throttling
b8997acc9c0c cgroup/drm: Expose GPU utilisation


