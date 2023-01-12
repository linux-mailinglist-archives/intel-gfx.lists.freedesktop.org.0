Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF14A667CC0
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D950C10E31B;
	Thu, 12 Jan 2023 17:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E8E3110E31B;
 Thu, 12 Jan 2023 17:40:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C9551AADD4;
 Thu, 12 Jan 2023 17:40:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 12 Jan 2023 17:40:02 -0000
Message-ID: <167354520279.2074.9822225570263167038@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230112165609.1083270-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230112165609.1083270-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DRM_scheduling_cgroup_controller_=28rev3=29?=
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

Series: DRM scheduling cgroup controller (rev3)
URL   : https://patchwork.freedesktop.org/series/109902/
State : warning

== Summary ==

Error: dim checkpatch failed
d566e8fb02ed drm: Track clients by tgid and not tid
365d4dcce2b7 drm: Update file owner during use
617bddab81a7 cgroup: Add the DRM cgroup controller
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

total: 0 errors, 3 warnings, 0 checks, 96 lines checked
44abfb414808 drm/cgroup: Track clients per owning process
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:31: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#31: 
new file mode 100644

-:36: WARNING:SPDX_LICENSE_TAG: Improper SPDX comment style for 'drivers/gpu/drm/drm_cgroup.c', please use '//' instead
#36: FILE: drivers/gpu/drm/drm_cgroup.c:1:
+/* SPDX-License-Identifier: MIT */

-:36: WARNING:SPDX_LICENSE_TAG: Missing or malformed SPDX-License-Identifier tag in line 1
#36: FILE: drivers/gpu/drm/drm_cgroup.c:1:
+/* SPDX-License-Identifier: MIT */

-:280: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#280: FILE: include/drm/drm_clients.h:40:
+{
+

-:281: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#281: FILE: include/drm/drm_clients.h:41:
+
+}

total: 0 errors, 3 warnings, 2 checks, 250 lines checked
4ea938874920 drm/cgroup: Allow safe external access to file_priv
e4981a8e362c drm/cgroup: Add ability to query drm cgroup GPU time
-:77: WARNING:SPACING: Unnecessary space before function pointer arguments
#77: FILE: include/drm/drm_drv.h:176:
+	u64 (*active_time_us) (struct drm_file *);

-:77: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_file *' should also have an identifier name
#77: FILE: include/drm/drm_drv.h:176:
+	u64 (*active_time_us) (struct drm_file *);

total: 0 errors, 2 warnings, 0 checks, 73 lines checked
e8de7aeebe83 drm/cgroup: Add over budget signalling callback
-:66: WARNING:SPACING: Unnecessary space before function pointer arguments
#66: FILE: include/drm/drm_drv.h:184:
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);

-:66: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_file *' should also have an identifier name
#66: FILE: include/drm/drm_drv.h:184:
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);

total: 0 errors, 2 warnings, 0 checks, 44 lines checked
f87a89f493df drm/cgroup: Only track clients which are providing drm_cgroup_ops
72152c4de474 cgroup/drm: Client exit hook
ade1f9337cbe cgroup/drm: Introduce weight based drm cgroup control
-:40: WARNING:TYPO_SPELLING: 'heterogenous' may be misspelled - perhaps 'heterogeneous'?
#40: FILE: Documentation/admin-guide/cgroup-v2.rst:2418:
+Because of the heterogenous hardware and driver DRM capabilities, soft limits
                ^^^^^^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 613 lines checked
eb4ae816498d drm/i915: Wire up with drm controller GPU time query
e96832f0df03 drm/i915: Implement cgroup controller over budget throttling


