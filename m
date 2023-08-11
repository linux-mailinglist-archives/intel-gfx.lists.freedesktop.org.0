Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A357797D1
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 21:34:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1E910E6F2;
	Fri, 11 Aug 2023 19:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6571510E6EB;
 Fri, 11 Aug 2023 19:34:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4EDC4A0078;
 Fri, 11 Aug 2023 19:34:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3961732488532911001=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Date: Fri, 11 Aug 2023 19:34:08 -0000
Message-ID: <169178244831.3115.9139940409066314604@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230811182011.546026-1-zhanjun.dong@intel.com>
In-Reply-To: <20230811182011.546026-1-zhanjun.dong@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Avoid_circular_locking_dependency_when_flush_delayed_w?=
 =?utf-8?q?ork_on_gt_reset_=28rev5=29?=
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

--===============3961732488532911001==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Avoid circular locking dependency when flush delayed work on gt reset (rev5)
URL   : https://patchwork.freedesktop.org/series/118898/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13510 -> Patchwork_118898v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_118898v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_118898v5, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_118898v5:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_pread_basic:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-kbl-soraka/igt@gem_tiled_pread_basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-kbl-soraka/igt@gem_tiled_pread_basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_118898v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adln-1:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@gem_lmem_swapping@parallel-random-engines.html
    - bat-rplp-1:         NOTRUN -> [SKIP][4] ([i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - bat-adlp-6:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-6:         NOTRUN -> [SKIP][6] ([i915#6621])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         NOTRUN -> [SKIP][7] ([i915#6621])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         NOTRUN -> [SKIP][8] ([i915#6621])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-9:         [PASS][9] -> [INCOMPLETE][10] ([i915#4983] / [i915#7913])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_pm:
    - bat-adln-1:         NOTRUN -> [DMESG-FAIL][11] ([i915#4258])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [PASS][12] -> [DMESG-WARN][13] ([i915#6367])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rplp-1:         NOTRUN -> [SKIP][14] ([i915#7828])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-adln-1:         NOTRUN -> [SKIP][15] ([i915#7828])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-adlp-6:         NOTRUN -> [SKIP][16] ([i915#7828])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - fi-apl-guc:         NOTRUN -> [SKIP][17] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-apl-guc/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][18] ([i915#7828])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adln-1:         NOTRUN -> [SKIP][19] ([i915#3555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-adlp-6:         NOTRUN -> [SKIP][20] ([i915#3555])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-read:
    - bat-rplp-1:         NOTRUN -> [SKIP][21] ([i915#3708]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-adln-1:         NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#3291]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@prime_vgem@basic-write.html
    - bat-adlp-6:         NOTRUN -> [SKIP][23] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [DMESG-FAIL][24] ([i915#8585]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][26] ([i915#5334] / [i915#7872]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-glk-j4005:       [DMESG-FAIL][28] ([i915#5334]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [DMESG-FAIL][30] ([i915#7059]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [DMESG-FAIL][32] ([i915#8497]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-8:         [DMESG-WARN][34] ([i915#6367]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@i915_selftest@live@slpc.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:
    - bat-adlp-6:         [ABORT][36] ([i915#7977] / [i915#8469] / [i915#8668]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-adln-1:         [ABORT][38] ([i915#8442] / [i915#8668]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         [ABORT][40] ([i915#8802]) -> [SKIP][41] ([i915#6645])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [ABORT][42] ([i915#8260] / [i915#8668]) -> [SKIP][43] ([i915#3555])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8802]: https://gitlab.freedesktop.org/drm/intel/issues/8802


Build changes
-------------

  * Linux: CI_DRM_13510 -> Patchwork_118898v5

  CI-20190529: 20190529
  CI_DRM_13510: 3e03d3e65440f4d60f19ff7b0313f3faf70de813 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7432: 1b874bbe5e3576f89f5b6abf15a56917a96ec1ad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118898v5: 3e03d3e65440f4d60f19ff7b0313f3faf70de813 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6e6acbea108a drm/i915: Avoid circular locking dependency when flush delayed work on gt reset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/index.html

--===============3961732488532911001==
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
<tr><td><b>Series:</b></td><td>drm/i915: Avoid circular locking dependency when flush delayed work on gt reset (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118898/">https://patchwork.freedesktop.org/series/118898/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13510 -&gt; Patchwork_118898v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_118898v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_118898v5, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_118898v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_tiled_pread_basic:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-kbl-soraka/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-kbl-soraka/igt@gem_tiled_pread_basic.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118898v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-apl-guc/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) +2 similar issues</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/fi-glk-j4005/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-adln-1/igt@kms_psr@sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8802">i915#8802</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13510/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118898v5/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13510 -&gt; Patchwork_118898v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13510: 3e03d3e65440f4d60f19ff7b0313f3faf70de813 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7432: 1b874bbe5e3576f89f5b6abf15a56917a96ec1ad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118898v5: 3e03d3e65440f4d60f19ff7b0313f3faf70de813 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6e6acbea108a drm/i915: Avoid circular locking dependency when flush delayed work on gt reset</p>

</body>
</html>

--===============3961732488532911001==--
