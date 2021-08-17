Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2243EED3E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 15:22:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B092E89220;
	Tue, 17 Aug 2021 13:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC45489220;
 Tue, 17 Aug 2021 13:22:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5984A01BB;
 Tue, 17 Aug 2021 13:22:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4801953245018491050=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Aug 2021 13:22:25 -0000
Message-ID: <162920654585.22608.995285494467450701@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210816135139.10060-1-matthew.brost@intel.com>
In-Reply-To: <20210816135139.10060-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4801953245018491050==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev2)
URL   : https://patchwork.freedesktop.org/series/93704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10490 -> Patchwork_20833
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20833:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-ehl-2}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10490/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10490 and Patchwork_20833:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 30 pass(s)
    - Exec time: [0.40, 5.19] s

  

Known issues
------------

  Here are the changes found in Patchwork_20833 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +27 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][4] ([i915#3718])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_parallel@engines@userptr:
    - fi-pnv-d510:        [PASS][5] -> [INCOMPLETE][6] ([i915#299])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10490/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][8] ([i915#2403] / [i915#2505] / [i915#2722])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-pnv-d510/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10490 -> Patchwork_20833

  CI-20190529: 20190529
  CI_DRM_10490: 3bd74b377986fcb89cf4563629f97c5b3199ca6f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20833: c4c34f7bb22c9a83377812d75d8eb207a44a1b9b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c4c34f7bb22c drm/i915/guc: Add GuC kernel doc
bb901831764c drm/i915/guc: Move GuC priority fields in context under guc_active
492de6bdaacb drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
69e885b61035 drm/i915/guc: Proper xarray usage for contexts_lookup
fa32fd7346d0 drm/i915/guc: Rework and simplify locking
c8b83840007d drm/i915/guc: Move guc_blocked fence to struct guc_state
dcd9725de04f drm/i915/guc: Release submit fence from an IRQ
31fbd295c9f5 drm/i915/guc: Flush G2H work queue during reset
e21f028c082e drm/i915: Allocate error capture in atomic context
48c820953477 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
738284a940e2 drm/i915/guc: Don't touch guc_state.sched_state without a lock
957737f84734 drm/i915/guc: Take context ref when cancelling request
241da61be83d drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
221846309949 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
ba1d218343a3 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
862260cf6795 drm/i915/selftests: Add a cancel request selftest that triggers a reset
806479ce9909 drm/i915/execlists: Do not propagate errors to dependent fences
6f42cfc0eeb4 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
97ee783e2b00 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
ee0ecb333df9 drm/i915/guc: Unwind context requests in reverse order
5703206b5f51 drm/i915/guc: Fix outstanding G2H accounting
b9583f1b134e drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/index.html

--===============4801953245018491050==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10490 -&gt; Patchwork_20833</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20833:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10490/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-ehl-2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10490 and Patchwork_20833:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 30 pass(s)</li>
<li>Exec time: [0.40, 5.19] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20833 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10490/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-pnv-d510/igt@gem_exec_parallel@engines@userptr.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20833/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10490 -&gt; Patchwork_20833</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10490: 3bd74b377986fcb89cf4563629f97c5b3199ca6f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6177: f474644e7226dd319195ca03b3cde82ad10ac54c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20833: c4c34f7bb22c9a83377812d75d8eb207a44a1b9b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c4c34f7bb22c drm/i915/guc: Add GuC kernel doc<br />
bb901831764c drm/i915/guc: Move GuC priority fields in context under guc_active<br />
492de6bdaacb drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
69e885b61035 drm/i915/guc: Proper xarray usage for contexts_lookup<br />
fa32fd7346d0 drm/i915/guc: Rework and simplify locking<br />
c8b83840007d drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
dcd9725de04f drm/i915/guc: Release submit fence from an IRQ<br />
31fbd295c9f5 drm/i915/guc: Flush G2H work queue during reset<br />
e21f028c082e drm/i915: Allocate error capture in atomic context<br />
48c820953477 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
738284a940e2 drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
957737f84734 drm/i915/guc: Take context ref when cancelling request<br />
241da61be83d drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
221846309949 drm/i915/selftests: Fix memory corruption in live_lrc_isolation<br />
ba1d218343a3 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
862260cf6795 drm/i915/selftests: Add a cancel request selftest that triggers a reset<br />
806479ce9909 drm/i915/execlists: Do not propagate errors to dependent fences<br />
6f42cfc0eeb4 drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
97ee783e2b00 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
ee0ecb333df9 drm/i915/guc: Unwind context requests in reverse order<br />
5703206b5f51 drm/i915/guc: Fix outstanding G2H accounting<br />
b9583f1b134e drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============4801953245018491050==--
