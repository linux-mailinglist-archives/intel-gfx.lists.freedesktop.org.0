Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFBC318DBC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 15:59:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 760E26EE4A;
	Thu, 11 Feb 2021 14:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E2A36E448;
 Thu, 11 Feb 2021 14:59:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3AB76A47DB;
 Thu, 11 Feb 2021 14:59:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Feb 2021 14:59:14 -0000
Message-ID: <161305555423.27070.4012883900988912423@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205104905.31414-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210205104905.31414-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ratelimit_heartbeat_completion_probing_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============0707150112=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0707150112==
Content-Type: multipart/alternative;
 boundary="===============2759704393579406781=="

--===============2759704393579406781==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Ratelimit heartbeat completion probing (rev8)
URL   : https://patchwork.freedesktop.org/series/86665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9761 -> Patchwork_19663
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19663 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19663, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19663:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-ehl-1}:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html

  
Known issues
------------

  Here are the changes found in Patchwork_19663 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@memory-alloc:
    - fi-tgl-y:           NOTRUN -> [SKIP][5] ([fdo#109315] / [i915#2575]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#2411] / [i915#402])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-hsw-4770:        [PASS][8] -> [INCOMPLETE][9] ([i915#2782])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html
    - fi-ivb-3770:        [PASS][10] -> [INCOMPLETE][11] ([i915#2782])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html
    - fi-tgl-u2:          [PASS][12] -> [INCOMPLETE][13] ([i915#2601])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][14] -> [DMESG-WARN][15] ([i915#402]) +1 similar issue
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][16] ([i915#2369])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-bdw-5557u/igt@runner@aborted.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][17] ([i915#1436] / [i915#2295] / [i915#2505])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][18] ([i915#402]) -> [PASS][19] +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9761 -> Patchwork_19663

  CI-20190529: 20190529
  CI_DRM_9761: fc52fc2a7332bd301f802ca3a0444a8fb9fe4f7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6001: d0d6f5e14ef181c93e4b503b05d9c18fa480e09d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19663: 19ac78f67144787682baf72dedeca526176ad6e4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

19ac78f67144 drm/i915/gt: Ratelimit heartbeat completion probing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/index.html

--===============2759704393579406781==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Ratelimit heartbeat completion probing (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86665/">https://patchwork.freedesktop.org/series/86665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9761 -&gt; Patchwork_19663</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19663 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19663, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19663:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-ehl-1/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19663 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@amdgpu/amd_basic@memory-alloc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-hsw-4770/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-ivb-3770/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-u2/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19663/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-skl-guc fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9761 -&gt; Patchwork_19663</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9761: fc52fc2a7332bd301f802ca3a0444a8fb9fe4f7f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6001: d0d6f5e14ef181c93e4b503b05d9c18fa480e09d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19663: 19ac78f67144787682baf72dedeca526176ad6e4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>19ac78f67144 drm/i915/gt: Ratelimit heartbeat completion probing</p>

</body>
</html>

--===============2759704393579406781==--

--===============0707150112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0707150112==--
