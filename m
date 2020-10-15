Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BB528F9E5
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 22:07:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE9606E159;
	Thu, 15 Oct 2020 20:07:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 661B96E147;
 Thu, 15 Oct 2020 20:07:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6DFF5A363B;
 Thu, 15 Oct 2020 20:07:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Thu, 15 Oct 2020 20:07:06 -0000
Message-ID: <160279242642.13183.7071793006422349163@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
In-Reply-To: <20201015182901.3197788-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Update_to_GuC_v49?=
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
Content-Type: multipart/mixed; boundary="===============0409451215=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0409451215==
Content-Type: multipart/alternative;
 boundary="===============4567436330115976575=="

--===============4567436330115976575==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Update to GuC v49
URL   : https://patchwork.freedesktop.org/series/82724/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9143 -> Patchwork_18706
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_18706 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18706, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18706:

### IGT changes ###

#### Warnings ####

  * igt@gem_huc_copy@huc-copy:
    - fi-cml-u2:          [SKIP][1] ([i915#2190]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cml-u2/igt@gem_huc_copy@huc-copy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cml-u2/igt@gem_huc_copy@huc-copy.html
    - fi-cml-s:           [SKIP][3] ([i915#2190]) -> [SKIP][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cml-s/igt@gem_huc_copy@huc-copy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cml-s/igt@gem_huc_copy@huc-copy.html

  
Known issues
------------

  Here are the changes found in Patchwork_18706 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@basic:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@gem_flink_basic@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@gem_flink_basic@basic.html

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#1982] / [k.org#205379])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@active:
    - fi-bsw-n3050:       [PASS][9] -> [DMESG-FAIL][10] ([i915#541])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-bsw-n3050/igt@i915_selftest@live@active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-bsw-n3050/igt@i915_selftest@live@active.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          [SKIP][15] ([i915#2190]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - {fi-ehl-1}:         [SKIP][17] ([i915#2190]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-ehl-1/igt@gem_huc_copy@huc-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-ehl-1/igt@gem_huc_copy@huc-copy.html
    - fi-icl-y:           [SKIP][19] ([i915#2190]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-y/igt@gem_huc_copy@huc-copy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-y/igt@gem_huc_copy@huc-copy.html
    - {fi-tgl-dsi}:       [SKIP][21] ([i915#2190]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-icl-u2:          [SKIP][23] ([i915#2190]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-u2/igt@gem_huc_copy@huc-copy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-icl-y:           [DMESG-WARN][25] ([i915#1982]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-y/igt@i915_module_load@reload.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-y/igt@i915_module_load@reload.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [DMESG-WARN][27] ([i915#1982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [DMESG-WARN][29] ([i915#402]) -> [PASS][30] +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
#### Warnings ####

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       [SKIP][31] ([fdo#109271] / [i915#2190]) -> [SKIP][32] ([fdo#109271])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      [SKIP][33] ([fdo#109271] / [i915#2190]) -> [SKIP][34] ([fdo#109271])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      [SKIP][35] ([fdo#109271] / [i915#2190]) -> [SKIP][36] ([fdo#109271])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html
    - fi-skl-lmem:        [SKIP][37] ([fdo#109271] / [i915#2190]) -> [SKIP][38] ([fdo#109271])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html
    - fi-glk-dsi:         [SKIP][39] ([fdo#109271] / [i915#2190]) -> [SKIP][40] ([fdo#109271])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       [SKIP][41] ([fdo#109271] / [i915#2190]) -> [SKIP][42] ([fdo#109271])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-7500u:       [SKIP][43] ([fdo#109271] / [i915#2190]) -> [SKIP][44] ([fdo#109271])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-r:           [SKIP][45] ([fdo#109271] / [i915#2190]) -> [SKIP][46] ([fdo#109271])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-r/igt@gem_huc_copy@huc-copy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-r/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       [SKIP][47] ([fdo#109271] / [i915#2190]) -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8700k:       [SKIP][49] ([fdo#109271] / [i915#2190]) -> [SKIP][50] ([fdo#109271])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][51] ([fdo#109271]) -> [DMESG-FAIL][52] ([i915#2203])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-y:           [DMESG-WARN][53] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][54] ([i915#2411])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@i915_pm_rpm@module-reload.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9143 -> Patchwork_18706

  CI-20190529: 20190529
  CI_DRM_9143: 4dbf348a230e183680a5b401cebe278d97411d9a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5820: 520f88d7817ebb7464907252a32e8e747429102b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18706: d502feebecfe10a7cfe432e76d14cacd87e3b4e3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d502feebecfe CI: turn on GuC/HuC auto mode by default
ff50fbc0b3de drm/i915/guc: Clear pointers on free
f7390881fe48 drm/i915/guc: Improved reporting when GuC fails to load
c8fbdad26f0a drm/i915/guc: Update to use firmware v49.0.1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/index.html

--===============4567436330115976575==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Update to GuC v49</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82724/">https://patchwork.freedesktop.org/series/82724/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9143 -&gt; Patchwork_18706</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_18706 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18706, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18706:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cml-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cml-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cml-s/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cml-s/igt@gem_huc_copy@huc-copy.html">SKIP</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18706 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@gem_flink_basic@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@gem_flink_basic@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-bsw-n3050/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-bsw-n3050/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-ehl-1/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-ehl-1/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-y/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-dsi/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-y/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-skl-lmem/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-7500u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-cfl-8700k/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9143/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18706/fi-tgl-y/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9143 -&gt; Patchwork_18706</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9143: 4dbf348a230e183680a5b401cebe278d97411d9a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5820: 520f88d7817ebb7464907252a32e8e747429102b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18706: d502feebecfe10a7cfe432e76d14cacd87e3b4e3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d502feebecfe CI: turn on GuC/HuC auto mode by default<br />
ff50fbc0b3de drm/i915/guc: Clear pointers on free<br />
f7390881fe48 drm/i915/guc: Improved reporting when GuC fails to load<br />
c8fbdad26f0a drm/i915/guc: Update to use firmware v49.0.1</p>

</body>
</html>

--===============4567436330115976575==--

--===============0409451215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0409451215==--
