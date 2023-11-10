Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0198D7E8489
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 21:43:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8713010E29B;
	Fri, 10 Nov 2023 20:43:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DCBE110E29B;
 Fri, 10 Nov 2023 20:43:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D608AAADD5;
 Fri, 10 Nov 2023 20:43:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8079963909522928422=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dipam Turkar" <dipamt1729@gmail.com>
Date: Fri, 10 Nov 2023 20:43:33 -0000
Message-ID: <169964901386.31679.5044323434894274259@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231110184126.712310-1-dipamt1729@gmail.com>
In-Reply-To: <20231110184126.712310-1-dipamt1729@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmVt?=
 =?utf-8?q?ove_custom_dumb=5Fmap=5Foffset_implementations_in_i915_driver_?=
 =?utf-8?b?KHJldjIp?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8079963909522928422==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remove custom dumb_map_offset implementations in i915 driver (rev2)
URL   : https://patchwork.freedesktop.org/series/126264/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13863 -> Patchwork_126264v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126264v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126264v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/index.html

Participating hosts (33 -> 34)
------------------------------

  Additional (1): fi-hsw-4770 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126264v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-elk-e7500:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-bsw-nick/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-bsw-nick/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-hsw-4770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-ivb-3770:        [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-ivb-3770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-ivb-3770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-blb-e6850:       [PASS][8] -> [INCOMPLETE][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-blb-e6850/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-blb-e6850/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - fi-pnv-d510:        [PASS][10] -> [ABORT][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-jsl-3:          [PASS][12] -> [INCOMPLETE][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-jsl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-jsl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adlp-11:        [PASS][14] -> [ABORT][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-cfl-8109u:       [PASS][16] -> [INCOMPLETE][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-kbl-7567u:       [PASS][18] -> [INCOMPLETE][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adln-1:         [PASS][20] -> [INCOMPLETE][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-tgl-1115g4:      [PASS][22] -> [INCOMPLETE][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adlp-6:         [PASS][24] -> [INCOMPLETE][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-cfl-guc:         [PASS][26] -> [INCOMPLETE][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-skl-6600u:       [PASS][28] -> [INCOMPLETE][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-apl-guc:         [PASS][30] -> [INCOMPLETE][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-glk-j4005:       [PASS][32] -> [INCOMPLETE][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adlp-9:         [PASS][34] -> [INCOMPLETE][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-skl-guc:         [PASS][36] -> [ABORT][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-cfl-8700k:       [PASS][38] -> [INCOMPLETE][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-rplp-1:         [PASS][40] -> [INCOMPLETE][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-rkl-11600:       [PASS][42] -> [INCOMPLETE][43]
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adls-5:         [PASS][44] -> [INCOMPLETE][45]
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_dsc@dsc-basic@pipe-c-dp-1}:
    - bat-dg2-9:          [PASS][46] -> [DMESG-WARN][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-c-dp-1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-c-dp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_126264v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][48] ([fdo#109271]) +3 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][49] -> [TIMEOUT][50] ([i915#6794] / [i915#7392])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-rpls-1/igt@i915_selftest@live@mman.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][51] -> [WARN][52] ([i915#8747])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#5190])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][54] ([i915#1845] / [i915#9197]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_13863 -> Patchwork_126264v2

  CI-20190529: 20190529
  CI_DRM_13863: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126264v2: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d7a4671a9da8 Remove custom dumb_map_offset implementations in i915 driver

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/index.html

--===============8079963909522928422==
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
<tr><td><b>Series:</b></td><td>Remove custom dumb_map_offset implementations in i915 driver (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126264/">https://patchwork.freedesktop.org/series/126264/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13863 -&gt; Patchwork_126264v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126264v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126264v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/index.html</p>
<h2>Participating hosts (33 -&gt; 34)</h2>
<p>Additional (1): fi-hsw-4770 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126264v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-bsw-nick/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-bsw-nick/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-hsw-4770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-ivb-3770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-ivb-3770/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-blb-e6850/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-blb-e6850/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-jsl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-jsl-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adlp-11/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-kbl-7567u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adln-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-skl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">ABORT</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-adls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-adls-5/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_dsc@dsc-basic@pipe-c-dp-1}:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-c-dp-1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126264v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13863/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126264v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13863 -&gt; Patchwork_126264v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13863: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126264v2: ba137561f6c6c0e18d87d8ae9ec71f327d6f5168 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d7a4671a9da8 Remove custom dumb_map_offset implementations in i915 driver</p>

</body>
</html>

--===============8079963909522928422==--
