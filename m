Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2291E30494C
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 20:56:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6336E43F;
	Tue, 26 Jan 2021 19:56:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D35966E41B;
 Tue, 26 Jan 2021 19:56:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CC5EBAA916;
 Tue, 26 Jan 2021 19:56:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Emil Renner Berthing" <esmil@mailme.dk>
Date: Tue, 26 Jan 2021 19:56:20 -0000
Message-ID: <161169098081.9813.3748727197141384940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210126150155.1617-1-kernel@esmil.dk>
In-Reply-To: <20210126150155.1617-1-kernel@esmil.dk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_use_new_tasklet_API_for_execution_list_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0095464220=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0095464220==
Content-Type: multipart/alternative;
 boundary="===============3129453170176979587=="

--===============3129453170176979587==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: use new tasklet API for execution list (rev2)
URL   : https://patchwork.freedesktop.org/series/86253/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9684 -> Patchwork_19504
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19504 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19504, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19504:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bsw-nick/igt@i915_selftest@live@execlists.html
    - fi-glk-dsi:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-glk-dsi/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-glk-dsi/igt@i915_selftest@live@execlists.html
    - fi-cfl-8700k:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
    - fi-bsw-n3050:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cml-s/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cfl-guc/igt@i915_selftest@live@execlists.html
    - fi-bxt-dsi:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-bdw-5557u:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bdw-5557u/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bdw-5557u/igt@i915_selftest@live@execlists.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-rkl-11500t}:    [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-rkl-11500t/igt@i915_selftest@live@execlists.html
    - {fi-ehl-1}:         [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-ehl-1/igt@i915_selftest@live@execlists.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-ehl-1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_19504 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][27] -> [DMESG-WARN][28] ([i915#402]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           [PASS][29] -> [INCOMPLETE][30] ([i915#794])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-r/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][31] -> [INCOMPLETE][32] ([i915#794])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-icl-u2:          [PASS][33] -> [INCOMPLETE][34] ([i915#2276])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-6600u:       [PASS][35] -> [INCOMPLETE][36] ([CI#80])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-skl-6600u/igt@i915_selftest@live@execlists.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-skl-6600u/igt@i915_selftest@live@execlists.html
    - fi-tgl-y:           [PASS][37] -> [INCOMPLETE][38] ([i915#2268])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-y/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [PASS][39] -> [INCOMPLETE][40] ([i915#2268])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-u2/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][41] -> [INCOMPLETE][42] ([CI#80])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][43] -> [INCOMPLETE][44] ([CI#80])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-icl-y:           [PASS][45] -> [INCOMPLETE][46] ([i915#2276])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-icl-y/igt@i915_selftest@live@execlists.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-icl-y/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      [PASS][47] -> [INCOMPLETE][48] ([i915#794])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][49] -> [INCOMPLETE][50] ([i915#794])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][51] -> [INCOMPLETE][52] ([i915#794])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][53] -> [DMESG-FAIL][54] ([i915#165])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [PASS][55] -> [FAIL][56] ([i915#1161] / [i915#262])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][57] ([i915#402]) -> [PASS][58] +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [DMESG-WARN][59] ([i915#2605]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@i915_module_load@reload.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-7500u/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#3004]: https://gitlab.freedesktop.org/drm/intel/issues/3004
  [i915#3005]: https://gitlab.freedesktop.org/drm/intel/issues/3005
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 


Build changes
-------------

  * Linux: CI_DRM_9684 -> Patchwork_19504

  CI-20190529: 20190529
  CI_DRM_9684: 53a183b40b798192f7211b05d550c8145d1397b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5972: 82fa6021821edb5d9609f4cce213920e0936d6f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19504: d2e20936921a5568bbf86901b252bbef79a16c24 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d2e20936921a drm/i915/gt: use new tasklet API for execution list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/index.html

--===============3129453170176979587==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: use new tasklet API for execution list (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86253/">https://patchwork.freedesktop.org/series/86253/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9684 -&gt; Patchwork_19504</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19504 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19504, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19504:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-glk-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-glk-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cfl-8700k/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cml-s/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cml-s/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cfl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cfl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bxt-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-cml-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-cml-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-bdw-5557u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-rkl-11500t/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-ehl-1/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-ehl-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19504 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-r/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-r/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-icl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-skl-6600u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-skl-6600u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-skl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-skl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-skl-6700k2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9684/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19504/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9684 -&gt; Patchwork_19504</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9684: 53a183b40b798192f7211b05d550c8145d1397b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5972: 82fa6021821edb5d9609f4cce213920e0936d6f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19504: d2e20936921a5568bbf86901b252bbef79a16c24 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d2e20936921a drm/i915/gt: use new tasklet API for execution list</p>

</body>
</html>

--===============3129453170176979587==--

--===============0095464220==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0095464220==--
