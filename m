Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 239F221FEE0
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:49:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403846E868;
	Tue, 14 Jul 2020 20:49:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FCC56E85D;
 Tue, 14 Jul 2020 20:49:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 590C9A47EE;
 Tue, 14 Jul 2020 20:49:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 14 Jul 2020 20:49:17 -0000
Message-ID: <159475975734.24019.128136409738148520@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200714200646.14041-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200714200646.14041-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_dma-buf/sw=5Fsync=3A_Avoid_recursiv?=
 =?utf-8?q?e_lock_during_fence_signal=2E_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0373506254=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0373506254==
Content-Type: multipart/alternative;
 boundary="===============8567369906974139474=="

--===============8567369906974139474==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] dma-buf/sw_sync: Avoid recursive lock during fence signal. (rev2)
URL   : https://patchwork.freedesktop.org/series/79492/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8747 -> Patchwork_18167
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18167 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18167, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18167:

### IGT changes ###

#### Possible regressions ####

  * {igt@dmabuf@all@sw_sync} (NEW):
    - fi-icl-y:           NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-icl-y/igt@dmabuf@all@sw_sync.html
    - fi-kbl-guc:         NOTRUN -> [INCOMPLETE][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-guc/igt@dmabuf@all@sw_sync.html

  * igt@kms_busy@basic@flip:
    - fi-cml-s:           [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-cml-s/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-cml-s/igt@kms_busy@basic@flip.html
    - fi-tgl-y:           [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-y/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-cfl-8109u/igt@kms_busy@basic@flip.html
    - fi-skl-lmem:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-skl-lmem/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-skl-lmem/igt@kms_busy@basic@flip.html
    - fi-kbl-r:           [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-r/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-r/igt@kms_busy@basic@flip.html

  * igt@runner@aborted:
    - fi-kbl-guc:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-guc/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-icl-y/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-7560u/igt@kms_busy@basic@flip.html
    - {fi-tgl-dsi}:       [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8747 and Patchwork_18167:

### New IGT tests (1) ###

  * igt@dmabuf@all@sw_sync:
    - Statuses : 2 incomplete(s) 27 pass(s)
    - Exec time: [0.0, 0.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_18167 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@basic-y-tiled:
    - fi-tgl-y:           [PASS][19] -> [DMESG-WARN][20] ([i915#402])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@kms_addfb_basic@basic-y-tiled.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-y/igt@kms_addfb_basic@basic-y-tiled.html

  * igt@kms_busy@basic@flip:
    - fi-ilk-650:         [PASS][21] -> [INCOMPLETE][22] ([i915#2110])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-ilk-650/igt@kms_busy@basic@flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-ilk-650/igt@kms_busy@basic@flip.html
    - fi-kbl-x1275:       [PASS][23] -> [DMESG-WARN][24] ([i915#62] / [i915#92] / [i915#95])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-skl-guc:         [PASS][25] -> [INCOMPLETE][26] ([i915#2110])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-skl-guc/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-skl-guc/igt@kms_busy@basic@modeset.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - fi-tgl-u2:          [PASS][27] -> [DMESG-WARN][28] ([i915#402])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][29] ([i915#1888]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_mmap@basic:
    - fi-tgl-y:           [DMESG-WARN][31] ([i915#402]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@gem_mmap@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-y/igt@gem_mmap@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-apl-guc:         [DMESG-WARN][33] ([i915#1635] / [i915#1982]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][35] ([i915#1982]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-kbl-x1275:       [DMESG-WARN][37] ([i915#62] / [i915#92]) -> [DMESG-WARN][38] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-kbl-x1275:       [DMESG-WARN][39] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][40] ([i915#62] / [i915#92]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2110]: https://gitlab.freedesktop.org/drm/intel/issues/2110
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (46 -> 39)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8747 -> Patchwork_18167

  CI-20190529: 20190529
  CI_DRM_8747: f778a4bc7c6d0314c8a007e792313f5cbd549566 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18167: 0c8eefe2833398c749876b7df2fd194270e84549 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0c8eefe28333 dma-buf/selftests: Add locking selftests for sw_sync
0d98bf72b219 dma-buf/sw_sync: Separate signal/timeline locks
4c0522b51aec dma-buf/sw_sync: Avoid recursive lock during fence signal.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/index.html

--===============8567369906974139474==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] dma-buf/sw_sync: Avoid recursive lock during fence signal. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/79492/">https://patchwork.freedesktop.org/series/79492/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8747 -&gt; Patchwork_18167</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18167 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18167, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18167:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@dmabuf@all@sw_sync} (NEW):</p>
<ul>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-icl-y/igt@dmabuf@all@sw_sync.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-guc/igt@dmabuf@all@sw_sync.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-cml-s/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-cml-s/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-y/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-cfl-8109u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-cfl-8109u/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-skl-lmem/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-skl-lmem/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-r/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-r/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-icl-y/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-7560u/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-dsi/igt@kms_busy@basic@flip.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_8747 and Patchwork_18167:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@dmabuf@all@sw_sync:<ul>
<li>Statuses : 2 incomplete(s) 27 pass(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18167 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@kms_addfb_basic@basic-y-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-y/igt@kms_addfb_basic@basic-y-tiled.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-ilk-650/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-ilk-650/igt@kms_busy@basic@flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-skl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-skl-guc/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2110">i915#2110</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-u2/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-tgl-y/igt@gem_mmap@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-tgl-y/igt@gem_mmap@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8747/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18167/fi-kbl-x1275/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 39)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8747 -&gt; Patchwork_18167</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8747: f778a4bc7c6d0314c8a007e792313f5cbd549566 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5735: 21f8204e54c122e4a0f8ca4b59e4b2db8d1ba687 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18167: 0c8eefe2833398c749876b7df2fd194270e84549 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0c8eefe28333 dma-buf/selftests: Add locking selftests for sw_sync<br />
0d98bf72b219 dma-buf/sw_sync: Separate signal/timeline locks<br />
4c0522b51aec dma-buf/sw_sync: Avoid recursive lock during fence signal.</p>

</body>
</html>

--===============8567369906974139474==--

--===============0373506254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0373506254==--
