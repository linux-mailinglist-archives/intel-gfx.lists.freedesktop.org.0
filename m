Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4503B02E0
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 13:36:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04F216E4A7;
	Tue, 22 Jun 2021 11:36:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 990A26E4A7;
 Tue, 22 Jun 2021 11:36:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91AD2A73C7;
 Tue, 22 Jun 2021 11:36:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 22 Jun 2021 11:36:19 -0000
Message-ID: <162436177957.30777.11396523516345527245@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210622093418.153400-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210622093418.153400-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_system_memory_to_TTM_for_discrete_=28rev7=29?=
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
Content-Type: multipart/mixed; boundary="===============1804568507=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1804568507==
Content-Type: multipart/alternative;
 boundary="===============7350677882484887218=="

--===============7350677882484887218==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move system memory to TTM for discrete (rev7)
URL   : https://patchwork.freedesktop.org/series/90898/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10261 -> Patchwork_20426
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20426:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@userptr:
    - {fi-dg1-1}:         [FAIL][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10261/fi-dg1-1/igt@gem_exec_parallel@engines@userptr.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-dg1-1/igt@gem_exec_parallel@engines@userptr.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10261/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - {fi-dg1-1}:         NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-dg1-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20426 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][6] ([fdo#109271]) +24 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#533])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [INCOMPLETE][9] ([i915#146] / [i915#2405]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10261/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10261 -> Patchwork_20426

  CI-20190529: 20190529
  CI_DRM_10261: 132b189b72a94328f17fd70321bfe63e5b4208e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20426: 324152868ec7f72345a32b8729031558529929fe @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

324152868ec7 drm/i915/ttm: Use TTM for system memory
4e479fc2ee7c drm/i915/ttm: Adjust gem flags and caching settings after a move
181ccb1c4076 drm/i915: Update object placement flags to be mutable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/index.html

--===============7350677882484887218==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move system memory to TTM for discrete (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90898/">https://patchwork.freedesktop.org/series/90898/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10261 -&gt; Patchwork_20426</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20426:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>{fi-dg1-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10261/fi-dg1-1/igt@gem_exec_parallel@engines@userptr.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-dg1-1/igt@gem_exec_parallel@engines@userptr.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10261/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-dg1-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-dg1-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20426 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10261/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20426/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-n3050 fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10261 -&gt; Patchwork_20426</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10261: 132b189b72a94328f17fd70321bfe63e5b4208e9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6117: 3ba0a02404f243d6d8f232c6215163cc4b0fd699 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20426: 324152868ec7f72345a32b8729031558529929fe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>324152868ec7 drm/i915/ttm: Use TTM for system memory<br />
4e479fc2ee7c drm/i915/ttm: Adjust gem flags and caching settings after a move<br />
181ccb1c4076 drm/i915: Update object placement flags to be mutable</p>

</body>
</html>

--===============7350677882484887218==--

--===============1804568507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1804568507==--
