Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD9639A5B9
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jun 2021 18:29:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3E0D6E588;
	Thu,  3 Jun 2021 16:29:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2777D6F4CB;
 Thu,  3 Jun 2021 16:29:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1EBD4A00C9;
 Thu,  3 Jun 2021 16:29:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 03 Jun 2021 16:29:34 -0000
Message-ID: <162273777409.8033.12157690828909794876@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210603150326.1326658-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210603150326.1326658-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2ht?=
 =?utf-8?q?em_helpers_for_igt?=
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
Content-Type: multipart/mixed; boundary="===============0861535226=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0861535226==
Content-Type: multipart/alternative;
 boundary="===============7536371287771643843=="

--===============7536371287771643843==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: shmem helpers for igt
URL   : https://patchwork.freedesktop.org/series/90947/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10165 -> Patchwork_20273
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20273 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20273, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20273:

### IGT changes ###

#### Possible regressions ####

  * igt@prime_vgem@basic-fence-mmap:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html
    - fi-ilk-650:         [PASS][5] -> [INCOMPLETE][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-ilk-650/igt@prime_vgem@basic-fence-read.html
    - fi-elk-e7500:       [PASS][7] -> [INCOMPLETE][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html
    - fi-bwr-2160:        [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - fi-ilk-650:         [PASS][11] -> [FAIL][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-ilk-650/igt@prime_vgem@basic-gtt.html
    - fi-elk-e7500:       [PASS][13] -> [FAIL][14] +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-elk-e7500/igt@prime_vgem@basic-gtt.html
    - fi-bwr-2160:        [PASS][15] -> [FAIL][16] +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bwr-2160/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - fi-bsw-nick:        [PASS][17] -> [FAIL][18] +3 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-nick/igt@prime_vgem@basic-read.html
    - fi-bsw-kefka:       [PASS][19] -> [FAIL][20] +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-kefka/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - fi-pnv-d510:        [PASS][21] -> [FAIL][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-pnv-d510/igt@prime_vgem@basic-write.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-pnv-d510/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_20273 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][23] ([fdo#109271]) +17 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][24] -> [DMESG-FAIL][25] ([i915#165])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][26] ([i915#3303]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][28] ([i915#2782]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [FAIL][30] ([i915#2416]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [INCOMPLETE][32] ([i915#3462]) -> [DMESG-FAIL][33] ([i915#3462])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [DMESG-FAIL][34] ([i915#3462]) -> [INCOMPLETE][35] ([i915#2782] / [i915#2940] / [i915#3462])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [DMESG-FAIL][36] ([i915#3462]) -> [INCOMPLETE][37] ([i915#2782] / [i915#3462])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       [FAIL][38] ([i915#3363]) -> [FAIL][39] ([i915#2426] / [i915#3363])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cfl-8109u/igt@runner@aborted.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][40] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][41] ([i915#2782] / [i915#3363])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@runner@aborted.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-icl-u2/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][42] ([i915#3462]) -> [FAIL][43] ([i915#1602] / [i915#2029])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bdw-5557u/igt@runner@aborted.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][44] ([i915#1436] / [i915#3363]) -> [FAIL][45] ([i915#1436] / [i915#2426] / [i915#3363])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-kbl-soraka/igt@runner@aborted.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-kbl-soraka/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][46] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][47] ([i915#3363] / [i915#3462])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cml-u2/igt@runner@aborted.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cml-u2/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][48] ([i915#3363] / [i915#3462]) -> [FAIL][49] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cml-s/igt@runner@aborted.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][50] ([i915#3363]) -> [FAIL][51] ([i915#2426] / [i915#3363])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cfl-guc/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][52] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][53] ([i915#1436] / [i915#3363])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-skl-guc/igt@runner@aborted.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-skl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
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
  * Linux: CI_DRM_10165 -> Patchwork_20273

  CI-20190529: 20190529
  CI_DRM_10165: 91b8d0406bd51d9bca01127e0bcb585312fd2950 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5854: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5854/index.html
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20273: 826ca3131cf332ea64811026fce266aa4441665c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

826ca3131cf3 drm/vgem: use shmem helpers
03c134e820dc drm/shmem-helper: Align to page size in dumb_create
9b0d01123c46 drm/shmem-helper: Switch to vmf_insert_pfn
16d2d93866c0 drm/gem-shmem-helper: Export drm_gem_shmem_funcs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/index.html

--===============7536371287771643843==
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
<tr><td><b>Series:</b></td><td>shmem helpers for igt</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90947/">https://patchwork.freedesktop.org/series/90947/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10165 -&gt; Patchwork_20273</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20273 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20273, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20273:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-nick/igt@prime_vgem@basic-fence-mmap.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-kefka/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-ilk-650/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-elk-e7500/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a> +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bwr-2160/igt@prime_vgem@basic-fence-read.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-ilk-650/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-ilk-650/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-elk-e7500/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bwr-2160/igt@prime_vgem@basic-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bwr-2160/igt@prime_vgem@basic-gtt.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-nick/igt@prime_vgem@basic-read.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-kefka/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-kefka/igt@prime_vgem@basic-read.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-pnv-d510/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-pnv-d510/igt@prime_vgem@basic-write.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20273 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bsw-nick/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10165/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20273/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
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
<li>Linux: CI_DRM_10165 -&gt; Patchwork_20273</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10165: 91b8d0406bd51d9bca01127e0bcb585312fd2950 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5854: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5854/index.html<br />
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20273: 826ca3131cf332ea64811026fce266aa4441665c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>826ca3131cf3 drm/vgem: use shmem helpers<br />
03c134e820dc drm/shmem-helper: Align to page size in dumb_create<br />
9b0d01123c46 drm/shmem-helper: Switch to vmf_insert_pfn<br />
16d2d93866c0 drm/gem-shmem-helper: Export drm_gem_shmem_funcs</p>

</body>
</html>

--===============7536371287771643843==--

--===============0861535226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0861535226==--
