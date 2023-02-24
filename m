Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 586AB6A14B6
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 02:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F226A10E4BA;
	Fri, 24 Feb 2023 01:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4DE7210E4BA;
 Fri, 24 Feb 2023 01:56:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4527DAADE1;
 Fri, 24 Feb 2023 01:56:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6434697785848395690=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Fri, 24 Feb 2023 01:56:09 -0000
Message-ID: <167720376925.4564.6510329962136645220@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224012009.3594691-1-matthew.d.roper@intel.com>
In-Reply-To: <20230224012009.3594691-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Add_engine_TLB_invalidation_=28rev2=29?=
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

--===============6434697785848395690==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add engine TLB invalidation (rev2)
URL   : https://patchwork.freedesktop.org/series/114159/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12774 -> Patchwork_114159v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-adls-5 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114159v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [PASS][1] -> [ABORT][2] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@random-engines:
    - bat-adlp-6:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-6:         NOTRUN -> [SKIP][4] ([i915#6621])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#5334])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [PASS][7] -> [ABORT][8] ([i915#4983])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-2/igt@i915_selftest@live@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-1:         [PASS][9] -> [DMESG-WARN][10] ([i915#7852])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-adlp-6:         NOTRUN -> [SKIP][11] ([i915#7828])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-fence-read:
    - bat-adlp-6:         NOTRUN -> [SKIP][12] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-6:         NOTRUN -> [SKIP][13] ([fdo#109295] / [i915#3301] / [i915#3708])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][14] ([i915#7229]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_pm_rpm@basic-rte:
    - bat-adlp-6:         [ABORT][16] ([i915#7977]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-rpls-1:         [DMESG-FAIL][18] ([i915#7059]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][20] ([i915#7699]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][22] ([i915#6367]) -> [DMESG-FAIL][23] ([i915#6367] / [i915#7996])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12774 -> Patchwork_114159v2

  CI-20190529: 20190529
  CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114159v2: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7487e8e7b5db drm/i915/mtl: Add engine TLB invalidation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html

--===============6434697785848395690==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add engine TLB invalidation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114159/">https://patchwork.freedesktop.org/series/114159/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12774 -&gt; Patchwork_114159v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-adls-5 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114159v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-adlp-6/igt@i915_pm_rpm@basic-rte.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12774/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114159v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12774 -&gt; Patchwork_114159v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12774: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7171: 35a09092eabf7e55aeb625720634550a0368dde6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114159v2: 51ea055cc2f62af7e9556def2dadb244a6d396c6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7487e8e7b5db drm/i915/mtl: Add engine TLB invalidation</p>

</body>
</html>

--===============6434697785848395690==--
