Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2557D405C61
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 19:52:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790646E8E3;
	Thu,  9 Sep 2021 17:52:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EE2C46E8E3;
 Thu,  9 Sep 2021 17:52:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E6CB6A00C9;
 Thu,  9 Sep 2021 17:52:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1143523807564076547=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Sep 2021 17:52:11 -0000
Message-ID: <163120993190.16810.289397156242543587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909164744.31249-1-matthew.brost@intel.com>
In-Reply-To: <20210909164744.31249-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev11=29?=
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

--===============1143523807564076547==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev11)
URL   : https://patchwork.freedesktop.org/series/93704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10565 -> Patchwork_21004
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10565 and Patchwork_21004:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 34 pass(s)
    - Exec time: [0.43, 5.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_21004 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][4] ([i915#1886]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718


Participating hosts (47 -> 38)
------------------------------

  Missing    (9): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10565 -> Patchwork_21004

  CI-20190529: 20190529
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21004: e4747b33f311a3ec2567422f23945daef7a6588d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e4747b33f311 drm/i915/guc: Add GuC kernel doc
93b6576f14c0 drm/i915/guc: Drop guc_active move everything into guc_state
f51ccdbc1d50 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
eded4f6781e4 drm/i915/guc: Move GuC priority fields in context under guc_active
a75af0fb3825 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
e9666ec08fe7 drm/i915/guc: Proper xarray usage for contexts_lookup
86fe44af0f11 drm/i915/guc: Rework and simplify locking
a469ee468f89 drm/i915/guc: Move guc_blocked fence to struct guc_state
5db9a3bcd282 drm/i915/guc: Release submit fence from an irq_work
dbef2fc197c8 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
1e192098087d drm/i915/guc: Don't touch guc_state.sched_state without a lock
8a8cf43913a0 drm/i915/guc: Take context ref when cancelling request
e56171c3dd6b drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
69005a00e8aa drm/i915/guc: Copy whole golden context, set engine state size of subset
501532c37b64 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
f9567c78788e drm/i915/guc: Kick tasklet after queuing a request
0a9d7cef0e5a Revert "drm/i915/gt: Propagate change in error status to children on unhold"
5f8dae15114c drm/i915/guc: Workaround reset G2H is received after schedule done G2H
31c0bfa6a01d drm/i915/guc: Process all G2H message at once in work queue
a6990f6f2a54 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
ea81f9db116d drm/i915/guc: Unwind context requests in reverse order
7b4cd4d6bb36 drm/i915/guc: Fix outstanding G2H accounting
deb17f151cef drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/index.html

--===============1143523807564076547==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10565 -&gt; Patchwork_21004</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10565 and Patchwork_21004:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 34 pass(s)</li>
<li>Exec time: [0.43, 5.04] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21004 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10565/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21004/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 38)</h2>
<p>Missing    (9): fi-ilk-m540 bat-adls-5 bat-dg1-6 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bsw-kefka fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10565 -&gt; Patchwork_21004</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10565: 8c3cd60dcfa81a649b14f0705eb5e5c9336f1881 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6201: be0d02ff0775235ead63ccb1e3a1e8c10f0209cf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21004: e4747b33f311a3ec2567422f23945daef7a6588d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e4747b33f311 drm/i915/guc: Add GuC kernel doc<br />
93b6576f14c0 drm/i915/guc: Drop guc_active move everything into guc_state<br />
f51ccdbc1d50 drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
eded4f6781e4 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
a75af0fb3825 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
e9666ec08fe7 drm/i915/guc: Proper xarray usage for contexts_lookup<br />
86fe44af0f11 drm/i915/guc: Rework and simplify locking<br />
a469ee468f89 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
5db9a3bcd282 drm/i915/guc: Release submit fence from an irq_work<br />
dbef2fc197c8 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
1e192098087d drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
8a8cf43913a0 drm/i915/guc: Take context ref when cancelling request<br />
e56171c3dd6b drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
69005a00e8aa drm/i915/guc: Copy whole golden context, set engine state size of subset<br />
501532c37b64 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
f9567c78788e drm/i915/guc: Kick tasklet after queuing a request<br />
0a9d7cef0e5a Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
5f8dae15114c drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
31c0bfa6a01d drm/i915/guc: Process all G2H message at once in work queue<br />
a6990f6f2a54 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
ea81f9db116d drm/i915/guc: Unwind context requests in reverse order<br />
7b4cd4d6bb36 drm/i915/guc: Fix outstanding G2H accounting<br />
deb17f151cef drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============1143523807564076547==--
