Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF81230E27A
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 19:28:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47AAE6EB86;
	Wed,  3 Feb 2021 18:28:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B0E26EB2C;
 Wed,  3 Feb 2021 18:28:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3448CAAA91;
 Wed,  3 Feb 2021 18:28:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 18:28:11 -0000
Message-ID: <161237689118.945.6937450656092016944@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203165259.13087-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203165259.13087-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/9=5D_drm/i915=3A_Replace_engine-=3E?=
 =?utf-8?q?schedule=28=29_with_a_known_request_operation?=
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
Content-Type: multipart/mixed; boundary="===============1545669195=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1545669195==
Content-Type: multipart/alternative;
 boundary="===============3071688523771880289=="

--===============3071688523771880289==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/9] drm/i915: Replace engine->schedule() with a known request operation
URL   : https://patchwork.freedesktop.org/series/86656/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9725 -> Patchwork_19576
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9725 and Patchwork_19576:

### New IGT tests (1) ###

  * igt@i915_selftest@live@scheduler:
    - Statuses : 34 pass(s)
    - Exec time: [0.55, 7.25] s

  

Known issues
------------

  Here are the changes found in Patchwork_19576 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][2] -> [INCOMPLETE][3] ([i915#142] / [i915#2405])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][6] ([i915#1814] / [i915#2505])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][9] ([i915#2940]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9725 -> Patchwork_19576

  CI-20190529: 20190529
  CI_DRM_9725: 4f97ebbb265a06654e2cc76a0e0115cc00bb6c91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19576: 11ba2d6eeb8928485217eabb1fe3d75cf0cfb252 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

11ba2d6eeb89 drm/i915: Extract the ability to defer and rerun a request later
4eb8f45a1e09 drm/i915: Extract request suspension from the execlists
25304ee6db0c drm/i915: Extract request rewinding from execlists
dead54ac8a5b drm/i915: Extract request submission from execlists
c331ce2d4c12 drm/i915: Improve DFS for priority inheritance
1bd66264e7da drm/i915/selftests: Exercise priority inheritance around an engine loop
2bbb0cc1ed69 drm/i915/selftests: Measure set-priority duration
824205f4b7aa drm/i915: Restructure priority inheritance
836be19c8de4 drm/i915: Replace engine->schedule() with a known request operation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/index.html

--===============3071688523771880289==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/9] drm/i915: Replace engine-&gt;schedule() with a known request operation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86656/">https://patchwork.freedesktop.org/series/86656/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9725 -&gt; Patchwork_19576</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9725 and Patchwork_19576:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@scheduler:<ul>
<li>Statuses : 34 pass(s)</li>
<li>Exec time: [0.55, 7.25] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19576 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-bsw-n3050/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9725/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19576/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9725 -&gt; Patchwork_19576</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9725: 4f97ebbb265a06654e2cc76a0e0115cc00bb6c91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5989: 57a96840fd5aa7ec48c2f84b30e0420f84ec7386 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19576: 11ba2d6eeb8928485217eabb1fe3d75cf0cfb252 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>11ba2d6eeb89 drm/i915: Extract the ability to defer and rerun a request later<br />
4eb8f45a1e09 drm/i915: Extract request suspension from the execlists<br />
25304ee6db0c drm/i915: Extract request rewinding from execlists<br />
dead54ac8a5b drm/i915: Extract request submission from execlists<br />
c331ce2d4c12 drm/i915: Improve DFS for priority inheritance<br />
1bd66264e7da drm/i915/selftests: Exercise priority inheritance around an engine loop<br />
2bbb0cc1ed69 drm/i915/selftests: Measure set-priority duration<br />
824205f4b7aa drm/i915: Restructure priority inheritance<br />
836be19c8de4 drm/i915: Replace engine-&gt;schedule() with a known request operation</p>

</body>
</html>

--===============3071688523771880289==--

--===============1545669195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1545669195==--
