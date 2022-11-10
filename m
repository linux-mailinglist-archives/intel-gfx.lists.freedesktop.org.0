Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E66EE624AC8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 20:38:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81E2C10E11B;
	Thu, 10 Nov 2022 19:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9EC1510E11B;
 Thu, 10 Nov 2022 19:38:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 95703AADD7;
 Thu, 10 Nov 2022 19:38:29 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 10 Nov 2022 19:38:29 -0000
Message-ID: <166810910960.16956.6245516573950040249@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221109161141.2987173-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_DRM_scheduling_cgroup_controller_=28rev2=29?=
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

Series: DRM scheduling cgroup controller (rev2)
URL   : https://patchwork.freedesktop.org/series/109902/
State : warning

== Summary ==

Error: dim checkpatch failed
0529c5855829 drm: Replace DRM_DEBUG with drm_dbg_core in file and ioctl handling
00d2ae726f37 drm: Track clients by tgid and not tid
ca403de72e98 drm: Update file owner during use
b9a303df0844 cgroup: Add the DRM cgroup controller
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

total: 0 errors, 3 warnings, 0 checks, 91 lines checked
7c7b95f5e62d drm/cgroup: Track clients per owning process
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

-:271: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
#271: FILE: include/drm/drm_clients.h:40:
+{
+

-:272: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#272: FILE: include/drm/drm_clients.h:41:
+
+}

total: 0 errors, 3 warnings, 2 checks, 241 lines checked
ca7d591587f5 drm/cgroup: Allow safe external access to file_priv
f8216e740a13 drm/cgroup: Add ability to query drm cgroup GPU time
-:77: WARNING:SPACING: Unnecessary space before function pointer arguments
#77: FILE: include/drm/drm_drv.h:166:
+	u64 (*active_time_us) (struct drm_file *);

-:77: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_file *' should also have an identifier name
#77: FILE: include/drm/drm_drv.h:166:
+	u64 (*active_time_us) (struct drm_file *);

total: 0 errors, 2 warnings, 0 checks, 73 lines checked
4432f7981686 drm/cgroup: Add over budget signalling callback
-:66: WARNING:SPACING: Unnecessary space before function pointer arguments
#66: FILE: include/drm/drm_drv.h:174:
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);

-:66: WARNING:FUNCTION_ARGUMENTS: function definition argument 'struct drm_file *' should also have an identifier name
#66: FILE: include/drm/drm_drv.h:174:
+	int (*signal_budget) (struct drm_file *, u64 used, u64 budget);

total: 0 errors, 2 warnings, 0 checks, 44 lines checked
9916c9477aa0 drm/cgroup: Only track clients which are providing drm_cgroup_ops
0967fcc62286 cgroup/drm: Client exit hook
d6849830ca1e cgroup/drm: Introduce weight based drm cgroup control
-:44: WARNING:TYPO_SPELLING: 'heterogenous' may be misspelled - perhaps 'heterogeneous'?
#44: FILE: Documentation/admin-guide/cgroup-v2.rst:2409:
+Because of the heterogenous hardware and driver DRM capabilities, soft limits
                ^^^^^^^^^^^^

-:339: ERROR:CODE_INDENT: code indent should use tabs where possible
#339: FILE: kernel/cgroup/drm.c:246:
+^I^I^I^I        sibling->per_s_budget_ns;$

total: 1 errors, 1 warnings, 0 checks, 609 lines checked
891d20935c55 drm/i915: Wire up with drm controller GPU time query
905e6b964283 drm/i915: Implement cgroup controller over budget throttling
-:127: WARNING:PRINTK_WITHOUT_KERN_LEVEL: printk() should include KERN_<LEVEL> facility level
#127: FILE: drivers/gpu/drm/i915/i915_drm_client.c:184:
+printk("i915_drm_cgroup_signal_budget client-id=%u over=%u (%llu/%llu) <%u>\n",

-:127: WARNING:EMBEDDED_FUNCTION_NAME: Prefer using '"%s...", __func__' to using 'i915_drm_cgroup_signal_budget', this function's name, in a string
#127: FILE: drivers/gpu/drm/i915/i915_drm_client.c:184:
+printk("i915_drm_cgroup_signal_budget client-id=%u over=%u (%llu/%llu) <%u>\n",

-:128: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#128: FILE: drivers/gpu/drm/i915/i915_drm_client.c:185:
+       client->id, over, usage, budget, client->over_budget);$

-:175: WARNING:PRINTK_WITHOUT_KERN_LEVEL: printk() should include KERN_<LEVEL> facility level
#175: FILE: drivers/gpu/drm/i915/i915_drm_client.c:232:
+printk("  UN-throttling class%u (phys=%lld%%)\n",

-:176: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#176: FILE: drivers/gpu/drm/i915/i915_drm_client.c:233:
+       i, usage);$

-:191: WARNING:PRINTK_WITHOUT_KERN_LEVEL: printk() should include KERN_<LEVEL> facility level
#191: FILE: drivers/gpu/drm/i915/i915_drm_client.c:248:
+printk("  THROTTLING class%u (phys=%lld%% client=%lluus)\n",

-:192: WARNING:LEADING_SPACE: please, no spaces at the start of a line
#192: FILE: drivers/gpu/drm/i915/i915_drm_client.c:249:
+       i, usage, client_class_usage[i] / 1000);$

total: 0 errors, 7 warnings, 0 checks, 195 lines checked


