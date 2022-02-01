Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8394A6496
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 20:06:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D79789C6C;
	Tue,  1 Feb 2022 19:06:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 70F6F89C52;
 Tue,  1 Feb 2022 19:06:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6CBF1A73C9;
 Tue,  1 Feb 2022 19:06:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4723616870539513268=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 01 Feb 2022 19:06:05 -0000
Message-ID: <164374236539.2607.18325797736074462290@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220201182422.1548863-1-bob.beckett@collabora.com>
In-Reply-To: <20220201182422.1548863-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZGlz?=
 =?utf-8?q?crete_card_64K_page_support_=28rev5=29?=
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

--===============4723616870539513268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: discrete card 64K page support (rev5)
URL   : https://patchwork.freedesktop.org/series/99119/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11175 -> Patchwork_22150
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22150 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22150, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-bdw-samus fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22150:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gtt:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bsw-kefka/igt@i915_selftest@live@gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bsw-kefka/igt@i915_selftest@live@gtt.html
    - bat-adlp-4:         [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-adlp-4/igt@i915_selftest@live@gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-adlp-4/igt@i915_selftest@live@gtt.html
    - fi-skl-guc:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-guc/igt@i915_selftest@live@gtt.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-guc/igt@i915_selftest@live@gtt.html
    - fi-kbl-8809g:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-8809g/igt@i915_selftest@live@gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-8809g/igt@i915_selftest@live@gtt.html
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-7567u/igt@i915_selftest@live@gtt.html
    - fi-glk-j4005:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-glk-j4005/igt@i915_selftest@live@gtt.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-glk-j4005/igt@i915_selftest@live@gtt.html
    - fi-bsw-nick:        [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bsw-nick/igt@i915_selftest@live@gtt.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bsw-nick/igt@i915_selftest@live@gtt.html
    - fi-cfl-8109u:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cfl-8109u/igt@i915_selftest@live@gtt.html
    - fi-cfl-8700k:       [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cfl-8700k/igt@i915_selftest@live@gtt.html
    - fi-bxt-dsi:         [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bxt-dsi/igt@i915_selftest@live@gtt.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bxt-dsi/igt@i915_selftest@live@gtt.html
    - fi-icl-u2:          [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-icl-u2/igt@i915_selftest@live@gtt.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-icl-u2/igt@i915_selftest@live@gtt.html
    - fi-cml-u2:          [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cml-u2/igt@i915_selftest@live@gtt.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cml-u2/igt@i915_selftest@live@gtt.html
    - fi-bsw-n3050:       [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bsw-n3050/igt@i915_selftest@live@gtt.html
    - fi-cfl-guc:         [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cfl-guc/igt@i915_selftest@live@gtt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cfl-guc/igt@i915_selftest@live@gtt.html
    - fi-skl-6700k2:      [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-6700k2/igt@i915_selftest@live@gtt.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-6700k2/igt@i915_selftest@live@gtt.html
    - fi-ivb-3770:        [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-ivb-3770/igt@i915_selftest@live@gtt.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-ivb-3770/igt@i915_selftest@live@gtt.html
    - fi-kbl-x1275:       [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-x1275/igt@i915_selftest@live@gtt.html
    - fi-kbl-7500u:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-7500u/igt@i915_selftest@live@gtt.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-7500u/igt@i915_selftest@live@gtt.html
    - fi-rkl-11600:       [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-rkl-11600/igt@i915_selftest@live@gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-rkl-11600/igt@i915_selftest@live@gtt.html

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gtt:
    - {bat-jsl-2}:        [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-jsl-2/igt@i915_selftest@live@gtt.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-jsl-2/igt@i915_selftest@live@gtt.html
    - {fi-ehl-2}:         [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-ehl-2/igt@i915_selftest@live@gtt.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-ehl-2/igt@i915_selftest@live@gtt.html
    - {bat-adlp-6}:       [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-adlp-6/igt@i915_selftest@live@gtt.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-adlp-6/igt@i915_selftest@live@gtt.html
    - {fi-jsl-1}:         [PASS][47] -> [DMESG-FAIL][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-jsl-1/igt@i915_selftest@live@gtt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-jsl-1/igt@i915_selftest@live@gtt.html
    - {bat-jsl-1}:        [PASS][49] -> [DMESG-FAIL][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-jsl-1/igt@i915_selftest@live@gtt.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-jsl-1/igt@i915_selftest@live@gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_22150 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@create-fd-close:
    - fi-bdw-gvtdvm:      [PASS][51] -> [INCOMPLETE][52] ([i915#2295])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [PASS][53] -> [INCOMPLETE][54] ([i915#4547])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][55] -> [INCOMPLETE][56] ([i915#4785])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][57] -> [INCOMPLETE][58] ([i915#3921])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][59] ([fdo#109271] / [i915#1436] / [i915#4312])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-hsw-4770/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [INCOMPLETE][60] ([i915#4898]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][62] ([i915#4269]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][64] ([i915#4494] / [i915#4957]) -> [DMESG-FAIL][65] ([i915#4957])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][66] ([i915#2722] / [i915#4312]) -> [FAIL][67] ([i915#4312])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-6600u/igt@runner@aborted.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-6600u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4898]: https://gitlab.freedesktop.org/drm/intel/issues/4898
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11175 -> Patchwork_22150

  CI-20190529: 20190529
  CI_DRM_11175: 0e2a9a1a5bfb17d4b8288ea5b5aae04a5a6fcd7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6337: 7c9c034619ef9dbfbfe041fbf3973a1cf1ac7a22 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22150: 9d2612a88ac090a21ec76a670ee92bf7d1803515 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9d2612a88ac0 drm/i915/uapi: document behaviour for DG2 64K support
0fa221774a2e drm/i915: add gtt misalignment test
969ac009dcff drm/i915: support 64K GTT pages for discrete cards
7dc2679d906a drm/i915: enforce min GTT alignment for discrete cards
640354f70085 drm/i915: add needs_compact_pt flag

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/index.html

--===============4723616870539513268==
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
<tr><td><b>Series:</b></td><td>discrete card 64K page support (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99119/">https://patchwork.freedesktop.org/series/99119/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11175 -&gt; Patchwork_22150</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22150 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22150, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-bdw-samus fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22150:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bsw-kefka/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bsw-kefka/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-adlp-4/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-adlp-4/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-8809g/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-8809g/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-7567u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-glk-j4005/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-glk-j4005/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bsw-nick/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bsw-nick/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cfl-8109u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cfl-8700k/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bxt-dsi/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bxt-dsi/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-icl-u2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-icl-u2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cml-u2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cml-u2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bsw-n3050/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cfl-guc/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cfl-guc/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-6700k2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-6700k2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-ivb-3770/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-ivb-3770/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-x1275/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-kbl-7500u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-kbl-7500u/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-rkl-11600/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-rkl-11600/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>
<p>{bat-jsl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-jsl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-jsl-2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-ehl-2/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-ehl-2/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-adlp-6/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-adlp-6/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-jsl-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-jsl-1/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-jsl-1/igt@i915_selftest@live@gtt.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22150 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-bdw-gvtdvm/igt@gem_basic@create-fd-close.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4898">i915#4898</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11175/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22150/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11175 -&gt; Patchwork_22150</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11175: 0e2a9a1a5bfb17d4b8288ea5b5aae04a5a6fcd7f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6337: 7c9c034619ef9dbfbfe041fbf3973a1cf1ac7a22 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22150: 9d2612a88ac090a21ec76a670ee92bf7d1803515 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9d2612a88ac0 drm/i915/uapi: document behaviour for DG2 64K support<br />
0fa221774a2e drm/i915: add gtt misalignment test<br />
969ac009dcff drm/i915: support 64K GTT pages for discrete cards<br />
7dc2679d906a drm/i915: enforce min GTT alignment for discrete cards<br />
640354f70085 drm/i915: add needs_compact_pt flag</p>

</body>
</html>

--===============4723616870539513268==--
