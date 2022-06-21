Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FEE553903
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 19:37:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C40710F2C4;
	Tue, 21 Jun 2022 17:37:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3A8B510EFEA;
 Tue, 21 Jun 2022 17:37:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 310B5A77A5;
 Tue, 21 Jun 2022 17:37:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8026258508392969134=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Robert Beckett" <bob.beckett@collabora.com>
Date: Tue, 21 Jun 2022 17:37:51 -0000
Message-ID: <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
In-Reply-To: <20220620213340.3199605-1-bob.beckett@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen_=28rev5=29?=
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

--===============8026258508392969134==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: ttm for stolen (rev5)
URL   : https://patchwork.freedesktop.org/series/101396/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11790 -> Patchwork_101396v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_101396v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_101396v5, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html

Participating hosts (40 -> 41)
------------------------------

  Additional (2): fi-icl-u2 bat-dg2-9 
  Missing    (1): fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_101396v5:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@reset:
    - bat-adlp-4:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_busy@basic@flip:
    - {bat-dg2-9}:        NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-dg2-9/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_101396v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-4:         [PASS][6] -> [DMESG-WARN][7] ([i915#1888] / [i915#3576])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [PASS][8] -> [DMESG-FAIL][9] ([i915#4494] / [i915#4957])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([i915#5903])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_busy@basic@flip:
    - bat-adlp-4:         [PASS][11] -> [DMESG-WARN][12] ([i915#3576])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][15] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][16] ([fdo#109271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][17] ([fdo#111827]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][18] ([fdo#109278] / [i915#4103]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-u2:          [PASS][19] -> [DMESG-WARN][20] ([i915#402]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-u2:          NOTRUN -> [WARN][21] ([i915#6008])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][22] ([fdo#109285])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-icl-u2:          NOTRUN -> [SKIP][23] ([fdo#109278])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][24] ([i915#3555])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][25] ([fdo#109295] / [i915#3301])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-cfl-guc:         NOTRUN -> [FAIL][26] ([i915#4312])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-cfl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][27] ([i915#3303] / [i915#4785]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-g3258:       [INCOMPLETE][29] ([i915#3303] / [i915#4785]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][31] ([i915#4528]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-blb-e6850/igt@i915_selftest@live@requests.html
    - fi-pnv-d510:        [DMESG-FAIL][33] ([i915#4528]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - bat-adlp-4:         [DMESG-WARN][35] ([i915#3576]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-plain-flip@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][37] ([i915#3576]) -> [PASS][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6008]: https://gitlab.freedesktop.org/drm/intel/issues/6008


Build changes
-------------

  * Linux: CI_DRM_11790 -> Patchwork_101396v5

  CI-20190529: 20190529
  CI_DRM_11790: a838c72d1e41413a5ace5e3cf2ada93c2e81f66b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6537: 331658a8475c8b0c0f7ffe5268a7318ef83da34e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_101396v5: a838c72d1e41413a5ace5e3cf2ada93c2e81f66b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cb4854cf1605 drm/i915: stolen memory use ttm backend
25a96de09969 drm/i915/ttm: add buffer pin on alloc flag
ad58b349349b drm/i915: allow memory region creators to alloc and free the region
785ff03c0542 drm/i915: ttm move/clear logic fix
d0902500e074 drm/i915: sanitize mem_flags for stolen buffers
8a7630243d04 drm/i915: instantiate ttm ranger manager for stolen memory
055ef33c2ac8 drm/i915/gem: selftest should not attempt mmap of private regions
eb22d2a146a5 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level
f02995012a97 drm/i915: limit ttm to dma32 for i965G[M]
1770347378a1 drm/i915/ttm: dont trample cache_level overrides during ttm move

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html

--===============8026258508392969134==
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
<tr><td><b>Series:</b></td><td>drm/i915: ttm for stolen (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101396/">https://patchwork.freedesktop.org/series/101396/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11790 -&gt; Patchwork_101396v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_101396v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_101396v5, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html</p>
<h2>Participating hosts (40 -&gt; 41)</h2>
<p>Additional (2): fi-icl-u2 bat-dg2-9 <br />
  Missing    (1): fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_101396v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_busy@basic@flip:<ul>
<li>{bat-dg2-9}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-dg2-9/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_101396v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5903">i915#5903</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6008">i915#6008</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-6/igt@kms_flip@basic-plain-flip@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11790 -&gt; Patchwork_101396v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11790: a838c72d1e41413a5ace5e3cf2ada93c2e81f66b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6537: 331658a8475c8b0c0f7ffe5268a7318ef83da34e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_101396v5: a838c72d1e41413a5ace5e3cf2ada93c2e81f66b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cb4854cf1605 drm/i915: stolen memory use ttm backend<br />
25a96de09969 drm/i915/ttm: add buffer pin on alloc flag<br />
ad58b349349b drm/i915: allow memory region creators to alloc and free the region<br />
785ff03c0542 drm/i915: ttm move/clear logic fix<br />
d0902500e074 drm/i915: sanitize mem_flags for stolen buffers<br />
8a7630243d04 drm/i915: instantiate ttm ranger manager for stolen memory<br />
055ef33c2ac8 drm/i915/gem: selftest should not attempt mmap of private regions<br />
eb22d2a146a5 drm/i915/ttm: only trust snooping for dgfx when deciding default cache_level<br />
f02995012a97 drm/i915: limit ttm to dma32 for i965G[M]<br />
1770347378a1 drm/i915/ttm: dont trample cache_level overrides during ttm move</p>

</body>
</html>

--===============8026258508392969134==--
