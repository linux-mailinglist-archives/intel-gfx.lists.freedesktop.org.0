Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EDF63EAE3
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 09:14:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D730C10E54D;
	Thu,  1 Dec 2022 08:14:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8557610E54D;
 Thu,  1 Dec 2022 08:14:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58543AADE3;
 Thu,  1 Dec 2022 08:14:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0932954987858769039=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Date: Thu, 01 Dec 2022 08:14:24 -0000
Message-ID: <166988246432.14635.688062361287129921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221201072308.1905679-1-jouni.hogander@intel.com>
In-Reply-To: <20221201072308.1905679-1-jouni.hogander@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Add_continuous_full_frame_bit_together_with_single?=
 =?utf-8?q?_=28rev2=29?=
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

--===============0932954987858769039==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Add continuous full frame bit together with single (rev2)
URL   : https://patchwork.freedesktop.org/series/111420/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12457 -> Patchwork_111420v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/index.html

Participating hosts (38 -> 34)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (5): fi-ilk-m540 fi-rkl-11600 fi-tgl-dsi fi-kbl-x1275 bat-rpls-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_111420v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-atsm-1}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/bat-atsm-1/igt@gem_exec_suspend@basic-s0@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_111420v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-guc:         NOTRUN -> [SKIP][2] ([fdo#111827])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][3] -> [FAIL][4] ([i915#6298])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - {fi-ehl-2}:         [INCOMPLETE][5] ([i915#2940]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-ehl-2/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-ehl-2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [INCOMPLETE][7] ([i915#4983]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][9] ([i915#6298]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6077]: https://gitlab.freedesktop.org/drm/intel/issues/6077
  [i915#6078]: https://gitlab.freedesktop.org/drm/intel/issues/6078
  [i915#6093]: https://gitlab.freedesktop.org/drm/intel/issues/6093
  [i915#6094]: https://gitlab.freedesktop.org/drm/intel/issues/6094
  [i915#6166]: https://gitlab.freedesktop.org/drm/intel/issues/6166
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7357]: https://gitlab.freedesktop.org/drm/intel/issues/7357


Build changes
-------------

  * Linux: CI_DRM_12457 -> Patchwork_111420v2

  CI-20190529: 20190529
  CI_DRM_12457: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111420v2: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

abf3e2bb9c59 drm/i915/psr: Add continuous full frame bit together with single

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/index.html

--===============0932954987858769039==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Add continuous full frame bit together with single (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111420/">https://patchwork.freedesktop.org/series/111420/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12457 -&gt; Patchwork_111420v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (5): fi-ilk-m540 fi-rkl-11600 fi-tgl-dsi fi-kbl-x1275 bat-rpls-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_111420v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_suspend@basic-s0@smem:<ul>
<li>{bat-atsm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/bat-atsm-1/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111420v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-rkl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-ehl-2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-ehl-2/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12457/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111420v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12457 -&gt; Patchwork_111420v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12457: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7076: 888725538e0d6bbb94bbbb1ac278d4afcbbbdad0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111420v2: 42273934c8b473fd88e6689a589e9b4050c46bec @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>abf3e2bb9c59 drm/i915/psr: Add continuous full frame bit together with single</p>

</body>
</html>

--===============0932954987858769039==--
