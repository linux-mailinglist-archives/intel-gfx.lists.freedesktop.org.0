Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 432174F852E
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 18:49:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC38710EBA9;
	Thu,  7 Apr 2022 16:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BAFE410EBA9;
 Thu,  7 Apr 2022 16:49:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B662EA00FD;
 Thu,  7 Apr 2022 16:49:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1994554137752813919=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Thu, 07 Apr 2022 16:49:24 -0000
Message-ID: <164935016471.14671.16717054809947258689@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220407125839.1479249-1-alexander.usyskin@intel.com>
In-Reply-To: <20220407125839.1479249-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_platforms?=
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

--===============1994554137752813919==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support for XeHP SDV and DG2 platforms
URL   : https://patchwork.freedesktop.org/series/102339/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22813
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22813 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22813, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/index.html

Participating hosts (47 -> 45)
------------------------------

  Additional (3): bat-hsw-1 bat-rpls-2 bat-adlp-4 
  Missing    (5): shard-tglu fi-bsw-cyan fi-cfl-8109u fi-blb-e6850 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22813:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][1] +146 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-rkl-11600:       [FAIL][2] ([i915#4312]) -> [FAIL][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-rkl-11600/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][4] ([i915#4312]) -> [FAIL][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7500u/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][6] ([i915#4312]) -> [FAIL][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][8] ([i915#4312] / [i915#5257]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-skl-guc/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][10] ([i915#4312]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-skl-6700k2/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-skl-6700k2/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_lmem_swapping@basic:
    - {bat-rpls-2}:       NOTRUN -> [SKIP][12] +146 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-rpls-2/igt@gem_lmem_swapping@basic.html
    - {bat-dg2-9}:        NOTRUN -> [SKIP][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-dg2-9/igt@gem_lmem_swapping@basic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - {bat-jsl-2}:        NOTRUN -> [SKIP][14] +146 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-jsl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@runner@aborted:
    - {bat-hsw-1}:        NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-hsw-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22813 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_close_race@basic-process:
    - fi-ivb-3770:        NOTRUN -> [SKIP][16] ([fdo#109271]) +146 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-ivb-3770/igt@gem_close_race@basic-process.html

  * igt@gem_exec_fence@basic-await:
    - fi-bsw-nick:        NOTRUN -> [SKIP][17] ([fdo#109271]) +151 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-nick/igt@gem_exec_fence@basic-await.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271]) +146 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - bat-adlp-4:         NOTRUN -> [SKIP][19] ([i915#5341])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#5341])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#5341])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-ivb-3770:        NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#5341])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][23] ([i915#4312])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-adlp-4/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][24] ([i915#4312]) -> [FAIL][25] ([i915#3690] / [i915#4312])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-kefka/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][26] ([i915#3690]) -> [FAIL][27] ([i915#3690] / [i915#4312])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-nick/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][28] -> [FAIL][29] ([i915#4312])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-soraka/igt@runner@aborted.html
    - fi-hsw-4770:        [FAIL][30] ([i915#4312]) -> [FAIL][31] ([i915#4312] / [i915#5594])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-hsw-4770/igt@runner@aborted.html
    - fi-ivb-3770:        [FAIL][32] -> [FAIL][33] ([i915#4312])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      [FAIL][34] ([i915#4312] / [i915#5257]) -> [FAIL][35] ([i915#3690])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-tgl-1115g4/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][36] ([i915#4312]) -> [FAIL][37] ([i915#4312] / [i915#5257])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@runner@aborted.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_11472 -> Patchwork_22813

  CI-20190529: 20190529
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22813: 9f233cb0bb6312eed7a93dca2018f9db889158b6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9f233cb0bb63 drm/i915/gsc: allocate extended operational memory in LMEM
d7761f03a774 mei: debugfs: add pxp mode to devstate in debugfs
0c7708f978ad mei: gsc: add transition to PXP mode in resume flow
ed778c11fb2f mei: gsc: setup gsc extended operational memory
f767b7e3953f mei: mkhi: add memory ready command
a289d7722c57 mei: bus: export common mkhi definitions into a separate header
c7ef5e1c508b drm/i915/dg2: add gsc with special gsc bar offsets
613f4221d396 mei: extend timeouts on slow devices.
ce5e1f8ea33d mei: gsc: wait for reset thread on stop
7102bca609de mei: gsc: use polling instead of interrupts
c8d254e0de12 drm/i915/gsc: add GSC XeHP SDV platform definition
c3a1f69fab81 drm/i915/gsc: add slow_fw flag to the gsc device definition
e4627be07856 drm/i915/gsc: add slow_fw flag to the mei auxiliary device
79367081c714 drm/i915/gsc: skip irq initialization if using polling
7bf14c184625 HAX: drm/i915: force INTEL_MEI_GSC on for CI
3b921daf3d69 mei: gsc: retrieve the firmware version
cf7d610b88d2 mei: gsc: add runtime pm handlers
73727156241a mei: gsc: setup char driver alive in spite of firmware handshake failure
cbe282748891 mei: add support for graphics system controller (gsc) devices
57df08911dad drm/i915/gsc: add gsc as a mei auxiliary device

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/index.html

--===============1994554137752813919==
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
<tr><td><b>Series:</b></td><td>GSC support for XeHP SDV and DG2 platforms</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102339/">https://patchwork.freedesktop.org/series/102339/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11472 -&gt; Patchwork_22813</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22813 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22813, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/index.html</p>
<h2>Participating hosts (47 -&gt; 45)</h2>
<p>Additional (3): bat-hsw-1 bat-rpls-2 bat-adlp-4 <br />
  Missing    (5): shard-tglu fi-bsw-cyan fi-cfl-8109u fi-blb-e6850 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22813:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@dp-crc-fast:<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> +146 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>
<p>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-rpls-2/igt@gem_lmem_swapping@basic.html">SKIP</a> +146 similar issues</p>
</li>
<li>
<p>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-dg2-9/igt@gem_lmem_swapping@basic.html">SKIP</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>{bat-jsl-2}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-jsl-2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{bat-hsw-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-hsw-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22813 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-ivb-3770/igt@gem_close_race@basic-process.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-nick/igt@gem_exec_fence@basic-await.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +151 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-adlp-4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-ivb-3770/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22813/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11472 -&gt; Patchwork_22813</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22813: 9f233cb0bb6312eed7a93dca2018f9db889158b6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9f233cb0bb63 drm/i915/gsc: allocate extended operational memory in LMEM<br />
d7761f03a774 mei: debugfs: add pxp mode to devstate in debugfs<br />
0c7708f978ad mei: gsc: add transition to PXP mode in resume flow<br />
ed778c11fb2f mei: gsc: setup gsc extended operational memory<br />
f767b7e3953f mei: mkhi: add memory ready command<br />
a289d7722c57 mei: bus: export common mkhi definitions into a separate header<br />
c7ef5e1c508b drm/i915/dg2: add gsc with special gsc bar offsets<br />
613f4221d396 mei: extend timeouts on slow devices.<br />
ce5e1f8ea33d mei: gsc: wait for reset thread on stop<br />
7102bca609de mei: gsc: use polling instead of interrupts<br />
c8d254e0de12 drm/i915/gsc: add GSC XeHP SDV platform definition<br />
c3a1f69fab81 drm/i915/gsc: add slow_fw flag to the gsc device definition<br />
e4627be07856 drm/i915/gsc: add slow_fw flag to the mei auxiliary device<br />
79367081c714 drm/i915/gsc: skip irq initialization if using polling<br />
7bf14c184625 HAX: drm/i915: force INTEL_MEI_GSC on for CI<br />
3b921daf3d69 mei: gsc: retrieve the firmware version<br />
cf7d610b88d2 mei: gsc: add runtime pm handlers<br />
73727156241a mei: gsc: setup char driver alive in spite of firmware handshake failure<br />
cbe282748891 mei: add support for graphics system controller (gsc) devices<br />
57df08911dad drm/i915/gsc: add gsc as a mei auxiliary device</p>

</body>
</html>

--===============1994554137752813919==--
