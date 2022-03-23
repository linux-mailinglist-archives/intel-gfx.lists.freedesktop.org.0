Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8444E56CB
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 17:46:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4162B10E579;
	Wed, 23 Mar 2022 16:46:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AD7A210E6DC;
 Wed, 23 Mar 2022 16:46:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA789A882E;
 Wed, 23 Mar 2022 16:46:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8739011009814541236=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin Ian King" <colin.i.king@gmail.com>
Date: Wed, 23 Mar 2022 16:46:39 -0000
Message-ID: <164805399969.17993.17773297124068226978@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220315202449.2952845-1-colin.i.king@gmail.com>
In-Reply-To: <20220315202449.2952845-1-colin.i.king@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/reg=3A_Fix_spelling_mistake_=22Unsupport=22_-=3E_=22Unsup?=
 =?utf-8?q?ported=22?=
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

--===============8739011009814541236==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/reg: Fix spelling mistake "Unsupport" -> "Unsupported"
URL   : https://patchwork.freedesktop.org/series/101699/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11398 -> Patchwork_22659
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22659 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22659, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/index.html

Participating hosts (45 -> 44)
------------------------------

  Additional (5): bat-dg2-8 bat-dg2-9 fi-kbl-8809g bat-rpls-1 bat-jsl-1 
  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22659:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_22659 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][4] ([i915#4962]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][7] ([fdo#109271]) +54 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#5341])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_timelines:
    - {bat-rpls-2}:       [DMESG-WARN][12] ([i915#4391]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-rpls-2/igt@i915_selftest@live@gt_timelines.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-rpls-2/igt@i915_selftest@live@gt_timelines.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][14] ([i915#4494] / [i915#4957]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][16] ([i915#3921]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [INCOMPLETE][18] ([i915#5338]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-rpls-2/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - {bat-adlm-1}:       [INCOMPLETE][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-cfl-8109u:       [DMESG-WARN][22] ([i915#295] / [i915#5341]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][24] ([i915#295]) -> [PASS][25] +10 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-apl-guc:         [FAIL][26] ([i915#2426] / [i915#4312]) -> [FAIL][27] ([i915#4312])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-apl-guc/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-apl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4962]: https://gitlab.freedesktop.org/drm/intel/issues/4962
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5337]: https://gitlab.freedesktop.org/drm/intel/issues/5337
  [i915#5338]: https://gitlab.freedesktop.org/drm/intel/issues/5338
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5342]: https://gitlab.freedesktop.org/drm/intel/issues/5342
  [i915#5361]: https://gitlab.freedesktop.org/drm/intel/issues/5361


Build changes
-------------

  * Linux: CI_DRM_11398 -> Patchwork_22659

  CI-20190529: 20190529
  CI_DRM_11398: da54e0aff302424358b14f443a9be2f84bb6ca47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6389: fa423f527496936a759eb838b023642deea7625f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22659: fce9e0a464ec68a46ee747536cedf504c220dd83 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fce9e0a464ec drm/i915/reg: Fix spelling mistake "Unsupport" -> "Unsupported"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/index.html

--===============8739011009814541236==
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
<tr><td><b>Series:</b></td><td>drm/i915/reg: Fix spelling mistake &quot;Unsupport&quot; -&gt; &quot;Unsupported&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101699/">https://patchwork.freedesktop.org/series/101699/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11398 -&gt; Patchwork_22659</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22659 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22659, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Additional (5): bat-dg2-8 bat-dg2-9 fi-kbl-8809g bat-rpls-1 bat-jsl-1 <br />
  Missing    (6): shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22659:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22659 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4962">i915#4962</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-rpls-2/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-rpls-2/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-rpls-2/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5338">i915#5338</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc-pipe-b.html">PASS</a> +10 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11398/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22659/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11398 -&gt; Patchwork_22659</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11398: da54e0aff302424358b14f443a9be2f84bb6ca47 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6389: fa423f527496936a759eb838b023642deea7625f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22659: fce9e0a464ec68a46ee747536cedf504c220dd83 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fce9e0a464ec drm/i915/reg: Fix spelling mistake "Unsupport" -&gt; "Unsupported"</p>

</body>
</html>

--===============8739011009814541236==--
