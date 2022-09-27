Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AAF5EC76B
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 17:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5A610E3CB;
	Tue, 27 Sep 2022 15:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C03410E94E;
 Tue, 27 Sep 2022 15:17:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 93B68A0099;
 Tue, 27 Sep 2022 15:17:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5748673352345410549=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 27 Sep 2022 15:17:04 -0000
Message-ID: <166429182456.24581.15397083336269974144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220926142151.89216-1-matthew.auld@intel.com>
In-Reply-To: <20220926142151.89216-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_enable_PS64_support_for_DG2_=28rev2=29?=
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

--===============5748673352345410549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: enable PS64 support for DG2 (rev2)
URL   : https://patchwork.freedesktop.org/series/109059/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12189 -> Patchwork_109059v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/index.html

Participating hosts (46 -> 43)
------------------------------

  Missing    (3): fi-hsw-4770 fi-icl-u2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_109059v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#62])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][3] -> [INCOMPLETE][4] ([i915#3303] / [i915#4785])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#62]) +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-ivb-3770:        NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-ivb-3770/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-1}:       [DMESG-WARN][9] ([i915#5278]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/bat-rpls-1/igt@i915_selftest@live@hugepages.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/bat-rpls-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][11] ([i915#4983]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/bat-rpls-1/igt@i915_selftest@live@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][13] ([i915#6298]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2:
    - {bat-dg2-11}:       [FAIL][15] ([i915#6818]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5886]: https://gitlab.freedesktop.org/drm/intel/issues/5886
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818


Build changes
-------------

  * Linux: CI_DRM_12189 -> Patchwork_109059v2

  CI-20190529: 20190529
  CI_DRM_12189: d63e99e28a6f8879fae1883a7a0cff0af86d6d7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6665: aecdb7ff269899b13b127bfa595d091af9781d94 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109059v2: d63e99e28a6f8879fae1883a7a0cff0af86d6d7c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cd0709f13cf9 drm/i915: enable PS64 support for DG2

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/index.html

--===============5748673352345410549==
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
<tr><td><b>Series:</b></td><td>drm/i915: enable PS64 support for DG2 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109059/">https://patchwork.freedesktop.org/series/109059/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12189 -&gt; Patchwork_109059v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/index.html</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Missing    (3): fi-hsw-4770 fi-icl-u2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109059v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-ivb-3770/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/bat-rpls-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/bat-rpls-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12189/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6818">i915#6818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109059v2/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-2.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12189 -&gt; Patchwork_109059v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12189: d63e99e28a6f8879fae1883a7a0cff0af86d6d7c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6665: aecdb7ff269899b13b127bfa595d091af9781d94 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109059v2: d63e99e28a6f8879fae1883a7a0cff0af86d6d7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cd0709f13cf9 drm/i915: enable PS64 support for DG2</p>

</body>
</html>

--===============5748673352345410549==--
