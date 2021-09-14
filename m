Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED1940B558
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 18:53:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41EC36E51A;
	Tue, 14 Sep 2021 16:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8D106E51A;
 Tue, 14 Sep 2021 16:53:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF907A00C9;
 Tue, 14 Sep 2021 16:53:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3572787273047045745=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Sep 2021 16:53:18 -0000
Message-ID: <163163839887.3457.124328093230136757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210914050956.30685-1-matthew.brost@intel.com>
In-Reply-To: <20210914050956.30685-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRG8g?=
 =?utf-8?q?error_capture_async=2C_flush_G2H_processing_on_reset_=28rev3=29?=
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

--===============3572787273047045745==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Do error capture async, flush G2H processing on reset (rev3)
URL   : https://patchwork.freedesktop.org/series/94642/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10583 -> Patchwork_21043
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21043 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21043, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21043:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-u2/igt@i915_module_load@reload.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@i915_module_load@reload.html
    - fi-icl-y:           [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-icl-y/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-y/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_21043 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][12] -> [FAIL][13] ([i915#1888]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@mman:
    - fi-cfl-guc:         NOTRUN -> [INCOMPLETE][15] ([i915#4129])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-guc/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         NOTRUN -> [INCOMPLETE][16] ([i915#3796] / [i915#4129])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-guc/igt@i915_selftest@live@mman.html
    - fi-rkl-11600:       NOTRUN -> [INCOMPLETE][17] ([i915#4129])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@i915_selftest@live@mman.html
    - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][18] ([i915#3796] / [i915#4129])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-6700k2/igt@i915_selftest@live@mman.html
    - fi-kbl-7567u:       NOTRUN -> [INCOMPLETE][19] ([i915#4129])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7567u/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][20] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-rkl-11600:       NOTRUN -> [SKIP][21] ([i915#3669])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#533])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][23] ([i915#2426] / [i915#3363] / [i915#3690])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-u2/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][24] ([i915#2426] / [i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][25] ([i915#1436] / [i915#2426] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][26] ([i915#1436] / [i915#2426] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][27] ([i915#1436] / [i915#2426] / [i915#3363])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-6700k2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-6700k2:      [INCOMPLETE][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         [INCOMPLETE][30] -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [INCOMPLETE][32] -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         [INCOMPLETE][34] -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7567u:       [INCOMPLETE][36] -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-rkl-11600:       [INCOMPLETE][38] -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-rkl-11600/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@i915_module_load@reload.html
    - fi-kbl-guc:         [INCOMPLETE][40] -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-kbl-guc/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-guc/igt@i915_module_load@reload.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-rkl-11600:       [FAIL][42] -> [FAIL][43] ([i915#3928])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-rkl-11600/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3669]: https://gitlab.freedesktop.org/drm/intel/issues/3669
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#3796]: https://gitlab.freedesktop.org/drm/intel/issues/3796
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4129]: https://gitlab.freedesktop.org/drm/intel/issues/4129
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (42 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-bdw-samus bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10583 -> Patchwork_21043

  CI-20190529: 20190529
  CI_DRM_10583: 6cf01d6c7f241c5db17729a3acff670d8f89496d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21043: c3a3b7809e1a2537a32de49f9074a444b724276a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c3a3b7809e1a drm/i915/guc: Refcount context during error capture
11e018bb13d6 drm/i915/guc: Flush G2H work queue during reset
3b53ad6409ea drm/i915/guc: Do error capture asynchronously
d975fc3fdaef drm/i915/guc: Move guc_ids under submission_state sub-structure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/index.html

--===============3572787273047045745==
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
<tr><td><b>Series:</b></td><td>Do error capture async, flush G2H processing on reset (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94642/">https://patchwork.freedesktop.org/series/94642/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10583 -&gt; Patchwork_21043</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21043 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21043, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21043:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-u2/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-icl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-y/igt@i915_module_load@reload.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21043 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4129">i915#4129</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3796">i915#3796</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4129">i915#4129</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4129">i915#4129</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-6700k2/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3796">i915#3796</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4129">i915#4129</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7567u/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4129">i915#4129</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3669">i915#3669</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-rkl-11600/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-kbl-guc/igt@i915_module_load@reload.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-kbl-guc/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10583/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21043/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10583 -&gt; Patchwork_21043</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10583: 6cf01d6c7f241c5db17729a3acff670d8f89496d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6209: 07d6594ed02f55b68d64fa6dd7f80cfbc1ce4ef8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21043: c3a3b7809e1a2537a32de49f9074a444b724276a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c3a3b7809e1a drm/i915/guc: Refcount context during error capture<br />
11e018bb13d6 drm/i915/guc: Flush G2H work queue during reset<br />
3b53ad6409ea drm/i915/guc: Do error capture asynchronously<br />
d975fc3fdaef drm/i915/guc: Move guc_ids under submission_state sub-structure</p>

</body>
</html>

--===============3572787273047045745==--
