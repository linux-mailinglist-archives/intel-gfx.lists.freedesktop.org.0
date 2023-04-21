Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDED6EAD9D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FE010E1B7;
	Fri, 21 Apr 2023 14:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 10BF310E1B7;
 Fri, 21 Apr 2023 14:59:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A074AADEB;
 Fri, 21 Apr 2023 14:59:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2082635004803562377=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 21 Apr 2023 14:59:08 -0000
Message-ID: <168208914800.5824.2854788948663710267@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/psr=3A_Restore_HSW/BDW_PSR1?=
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

--===============2082635004803562377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Restore HSW/BDW PSR1
URL   : https://patchwork.freedesktop.org/series/116814/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13041 -> Patchwork_116814v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116814v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@hugepages:
    - {bat-mtlp-8}:       NOTRUN -> [DMESG-FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_116814v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@slpc:
    - bat-rplp-1:         [PASS][2] -> [DMESG-FAIL][3] ([i915#6367] / [i915#7913])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-rplp-1/igt@i915_selftest@live@slpc.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-rplp-1/igt@i915_selftest@live@slpc.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@basic:
    - {bat-mtlp-8}:       [FAIL][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][6] ([i915#4983]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][8] ([i915#6997]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-bsw-n3050:       [DMESG-WARN][10] ([i915#1982]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_13041 -> Patchwork_116814v1

  CI-20190529: 20190529
  CI_DRM_13041: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116814v1: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6290e5537e6c drm/i915/psr: Re-enable PSR1 on hdw/bdw
861574c93411 drm/i915/psr: Allow PSR with sprite enabled on hsw/bdw
ba48e7937919 drm/i915/psr: Don't skip both TP1 and TP2/3 on hsw/bdw
3b4260f2841e drm/i915/psr: Do no mask display register writes on hsw/bdw
2e3089bc0e2e drm/i915/psr: Implement WaPsrDPRSUnmaskVBlankInSRD:hsw
fadd5c87e0ea drm/i915/psr: Implement WaPsrDPAMaskVBlankInSRD:hsw
6f0f18e486f3 drm/i915/psr: Restore PSR interrupt handler for HSW
8798980ec12f drm/i915/psr: HSW/BDW have no PSR2
32acd6eb4c9a drm/i915/psr: Bring back HSW/BDW PSR AUX CH registers/setup
f4a0bc562ae5 drm/i915/psr: Reintroduce HSW PSR1 registers
7eec7dfff210 drm/i915/psr: Wrap PSR1 register with functions
74286a1ff473 drm/i915/psr: Fix BDW PSR AUX CH data register offsets
1ed8b3a87eb0 drm/i915: Re-init clock gating on coming out of PC8+

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/index.html

--===============2082635004803562377==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Restore HSW/BDW PSR1</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116814/">https://patchwork.freedesktop.org/series/116814/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13041 -&gt; Patchwork_116814v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116814v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@hugepages:<ul>
<li>{bat-mtlp-8}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-mtlp-8/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116814v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-rplp-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-rplp-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13041/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116814v1/fi-bsw-n3050/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13041 -&gt; Patchwork_116814v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13041: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116814v1: a172f81b6b3534fd9e5c1e0f25764fceabdd8343 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6290e5537e6c drm/i915/psr: Re-enable PSR1 on hdw/bdw<br />
861574c93411 drm/i915/psr: Allow PSR with sprite enabled on hsw/bdw<br />
ba48e7937919 drm/i915/psr: Don't skip both TP1 and TP2/3 on hsw/bdw<br />
3b4260f2841e drm/i915/psr: Do no mask display register writes on hsw/bdw<br />
2e3089bc0e2e drm/i915/psr: Implement WaPsrDPRSUnmaskVBlankInSRD:hsw<br />
fadd5c87e0ea drm/i915/psr: Implement WaPsrDPAMaskVBlankInSRD:hsw<br />
6f0f18e486f3 drm/i915/psr: Restore PSR interrupt handler for HSW<br />
8798980ec12f drm/i915/psr: HSW/BDW have no PSR2<br />
32acd6eb4c9a drm/i915/psr: Bring back HSW/BDW PSR AUX CH registers/setup<br />
f4a0bc562ae5 drm/i915/psr: Reintroduce HSW PSR1 registers<br />
7eec7dfff210 drm/i915/psr: Wrap PSR1 register with functions<br />
74286a1ff473 drm/i915/psr: Fix BDW PSR AUX CH data register offsets<br />
1ed8b3a87eb0 drm/i915: Re-init clock gating on coming out of PC8+</p>

</body>
</html>

--===============2082635004803562377==--
