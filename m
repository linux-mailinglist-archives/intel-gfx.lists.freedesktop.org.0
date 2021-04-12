Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D7835C567
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 13:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0301B6E52D;
	Mon, 12 Apr 2021 11:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C97816E52C;
 Mon, 12 Apr 2021 11:37:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE89BA73C7;
 Mon, 12 Apr 2021 11:37:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 12 Apr 2021 11:37:34 -0000
Message-ID: <161822745474.8699.17472436932173535728@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210412090526.30547-1-matthew.auld@intel.com>
In-Reply-To: <20210412090526.30547-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW9y?=
 =?utf-8?q?e_DG1_enabling?=
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
Content-Type: multipart/mixed; boundary="===============1716391905=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1716391905==
Content-Type: multipart/alternative;
 boundary="===============6596699320117890538=="

--===============6596699320117890538==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More DG1 enabling
URL   : https://patchwork.freedesktop.org/series/88947/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9957 -> Patchwork_19912
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19912:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {fi-cml-drallion}:  NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-cml-drallion/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_19912 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][3] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][4] ([i915#3159])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][7] ([i915#3303]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][9] ([i915#2927]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1208]: https://gitlab.freedesktop.org/drm/intel/issues/1208
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 39)
------------------------------

  Additional (2): fi-cml-drallion fi-bsw-n3050 
  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9957 -> Patchwork_19912

  CI-20190529: 20190529
  CI_DRM_9957: 1c979586f3208fdd56573cec840f7d9000be51ab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19912: 817240b12321d5959560cf2306142d63644bbef5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

817240b12321 drm/i915/gtt/dgfx: place the PD in LMEM
a1d3eec6b5bc drm/i915/gtt: map the PD up front
4988227f5fee drm/i915/dg1: Double memory bandwidth available
acf0a81fb877 drm/i915/dg1: Compute MEM Bandwidth using MCHBAR
2f21e3309e84 drm/i915: WA for zero memory channel
dd926fd22135 drm/i915/oprom: Basic sanitization
e793b2d75109 drm/i915/dg1: Read OPROM via SPI controller
e03946b5bf8c drm/i915/lmem: Bypass aperture when lmem is available
a7c90db9a5c4 drm/i915: Update the helper to set correct mapping
4bd6b41215c3 drm/i915/dg1: Fix mapping type for default state object
e861362b0f25 drm/i915/lmem: Fail driver init if LMEM training failed
4ec6aedb7ac2 drm/i915: Return error value when bo not in LMEM for discrete
693ca8d4d780 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete
03c0cc0dae7f drm/i915/stolen: pass the allocation flags
154d7cbfda7f drm/i915/stolen: enforce the min_page_size contract
9ab764a5a21b drm/i915/stolen: treat stolen local as normal local memory
c46573ddee8d drm/i915: Create stolen memory region from local memory
530e7443c201 drm/i915/selftests: Only query RAPL for integrated power measurements
525b7ae56cfd drm/i915/gt: Skip aperture remapping selftest where there is no aperture

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/index.html

--===============6596699320117890538==
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
<tr><td><b>Series:</b></td><td>More DG1 enabling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88947/">https://patchwork.freedesktop.org/series/88947/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9957 -&gt; Patchwork_19912</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19912:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_flip@basic-flip-vs-modeset@a-edp1:<ul>
<li>{fi-cml-drallion}:  NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-cml-drallion/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19912 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9957/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19912/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Additional (2): fi-cml-drallion fi-bsw-n3050 <br />
  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9957 -&gt; Patchwork_19912</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9957: 1c979586f3208fdd56573cec840f7d9000be51ab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19912: 817240b12321d5959560cf2306142d63644bbef5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>817240b12321 drm/i915/gtt/dgfx: place the PD in LMEM<br />
a1d3eec6b5bc drm/i915/gtt: map the PD up front<br />
4988227f5fee drm/i915/dg1: Double memory bandwidth available<br />
acf0a81fb877 drm/i915/dg1: Compute MEM Bandwidth using MCHBAR<br />
2f21e3309e84 drm/i915: WA for zero memory channel<br />
dd926fd22135 drm/i915/oprom: Basic sanitization<br />
e793b2d75109 drm/i915/dg1: Read OPROM via SPI controller<br />
e03946b5bf8c drm/i915/lmem: Bypass aperture when lmem is available<br />
a7c90db9a5c4 drm/i915: Update the helper to set correct mapping<br />
4bd6b41215c3 drm/i915/dg1: Fix mapping type for default state object<br />
e861362b0f25 drm/i915/lmem: Fail driver init if LMEM training failed<br />
4ec6aedb7ac2 drm/i915: Return error value when bo not in LMEM for discrete<br />
693ca8d4d780 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete<br />
03c0cc0dae7f drm/i915/stolen: pass the allocation flags<br />
154d7cbfda7f drm/i915/stolen: enforce the min_page_size contract<br />
9ab764a5a21b drm/i915/stolen: treat stolen local as normal local memory<br />
c46573ddee8d drm/i915: Create stolen memory region from local memory<br />
530e7443c201 drm/i915/selftests: Only query RAPL for integrated power measurements<br />
525b7ae56cfd drm/i915/gt: Skip aperture remapping selftest where there is no aperture</p>

</body>
</html>

--===============6596699320117890538==--

--===============1716391905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1716391905==--
