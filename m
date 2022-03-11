Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09A6E4D5DF1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 09:54:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F7A10E858;
	Fri, 11 Mar 2022 08:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3943B10E858;
 Fri, 11 Mar 2022 08:54:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 33416A882E;
 Fri, 11 Mar 2022 08:54:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1750614852450757743=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anusha Srivatsa" <anusha.srivatsa@intel.com>
Date: Fri, 11 Mar 2022 08:54:32 -0000
Message-ID: <164698887215.23984.13217370032743062336@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220311070429.1993708-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_CDCLK_checks_to_atomic_check_phase_=28rev3=29?=
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

--===============1750614852450757743==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add CDCLK checks to atomic check phase (rev3)
URL   : https://patchwork.freedesktop.org/series/101068/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11350 -> Patchwork_22540
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22540 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22540, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/index.html

Participating hosts (48 -> 27)
------------------------------

  Additional (2): fi-kbl-soraka fi-pnv-d510 
  Missing    (23): fi-rkl-11600 bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-apl-guc bat-rpls-2 shard-dg1 fi-bdw-5557u shard-tglu fi-adl-ddr5 fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-skl-6700k2 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-bsw-cyan fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u shard-rkl fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22540:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-glk-j4005:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-rkl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-rkl-guc/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-rkl-guc/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-bsw-kefka:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-bsw-n3050:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html
    - fi-bxt-dsi:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0@smem.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
    - {fi-jsl-1}:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
    - {fi-tgl-dsi}:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-tgl-dsi/igt@gem_exec_suspend@basic-s0@smem.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-tgl-dsi/igt@gem_exec_suspend@basic-s0@smem.html
    - {bat-adlp-6}:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@gem_exec_suspend@basic-s0@smem.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/bat-adlp-6/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@runner@aborted:
    - {bat-jsl-1}:        NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/bat-jsl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22540 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-hsw-4770:        NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][23] ([fdo#109271]) +9 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#2190])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#4613]) +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][26] ([i915#1886])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#533])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][29] ([fdo#109271]) +58 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][30] ([i915#3690])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-tgl-1115g4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [FAIL][31] ([i915#3194]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][33] ([i915#3303]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5185]: https://gitlab.freedesktop.org/drm/intel/issues/5185
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11350 -> Patchwork_22540

  CI-20190529: 20190529
  CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22540: d6445335bc35715241430601cc6d7c80dd1eab59 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d6445335bc35 drm/i915/display: Add cdclk checks to atomic check
140920b39b44 drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl
798f018d5ec0 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash
3b1e63bbb7d4 drm/i915/display: Add CDCLK actions to intel_cdclk_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/index.html

--===============1750614852450757743==
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
<tr><td><b>Series:</b></td><td>Add CDCLK checks to atomic check phase (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101068/">https://patchwork.freedesktop.org/series/101068/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11350 -&gt; Patchwork_22540</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22540 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22540, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/index.html</p>
<h2>Participating hosts (48 -&gt; 27)</h2>
<p>Additional (2): fi-kbl-soraka fi-pnv-d510 <br />
  Missing    (23): fi-rkl-11600 bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-apl-guc bat-rpls-2 shard-dg1 fi-bdw-5557u shard-tglu fi-adl-ddr5 fi-glk-dsi fi-kbl-7500u fi-ctg-p8600 fi-skl-6700k2 fi-skl-guc fi-cfl-8700k fi-hsw-4200u fi-bsw-cyan fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u shard-rkl fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22540:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-nick/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-glk-j4005/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-rkl-guc/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-rkl-guc/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bsw-n3050/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bxt-dsi/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-tgl-dsi/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-tgl-dsi/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/bat-adlp-6/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/bat-adlp-6/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/bat-jsl-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22540 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-hsw-4770/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11350/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22540/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11350 -&gt; Patchwork_22540</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11350: 925314164278701a48bb63b89a95d6c7e179a02e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6375: aa6eb64bac510b7d617436997171bfe388943d89 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22540: d6445335bc35715241430601cc6d7c80dd1eab59 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d6445335bc35 drm/i915/display: Add cdclk checks to atomic check<br />
140920b39b44 drm/i915/display: s/intel_cdclk_can_crawl/intel_cdclk_crawl<br />
798f018d5ec0 drm/i915/display: s/intel_cdclk_can_squash/intel_cdclk_squash<br />
3b1e63bbb7d4 drm/i915/display: Add CDCLK actions to intel_cdclk_state</p>

</body>
</html>

--===============1750614852450757743==--
