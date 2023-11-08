Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 058417E549F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Nov 2023 11:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6127210E53F;
	Wed,  8 Nov 2023 10:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBC5D10E53F;
 Wed,  8 Nov 2023 10:57:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B505CA7DFB;
 Wed,  8 Nov 2023 10:57:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6907926554533182696=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 08 Nov 2023 10:57:56 -0000
Message-ID: <169944107673.24274.5869685548137225570@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915=3A_Add_ability_for_tr?=
 =?utf-8?q?acking_buffer_objects_per_client_=28rev2=29?=
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

--===============6907926554533182696==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/6] drm/i915: Add ability for tracking buffer objects per client (rev2)
URL   : https://patchwork.freedesktop.org/series/126064/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13848 -> Patchwork_126064v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126064v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126064v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/index.html

Participating hosts (33 -> 33)
------------------------------

  Additional (1): fi-tgl-1115g4 
  Missing    (1): bat-dg2-8 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126064v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_126064v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-adlp-11:        [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/bat-adlp-11/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/bat-adlp-11/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-j4005:       [PASS][8] -> [DMESG-FAIL][9] ([i915#5334])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][10] -> [TIMEOUT][11] ([i915#6794] / [i915#7392])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/bat-rpls-1/igt@i915_selftest@live@mman.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][12] -> [WARN][13] ([i915#8747])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][14] ([i915#7443])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][15] ([i915#4103]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_dsc@dsc-basic:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][16] ([i915#3555] / [i915#3840])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][17] ([fdo#109285])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_psr@cursor_plane_move:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][18] ([fdo#110189]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][19] ([i915#3555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][20] ([IGT#3]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7443]: https://gitlab.freedesktop.org/drm/intel/issues/7443
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_13848 -> Patchwork_126064v2

  CI-20190529: 20190529
  CI_DRM_13848: 1f1d9b88e2250757516fe83bbf851f198d292d31 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7575: 6edf8b6808de2bde968415926d2b55817f7ea1de @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126064v2: 1f1d9b88e2250757516fe83bbf851f198d292d31 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c3bc46f0e80d drm/i915: Implement fdinfo memory stats printing
d6ad24ab260d drm/i915: Add stable memory region names
5560e8185808 drm/i915: Account ring buffer and context state storage
ac140d4d8abe drm/i915: Track page table backing store usage
de2181d62034 drm/i915: Record which client owns a VM
d1e858d75745 drm/i915: Add ability for tracking buffer objects per client

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/index.html

--===============6907926554533182696==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/6] drm/i915: Add ability for tracking buffer objects per client (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126064/">https://patchwork.freedesktop.org/series/126064/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13848 -&gt; Patchwork_126064v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126064v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126064v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/index.html</p>
<h2>Participating hosts (33 -&gt; 33)</h2>
<p>Additional (1): fi-tgl-1115g4 <br />
  Missing    (1): bat-dg2-8 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126064v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126064v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/bat-adlp-11/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/bat-adlp-11/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-tgl-1115g4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-audio:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13848/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13848 -&gt; Patchwork_126064v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13848: 1f1d9b88e2250757516fe83bbf851f198d292d31 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7575: 6edf8b6808de2bde968415926d2b55817f7ea1de @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126064v2: 1f1d9b88e2250757516fe83bbf851f198d292d31 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c3bc46f0e80d drm/i915: Implement fdinfo memory stats printing<br />
d6ad24ab260d drm/i915: Add stable memory region names<br />
5560e8185808 drm/i915: Account ring buffer and context state storage<br />
ac140d4d8abe drm/i915: Track page table backing store usage<br />
de2181d62034 drm/i915: Record which client owns a VM<br />
d1e858d75745 drm/i915: Add ability for tracking buffer objects per client</p>

</body>
</html>

--===============6907926554533182696==--
