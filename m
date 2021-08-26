Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884273F8B9F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 18:17:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 967BA6E883;
	Thu, 26 Aug 2021 16:17:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A55226E881;
 Thu, 26 Aug 2021 16:17:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E9A2A008A;
 Thu, 26 Aug 2021 16:17:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2447209965105222049=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 16:17:07 -0000
Message-ID: <162999462762.15048.16301274628038623814@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826032327.18078-1-matthew.brost@intel.com>
In-Reply-To: <20210826032327.18078-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev6=29?=
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

--===============2447209965105222049==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev6)
URL   : https://patchwork.freedesktop.org/series/93704/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10525 -> Patchwork_20904
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20904 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20904, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20904:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10525 and Patchwork_20904:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 30 pass(s)
    - Exec time: [0.41, 5.26] s

  

Known issues
------------

  Here are the changes found in Patchwork_20904 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271]) +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][4] ([i915#3928])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-rkl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10525 -> Patchwork_20904

  CI-20190529: 20190529
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20904: 0c1d27ac9fce7e231e7dddebcf56905e05302cae @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0c1d27ac9fce drm/i915/guc: Drop static inline functions intel_guc_submission.c
50ada01b3d95 drm/i915/guc: Add GuC kernel doc
883eccfa8221 drm/i915/guc: Drop guc_active move everything into guc_state
fa075902c938 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
a1c73c8c481a drm/i915/guc: Move GuC priority fields in context under guc_active
f16c0554ae08 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
42ac1b77a019 drm/i915/guc: Proper xarray usage for contexts_lookup
9b9222998c83 drm/i915/guc: Rework and simplify locking
244934484f63 drm/i915/guc: Move guc_blocked fence to struct guc_state
ba695a58136a drm/i915/guc: Release submit fence from an irq_work
3bd5803d5e25 drm/i915/guc: Flush G2H work queue during reset
b87ba9121748 drm/i915: Allocate error capture in nowait context
adb35ad83c76 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
97e616063006 drm/i915/guc: Don't touch guc_state.sched_state without a lock
1ff99308ef88 drm/i915/guc: Take context ref when cancelling request
ff84f14ddceb drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
abd6a8884cf4 drm/i915/guc: Copy whole golden context, set engine state size of subset
a19ba1f51009 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
f29b2b338002 drm/i915/guc: Kick tasklet after queuing a request
f577a4fdeeab drm/i915/selftests: Add a cancel request selftest that triggers a reset
da3d87dfe8c5 Revert "drm/i915/gt: Propagate change in error status to children on unhold"
25273a034c8d drm/i915/guc: Workaround reset G2H is received after schedule done G2H
c00d543957c2 drm/i915/guc: Process all G2H message at once in work queue
5b7ff1fa9e43 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
54cd904fa232 drm/i915/guc: Unwind context requests in reverse order
593f21493fda drm/i915/guc: Fix outstanding G2H accounting
6b511953d015 drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/index.html

--===============2447209965105222049==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10525 -&gt; Patchwork_20904</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20904 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20904, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20904:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10525/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-rkl-guc/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10525 and Patchwork_20904:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 30 pass(s)</li>
<li>Exec time: [0.41, 5.26] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20904 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20904/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-tgl-1115g4 fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10525 -&gt; Patchwork_20904</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10525: 059309d37ac2de5d93cf6d71fd7fe33c9c2c66ea @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6186: 250081b306c6fa8f95405fab6a7604f1968dd4ec @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20904: 0c1d27ac9fce7e231e7dddebcf56905e05302cae @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0c1d27ac9fce drm/i915/guc: Drop static inline functions intel_guc_submission.c<br />
50ada01b3d95 drm/i915/guc: Add GuC kernel doc<br />
883eccfa8221 drm/i915/guc: Drop guc_active move everything into guc_state<br />
fa075902c938 drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
a1c73c8c481a drm/i915/guc: Move GuC priority fields in context under guc_active<br />
f16c0554ae08 drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
42ac1b77a019 drm/i915/guc: Proper xarray usage for contexts_lookup<br />
9b9222998c83 drm/i915/guc: Rework and simplify locking<br />
244934484f63 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
ba695a58136a drm/i915/guc: Release submit fence from an irq_work<br />
3bd5803d5e25 drm/i915/guc: Flush G2H work queue during reset<br />
b87ba9121748 drm/i915: Allocate error capture in nowait context<br />
adb35ad83c76 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
97e616063006 drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
1ff99308ef88 drm/i915/guc: Take context ref when cancelling request<br />
ff84f14ddceb drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
abd6a8884cf4 drm/i915/guc: Copy whole golden context, set engine state size of subset<br />
a19ba1f51009 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
f29b2b338002 drm/i915/guc: Kick tasklet after queuing a request<br />
f577a4fdeeab drm/i915/selftests: Add a cancel request selftest that triggers a reset<br />
da3d87dfe8c5 Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
25273a034c8d drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
c00d543957c2 drm/i915/guc: Process all G2H message at once in work queue<br />
5b7ff1fa9e43 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
54cd904fa232 drm/i915/guc: Unwind context requests in reverse order<br />
593f21493fda drm/i915/guc: Fix outstanding G2H accounting<br />
6b511953d015 drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============2447209965105222049==--
