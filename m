Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3047D413BDB
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Sep 2021 22:59:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2F136E820;
	Tue, 21 Sep 2021 20:59:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7F15F6E820;
 Tue, 21 Sep 2021 20:59:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 780ABA73C9;
 Tue, 21 Sep 2021 20:59:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3709673550544830789=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Sep 2021 20:59:42 -0000
Message-ID: <163225798245.15890.9531445940638999730@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210921175111.850331-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210921175111.850331-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E_=28rev?=
 =?utf-8?q?8=29?=
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

--===============3709673550544830789==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Suspend / resume backup- and restore of LMEM. (rev8)
URL   : https://patchwork.freedesktop.org/series/94278/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10621 -> Patchwork_21118
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21118 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21118, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21118:

### IGT changes ###

#### Possible regressions ####

  * igt@vgem_basic@unload:
    - fi-bxt-dsi:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bxt-dsi/igt@vgem_basic@unload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bxt-dsi/igt@vgem_basic@unload.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@reload:
    - {fi-ehl-2}:         [INCOMPLETE][3] ([i915#4136]) -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-ehl-2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-ehl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21118 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +23 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - fi-kbl-r:           NOTRUN -> [SKIP][6] ([fdo#109271]) +17 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][7] ([fdo#109271]) +17 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][8] -> [INCOMPLETE][9] ([i915#4130] / [i915#4136])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [PASS][10] -> [INCOMPLETE][11] ([i915#4130] / [i915#4136])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][12] -> [INCOMPLETE][13] ([i915#4130] / [i915#4136])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [PASS][14] -> [INCOMPLETE][15] ([i915#4130])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-bdw-5557u:       NOTRUN -> [WARN][16] ([i915#3718])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-snb-2520m:       [PASS][17] -> [INCOMPLETE][18] ([i915#4179])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-snb-2520m/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-snb-2520m/igt@i915_module_load@reload.html
    - fi-skl-6600u:       [PASS][19] -> [INCOMPLETE][20] ([i915#4130] / [i915#4136])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-skl-6600u/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-skl-6600u/igt@i915_module_load@reload.html
    - fi-cfl-guc:         [PASS][21] -> [DMESG-WARN][22] ([i915#4136])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-guc/igt@i915_module_load@reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [PASS][23] -> [INCOMPLETE][24] ([i915#4136] / [i915#4179])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-kefka/igt@i915_module_load@reload.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][25] ([i915#3690])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bsw-kefka/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][26] ([i915#2722] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][27] ([i915#2426])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-snb-2520m/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7567u:       [INCOMPLETE][28] ([i915#4130]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-r:           [INCOMPLETE][30] ([i915#4130] / [i915#4136]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-r/igt@i915_module_load@reload.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-r/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [INCOMPLETE][32] ([i915#4130]) -> [INCOMPLETE][33] ([i915#4130] / [i915#4136])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [INCOMPLETE][34] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][35] ([i915#4136])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-soraka/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-icl-y:           [INCOMPLETE][36] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][37] ([i915#4136])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-y/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-icl-y/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
  [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
  [i915#4179]: https://gitlab.freedesktop.org/drm/intel/issues/4179


Participating hosts (34 -> 30)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 bat-dg1-6 


Build changes
-------------

  * Linux: CI_DRM_10621 -> Patchwork_21118

  CI-20190529: 20190529
  CI_DRM_10621: a24155d542614740119089c115fc777a0fa27587 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21118: b23bb4297033af3371d4719d1cb505125ea902b2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b23bb4297033 drm/i915: Reduce the number of objects subject to memcpy recover
ff28a5a68d2f drm/i915: Don't back up pinned LMEM context images and rings during suspend
5702aa41a823 drm/i915/gt: Register the migrate contexts with their engines
59b42466eac1 drm/i915 Implement LMEM backup and restore for suspend / resume
05339330d99f drm/i915/gt: Increase suspend timeout
dadfa3bea529 drm/i915/gem: Implement a function to process all gem objects of a region
48163f8d741d drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/index.html

--===============3709673550544830789==
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
<tr><td><b>Series:</b></td><td>drm/i915: Suspend / resume backup- and restore of LMEM. (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94278/">https://patchwork.freedesktop.org/series/94278/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10621 -&gt; Patchwork_21118</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21118 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21118, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21118:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@vgem_basic@unload:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bxt-dsi/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bxt-dsi/igt@vgem_basic@unload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-ehl-2/igt@i915_module_load@reload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21118 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-r/igt@amdgpu/amd_cs_nop@sync-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-snb-2520m/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-snb-2520m/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-skl-6600u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-skl-6600u/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-cfl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-cfl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bsw-kefka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4179">i915#4179</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-snb-2520m/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-r/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-r/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10621/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4130">i915#4130</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21118/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4136">i915#4136</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (34 -&gt; 30)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 bat-dg1-6 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10621 -&gt; Patchwork_21118</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10621: a24155d542614740119089c115fc777a0fa27587 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6214: 13550e92c6c7bd825abb6c9b087d12a524b4674c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21118: b23bb4297033af3371d4719d1cb505125ea902b2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b23bb4297033 drm/i915: Reduce the number of objects subject to memcpy recover<br />
ff28a5a68d2f drm/i915: Don't back up pinned LMEM context images and rings during suspend<br />
5702aa41a823 drm/i915/gt: Register the migrate contexts with their engines<br />
59b42466eac1 drm/i915 Implement LMEM backup and restore for suspend / resume<br />
05339330d99f drm/i915/gt: Increase suspend timeout<br />
dadfa3bea529 drm/i915/gem: Implement a function to process all gem objects of a region<br />
48163f8d741d drm/i915/ttm: Implement a function to copy the contents of two TTM-based objects</p>

</body>
</html>

--===============3709673550544830789==--
