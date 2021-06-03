Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF79439A3B9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 16:53:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2C926F48B;
	Thu,  3 Jun 2021 14:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B17976F48B;
 Thu,  3 Jun 2021 14:53:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A9EA9A47E8;
 Thu,  3 Jun 2021 14:53:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 03 Jun 2021 14:53:40 -0000
Message-ID: <162273202069.8035.15873043470103723553@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2ht?=
 =?utf-8?q?em_helpers_for_vgem_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0008329430=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0008329430==
Content-Type: multipart/alternative;
 boundary="===============0591482342764147336=="

--===============0591482342764147336==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: shmem helpers for vgem (rev2)
URL   : https://patchwork.freedesktop.org/series/90670/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10165 -> Patchwork_20272
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20272 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20272, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20272:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-elk-e7500:       [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
    - fi-bwr-2160:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-elk-e7500/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bwr-2160:        [PASS][15] -> [FAIL][16] +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-read.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bwr-2160/igt@prime_vgem@basic-read.html
    - fi-bsw-nick:        [PASS][17] -> [FAIL][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-nick/igt@prime_vgem@basic-read.html
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-kefka/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-pnv-d510:        [PASS][21] -> [FAIL][22] +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-pnv-d510/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_20272 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-kbl-soraka:      [PASS][23] -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][25] ([i915#3303]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [FAIL][27] ([i915#2416]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [DMESG-FAIL][29] ([i915#3462]) -> [INCOMPLETE][30] ([i915#2782] / [i915#2940] / [i915#3462])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [DMESG-FAIL][31] ([i915#3462]) -> [INCOMPLETE][32] ([i915#2782] / [i915#3462])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][33] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][34] ([i915#1436] / [i915#3363])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-skl-6600u/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][35] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][36] ([i915#2782] / [i915#3363])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-icl-u2/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][37] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][38] ([i915#3363] / [i915#3462])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cml-u2/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][39] ([i915#3363]) -> [FAIL][40] ([i915#2426] / [i915#3363])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bxt-dsi/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bxt-dsi/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][41] ([i915#1436] / [i915#3363]) -> [FAIL][42] ([i915#1436] / [i915#2426] / [i915#3363])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-skl-6700k2/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6098 -> IGTPW_5854
  * Linux: CI_DRM_10165 -> Patchwork_20272

  CI-20190529: 20190529
  CI_DRM_10165: 91b8d0406bd51d9bca01127e0bcb585312fd2950 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5854: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5854/index.html
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20272: 07cf6c8cf755893cd4c16a90f9616090810ddcca @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

07cf6c8cf755 drm/shmem-helper: Align to page size in dumb_create
798ca0897370 drm/shmem-helper: Switch to vmf_insert_pfn
30c0bfaaf5ce drm/vgem: use shmem helpers
a1fb989b5b4e dma-buf: Require VM_PFNMAP vma for mmap

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/index.html

--===============0591482342764147336==
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
<tr><td><b>Series:</b></td><td>shmem helpers for vgem (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90670/">https://patchwork.freedesktop.org/series/90670/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10165 -&gt; Patchwork_20272</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20272 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20272, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20272:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bwr-2160/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-nick/igt@prime_vgem@basic-read.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-kefka/igt@prime_vgem@basic-read.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20272 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-kbl-soraka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20272/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6098 -&gt; IGTPW_5854</li>
<li>Linux: CI_DRM_10165 -&gt; Patchwork_20272</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10165: 91b8d0406bd51d9bca01127e0bcb585312fd2950 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5854: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5854/index.html<br />
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20272: 07cf6c8cf755893cd4c16a90f9616090810ddcca @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>07cf6c8cf755 drm/shmem-helper: Align to page size in dumb_create<br />
798ca0897370 drm/shmem-helper: Switch to vmf_insert_pfn<br />
30c0bfaaf5ce drm/vgem: use shmem helpers<br />
a1fb989b5b4e dma-buf: Require VM_PFNMAP vma for mmap</p>

</body>
</html>

--===============0591482342764147336==--

--===============0008329430==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0008329430==--
