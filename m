Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86AA643583C
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 03:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDD46EA22;
	Thu, 21 Oct 2021 01:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D38AA89D58;
 Thu, 21 Oct 2021 01:29:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CAA9EA47EB;
 Thu, 21 Oct 2021 01:29:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6981548592020865214=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 01:29:06 -0000
Message-ID: <163477974680.20177.17047586681086441450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211020223339.669-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211020223339.669-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_=28near=29atomic_gamma_LUT_updates_via_vblank_workers?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6981548592020865214==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: (near)atomic gamma LUT updates via vblank workers
URL   : https://patchwork.freedesktop.org/series/96089/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10767 -> Patchwork_21399
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/index.html

Known issues
------------

  Here are the changes found in Patchwork_21399 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-WARN][3] ([i915#1982] / [i915#262])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#4269])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][6] ([i915#3921]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_flip@basic-plain-flip@c-dp1:
    - fi-cfl-8109u:       [FAIL][8] ([i915#4165]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][10] ([i915#295]) -> [PASS][11] +14 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan bat-dg1-6 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10767 -> Patchwork_21399

  CI-20190529: 20190529
  CI_DRM_10767: 4d947bb057406e5c30081736db70da3f5726e0cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21399: 6c8274b2061ce9afe497ca680479ab7fb295e9f0 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6c8274b2061c drm/i915: Use unlocked register accesses for LUT loads
b9a5bb22d814 drm/i915: Use vblank workers for gamma updates
0b7c1b5f5243 drm/i915: Do vrr push before sampling the freame counter
889072d8ac0e drm/i915: Move function prototypes to the correct header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/index.html

--===============6981548592020865214==
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
<tr><td><b>Series:</b></td><td>drm/i915: (near)atomic gamma LUT updates via vblank workers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96089/">https://patchwork.freedesktop.org/series/96089/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10767 -&gt; Patchwork_21399</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21399 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10767/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21399/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +14 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan bat-dg1-6 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10767 -&gt; Patchwork_21399</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10767: 4d947bb057406e5c30081736db70da3f5726e0cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21399: 6c8274b2061ce9afe497ca680479ab7fb295e9f0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6c8274b2061c drm/i915: Use unlocked register accesses for LUT loads<br />
b9a5bb22d814 drm/i915: Use vblank workers for gamma updates<br />
0b7c1b5f5243 drm/i915: Do vrr push before sampling the freame counter<br />
889072d8ac0e drm/i915: Move function prototypes to the correct header</p>

</body>
</html>

--===============6981548592020865214==--
