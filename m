Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622C733F5D7
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Mar 2021 17:46:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 931AF6E833;
	Wed, 17 Mar 2021 16:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B46A56E158;
 Wed, 17 Mar 2021 16:46:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD61BA0091;
 Wed, 17 Mar 2021 16:46:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Zbigniew_Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
Date: Wed, 17 Mar 2021 16:46:03 -0000
Message-ID: <161599956367.17368.2808065518557598281@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210317111744.97872-1-zbigniew.kempczynski@intel.com>
In-Reply-To: <20210317111744.97872-1-zbigniew.kempczynski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRHJv?=
 =?utf-8?q?p_relocations_for_new_gens_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0362953802=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0362953802==
Content-Type: multipart/alternative;
 boundary="===============5802585481335017078=="

--===============5802585481335017078==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Drop relocations for new gens (rev2)
URL   : https://patchwork.freedesktop.org/series/88047/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9863 -> Patchwork_19800
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19800:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@nb-await@vcs0:
    - {fi-rkl-11500t}:    [PASS][1] -> [FAIL][2] +38 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_19800 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][4] ([fdo#109271])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][5] ([i915#3159])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][6] -> [TIMEOUT][7] ([i915#2502] / [i915#3145])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][8] ([i915#3145]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [FAIL][10] ([i915#1888]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_vgem@basic-userptr:
    - fi-bsw-nick:        [DMESG-WARN][12] ([i915#1610]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-bsw-nick/igt@prime_vgem@basic-userptr.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-nick/igt@prime_vgem@basic-userptr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-bsw-n3050 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9863 -> Patchwork_19800

  CI-20190529: 20190529
  CI_DRM_9863: eb0c1cb5afa99b44af45cf715ae4e6e5545b53d8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6034: b3eff02d5400944dd7b14896037bc9bbf362343e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19800: 10b305262f3053636d25bd5adb3e7cc4c59cd701 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

10b305262f30 drm/i915/gem: Drop relocation support on all new hardware

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html

--===============5802585481335017078==
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
<tr><td><b>Series:</b></td><td>Drop relocations for new gens (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88047/">https://patchwork.freedesktop.org/series/88047/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9863 -&gt; Patchwork_19800</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19800:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_fence@nb-await@vcs0:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-rkl-11500t/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> +38 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19800 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9863/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19800/fi-bsw-nick/igt@prime_vgem@basic-userptr.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-bsw-n3050 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9863 -&gt; Patchwork_19800</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9863: eb0c1cb5afa99b44af45cf715ae4e6e5545b53d8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6034: b3eff02d5400944dd7b14896037bc9bbf362343e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19800: 10b305262f3053636d25bd5adb3e7cc4c59cd701 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>10b305262f30 drm/i915/gem: Drop relocation support on all new hardware</p>

</body>
</html>

--===============5802585481335017078==--

--===============0362953802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0362953802==--
