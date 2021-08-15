Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A69B3EC6C6
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 04:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE28589A7A;
	Sun, 15 Aug 2021 02:51:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E97A88994D;
 Sun, 15 Aug 2021 02:51:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2241A00CC;
 Sun, 15 Aug 2021 02:51:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6926109898097277849=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Aug 2021 02:51:43 -0000
Message-ID: <162899590375.6202.2221889896801387975@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210815021152.410835-1-jose.souza@intel.com>
In-Reply-To: <20210815021152.410835-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/display/skl+=3A_Drop_front?=
 =?utf-8?q?buffer_rendering_support?=
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

--===============6926109898097277849==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/display/skl+: Drop frontbuffer rendering support
URL   : https://patchwork.freedesktop.org/series/93696/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10484 -> Patchwork_20824
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20824 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20824, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20824:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-skl-guc:         [PASS][1] -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-cfl-guc:         [PASS][3] -> [FAIL][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-icl-y:           [PASS][5] -> [FAIL][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-rkl-guc:         [PASS][7] -> [FAIL][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-skl-6700k2:      [PASS][9] -> [FAIL][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][11] -> [FAIL][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-cfl-8700k:       [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-cfl-8109u:       [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-glk-dsi:         [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-kbl-7500u:       [PASS][19] -> [FAIL][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-bxt-dsi:         [PASS][21] -> [FAIL][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
    - fi-tgl-1115g4:      [PASS][23] -> [FAIL][24] +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - fi-cml-u2:          [PASS][25] -> [FAIL][26] +3 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_psr@primary_page_flip:
    - fi-icl-u2:          [PASS][27] -> [SKIP][28] +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-u2/igt@kms_psr@primary_page_flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-icl-u2/igt@kms_psr@primary_page_flip.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-ehl-2}:         [PASS][29] -> [FAIL][30] +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - {fi-tgl-dsi}:       [PASS][31] -> [FAIL][32] +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {fi-jsl-1}:         [PASS][33] -> [FAIL][34] +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_psr@cursor_plane_move:
    - {fi-ehl-2}:         [PASS][35] -> [SKIP][36] +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-ehl-2/igt@kms_psr@cursor_plane_move.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-ehl-2/igt@kms_psr@cursor_plane_move.html

  
Known issues
------------

  Here are the changes found in Patchwork_20824 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][37] ([fdo#109315]) +17 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][38] -> [INCOMPLETE][39] ([i915#155])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][40] ([i915#3958])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-cml-u2:          [PASS][41] -> [SKIP][42] ([fdo#110189]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cml-u2/igt@kms_psr@primary_mmap_gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cml-u2/igt@kms_psr@primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][43] ([i915#1982] / [k.org#205379]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [DMESG-FAIL][45] ([i915#3928]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10484 -> Patchwork_20824

  CI-20190529: 20190529
  CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20824: 4b93b4a2d08f4728c4d5e7c30a6fad4d2487563f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4b93b4a2d08f drm/i915/psr: Drop frontbuffer rendering support
338b509415ce drm/i915/display: Drop PSR support from HSW and BDW
ac3273ded1ca drm/i915/display/skl+: Drop frontbuffer rendering support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/index.html

--===============6926109898097277849==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/display/skl+: Drop frontbuffer rendering support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93696/">https://patchwork.freedesktop.org/series/93696/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10484 -&gt; Patchwork_20824</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20824 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20824, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20824:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cfl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-skl-6700k2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cfl-8700k/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cfl-8109u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-glk-dsi/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-kbl-7500u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-bxt-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cml-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-u2/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-icl-u2/igt@kms_psr@primary_page_flip.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-tgl-dsi/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-ehl-2/igt@kms_psr@cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-ehl-2/igt@kms_psr@cursor_plane_move.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20824 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cml-u2/igt@kms_psr@primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-cml-u2/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20824/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10484 -&gt; Patchwork_20824</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20824: 4b93b4a2d08f4728c4d5e7c30a6fad4d2487563f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4b93b4a2d08f drm/i915/psr: Drop frontbuffer rendering support<br />
338b509415ce drm/i915/display: Drop PSR support from HSW and BDW<br />
ac3273ded1ca drm/i915/display/skl+: Drop frontbuffer rendering support</p>

</body>
</html>

--===============6926109898097277849==--
