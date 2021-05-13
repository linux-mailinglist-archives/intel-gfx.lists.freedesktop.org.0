Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56A737F864
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 15:07:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88C3B6E0CD;
	Thu, 13 May 2021 13:07:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8FD76E0A6;
 Thu, 13 May 2021 13:07:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1A02A00C9;
 Thu, 13 May 2021 13:07:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Thu, 13 May 2021 13:07:10 -0000
Message-ID: <162091123063.26537.4543091304024441013@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210513120756.622515-1-matthew.auld@intel.com>
In-Reply-To: <20210513120756.622515-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Pin_the_L-shape_quirked_object_as_unshrinkable_=28?=
 =?utf-8?q?rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1679480205=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1679480205==
Content-Type: multipart/alternative;
 boundary="===============4132869308468435920=="

--===============4132869308468435920==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Pin the L-shape quirked object as unshrinkable (rev2)
URL   : https://patchwork.freedesktop.org/series/90065/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10074 -> Patchwork_20121
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/index.html

Known issues
------------

  Here are the changes found in Patchwork_20121 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +6 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-bsw-nick:        [PASS][2] -> [FAIL][3] ([i915#3457]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_wait@wait@all:
    - fi-bsw-kefka:       [PASS][7] -> [FAIL][8] ([i915#3457]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_wait@wait@all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-kefka/igt@gem_wait@wait@all.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][9] ([i915#1982] / [i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][10] ([i915#2782] / [i915#3462] / [i915#794])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][11] ([i915#1886] / [i915#2291])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][12] ([i915#3457])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#533])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-elk-e7500:       [PASS][15] -> [FAIL][16] ([i915#53]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][17] ([i915#1436] / [i915#2426] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-elk-e7500:       [FAIL][18] ([i915#3457]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-kefka:       [FAIL][20] ([i915#3457]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-nick:        [FAIL][22] ([i915#3457]) -> [PASS][23] +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_wait@wait@all:
    - fi-pnv-d510:        [FAIL][24] ([i915#3457]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_wait@wait@all.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-pnv-d510/igt@gem_wait@wait@all.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-elk-e7500:       [FAIL][26] ([i915#53]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-ilk-650:         [FAIL][28] ([i915#53]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][30] ([i915#3457]) -> [FAIL][31] ([i915#3457] / [i915#3472])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [FAIL][32] ([i915#3457]) -> [FAIL][33] ([i915#3472])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-elk-e7500:       [DMESG-WARN][34] ([i915#3457]) -> [DMESG-FAIL][35] ([i915#3457])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-WARN][36] ([i915#1982] / [i915#3457]) -> [DMESG-FAIL][37] ([i915#1982] / [i915#3457])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [DMESG-FAIL][38] ([i915#3457]) -> [DMESG-WARN][39] ([i915#3457])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_module_load@reload.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [DMESG-FAIL][40] ([i915#3457]) -> [DMESG-WARN][41] ([i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bwr-2160/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][42] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][43] ([i915#1436] / [i915#3363])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6600u/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-skl-6600u/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][44] -> [FAIL][45] ([i915#1602] / [i915#2029])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bdw-5557u/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bdw-5557u/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][46] ([i915#1436] / [i915#3363]) -> [FAIL][47] ([i915#1436] / [i915#2426] / [i915#3363])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6700k2/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (43 -> 28)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (16): fi-kbl-7567u fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-icl-u2 fi-cfl-8700k fi-tgl-1115g4 fi-kbl-7500u fi-bsw-cyan fi-hsw-4770 fi-cfl-guc fi-dg1-1 fi-kbl-x1275 fi-cfl-8109u fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10074 -> Patchwork_20121

  CI-20190529: 20190529
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20121: b759221a9170ef753c8796370848d5f75e099bf2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b759221a9170 drm/i915/gem: Pin the L-shape quirked object as unshrinkable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/index.html

--===============4132869308468435920==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Pin the L-shape quirked object as unshrinkable (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90065/">https://patchwork.freedesktop.org/series/90065/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074 -&gt; Patchwork_20121</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20121 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-nick/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-kefka/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-nick/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-pnv-d510/igt@gem_wait@wait@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-ilk-650/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20121/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 28)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (16): fi-kbl-7567u fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-glk-dsi fi-icl-u2 fi-cfl-8700k fi-tgl-1115g4 fi-kbl-7500u fi-bsw-cyan fi-hsw-4770 fi-cfl-guc fi-dg1-1 fi-kbl-x1275 fi-cfl-8109u fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10074 -&gt; Patchwork_20121</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20121: b759221a9170ef753c8796370848d5f75e099bf2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b759221a9170 drm/i915/gem: Pin the L-shape quirked object as unshrinkable</p>

</body>
</html>

--===============4132869308468435920==--

--===============1679480205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1679480205==--
