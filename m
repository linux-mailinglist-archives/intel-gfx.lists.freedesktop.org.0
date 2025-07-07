Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 563F5AFAC26
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 08:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5088810E301;
	Mon,  7 Jul 2025 06:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0953610E301;
 Mon,  7 Jul 2025 06:51:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2217749032511805823=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Fix_d?=
 =?utf-8?q?ma=5Ffence=5Fwait=5Ftimeout=28=29_return_value_handling?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aakash Deep Sarkar" <aakash.deep.sarkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 07 Jul 2025 06:51:59 -0000
Message-ID: <175187111902.138685.5044718628245973911@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250707054551.1940759-1-aakash.deep.sarkar@intel.com>
In-Reply-To: <20250707054551.1940759-1-aakash.deep.sarkar@intel.com>
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

--===============2217749032511805823==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fix dma_fence_wait_timeout() return value handling
URL   : https://patchwork.freedesktop.org/series/151248/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16801 -> Patchwork_151248v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (1): bat-dg2-9 
  Missing    (1): fi-snb-2520m 

New tests
---------

  New tests have been introduced between CI_DRM_16801 and Patchwork_151248v1:

### New IGT tests (17) ###

  * igt@i915_selftest@live@migrate:
    - Statuses : 42 pass(s)
    - Exec time: [1.53, 10.46] s

  * igt@kms_flip@basic-flip-vs-dpms@a-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.86, 0.93] s

  * igt@kms_flip@basic-flip-vs-dpms@b-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.77, 0.86] s

  * igt@kms_flip@basic-flip-vs-dpms@c-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.77, 0.81] s

  * igt@kms_flip@basic-flip-vs-dpms@d-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.78, 0.81] s

  * igt@kms_flip@basic-flip-vs-modeset@a-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.91, 0.94] s

  * igt@kms_flip@basic-flip-vs-modeset@b-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.82, 0.85] s

  * igt@kms_flip@basic-flip-vs-modeset@c-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.78, 0.82] s

  * igt@kms_flip@basic-flip-vs-modeset@d-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.78, 0.81] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [1.14, 2.16] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [1.10, 1.96] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [1.09, 1.97] s

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [1.25, 1.96] s

  * igt@kms_flip@basic-plain-flip@a-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.83, 1.17] s

  * igt@kms_flip@basic-plain-flip@b-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.84, 0.92] s

  * igt@kms_flip@basic-plain-flip@c-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.81, 0.92] s

  * igt@kms_flip@basic-plain-flip@d-dp3:
    - Statuses : 1 dmesg-warn(s) 1 pass(s)
    - Exec time: [0.81, 0.92] s

  

Known issues
------------

  Here are the changes found in Patchwork_151248v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][1] ([i915#4083])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][2] ([i915#4077]) +2 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg2-9:          NOTRUN -> [SKIP][3] ([i915#4079]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adlp-6:         [PASS][4] -> [DMESG-WARN][5] ([i915#13890]) +78 other tests dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-adlp-6/igt@i915_pm_rpm@module-reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-9:          NOTRUN -> [SKIP][6] ([i915#11681] / [i915#6621])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          NOTRUN -> [DMESG-FAIL][7] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][8] -> [DMESG-FAIL][9] ([i915#12061]) +1 other test dmesg-fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][10] ([i915#5190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][11] ([i915#4215] / [i915#5190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - bat-dg2-9:          NOTRUN -> [SKIP][12] ([i915#4212]) +7 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg2-9:          NOTRUN -> [SKIP][13] ([i915#4103] / [i915#4213]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg2-9:          NOTRUN -> [SKIP][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#5354])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][16] ([i915#1072] / [i915#9732]) +3 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg2-9:          NOTRUN -> [SKIP][17] ([i915#3555])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg2-9:          NOTRUN -> [SKIP][18] ([i915#3708])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg2-9:          NOTRUN -> [SKIP][19] ([i915#3708] / [i915#4077]) +1 other test skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-write:
    - bat-dg2-9:          NOTRUN -> [SKIP][20] ([i915#3291] / [i915#3708]) +2 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [ABORT][21] ([i915#14592]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@i915_selftest@live:
    - bat-dg2-8:          [DMESG-FAIL][23] ([i915#12061]) -> [PASS][24] +1 other test pass
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-dg2-8/igt@i915_selftest@live.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-8/igt@i915_selftest@live.html
    - bat-jsl-1:          [DMESG-WARN][25] ([i915#13827]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-jsl-1/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-jsl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@guc:
    - bat-twl-2:          [ABORT][27] ([i915#14365]) -> [PASS][28] +1 other test pass
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-twl-2/igt@i915_selftest@live@guc.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-twl-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][29] ([i915#12061]) -> [PASS][30] +1 other test pass
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][31] ([i915#12061]) -> [PASS][32] +1 other test pass
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        [ABORT][33] ([i915#14592]) -> [INCOMPLETE][34] ([i915#12904]) +1 other test incomplete
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/fi-pnv-d510/igt@dmabuf@all-tests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/fi-pnv-d510/igt@dmabuf@all-tests.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13827]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13827
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14592]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14592
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_16801 -> Patchwork_151248v1

  CI-20190529: 20190529
  CI_DRM_16801: bf8cb3609bc5e03d788964e62c5d1f2c3e141e80 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8438: 8438
  Patchwork_151248v1: bf8cb3609bc5e03d788964e62c5d1f2c3e141e80 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/index.html

--===============2217749032511805823==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fix dma_fence_wait_timeout() return value handling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/151248/">https://patchwork.freedesktop.org/series/151248/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16801 -&gt; Patchwork_151248v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (1): bat-dg2-9 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_16801 and Patchwork_151248v1:</p>
<h3>New IGT tests (17)</h3>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>Statuses : 42 pass(s)</li>
<li>Exec time: [1.53, 10.46] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.86, 0.93] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.77, 0.86] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.77, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.78, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.91, 0.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.82, 0.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.78, 0.82] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.78, 0.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [1.14, 2.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [1.10, 1.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [1.09, 1.97] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [1.25, 1.96] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.83, 1.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.84, 0.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.81, 0.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@d-dp3:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 1 pass(s)</li>
<li>Exec time: [0.81, 0.92] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_151248v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-adlp-6/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +78 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-9/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14592">i915#14592</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-jsl-1/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13827">i915#13827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-twl-2/igt@i915_selftest@live@guc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-twl-2/igt@i915_selftest@live@guc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@dmabuf@all-tests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16801/fi-pnv-d510/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14592">i915#14592</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_151248v1/fi-pnv-d510/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16801 -&gt; Patchwork_151248v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16801: bf8cb3609bc5e03d788964e62c5d1f2c3e141e80 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8438: 8438<br />
  Patchwork_151248v1: bf8cb3609bc5e03d788964e62c5d1f2c3e141e80 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2217749032511805823==--
