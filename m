Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 544C15FB0DD
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 13:01:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 961E110E002;
	Tue, 11 Oct 2022 11:01:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1ED8910E002;
 Tue, 11 Oct 2022 11:01:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0BF5EAADD2;
 Tue, 11 Oct 2022 11:01:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7924391489229697974=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 11 Oct 2022 11:01:16 -0000
Message-ID: <166548607601.5540.11438319287107767401@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011093048.447177-1-vinod.govindapillai@intel.com>
In-Reply-To: <20221011093048.447177-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_update_DSC_feature_flag_handling_during_device_init?=
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

--===============7924391489229697974==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: update DSC feature flag handling during device init
URL   : https://patchwork.freedesktop.org/series/109570/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12231 -> Patchwork_109570v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109570v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109570v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/index.html

Participating hosts (46 -> 45)
------------------------------

  Additional (1): bat-atsm-1 
  Missing    (2): fi-ctg-p8600 fi-tgl-dsi 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109570v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_timelines:
    - bat-dg1-5:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg1-5/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-dg1-5/igt@i915_selftest@live@gt_timelines.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3:
    - {bat-dg2-9}:        [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_109570v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bdw-gvtdvm:      [PASS][5] -> [INCOMPLETE][6] ([i915#2940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-ivb-3770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-g3258:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][10] ([i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][11] ([i915#2867]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
    - {bat-adlm-1}:       [DMESG-WARN][13] ([i915#2867]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_pm:
    - {bat-rpls-2}:       [DMESG-FAIL][15] ([i915#4258]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][17] ([i915#7122]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-g3258:       [INCOMPLETE][19] ([i915#3303] / [i915#4785]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [INCOMPLETE][21] ([i915#146] / [i915#6712]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#6712]: https://gitlab.freedesktop.org/drm/intel/issues/6712
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7030]: https://gitlab.freedesktop.org/drm/intel/issues/7030
  [i915#7031]: https://gitlab.freedesktop.org/drm/intel/issues/7031
  [i915#7122]: https://gitlab.freedesktop.org/drm/intel/issues/7122


Build changes
-------------

  * Linux: CI_DRM_12231 -> Patchwork_109570v1

  CI-20190529: 20190529
  CI_DRM_12231: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7007: 39a979fb4453c557022f0477c609afe10a049e48 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109570v1: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

db19f9e8b0aa drm/i915: update DSC feature flag handling during device init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/index.html

--===============7924391489229697974==
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
<tr><td><b>Series:</b></td><td>drm/i915: update DSC feature flag handling during device init</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109570/">https://patchwork.freedesktop.org/series/109570/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12231 -&gt; Patchwork_109570v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109570v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109570v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Additional (1): bat-atsm-1 <br />
  Missing    (2): fi-ctg-p8600 fi-tgl-dsi </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109570v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg1-5/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-dg1-5/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3:<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-dp-3.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109570v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7122">i915#7122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12231/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6712">i915#6712</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109570v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12231 -&gt; Patchwork_109570v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12231: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7007: 39a979fb4453c557022f0477c609afe10a049e48 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109570v1: bb84c1baa34eed834400e9a3cf9642840be002e1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>db19f9e8b0aa drm/i915: update DSC feature flag handling during device init</p>

</body>
</html>

--===============7924391489229697974==--
