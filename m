Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4F840C7D3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 17:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 826CE6E951;
	Wed, 15 Sep 2021 15:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 220786E954;
 Wed, 15 Sep 2021 15:00:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19578A7525;
 Wed, 15 Sep 2021 15:00:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6399389131752396332=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nathan Chancellor" <nathan@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Sep 2021 15:00:19 -0000
Message-ID: <163171801907.30119.3730955929994883643@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914194944.4004260-1-nathan@kernel.org>
In-Reply-To: <20210914194944.4004260-1-nathan@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_disabled_warnings_=28rev2=29?=
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

--===============6399389131752396332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Clean up disabled warnings (rev2)
URL   : https://patchwork.freedesktop.org/series/94009/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10590 -> Patchwork_21059
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21059 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21059, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21059:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-8809g/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-8809g/igt@core_auth@basic-auth.html

  * igt@i915_module_load@reload:
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-skl-6700k2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-6700k2/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [INCOMPLETE][5] ([i915#4136]) -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-soraka/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-soraka/igt@i915_module_load@reload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][7] ([i915#4136]) -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-ehl-2/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-ehl-2/igt@i915_module_load@reload.html
    - {fi-jsl-1}:         [INCOMPLETE][9] ([i915#4136]) -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-jsl-1/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-jsl-1/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21059 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-compute:
    - fi-cfl-guc:         NOTRUN -> [SKIP][11] ([fdo#109271]) +17 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html

  * igt@amdgpu/amd_basic@cs-sdma:
    - fi-kbl-7500u:       NOTRUN -> [SKIP][12] ([fdo#109271]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][13] ([fdo#109315]) +17 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][14] ([fdo#109315]) +17 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][15] -> [INCOMPLETE][16] ([i915#4130])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [PASS][17] -> [INCOMPLETE][18] ([i915#4130])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][19] ([i915#4136])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-guc/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][20] ([i915#1610] / [i915#3690])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][21] ([i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-8809g/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][22] ([i915#2426] / [i915#3363])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-cfl-guc:         [INCOMPLETE][23] ([i915#4130]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [INCOMPLETE][25] ([i915#4130]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         [INCOMPLETE][27] ([i915#4130]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [INCOMPLETE][29] ([i915#4136]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-icl-u2/igt@i915_module_load@reload.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [INCOMPLETE][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-guc/igt@i915_module_load@reload.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-guc/igt@i915_module_load@reload.html
    - fi-icl-y:           [INCOMPLETE][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-icl-y/igt@i915_module_load@reload.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-y/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136


Participating hosts (39 -> 36)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (4): fi-bdw-samus fi-tgl-1115g4 fi-bsw-cyan bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10590 -> Patchwork_21059

  CI-20190529: 20190529
  CI_DRM_10590: d1e5e3748daf93e7f98b256958bcf80f67892d8e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21059: 29f43978444f1b90c22423e3a9f4fdbb2902fb62 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

29f43978444f drm/i915: Clean up disabled warnings

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html

--===============6399389131752396332==
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
<tr><td><b>Series:</b></td><td>drm/i915: Clean up disabled warnings (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94009/">https://patchwork.freedesktop.org/series/94009/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10590 -&gt; Patchwork_21059</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21059 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21059, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21059:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-8809g/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-8809g/igt@core_auth@basic-auth.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-skl-6700k2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-6700k2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
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
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-jsl-1/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21059 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-guc/igt@amdgpu/amd_basic@cs-compute.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-kbl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10590/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21059/fi-icl-y/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (1): fi-bsw-nick <br />
  Missing    (4): fi-bdw-samus fi-tgl-1115g4 fi-bsw-cyan bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10590 -&gt; Patchwork_21059</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10590: d1e5e3748daf93e7f98b256958bcf80f67892d8e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21059: 29f43978444f1b90c22423e3a9f4fdbb2902fb62 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>29f43978444f drm/i915: Clean up disabled warnings</p>

</body>
</html>

--===============6399389131752396332==--
