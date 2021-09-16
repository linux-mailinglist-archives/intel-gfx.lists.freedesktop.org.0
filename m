Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F1E40ED5E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 00:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7C46E934;
	Thu, 16 Sep 2021 22:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3F816E822;
 Thu, 16 Sep 2021 22:31:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBB94A7DFC;
 Thu, 16 Sep 2021 22:31:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4730253295060669708=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 22:31:39 -0000
Message-ID: <163183149986.8837.9677212369969833120@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914212507.177511-1-jose.souza@intel.com>
In-Reply-To: <20210914212507.177511-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/5=5D_drm/i915/display/adlp=3A_Fix_P?=
 =?utf-8?q?SR2=5FMAN=5FTRK=5FCTL=5FSU=5FREGION=5FEND=5FADDR_calculation_?=
 =?utf-8?b?KHJldjQp?=
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

--===============4730253295060669708==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/5] drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation (rev4)
URL   : https://patchwork.freedesktop.org/series/94674/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10599 -> Patchwork_21079
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21079 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21079, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21079:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-7567u/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][2] ([i915#4136]) -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-ehl-2/igt@i915_module_load@reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-ehl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21079 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][4] ([fdo#109315]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-rkl-11600:       NOTRUN -> [SKIP][5] ([fdo#109315]) +17 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-11600/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6700k2:      [PASS][6] -> [INCOMPLETE][7] ([i915#4130])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][8] -> [INCOMPLETE][9] ([i915#155])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][10] ([i915#4130])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [PASS][11] -> [INCOMPLETE][12] ([i915#4130] / [i915#4139])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-guc/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-guc/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][13] ([i915#2426] / [i915#3363] / [i915#3690])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [INCOMPLETE][14] ([i915#4130]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [INCOMPLETE][16] ([i915#4130]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       [INCOMPLETE][18] ([i915#4130]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [INCOMPLETE][20] ([i915#4130]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [INCOMPLETE][22] ([i915#4136]) -> [INCOMPLETE][23] ([i915#4130])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-8809g/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-8809g/igt@i915_module_load@reload.html
    - fi-cml-u2:          [INCOMPLETE][24] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][25] ([i915#4130])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-cml-u2/igt@i915_module_load@reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-cml-u2/igt@i915_module_load@reload.html
    - fi-kbl-7500u:       [INCOMPLETE][26] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][27] ([i915#4130])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-7500u/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-7500u/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4139]: https://gitlab.freedesktop.org/drm/intel/issues/4139


Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10599 -> Patchwork_21079

  CI-20190529: 20190529
  CI_DRM_10599: 7517e1f3124126ca9f24627f9494330d155e5ff6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21079: 43229eeeea65813ce9c8b370ad4b6933fe7823d9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

43229eeeea65 drm/i915/display/adlp: Add new PSR2 workarounds
c4a91f7e7608 drm/i915/display/psr: Use drm damage helpers to calculate plane damaged area
898b12898ccc drm/i915/display: Workaround cursor left overs with PSR2 selective fetch enabled
51aa56c4788e drm/i915/display: Wait at least 2 frames before selective update
9270418bcb50 drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/index.html

--===============4730253295060669708==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/5] drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94674/">https://patchwork.freedesktop.org/series/94674/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10599 -&gt; Patchwork_21079</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21079 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21079, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21079:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-7567u/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21079 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-11600/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4139">i915#4139</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-7500u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21079/fi-kbl-7500u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10599 -&gt; Patchwork_21079</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10599: 7517e1f3124126ca9f24627f9494330d155e5ff6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21079: 43229eeeea65813ce9c8b370ad4b6933fe7823d9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>43229eeeea65 drm/i915/display/adlp: Add new PSR2 workarounds<br />
c4a91f7e7608 drm/i915/display/psr: Use drm damage helpers to calculate plane damaged area<br />
898b12898ccc drm/i915/display: Workaround cursor left overs with PSR2 selective fetch enabled<br />
51aa56c4788e drm/i915/display: Wait at least 2 frames before selective update<br />
9270418bcb50 drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation</p>

</body>
</html>

--===============4730253295060669708==--
