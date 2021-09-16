Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83E7F40EE42
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 01:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 181FE6E9AF;
	Thu, 16 Sep 2021 23:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D46376E9AF;
 Thu, 16 Sep 2021 23:57:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C20C6A7DFC;
 Thu, 16 Sep 2021 23:57:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5388123893300908715=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Sep 2021 23:57:05 -0000
Message-ID: <163183662577.8836.4974915506302573216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210916184012.2642295-1-John.C.Harrison@Intel.com>
In-Reply-To: <20210916184012.2642295-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_querying_hw_info_that_UMDs_need?=
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

--===============5388123893300908715==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for querying hw info that UMDs need
URL   : https://patchwork.freedesktop.org/series/94780/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10600 -> Patchwork_21080
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_21080 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21080, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21080:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-8809g:       [INCOMPLETE][1] ([i915#3910] / [i915#4136]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-8809g/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-8809g/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][3] ([i915#4136]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-ehl-2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-ehl-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - {fi-jsl-1}:         NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-jsl-1/igt@i915_pm_rpm@module-reload.html

  * igt@runner@aborted:
    - {fi-jsl-1}:         NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_21080 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][8] ([fdo#109271]) +17 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-rkl-11600:       NOTRUN -> [SKIP][9] ([fdo#109315]) +17 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-11600/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-8700k:       [PASS][10] -> [INCOMPLETE][11] ([i915#4130])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [PASS][12] -> [INCOMPLETE][13] ([i915#4130])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [PASS][14] -> [INCOMPLETE][15] ([i915#4130])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_blits@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][17] ([fdo#109271]) +5 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@gem_tiled_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][18] ([i915#4130])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-rkl-guc:         [PASS][19] -> [INCOMPLETE][20] ([i915#4130])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-rkl-guc/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-guc/igt@i915_module_load@reload.html
    - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][21] ([i915#4130])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-skl-6700k2/igt@i915_module_load@reload.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#533])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][24] ([i915#2426] / [i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][25] ([i915#2426])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][26] ([i915#2426] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6700k2:      [INCOMPLETE][27] ([i915#4130]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [INCOMPLETE][29] ([i915#4130]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [INCOMPLETE][31] ([i915#155]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_module_load@reload:
    - fi-rkl-11600:       [INCOMPLETE][33] ([i915#4136]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-rkl-11600/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-11600/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [INCOMPLETE][35] ([i915#4130] / [i915#4139]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-guc/igt@i915_module_load@reload.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-guc/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-cml-u2:          [INCOMPLETE][37] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][38] ([i915#4136])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-cml-u2/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-cml-u2/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3910]: https://gitlab.freedesktop.org/drm/intel/issues/3910
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4139]: https://gitlab.freedesktop.org/drm/intel/issues/4139
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-tgl-1115g4 fi-bsw-cyan fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_6211 -> IGTPW_6222
  * Linux: CI_DRM_10600 -> Patchwork_21080

  CI-20190529: 20190529
  CI_DRM_10600: 6d030d2f188222b72833db764662393e8d492325 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_6222: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6222/index.html
  IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21080: c7fa0fd27d07ef18aca724effedb971d782b61e4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c7fa0fd27d07 drm/i915/uapi: Add query for hwconfig table
2e34f570f67b drm/i915/guc: Add fetch of hwconfig table

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/index.html

--===============5388123893300908715==
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
<tr><td><b>Series:</b></td><td>Add support for querying hw info that UMDs need</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94780/">https://patchwork.freedesktop.org/series/94780/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10600 -&gt; Patchwork_21080</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_21080 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21080, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21080:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3910">i915#3910</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-8809g/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-jsl-1/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21080 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-11600/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-rkl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-skl-6700k2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-rkl-11600/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-rkl-11600/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-kbl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4139">i915#4139</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10600/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21080/fi-cml-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-tgl-1115g4 fi-bsw-cyan fi-bsw-nick fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6211 -&gt; IGTPW_6222</li>
<li>Linux: CI_DRM_10600 -&gt; Patchwork_21080</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10600: 6d030d2f188222b72833db764662393e8d492325 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_6222: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_6222/index.html<br />
  IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21080: c7fa0fd27d07ef18aca724effedb971d782b61e4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c7fa0fd27d07 drm/i915/uapi: Add query for hwconfig table<br />
2e34f570f67b drm/i915/guc: Add fetch of hwconfig table</p>

</body>
</html>

--===============5388123893300908715==--
