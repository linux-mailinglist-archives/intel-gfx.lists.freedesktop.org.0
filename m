Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5807416CB
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jun 2023 18:54:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFAB210E379;
	Wed, 28 Jun 2023 16:54:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 808D310E371;
 Wed, 28 Jun 2023 16:54:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 779EFAA3D8;
 Wed, 28 Jun 2023 16:54:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5145678189178279298=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Wed, 28 Jun 2023 16:54:05 -0000
Message-ID: <168797124545.32038.8174610445779342898@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Don=27t_preserve_dpll=5Fhw=5Fstate_for_slave_crtc_in_B?=
 =?utf-8?q?igjoiner?=
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

--===============5145678189178279298==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Don't preserve dpll_hw_state for slave crtc in Bigjoiner
URL   : https://patchwork.freedesktop.org/series/119978/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13330 -> Patchwork_119978v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_119978v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_119978v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_119978v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][1] -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
Known issues
------------

  Here are the changes found in Patchwork_119978v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [PASS][6] -> [DMESG-FAIL][7] ([i915#7059])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][8] ([i915#1886] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][9] -> [TIMEOUT][10] ([i915#6794] / [i915#7392])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-rpls-1/igt@i915_selftest@live@mman.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][11] ([i915#6645])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][12] ([fdo#109271]) +14 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-11:         NOTRUN -> [SKIP][13] ([i915#7828])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][14] ([i915#7828])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][15] ([i915#3546]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4579])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         [ABORT][17] ([i915#7913] / [i915#7979]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][19] ([i915#7982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [SKIP][21] ([i915#1072]) -> [ABORT][22] ([i915#8434])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434


Build changes
-------------

  * Linux: CI_DRM_13330 -> Patchwork_119978v1

  CI-20190529: 20190529
  CI_DRM_13330: dd3ec2080383e2bf738c6640aca4183997cf2dde @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7353: cacdae5ad7cb92bdc26a79802fcdd244dadccd42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_119978v1: dd3ec2080383e2bf738c6640aca4183997cf2dde @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

49eb7f9e9814 drm/i915: Don't preserve dpll_hw_state for slave crtc in Bigjoiner

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/index.html

--===============5145678189178279298==
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
<tr><td><b>Series:</b></td><td>drm/i915: Don&#39;t preserve dpll_hw_state for slave crtc in Bigjoiner</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/119978/">https://patchwork.freedesktop.org/series/119978/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13330 -&gt; Patchwork_119978v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_119978v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_119978v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_119978v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_119978v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-dg2-11/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/fi-kbl-soraka/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7979">i915#7979</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13330/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_119978v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13330 -&gt; Patchwork_119978v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13330: dd3ec2080383e2bf738c6640aca4183997cf2dde @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7353: cacdae5ad7cb92bdc26a79802fcdd244dadccd42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_119978v1: dd3ec2080383e2bf738c6640aca4183997cf2dde @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>49eb7f9e9814 drm/i915: Don't preserve dpll_hw_state for slave crtc in Bigjoiner</p>

</body>
</html>

--===============5145678189178279298==--
