Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 646BF37D48D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 May 2021 23:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9B996E575;
	Wed, 12 May 2021 21:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC9816E550;
 Wed, 12 May 2021 21:43:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C31E7A41FB;
 Wed, 12 May 2021 21:43:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikola Cornij" <nikola.cornij@amd.com>
Date: Wed, 12 May 2021 21:43:01 -0000
Message-ID: <162085578176.28506.6508925268087373523@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210512210011.8425-1-nikola.cornij@amd.com>
In-Reply-To: <20210512210011.8425-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Use_kHz_as_link_rate_units_when_settig_source_max_?=
 =?utf-8?q?link_caps_at_init?=
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
Content-Type: multipart/mixed; boundary="===============0644689830=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0644689830==
Content-Type: multipart/alternative;
 boundary="===============3343980553855459695=="

--===============3343980553855459695==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Use kHz as link rate units when settig source max link caps at init
URL   : https://patchwork.freedesktop.org/series/90099/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10074 -> Patchwork_20114
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html

Known issues
------------

  Here are the changes found in Patchwork_20114 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_fence@basic-await@rcs0:
    - fi-bsw-nick:        [PASS][2] -> [FAIL][3] ([i915#3457])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-glk-dsi:         [PASS][4] -> [FAIL][5] ([i915#3457])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271]) +6 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-kefka:       [PASS][7] -> [FAIL][8] ([i915#3457]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - fi-bsw-n3050:       [PASS][9] -> [FAIL][10] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [PASS][12] -> [FAIL][13] ([i915#3457]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@gem_wait@wait@all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bwr-2160/igt@gem_wait@wait@all.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][14] ([i915#1982] / [i915#3457])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][15] ([i915#2782] / [i915#3462] / [i915#794])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][16] ([i915#1886] / [i915#2291])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-WARN][17] ([i915#3457])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#533])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - fi-elk-e7500:       [PASS][20] -> [FAIL][21] ([i915#53]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bsw-kefka:       [PASS][22] -> [FAIL][23] ([i915#53])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][24] ([i915#1436] / [i915#3363])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-kefka:       [FAIL][25] ([i915#3457]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-glk-dsi:         [FAIL][27] ([i915#3457]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_fence@nb-await@vcs0:
    - fi-bsw-nick:        [FAIL][29] ([i915#3457]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html

  * igt@gem_exec_suspend@basic-s3:
    - {fi-tgl-1115g4}:    [FAIL][31] ([i915#1888]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_wait@wait@all:
    - fi-pnv-d510:        [FAIL][33] ([i915#3457]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_wait@wait@all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-pnv-d510/igt@gem_wait@wait@all.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][35] ([i915#2782]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][37] ([i915#3457]) -> [FAIL][38] ([i915#3457] / [i915#3472])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [FAIL][39] ([i915#3457]) -> [FAIL][40] ([i915#3472])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-elk-e7500:       [DMESG-WARN][41] ([i915#3457]) -> [DMESG-FAIL][42] ([i915#3457])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-elk-e7500/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-WARN][43] ([i915#1982] / [i915#3457]) -> [DMESG-FAIL][44] ([i915#1982] / [i915#3457])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][45] ([i915#1436] / [i915#3363]) -> [FAIL][46] ([i915#1436] / [i915#2426] / [i915#3363])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-kbl-x1275/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8700k:       [FAIL][47] ([i915#3363]) -> [FAIL][48] ([i915#2426] / [i915#3363])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cfl-8700k/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       [FAIL][49] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][50] ([i915#1436] / [i915#3363])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6600u/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-skl-6600u/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][51] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][52] ([i915#3363] / [k.org#202321])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-glk-dsi/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][53] ([i915#2082] / [i915#2426] / [i915#3363]) -> [FAIL][54] ([i915#3363])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cml-u2/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][55] ([i915#3363]) -> [FAIL][56] ([i915#2426] / [i915#3363])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cfl-guc/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
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
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (43 -> 32)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (12): fi-ilk-m540 fi-bxt-dsi fi-ehl-1 fi-tgl-u2 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-dg1-1 fi-cfl-8109u fi-bdw-samus fi-skl-6700k2 


Build changes
-------------

  * Linux: CI_DRM_10074 -> Patchwork_20114

  CI-20190529: 20190529
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20114: c9bc0648dd46f86fe2e194537ce6111106e0a291 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c9bc0648dd46 drm/dp_mst: Use kHz as link rate units when settig source max link caps at init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html

--===============3343980553855459695==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Use kHz as link rate units when settig source max link caps at init</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90099/">https://patchwork.freedesktop.org/series/90099/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074 -&gt; Patchwork_20114</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20114 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@rcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-nick/igt@gem_exec_fence@basic-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-n3050/igt@gem_exec_fence@nb-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-elk-e7500/igt@kms_pipe_crc_basic@read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-glk-dsi/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-nick/igt@gem_exec_fence@nb-await@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-pnv-d510/igt@gem_wait@wait@all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-ilk-650/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3472">i915#3472</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-elk-e7500/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 32)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (12): fi-ilk-m540 fi-bxt-dsi fi-ehl-1 fi-tgl-u2 fi-hsw-4200u fi-icl-u2 fi-bsw-cyan fi-kbl-7500u fi-dg1-1 fi-cfl-8109u fi-bdw-samus fi-skl-6700k2 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10074 -&gt; Patchwork_20114</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10074: 5aefdc1f23734b6a3d545c8497b098ba4d704a0c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20114: c9bc0648dd46f86fe2e194537ce6111106e0a291 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c9bc0648dd46 drm/dp_mst: Use kHz as link rate units when settig source max link caps at init</p>

</body>
</html>

--===============3343980553855459695==--

--===============0644689830==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0644689830==--
