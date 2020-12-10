Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4F02D5013
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 02:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B04B6E20C;
	Thu, 10 Dec 2020 01:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9175A6E1D6;
 Thu, 10 Dec 2020 01:13:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8ED06A47DB;
 Thu, 10 Dec 2020 01:13:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 01:13:33 -0000
Message-ID: <160756281358.19120.13923398637049865795@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201209232124.15196-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201209232124.15196-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Move_move_conte?=
 =?utf-8?q?xt_layout_registers_and_offsets_to_lrc=5Freg=2Eh?=
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
Content-Type: multipart/mixed; boundary="===============0647889758=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0647889758==
Content-Type: multipart/alternative;
 boundary="===============5774292886709816279=="

--===============5774292886709816279==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h
URL   : https://patchwork.freedesktop.org/series/84749/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9466 -> Patchwork_19100
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/index.html

Known issues
------------

  Here are the changes found in Patchwork_19100 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2] ([i915#1037] / [i915#2089])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bsw-n3050:       [PASS][3] -> [DMESG-FAIL][4] ([i915#2675] / [i915#541])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][5] ([fdo#109271]) +30 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-snb-2600:        [DMESG-WARN][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#2411] / [i915#402]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][13] ([i915#2291] / [i915#541]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [FAIL][15] ([i915#1161] / [i915#262]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-tgl-y/igt@vgem_basic@create.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-tgl-y/igt@vgem_basic@create.html

  
#### Warnings ####

  * igt@amdgpu/amd_prime@i915-to-amd:
    - fi-gdg-551:         [SKIP][19] ([fdo#109271]) -> [INCOMPLETE][20] ([i915#172])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-gdg-551/igt@amdgpu/amd_prime@i915-to-amd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-gdg-551/igt@amdgpu/amd_prime@i915-to-amd.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#2089]: https://gitlab.freedesktop.org/drm/intel/issues/2089
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (43 -> 40)
------------------------------

  Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9466 -> Patchwork_19100

  CI-20190529: 20190529
  CI_DRM_9466: b3968d0ae847b3557e56291c9c00b7f98043fcf0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19100: b88ff6b7ea99fb1d91050f054cafcc515f3ae85b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b88ff6b7ea99 drm/i915: split gen8+ flush and bb_start emission functions to their own file
75def8e50a1c drm/i915/gt: Rename lrc.c to execlists_submission.c
fb81d8f013fe drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/index.html

--===============5774292886709816279==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84749/">https://patchwork.freedesktop.org/series/84749/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9466 -&gt; Patchwork_19100</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19100 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2089">i915#2089</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-bsw-n3050/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-tgl-y/igt@vgem_basic@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-tgl-y/igt@vgem_basic@create.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@amdgpu/amd_prime@i915-to-amd:<ul>
<li>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9466/fi-gdg-551/igt@amdgpu/amd_prime@i915-to-amd.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19100/fi-gdg-551/igt@amdgpu/amd_prime@i915-to-amd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9466 -&gt; Patchwork_19100</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9466: b3968d0ae847b3557e56291c9c00b7f98043fcf0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5885: d99f644b1868b9c92435b05ebfafa230721cd677 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19100: b88ff6b7ea99fb1d91050f054cafcc515f3ae85b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b88ff6b7ea99 drm/i915: split gen8+ flush and bb_start emission functions to their own file<br />
75def8e50a1c drm/i915/gt: Rename lrc.c to execlists_submission.c<br />
fb81d8f013fe drm/i915/gt: Move move context layout registers and offsets to lrc_reg.h</p>

</body>
</html>

--===============5774292886709816279==--

--===============0647889758==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0647889758==--
