Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811E46FFE24
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 02:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00FE510E088;
	Fri, 12 May 2023 00:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7038810E088;
 Fri, 12 May 2023 00:50:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00AE6AADE4;
 Fri, 12 May 2023 00:50:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1531923596427932030=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Date: Fri, 12 May 2023 00:50:41 -0000
Message-ID: <168385264196.26102.18172776330153737584@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230511231750.313467-1-vinod.govindapillai@intel.com>
In-Reply-To: <20230511231750.313467-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbXRs?=
 =?utf-8?q?=3A_add_support_for_pmdemand_=28rev5=29?=
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

--===============1531923596427932030==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: mtl: add support for pmdemand (rev5)
URL   : https://patchwork.freedesktop.org/series/116949/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13139 -> Patchwork_116949v5
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_116949v5 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116949v5, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (3): fi-kbl-soraka bat-kbl-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116949v5:

### IGT changes ###

#### Warnings ####

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         [SKIP][1] ([i915#1072]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_116949v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-2:         NOTRUN -> [SKIP][3] ([i915#7456])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@read:
    - bat-rpls-2:         NOTRUN -> [SKIP][4] ([i915#2582]) +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-rpls-2:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][6] ([i915#3282])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-rpls-2:         NOTRUN -> [SKIP][7] ([i915#7561])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - bat-rpls-2:         NOTRUN -> [SKIP][8] ([i915#6621])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         NOTRUN -> [DMESG-FAIL][9] ([i915#4258] / [i915#7913])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][10] -> [ABORT][11] ([i915#7911] / [i915#7920] / [i915#7953] / [i915#7982])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-rpls-1/igt@i915_selftest@live@requests.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         NOTRUN -> [ABORT][12] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][13] ([i915#1845]) +14 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_busy@basic.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-rpls-2:         NOTRUN -> [SKIP][14] ([i915#7828]) +7 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-rpls-2:         NOTRUN -> [SKIP][15] ([i915#3637]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-2:         NOTRUN -> [SKIP][16] ([fdo#109285])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][17] ([i915#1849])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][18] -> [FAIL][19] ([i915#7932])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rpls-2:         NOTRUN -> [SKIP][20] ([i915#1072]) +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-2:         NOTRUN -> [SKIP][21] ([i915#3555] / [i915#4579])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-rpls-2:         NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#1845] / [i915#3708])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - bat-rpls-2:         NOTRUN -> [SKIP][23] ([fdo#109295] / [i915#3708]) +3 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {bat-mtlp-8}:       [TIMEOUT][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347


Build changes
-------------

  * Linux: CI_DRM_13139 -> Patchwork_116949v5

  CI-20190529: 20190529
  CI_DRM_13139: 978798460589f59097961875e0ffdbec6a11c9b5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116949v5: 978798460589f59097961875e0ffdbec6a11c9b5 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b4e6d4202541 drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder
4f76de362fad drm/i915/mtl: Add support for PM DEMAND
3afd7306fffe drm/i915/mtl: find the best QGV point for the SAGV configuration
31d309ae4663 drm/i915: modify max_bw to return index to intel_bw_info
6ccce96a4949 drm/i915: extract intel_bw_check_qgv_points()
3adca2ddb9ac drm/i915: store the peak bw per QGV point
c8dd645ed24d drm/i915: update the QGV point frequency calculations
d194efa08717 drm/i915: fix the derating percentage for MTL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/index.html

--===============1531923596427932030==
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
<tr><td><b>Series:</b></td><td>mtl: add support for pmdemand (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116949/">https://patchwork.freedesktop.org/series/116949/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13139 -&gt; Patchwork_116949v5</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_116949v5 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116949v5, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (3): fi-kbl-soraka bat-kbl-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116949v5:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@kms_psr@primary_mmap_gtt:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116949v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-rpls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13139/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116949v5/bat-mtlp-8/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13139 -&gt; Patchwork_116949v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13139: 978798460589f59097961875e0ffdbec6a11c9b5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116949v5: 978798460589f59097961875e0ffdbec6a11c9b5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b4e6d4202541 drm/i915/display: provision to suppress drm_warn in intel_get_crtc_new_encoder<br />
4f76de362fad drm/i915/mtl: Add support for PM DEMAND<br />
3afd7306fffe drm/i915/mtl: find the best QGV point for the SAGV configuration<br />
31d309ae4663 drm/i915: modify max_bw to return index to intel_bw_info<br />
6ccce96a4949 drm/i915: extract intel_bw_check_qgv_points()<br />
3adca2ddb9ac drm/i915: store the peak bw per QGV point<br />
c8dd645ed24d drm/i915: update the QGV point frequency calculations<br />
d194efa08717 drm/i915: fix the derating percentage for MTL</p>

</body>
</html>

--===============1531923596427932030==--
