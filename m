Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D01144601E
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 08:31:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 643786E040;
	Fri,  5 Nov 2021 07:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C84076E040;
 Fri,  5 Nov 2021 07:31:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0B0DA0078;
 Fri,  5 Nov 2021 07:31:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5359497643464140093=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 05 Nov 2021 07:31:05 -0000
Message-ID: <163609746575.30610.10407737066795128001@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211105064439.764336-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211105064439.764336-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915/selftests=3A_Use_clea?=
 =?utf-8?q?r=5Fand=5Fwake=5Fup=5Fbit=28=29_for_the_per-engine_reset_bitloc?=
 =?utf-8?q?ks?=
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

--===============5359497643464140093==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915/selftests: Use clear_and_wake_up_bit() for the per-engine reset bitlocks
URL   : https://patchwork.freedesktop.org/series/96602/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10844 -> Patchwork_21523
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21523 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21523, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/index.html

Participating hosts (40 -> 33)
------------------------------

  Missing    (7): fi-kbl-soraka bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21523:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bwr-2160:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-bwr-2160/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21523 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-skl-6700k2:      [FAIL][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-skl-6700k2/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][4] ([fdo#109271]) +28 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [PASS][7] -> [INCOMPLETE][8] ([i915#3303] / [i915#4322])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-ivb-3770:        NOTRUN -> [FAIL][11] ([fdo#109271] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-ivb-3770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [INCOMPLETE][12] ([i915#4006]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][14] ([i915#1888]) -> [PASS][15] +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][16] ([i915#2940]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4322]: https://gitlab.freedesktop.org/drm/intel/issues/4322
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10844 -> Patchwork_21523

  CI-20190529: 20190529
  CI_DRM_10844: 9975894c1bb052b9416a82e85d3478305589a38d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21523: 4a651338c72bfc4ef77317d7bd2663ba98623c16 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4a651338c72b HAX: drm/i915/selftest: Temporarily avoid tainting the kernel on engine reset failure
231ce6d4e8d5 drm/i915/selftests: Use clear_and_wake_up_bit() for the per-engine reset bitlocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/index.html

--===============5359497643464140093==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915/selftests: Use clear_and_wake_up_bit() for the per-engine reset bitlocks</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96602/">https://patchwork.freedesktop.org/series/96602/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10844 -&gt; Patchwork_21523</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21523 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21523, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/index.html</p>
<h2>Participating hosts (40 -&gt; 33)</h2>
<p>Missing    (7): fi-kbl-soraka bat-adls-5 bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21523:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21523 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-skl-6700k2/boot.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4322">i915#4322</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10844/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21523/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10844 -&gt; Patchwork_21523</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10844: 9975894c1bb052b9416a82e85d3478305589a38d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21523: 4a651338c72bfc4ef77317d7bd2663ba98623c16 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4a651338c72b HAX: drm/i915/selftest: Temporarily avoid tainting the kernel on engine reset failure<br />
231ce6d4e8d5 drm/i915/selftests: Use clear_and_wake_up_bit() for the per-engine reset bitlocks</p>

</body>
</html>

--===============5359497643464140093==--
