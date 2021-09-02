Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CF13FE72C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 03:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCBE66E408;
	Thu,  2 Sep 2021 01:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7CD56E408;
 Thu,  2 Sep 2021 01:32:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0119A00C9;
 Thu,  2 Sep 2021 01:32:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6510615062684474034=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 01:32:57 -0000
Message-ID: <163054637768.29441.9514807900927809305@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210902005022.711767-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC_=28?=
 =?utf-8?q?rev8=29?=
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

--===============6510615062684474034==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC (rev8)
URL   : https://patchwork.freedesktop.org/series/93704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10544 -> Patchwork_20940
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10544 and Patchwork_20940:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 33 pass(s)
    - Exec time: [0.41, 3.59] s

  

Known issues
------------

  Here are the changes found in Patchwork_20940 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +37 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [FAIL][3] ([i915#4054]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-WARN][5] ([i915#203]) -> [PASS][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][7] ([fdo#109271]) -> [FAIL][8] ([i915#3049])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#4054]: https://gitlab.freedesktop.org/drm/intel/issues/4054


Participating hosts (42 -> 34)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (9): fi-kbl-soraka fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10544 -> Patchwork_20940

  CI-20190529: 20190529
  CI_DRM_10544: 078e7300cf0130241e5d472d8e2f7eef4ef11b65 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6193: 080869f804cb86b25a38889e5ce9a870571cd8c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20940: 03345c4aa1b77002fe893e80144ebf127ed83adc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

03345c4aa1b7 drm/i915/guc: Add GuC kernel doc
7a1e8b049331 drm/i915/guc: Drop guc_active move everything into guc_state
2f2fb8824ce7 drm/i915/guc: Move fields protected by guc->contexts_lock into sub structure
6901d6d78c42 drm/i915/guc: Move GuC priority fields in context under guc_active
ec14694751cc drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
2d753ce9f357 drm/i915/guc: Proper xarray usage for contexts_lookup
4c7f421d381a drm/i915/guc: Rework and simplify locking
064104f65f47 drm/i915/guc: Move guc_blocked fence to struct guc_state
efbc9c267ed2 drm/i915/guc: Release submit fence from an irq_work
f16ff82d9bef drm/i915/guc: Flush G2H work queue during reset
87be1fdc991f drm/i915: Allocate error capture in nowait context
76e31cf548b1 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
505c27859cd5 drm/i915/guc: Don't touch guc_state.sched_state without a lock
81160f40a055 drm/i915/guc: Take context ref when cancelling request
f65e8b30483f drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
7fda30ff715f drm/i915/guc: Copy whole golden context, set engine state size of subset
27ee5f59d3e8 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
7890b2a82744 drm/i915/guc: Kick tasklet after queuing a request
469697335ccf Revert "drm/i915/gt: Propagate change in error status to children on unhold"
e3fe080cead5 drm/i915/guc: Workaround reset G2H is received after schedule done G2H
008bc855f8f5 drm/i915/guc: Process all G2H message at once in work queue
a83b1ac67822 drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
94f527455e3b drm/i915/guc: Unwind context requests in reverse order
58afa429a58a drm/i915/guc: Fix outstanding G2H accounting
63fb5a2c9d8a drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/index.html

--===============6510615062684474034==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10544 -&gt; Patchwork_20940</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10544 and Patchwork_20940:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 33 pass(s)</li>
<li>Exec time: [0.41, 3.59] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20940 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4054">i915#4054</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10544/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20940/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 34)</h2>
<p>Additional (1): fi-snb-2600 <br />
  Missing    (9): fi-kbl-soraka fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10544 -&gt; Patchwork_20940</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10544: 078e7300cf0130241e5d472d8e2f7eef4ef11b65 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6193: 080869f804cb86b25a38889e5ce9a870571cd8c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20940: 03345c4aa1b77002fe893e80144ebf127ed83adc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>03345c4aa1b7 drm/i915/guc: Add GuC kernel doc<br />
7a1e8b049331 drm/i915/guc: Drop guc_active move everything into guc_state<br />
2f2fb8824ce7 drm/i915/guc: Move fields protected by guc-&gt;contexts_lock into sub structure<br />
6901d6d78c42 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
ec14694751cc drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
2d753ce9f357 drm/i915/guc: Proper xarray usage for contexts_lookup<br />
4c7f421d381a drm/i915/guc: Rework and simplify locking<br />
064104f65f47 drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
efbc9c267ed2 drm/i915/guc: Release submit fence from an irq_work<br />
f16ff82d9bef drm/i915/guc: Flush G2H work queue during reset<br />
87be1fdc991f drm/i915: Allocate error capture in nowait context<br />
76e31cf548b1 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
505c27859cd5 drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
81160f40a055 drm/i915/guc: Take context ref when cancelling request<br />
f65e8b30483f drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
7fda30ff715f drm/i915/guc: Copy whole golden context, set engine state size of subset<br />
27ee5f59d3e8 drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
7890b2a82744 drm/i915/guc: Kick tasklet after queuing a request<br />
469697335ccf Revert "drm/i915/gt: Propagate change in error status to children on unhold"<br />
e3fe080cead5 drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
008bc855f8f5 drm/i915/guc: Process all G2H message at once in work queue<br />
a83b1ac67822 drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
94f527455e3b drm/i915/guc: Unwind context requests in reverse order<br />
58afa429a58a drm/i915/guc: Fix outstanding G2H accounting<br />
63fb5a2c9d8a drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============6510615062684474034==--
