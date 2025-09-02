Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7F3B3FD5C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 13:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B49C10E665;
	Tue,  2 Sep 2025 11:08:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 580D310E665;
 Tue,  2 Sep 2025 11:08:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7117054506117075479=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_User_readable_error_codes?=
 =?utf-8?q?_on_atomic=5Fioctl_failure_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Sep 2025 11:08:51 -0000
Message-ID: <175681133135.292949.1664919269409945335@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250902-atomic-v4-0-a97b4bed969b@intel.com>
In-Reply-To: <20250902-atomic-v4-0-a97b4bed969b@intel.com>
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

--===============7117054506117075479==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: User readable error codes on atomic_ioctl failure (rev3)
URL   : https://patchwork.freedesktop.org/series/152275/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17111 -> Patchwork_152275v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152275v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152275v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152275v3:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic:
    - bat-adlp-6:         [PASS][1] -> [ABORT][2] +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-adlp-6/igt@kms_busy@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-adlp-6/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4] +8 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - bat-dg2-14:         [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-14/igt@kms_busy@basic@flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-14/igt@kms_busy@basic@flip.html
    - fi-elk-e7500:       [PASS][7] -> [DMESG-WARN][8] +10 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-elk-e7500/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-elk-e7500/igt@kms_busy@basic@flip.html
    - bat-mtlp-9:         [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-mtlp-9/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-mtlp-9/igt@kms_busy@basic@flip.html
    - bat-rpls-4:         [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-rpls-4/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-rpls-4/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][13] -> [ABORT][14] +1 other test abort
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-cfl-8109u/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-hsw-4770:        [PASS][15] -> [DMESG-WARN][16] +10 other tests dmesg-warn
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-hsw-4770/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-hsw-4770/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-mtlp-8:         [PASS][17] -> [DMESG-WARN][18] +10 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adls-6:         [PASS][19] -> [DMESG-WARN][20] +8 other tests dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-arlh-3:         [PASS][21] -> [DMESG-WARN][22] +10 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arlh-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arlh-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-dg1-7:          [PASS][23] -> [DMESG-WARN][24] +8 other tests dmesg-warn
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg1-7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg1-7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - fi-glk-j4005:       [PASS][25] -> [DMESG-WARN][26] +8 other tests dmesg-warn
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-adlp-9:         [PASS][27] -> [DMESG-WARN][28] +8 other tests dmesg-warn
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-twl-1:          [PASS][29] -> [DMESG-WARN][30] +10 other tests dmesg-warn
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-twl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-twl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
    - bat-apl-1:          [PASS][31] -> [DMESG-WARN][32] +8 other tests dmesg-warn
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-skl-6600u:       [PASS][33] -> [DMESG-WARN][34] +10 other tests dmesg-warn
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - bat-arls-6:         [PASS][35] -> [DMESG-WARN][36] +8 other tests dmesg-warn
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
    - fi-cfl-guc:         [PASS][37] -> [DMESG-WARN][38] +8 other tests dmesg-warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - bat-twl-2:          [PASS][39] -> [DMESG-WARN][40] +10 other tests dmesg-warn
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-twl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-twl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - bat-dg2-11:         [PASS][41] -> [DMESG-WARN][42] +8 other tests dmesg-warn
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - fi-ivb-3770:        [PASS][43] -> [DMESG-WARN][44] +10 other tests dmesg-warn
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - bat-dg2-8:          [PASS][45] -> [DMESG-WARN][46] +13 other tests dmesg-warn
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - fi-bsw-n3050:       [PASS][47] -> [DMESG-WARN][48] +10 other tests dmesg-warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
    - bat-arls-5:         [PASS][49] -> [DMESG-WARN][50] +8 other tests dmesg-warn
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arls-5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arls-5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-ilk-650:         [PASS][51] -> [DMESG-WARN][52] +10 other tests dmesg-warn
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-ilk-650/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-ilk-650/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
    - fi-tgl-1115g4:      [PASS][53] -> [DMESG-WARN][54] +8 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic@pipe-a-dp-1:
    - bat-dg2-9:          [PASS][55] -> [DMESG-WARN][56] +13 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-glk-j4005:       [PASS][57] -> [ABORT][58] +1 other test abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_pm_backlight@basic-brightness@edp-1:
    - bat-jsl-1:          [PASS][59] -> [DMESG-WARN][60] +10 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
    - bat-rplp-1:         [PASS][61] -> [DMESG-WARN][62] +10 other tests dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_152275v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-bsw-nick:        [PASS][63] -> [ABORT][64] ([i915#12904]) +1 other test abort
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][65] ([i915#12061]) -> [PASS][66] +1 other test pass
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-mtlp-8/igt@i915_selftest@live.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][67] ([i915#12061]) -> [PASS][68] +1 other test pass
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904


Build changes
-------------

  * Linux: CI_DRM_17111 -> Patchwork_152275v3

  CI-20190529: 20190529
  CI_DRM_17111: 1f77b659779b81cb61032b61cd63b1425c0beee6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8519: 8519
  Patchwork_152275v3: 1f77b659779b81cb61032b61cd63b1425c0beee6 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/index.html

--===============7117054506117075479==
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
<tr><td><b>Series:</b></td><td>User readable error codes on atomic_ioctl failure (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152275/">https://patchwork.freedesktop.org/series/152275/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17111 -&gt; Patchwork_152275v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152275v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152275v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152275v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-adlp-6/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-adlp-6/igt@kms_busy@basic.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-cfl-8700k/igt@kms_busy@basic@flip.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-14/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-14/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-elk-e7500/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-elk-e7500/igt@kms_busy@basic@flip.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-mtlp-9/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-mtlp-9/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-rpls-4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-rpls-4/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-cfl-8109u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-cfl-8109u/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-hsw-4770/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-hsw-4770/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-mtlp-8/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-adls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arlh-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arlh-3/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg1-7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg1-7/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-twl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-twl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arls-6/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-twl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-twl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-11/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-8/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +13 other tests dmesg-warn</li>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-bsw-n3050/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arls-5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arls-5/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-ilk-650/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-ilk-650/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic@pipe-a-dp-1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-dg2-9/igt@kms_dsc@dsc-basic@pipe-a-dp-1.html">DMESG-WARN</a> +13 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-glk-j4005/igt@kms_flip@basic-flip-vs-dpms.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-jsl-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-rplp-1/igt@kms_pm_backlight@basic-brightness@edp-1.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152275v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@dmabuf@all-tests@dma_fence_chain:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17111/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v3/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17111 -&gt; Patchwork_152275v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17111: 1f77b659779b81cb61032b61cd63b1425c0beee6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8519: 8519<br />
  Patchwork_152275v3: 1f77b659779b81cb61032b61cd63b1425c0beee6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7117054506117075479==--
