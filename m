Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8932937F523
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 11:58:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF59D6E873;
	Thu, 13 May 2021 09:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CD9E56E872;
 Thu, 13 May 2021 09:58:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4639A47E2;
 Thu, 13 May 2021 09:58:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jisheng Zhang" <Jisheng.Zhang@synaptics.com>
Date: Thu, 13 May 2021 09:58:11 -0000
Message-ID: <162089989177.26535.16186181452742993108@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210513143953.1f8a82e7@xhacker.debian>
In-Reply-To: <20210513143953.1f8a82e7@xhacker.debian>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_=22mitigations=22_parsing_if_i915_is_builtin_=28re?=
 =?utf-8?b?djQp?=
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
Content-Type: multipart/mixed; boundary="===============0689832779=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0689832779==
Content-Type: multipart/alternative;
 boundary="===============5657212722642265956=="

--===============5657212722642265956==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix "mitigations" parsing if i915 is builtin (rev4)
URL   : https://patchwork.freedesktop.org/series/88998/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10074 -> Patchwork_20117
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/index.html

Known issues
------------

  Here are the changes found in Patchwork_20117 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-nick:        [PASS][1] -> [FAIL][2] ([i915#3457])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       [PASS][3] -> [FAIL][4] ([i915#3457])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-kefka:       [PASS][5] -> [FAIL][6] ([i915#3457]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +6 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_wait@busy@all:
    - fi-bsw-nick:        [PASS][9] -> [FAIL][10] ([i915#3177] / [i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_wait@busy@all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@gem_wait@busy@all.html
    - fi-bsw-kefka:       [PASS][11] -> [FAIL][12] ([i915#3177] / [i915#3457])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_wait@busy@all.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@gem_wait@busy@all.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [PASS][13] -> [FAIL][14] ([i915#3457])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@gem_wait@wait@all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bwr-2160/igt@gem_wait@wait@all.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][15] ([i915#1982] / [i915#3457])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][16] ([i915#2782] / [i915#3462] / [i915#794])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][17] ([i915#1886] / [i915#2291])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][18] ([i915#3457])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][19] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#533])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-elk-e7500:       [PASS][21] -> [FAIL][22] ([i915#53]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bsw-kefka:       [PASS][23] -> [FAIL][24] ([i915#53])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][25] ([i915#1436] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-kefka:       [FAIL][26] ([i915#3457]) -> [PASS][27] +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-glk-dsi:         [FAIL][28] ([i915#3457]) -> [PASS][29] +2 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-nick:        [FAIL][30] ([i915#3457]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_wait@wait@all:
    - fi-pnv-d510:        [FAIL][32] ([i915#3457]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_wait@wait@all.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-pnv-d510/igt@gem_wait@wait@all.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-elk-e7500:       [FAIL][34] ([i915#53]) -> [PASS][35] +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][36] ([i915#3457]) -> [FAIL][37] ([i915#3457] / [i915#3472])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [FAIL][38] ([i915#3457]) -> [FAIL][39] ([i915#3457] / [i915#3472])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-elk-e7500:       [DMESG-WARN][40] ([i915#3457]) -> [DMESG-FAIL][41] ([i915#3457])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-WARN][42] ([i915#1982] / [i915#3457]) -> [DMESG-FAIL][43] ([i915#1982] / [i915#3457])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-bsw-nick:        [DMESG-FAIL][44] ([i915#3457]) -> [DMESG-WARN][45] ([i915#3457])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_module_load@reload.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - fi-bwr-2160:        [DMESG-FAIL][46] ([i915#3457]) -> [DMESG-WARN][47] ([i915#3457])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@i915_selftest@live@mman.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bwr-2160/igt@i915_selftest@live@mman.html
    - fi-pnv-d510:        [DMESG-WARN][48] ([i915#3457]) -> [INCOMPLETE][49] ([i915#299] / [i915#3457])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@i915_selftest@live@mman.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-pnv-d510/igt@i915_selftest@live@mman.html

  * igt@runner@aborted:
    - fi-cml-u2:          [FAIL][50] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][51] ([i915#3363])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cml-u2/igt@runner@aborted.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-cml-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3177]: https://gitlab.freedesktop.org/drm/intel/issues/3177
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3472]: https://gitlab.freedesktop.org/drm/intel/issues/3472
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (43 -> 33)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (11): fi-kbl-7567u fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-dg1-1 fi-cfl-8109u fi-bdw-samus fi-kbl-r 


Build changes
-------------

  * Linux: CI_DRM_10074 -> Patchwork_20117

  CI-20190529: 20190529
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20117: 2c3b8705fd6a6068ed807b0e7eb63e0dab3e5efd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2c3b8705fd6a drm/i915: Fix "mitigations" parsing if i915 is builtin

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/index.html

--===============5657212722642265956==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix &quot;mitigations&quot; parsing if i915 is builtin (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88998/">https://patchwork.freedesktop.org/series/88998/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074 -&gt; Patchwork_20117</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20117 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@busy@all:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_wait@busy@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@gem_wait@busy@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3177">i915#3177</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-pnv-d510/igt@gem_wait@wait@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bsw-nick/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-bwr-2160/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-pnv-d510/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20117/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 33)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (11): fi-kbl-7567u fi-ilk-m540 fi-hsw-4200u fi-tgl-1115g4 fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-dg1-1 fi-cfl-8109u fi-bdw-samus fi-kbl-r </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10074 -&gt; Patchwork_20117</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20117: 2c3b8705fd6a6068ed807b0e7eb63e0dab3e5efd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2c3b8705fd6a drm/i915: Fix "mitigations" parsing if i915 is builtin</p>

</body>
</html>

--===============5657212722642265956==--

--===============0689832779==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0689832779==--
