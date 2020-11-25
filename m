Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 055292C46EB
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Nov 2020 18:39:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 698366EA5B;
	Wed, 25 Nov 2020 17:39:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A38A26EA5B;
 Wed, 25 Nov 2020 17:39:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E596A47E2;
 Wed, 25 Nov 2020 17:39:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 25 Nov 2020 17:39:40 -0000
Message-ID: <160632598064.8878.17450562119554612753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20201125162532.1299794-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/ttm=3A_don=27t_set_page-=3Emapping_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0900776034=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0900776034==
Content-Type: multipart/alternative;
 boundary="===============2589588518588667331=="

--===============2589588518588667331==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/ttm: don't set page->mapping (rev2)
URL   : https://patchwork.freedesktop.org/series/84098/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9389 -> Patchwork_18977
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9389 and Patchwork_18977:

### New CI tests (1) ###

  * boot:
    - Statuses : 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18977 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-glk-dsi:         [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@active:
    - fi-tgl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#666])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@i915_selftest@live@active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@i915_selftest@live@active.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-kbl-soraka/igt@kms_busy@basic@flip.html
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#1982])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      [PASS][11] -> [DMESG-WARN][12] ([i915#1982])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][17] ([i915#1982]) -> [PASS][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-dpms@d-edp1:
    - fi-tgl-y:           [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [DMESG-WARN][21] ([i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (43 -> 38)
------------------------------

  Additional (1): fi-bwr-2160 
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9389 -> Patchwork_18977

  CI-20190529: 20190529
  CI_DRM_9389: b0c2cf3ad04abd9e7a44abe12e736bb5ab587393 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18977: 2e6343b1c47106f859c84ae138426d370df9835c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2e6343b1c471 locking/selftests: Add testcases for fs_reclaim
56ce3e4d0329 mm: Extract might_alloc() debug check
ca1f0b04859a mm: Track mmu notifiers in fs_reclaim_acquire/release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/index.html

--===============2589588518588667331==
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
<tr><td><b>Series:</b></td><td>drm/ttm: don&#39;t set page-&gt;mapping (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84098/">https://patchwork.freedesktop.org/series/84098/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9389 -&gt; Patchwork_18977</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9389 and Patchwork_18977:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18977 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-glk-dsi/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@i915_selftest@live@active.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-edp1:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@kms_flip@basic-flip-vs-dpms@d-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9389/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18977/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Additional (1): fi-bwr-2160 <br />
  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9389 -&gt; Patchwork_18977</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9389: b0c2cf3ad04abd9e7a44abe12e736bb5ab587393 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18977: 2e6343b1c47106f859c84ae138426d370df9835c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2e6343b1c471 locking/selftests: Add testcases for fs_reclaim<br />
56ce3e4d0329 mm: Extract might_alloc() debug check<br />
ca1f0b04859a mm: Track mmu notifiers in fs_reclaim_acquire/release</p>

</body>
</html>

--===============2589588518588667331==--

--===============0900776034==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0900776034==--
