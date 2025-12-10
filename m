Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DB2CB2BDB
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 11:51:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DF1E10E6CF;
	Wed, 10 Dec 2025 10:51:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7DA10E188;
 Wed, 10 Dec 2025 10:51:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1899635816315217274=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Panel?=
 =?utf-8?q?_Replay_BW_optimization_for_DP2=2E0_tunneling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Dec 2025 10:51:34 -0000
Message-ID: <176536389444.73489.8023653169076021991@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251210052128.1857581-1-animesh.manna@intel.com>
In-Reply-To: <20251210052128.1857581-1-animesh.manna@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1899635816315217274==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling
URL   : https://patchwork.freedesktop.org/series/158737/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17651 -> Patchwork_158737v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_158737v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158737v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/index.html

Participating hosts (35 -> 38)
------------------------------

  Additional (4): bat-twl-1 bat-kbl-2 fi-kbl-7567u fi-bsw-n3050 
  Missing    (1): bat-dg2-13 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158737v1:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [ABORT][1] ([i915#15399]) -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/fi-hsw-4770/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-hsw-4770/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hugepages:
    - bat-apl-1:          [ABORT][3] ([i915#15399]) -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-apl-1/igt@i915_selftest@live@hugepages.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-apl-1/igt@i915_selftest@live@hugepages.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17651 and Patchwork_158737v1:

### New IGT tests (1) ###

  * igt@i915_selftest@addfb25-x-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_158737v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][5] ([i915#1849])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][6] ([i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html
    - bat-twl-1:          NOTRUN -> [SKIP][8] ([i915#10213] / [i915#11671]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][9] +23 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][10] +21 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-twl-1:          NOTRUN -> [SKIP][11] ([i915#11031])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-twl-1:          NOTRUN -> [SKIP][12] ([i915#10209] / [i915#11681])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - fi-bsw-n3050:       NOTRUN -> [ABORT][13] ([i915#15399]) +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-bsw-n3050/igt@i915_selftest@live.html
    - bat-twl-1:          NOTRUN -> [ABORT][14] ([i915#14365] / [i915#15399])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hugepages:
    - bat-twl-1:          NOTRUN -> [ABORT][15] ([i915#15399])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@i915_selftest@live@hugepages.html
    - bat-kbl-2:          NOTRUN -> [ABORT][16] ([i915#15399]) +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@i915_selftest@live@hugepages.html
    - fi-kbl-7567u:       NOTRUN -> [ABORT][17] ([i915#15399]) +1 other test abort
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][18] -> [DMESG-FAIL][19] ([i915#12061])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][20] -> [DMESG-FAIL][21] ([i915#12061])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [PASS][22] -> [DMESG-FAIL][23] ([i915#12061])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-8:         [PASS][24] -> [DMESG-FAIL][25] ([i915#12061])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-write:
    - bat-twl-1:          NOTRUN -> [SKIP][26] ([i915#7707]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-twl-1:          NOTRUN -> [SKIP][27] ([i915#11030] / [i915#11731]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-twl-1:          NOTRUN -> [SKIP][28] ([i915#9886])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][29] +12 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html
    - bat-twl-1:          NOTRUN -> [SKIP][30] ([i915#11032])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-kbl-2:          NOTRUN -> [SKIP][31] ([i915#11190]) +16 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-twl-1:          NOTRUN -> [SKIP][32] ([i915#8809])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-read:
    - bat-twl-1:          NOTRUN -> [SKIP][33] ([i915#10212] / [i915#3708])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-twl-1:          NOTRUN -> [SKIP][34] ([i915#10214] / [i915#3708])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-twl-1:          NOTRUN -> [SKIP][35] ([i915#10216] / [i915#3708])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlp-6:         [DMESG-WARN][36] ([i915#14872]) -> [PASS][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][38] ([i915#12061]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [DMESG-FAIL][40] ([i915#12061]) -> [PASS][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - fi-kbl-x1275:       [ABORT][42] ([i915#15412]) -> [ABORT][43] ([i915#15399]) +1 other test abort
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/fi-kbl-x1275/igt@i915_selftest@live.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-x1275/igt@i915_selftest@live.html
    - bat-atsm-1:         [INCOMPLETE][44] ([i915#12061] / [i915#15157] / [i915#15399]) -> [INCOMPLETE][45] ([i915#15157])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-atsm-1/igt@i915_selftest@live.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][46] ([i915#13929]) -> [DMESG-FAIL][47] ([i915#14204])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-atsm-1/igt@i915_selftest@live@mman.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
  [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14872]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14872
  [i915#15157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157
  [i915#15399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399
  [i915#15412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15412
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_17651 -> Patchwork_158737v1

  CI-20190529: 20190529
  CI_DRM_17651: 46691bf8a4a5a4887c079a41007e98b037e06ffb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8662: 9410b6926f317e8bf824502394e09ee8753ff65e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_158737v1: 46691bf8a4a5a4887c079a41007e98b037e06ffb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/index.html

--===============1899635816315217274==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/158737/">https://patchwork.freedesktop.org/series/158737/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17651 -&gt; Patchwork_158737v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_158737v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_158737v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/index.html</p>
<h2>Participating hosts (35 -&gt; 38)</h2>
<p>Additional (4): bat-twl-1 bat-kbl-2 fi-kbl-7567u fi-bsw-n3050 <br />
  Missing    (1): bat-dg2-13 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_158737v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/fi-hsw-4770/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-hsw-4770/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-apl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-apl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17651 and Patchwork_158737v1:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@addfb25-x-tiled-legacy:<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158737v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-bsw-n3050/igt@gem_lmem_swapping@random-engines.html">SKIP</a> +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031">i915#11031</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209">i915#10209</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-bsw-n3050/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) +1 other test abort</li>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>)</li>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) +1 other test abort</li>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030">i915#11030</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731">i915#11731</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> +12 other tests skip</li>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032">i915#11032</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-kbl-2/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809">i915#8809</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212">i915#10212</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214">i915#10214</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-twl-1/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216">i915#10216</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14872">i915#14872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-adlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/fi-kbl-x1275/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15412">i915#15412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/fi-kbl-x1275/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) +1 other test abort</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15399">i915#15399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-atsm-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15157">i915#15157</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17651/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17651 -&gt; Patchwork_158737v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17651: 46691bf8a4a5a4887c079a41007e98b037e06ffb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8662: 9410b6926f317e8bf824502394e09ee8753ff65e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_158737v1: 46691bf8a4a5a4887c079a41007e98b037e06ffb @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1899635816315217274==--
