Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B2F694759
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 14:47:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A3B10E5BD;
	Mon, 13 Feb 2023 13:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AB5AB10E0C7;
 Mon, 13 Feb 2023 13:47:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A2D33A882E;
 Mon, 13 Feb 2023 13:47:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8996124704175047150=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Janusz Krzysztofik" <janusz.krzysztofik@linux.intel.com>
Date: Mon, 13 Feb 2023 13:47:42 -0000
Message-ID: <167629606262.20213.9123371560394852051@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230213130546.20370-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20230213130546.20370-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/active=3A_Fix_misuse_of_non-idle_barriers_as_fence_tracke?=
 =?utf-8?q?rs?=
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

--===============8996124704175047150==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/active: Fix misuse of non-idle barriers as fence trackers
URL   : https://patchwork.freedesktop.org/series/113950/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12730 -> Patchwork_113950v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/index.html

Participating hosts (40 -> 37)
------------------------------

  Missing    (3): fi-tgl-1115g4 bat-atsm-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113950v1:

### IGT changes ###

#### Possible regressions ####

  * {igt@gem_barrier_race@remote-request@rcs0} (NEW):
    - fi-rkl-11600:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-rkl-11600/igt@gem_barrier_race@remote-request@rcs0.html
    - bat-dg1-5:          NOTRUN -> [ABORT][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/bat-dg1-5/igt@gem_barrier_race@remote-request@rcs0.html
    - {bat-adlm-1}:       NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/bat-adlm-1/igt@gem_barrier_race@remote-request@rcs0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_12730 and Patchwork_113950v1:

### New IGT tests (2) ###

  * igt@gem_barrier_race@remote-request:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_barrier_race@remote-request@rcs0:
    - Statuses : 2 abort(s) 1 dmesg-warn(s) 27 pass(s) 5 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_113950v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * {igt@gem_barrier_race@remote-request@rcs0} (NEW):
    - fi-pnv-d510:        NOTRUN -> [SKIP][4] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-pnv-d510/igt@gem_barrier_race@remote-request@rcs0.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][5] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-blb-e6850/igt@gem_barrier_race@remote-request@rcs0.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-ivb-3770/igt@gem_barrier_race@remote-request@rcs0.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-elk-e7500/igt@gem_barrier_race@remote-request@rcs0.html
    - fi-ilk-650:         NOTRUN -> [SKIP][8] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-ilk-650/igt@gem_barrier_race@remote-request@rcs0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][9] ([i915#5334]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12730/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [ABORT][11] ([i915#7982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12730/bat-rpls-2/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-n3050:       [FAIL][13] ([i915#6298]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12730/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * IGT: IGT_7157 -> TrybotIGT_706
  * Linux: CI_DRM_12730 -> Patchwork_113950v1

  CI-20190529: 20190529
  CI_DRM_12730: c54b5fcf3e686a0abfdd7d6af53e9014c137023a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7157: 96d12fdc942cee9526a951b377b195ca9c8276b1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113950v1: c54b5fcf3e686a0abfdd7d6af53e9014c137023a @ git://anongit.freedesktop.org/gfx-ci/linux
  TrybotIGT_706: https://intel-gfx-ci.01.org/tree/drm-tip/TrybotIGT_706/index.html


### Linux commits

44de67f6c674 drm/i915/active: Fix misuse of non-idle barriers as fence trackers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/index.html

--===============8996124704175047150==
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
<tr><td><b>Series:</b></td><td>drm/i915/active: Fix misuse of non-idle barriers as fence trackers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113950/">https://patchwork.freedesktop.org/series/113950/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12730 -&gt; Patchwork_113950v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/index.html</p>
<h2>Participating hosts (40 -&gt; 37)</h2>
<p>Missing    (3): fi-tgl-1115g4 bat-atsm-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113950v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@gem_barrier_race@remote-request@rcs0} (NEW):</p>
<ul>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-rkl-11600/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/bat-dg1-5/igt@gem_barrier_race@remote-request@rcs0.html">ABORT</a></p>
</li>
<li>
<p>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/bat-adlm-1/igt@gem_barrier_race@remote-request@rcs0.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12730 and Patchwork_113950v1:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@gem_barrier_race@remote-request:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_barrier_race@remote-request@rcs0:</p>
<ul>
<li>Statuses : 2 abort(s) 1 dmesg-warn(s) 27 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113950v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>{igt@gem_barrier_race@remote-request@rcs0} (NEW):</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-pnv-d510/igt@gem_barrier_race@remote-request@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-blb-e6850/igt@gem_barrier_race@remote-request@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-ivb-3770/igt@gem_barrier_race@remote-request@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-elk-e7500/igt@gem_barrier_race@remote-request@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-ilk-650/igt@gem_barrier_race@remote-request@rcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12730/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12730/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12730/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113950v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7157 -&gt; TrybotIGT_706</li>
<li>Linux: CI_DRM_12730 -&gt; Patchwork_113950v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12730: c54b5fcf3e686a0abfdd7d6af53e9014c137023a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7157: 96d12fdc942cee9526a951b377b195ca9c8276b1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113950v1: c54b5fcf3e686a0abfdd7d6af53e9014c137023a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  TrybotIGT_706: https://intel-gfx-ci.01.org/tree/drm-tip/TrybotIGT_706/index.html</p>
<h3>Linux commits</h3>
<p>44de67f6c674 drm/i915/active: Fix misuse of non-idle barriers as fence trackers</p>

</body>
</html>

--===============8996124704175047150==--
