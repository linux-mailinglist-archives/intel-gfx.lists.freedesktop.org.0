Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF513F81FA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 07:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 013E86E503;
	Thu, 26 Aug 2021 05:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8BF9C6E4F3;
 Thu, 26 Aug 2021 05:14:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 824FAAA917;
 Thu, 26 Aug 2021 05:14:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0380577526579488804=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 05:14:27 -0000
Message-ID: <162995486749.15049.18155533564187980860@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826032327.18078-1-matthew.brost@intel.com>
In-Reply-To: <20210826032327.18078-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev5=29?=
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

--===============0380577526579488804==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev5)
URL   : https://patchwork.freedesktop.org/series/93704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10522 -> Patchwork_20896
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10522 and Patchwork_20896:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 29 pass(s)
    - Exec time: [0.40, 5.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_20896 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][2] -> [DMESG-WARN][3] ([i915#3925])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][4] -> [INCOMPLETE][5] ([i915#146])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][6] ([i915#1602])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-rkl-guc/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925


Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10522 -> Patchwork_20896

  CI-20190529: 20190529
  CI_DRM_10522: b9b50258869989a477e7c04ac6d21a6e3660048e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20896: cf1ce58e8ab52b2d06bd0ed91d8fe1d2e62b646c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cf1ce58e8ab5 drm/i915/guc: Drop static inline functions intel_guc_submission.c
b9a4dd93511f drm/i915/guc: Add GuC kernel doc
818b96c726c3 drm/i915/guc: Drop guc_active move everything into guc_state
8a835e57e906 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
d463a3297412 drm/i915/guc: Move GuC priority fields in context under guc_active
fa4e0e879240 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
b7cbde64c3bf drm/i915/guc: Proper xarray usage for contexts_lookup
ffc3720eacde drm/i915/guc: Rework and simplify locking
e45d040e7d64 drm/i915/guc: Move guc_blocked fence to struct guc_state
c26a137a1a98 drm/i915/guc: Release submit fence from an irq_work
1275c6c2a642 drm/i915/guc: Flush G2H work queue during reset
7ffd90c5f795 drm/i915: Allocate error capture in nowait context
ec42c335cbc5 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
21b0b713c8ed drm/i915/guc: Don't touch guc_state.sched_state without a lock
294dd722f049 drm/i915/guc: Take context ref when cancelling request
10c9d7e6445c drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
94e9e0579d73 drm/i915/guc: Copy whole golden context, set engine state size of subset
c72bc8455075 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
8c57d70df62e drm/i915/guc: Kick tasklet after queuing a request
641110bbb3dd drm/i915/selftests: Add a cancel request selftest that triggers a reset
5db336e06b96 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
0bd9a75d05d5 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
917c35136667 drm/i915/guc: Process all G2H message at once in work queue
9d217dd094d4 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
6d797176750f drm/i915/guc: Unwind context requests in reverse order
e463d05638a5 drm/i915/guc: Fix outstanding G2H accounting
7dc01ebd7a94 drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/index.html

--===============0380577526579488804==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10522 -&gt; Patchwork_20896</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10522 and Patchwork_20896:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 29 pass(s)</li>
<li>Exec time: [0.40, 5.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20896 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10522/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20896/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10522 -&gt; Patchwork_20896</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10522: b9b50258869989a477e7c04ac6d21a6e3660048e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20896: cf1ce58e8ab52b2d06bd0ed91d8fe1d2e62b646c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cf1ce58e8ab5 drm/i915/guc: Drop static inline functions intel_guc_submission.c<br />
b9a4dd93511f drm/i915/guc: Add GuC kernel doc<br />
818b96c726c3 drm/i915/guc: Drop guc_active move everything into guc_state<br />
8a835e57e906 drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
d463a3297412 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
fa4e0e879240 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
b7cbde64c3bf drm/i915/guc: Proper xarray usage for contexts_lookup<br />
ffc3720eacde drm/i915/guc: Rework and simplify locking<br />
e45d040e7d64 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
c26a137a1a98 drm/i915/guc: Release submit fence from an irq_work<br />
1275c6c2a642 drm/i915/guc: Flush G2H work queue during reset<br />
7ffd90c5f795 drm/i915: Allocate error capture in nowait context<br />
ec42c335cbc5 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
21b0b713c8ed drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
294dd722f049 drm/i915/guc: Take context ref when cancelling request<br />
10c9d7e6445c drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
94e9e0579d73 drm/i915/guc: Copy whole golden context, set engine state size of subset<br />
c72bc8455075 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
8c57d70df62e drm/i915/guc: Kick tasklet after queuing a request<br />
641110bbb3dd drm/i915/selftests: Add a cancel request selftest that triggers a reset<br />
5db336e06b96 Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
0bd9a75d05d5 drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
917c35136667 drm/i915/guc: Process all G2H message at once in work queue<br />
9d217dd094d4 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
6d797176750f drm/i915/guc: Unwind context requests in reverse order<br />
e463d05638a5 drm/i915/guc: Fix outstanding G2H accounting<br />
7dc01ebd7a94 drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============0380577526579488804==--
