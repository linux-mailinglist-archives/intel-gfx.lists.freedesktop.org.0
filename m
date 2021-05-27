Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAD7393586
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 20:41:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF92B6EE40;
	Thu, 27 May 2021 18:41:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7C596EE40;
 Thu, 27 May 2021 18:41:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFEF5A00C9;
 Thu, 27 May 2021 18:41:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 27 May 2021 18:41:41 -0000
Message-ID: <162214090176.12241.12658084591216110890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2ht?=
 =?utf-8?q?em_helpers_for_vgem?=
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
Content-Type: multipart/mixed; boundary="===============1868635525=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1868635525==
Content-Type: multipart/alternative;
 boundary="===============2489072278735567975=="

--===============2489072278735567975==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: shmem helpers for vgem
URL   : https://patchwork.freedesktop.org/series/90670/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10143 -> Patchwork_20224
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20224 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20224, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20224:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-elk-e7500:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
    - fi-bwr-2160:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-elk-e7500/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-bsw-nick:        [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-nick/igt@prime_vgem@basic-read.html
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-kefka/igt@prime_vgem@basic-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-kefka/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-pnv-d510:        [PASS][21] -> [FAIL][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-pnv-d510/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_20224 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][23] ([i915#2283])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@execlists:
    - fi-bdw-5557u:       NOTRUN -> [DMESG-FAIL][24] ([i915#3462])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][25] -> [FAIL][26] ([i915#2416])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][27] ([fdo#109271]) +5 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  * igt@prime_vgem@basic-write:
    - fi-bsw-kefka:       [PASS][28] -> [FAIL][29] ([i915#3314])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-kefka/igt@prime_vgem@basic-write.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-kefka/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-icl-u2:          [FAIL][30] ([i915#49]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [DMESG-FAIL][32] ([i915#3462]) -> [INCOMPLETE][33] ([i915#2782] / [i915#2940] / [i915#3462])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [INCOMPLETE][34] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][35] ([i915#3462])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-cfl-8700k:       [FAIL][36] ([i915#2426] / [i915#3363]) -> [FAIL][37] ([i915#3363])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-cfl-8700k/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-cfl-8700k/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][38] ([i915#2782] / [i915#3363]) -> [FAIL][39] ([i915#2426] / [i915#2782] / [i915#3363])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-icl-u2/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-icl-u2/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][40] ([i915#1602] / [i915#2029]) -> [FAIL][41] ([i915#3462])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bdw-5557u/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][42] ([i915#1436] / [i915#3363]) -> [FAIL][43] ([i915#1436] / [i915#2426] / [i915#3363])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-kbl-soraka/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-kbl-soraka/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][44] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][45] ([i915#1436] / [i915#3363])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-skl-6700k2/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-skl-6700k2/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3314]: https://gitlab.freedesktop.org/drm/intel/issues/3314
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6095 -> IGTPW_5854
  * Linux: CI_DRM_10143 -> Patchwork_20224

  CI-20190529: 20190529
  CI_DRM_10143: 692ea73513f1ff679b43e2c04f70bdde7cff8aad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5854: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5854/index.html
  IGT_6095: 5c7b7a8e441577a00cc4e71ec0ae57af640eb92a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20224: 9b3b6aecb7eb6c7fc0843e24c9ec09517cbb219d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9b3b6aecb7eb drm/shmem-helper: Align to page size in dumb_create
db7a46a2ca2f drm/shmem-helper: Switch to vmf_insert_pfn
feb77c89ec75 drm/vgem: use shmem helpers
c1ff21db4f2a dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/index.html

--===============2489072278735567975==
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
<tr><td><b>Series:</b></td><td>shmem helpers for vgem</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90670/">https://patchwork.freedesktop.org/series/90670/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10143 -&gt; Patchwork_20224</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20224 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20224, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20224:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bwr-2160/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-nick/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-kefka/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-kefka/igt@prime_vgem@basic-read.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20224 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-kefka/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-kefka/igt@prime_vgem@basic-write.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3314">i915#3314</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-icl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10143/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20224/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6095 -&gt; IGTPW_5854</li>
<li>Linux: CI_DRM_10143 -&gt; Patchwork_20224</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10143: 692ea73513f1ff679b43e2c04f70bdde7cff8aad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5854: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5854/index.html<br />
  IGT_6095: 5c7b7a8e441577a00cc4e71ec0ae57af640eb92a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20224: 9b3b6aecb7eb6c7fc0843e24c9ec09517cbb219d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9b3b6aecb7eb drm/shmem-helper: Align to page size in dumb_create<br />
db7a46a2ca2f drm/shmem-helper: Switch to vmf_insert_pfn<br />
feb77c89ec75 drm/vgem: use shmem helpers<br />
c1ff21db4f2a dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============2489072278735567975==--

--===============1868635525==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1868635525==--
