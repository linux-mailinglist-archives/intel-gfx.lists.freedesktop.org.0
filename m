Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1344478FE98
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 15:50:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5730110E7DB;
	Fri,  1 Sep 2023 13:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 976EA10E7D5;
 Fri,  1 Sep 2023 13:50:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7ECCDAADE1;
 Fri,  1 Sep 2023 13:50:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7635048641657559420=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Fri, 01 Sep 2023 13:50:10 -0000
Message-ID: <169357621051.9816.517424455143240524@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230901070000.56304-1-khaled.almahallawy@intel.com>
In-Reply-To: <20230901070000.56304-1-khaled.almahallawy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/display/dp=3A_Add_the_remaining_Square_PHY_patterns_DPCD_regis?=
 =?utf-8?q?ter_definitions?=
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

--===============7635048641657559420==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/display/dp: Add the remaining Square PHY patterns DPCD register definitions
URL   : https://patchwork.freedesktop.org/series/123149/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13587 -> Patchwork_123149v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123149v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123149v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123149v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_123149v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [PASS][2] -> [INCOMPLETE][3] ([i915#6311])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
    - bat-jsl-1:          [PASS][4] -> [ABORT][5] ([i915#5122])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] ([fdo#109271]) +18 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][7] -> [DMESG-FAIL][8] ([i915#4258] / [i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        NOTRUN -> [ABORT][9] ([i915#6217])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-1:          [PASS][10] -> [FAIL][11] ([fdo#103375])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:
    - fi-elk-e7500:       [FAIL][12] ([i915#2122]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html

  
#### Warnings ####

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         [SKIP][14] ([i915#1072]) -> [ABORT][15] ([i915#8442] / [i915#8712])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8712]: https://gitlab.freedesktop.org/drm/intel/issues/8712


Build changes
-------------

  * Linux: CI_DRM_13587 -> Patchwork_123149v1

  CI-20190529: 20190529
  CI_DRM_13587: 8152aa47d7b14683059ec856ffa99e2d86acfc8b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7463: 7463
  Patchwork_123149v1: 8152aa47d7b14683059ec856ffa99e2d86acfc8b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

27ba3b04c50b drm/display/dp: Add the remaining Square PHY patterns DPCD register definitions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/index.html

--===============7635048641657559420==
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
<tr><td><b>Series:</b></td><td>drm/display/dp: Add the remaining Square PHY patterns DPCD register definitions</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123149/">https://patchwork.freedesktop.org/series/123149/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13587 -&gt; Patchwork_123149v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123149v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123149v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (1): fi-bsw-nick <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123149v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123149v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-jsl-1/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@sprite_plane_onoff:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13587/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123149v1/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8712">i915#8712</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13587 -&gt; Patchwork_123149v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13587: 8152aa47d7b14683059ec856ffa99e2d86acfc8b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7463: 7463<br />
  Patchwork_123149v1: 8152aa47d7b14683059ec856ffa99e2d86acfc8b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>27ba3b04c50b drm/display/dp: Add the remaining Square PHY patterns DPCD register definitions</p>

</body>
</html>

--===============7635048641657559420==--
