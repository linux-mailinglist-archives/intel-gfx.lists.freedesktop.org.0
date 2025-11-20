Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C240C73127
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 10:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B72610E2B0;
	Thu, 20 Nov 2025 09:15:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17E3210E2B0;
 Thu, 20 Nov 2025 09:15:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2409722344439932647=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Account_for_DSC_bubble_ov?=
 =?utf-8?q?erhead_for_horizontal_slices_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Nov 2025 09:15:42 -0000
Message-ID: <176363014209.13267.16611145013468284278@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

--===============2409722344439932647==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Account for DSC bubble overhead for horizontal slices (rev2)
URL   : https://patchwork.freedesktop.org/series/152804/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17573 -> Patchwork_152804v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_152804v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_152804v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-bsw-nick fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_152804v2:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-apl-1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@nullptr:
    - bat-jsl-1:          [PASS][3] -> [SKIP][4] +8 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@fbdev@nullptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@fbdev@nullptr.html

  
Known issues
------------

  Here are the changes found in Patchwork_152804v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_debugfs@read-all-entries:
    - bat-adlp-6:         [PASS][5] -> [DMESG-WARN][6] ([i915#13890])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-adlp-6/igt@core_debugfs@read-all-entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-adlp-6/igt@core_debugfs@read-all-entries.html

  * igt@fbdev@eof:
    - fi-kbl-7567u:       [PASS][7] -> [SKIP][8] +9 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@fbdev@eof.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@fbdev@eof.html
    - bat-apl-1:          [PASS][9] -> [SKIP][10] +9 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@fbdev@eof.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@fbdev@eof.html

  * igt@fbdev@info:
    - fi-skl-6600u:       [PASS][11] -> [SKIP][12] ([i915#1849])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@fbdev@info.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@fbdev@info.html
    - bat-jsl-1:          [PASS][13] -> [SKIP][14] ([i915#1849])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@fbdev@info.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@fbdev@info.html
    - fi-kbl-7567u:       [PASS][15] -> [SKIP][16] ([i915#1849])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@fbdev@info.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@fbdev@info.html
    - bat-apl-1:          [PASS][17] -> [SKIP][18] ([i915#1849])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@fbdev@info.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@fbdev@info.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - bat-jsl-1:          [PASS][19] -> [SKIP][20] ([i915#11190]) +13 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-skl-6600u:       [PASS][21] -> [SKIP][22] ([i915#11190]) +12 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - fi-kbl-7567u:       [PASS][23] -> [SKIP][24] ([i915#11190]) +13 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-apl-1:          [PASS][25] -> [SKIP][26] ([i915#11190]) +12 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-jsl-1:          [PASS][27] -> [SKIP][28] ([i915#15205])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-cursor-plane-move:
    - fi-skl-6600u:       [PASS][29] -> [SKIP][30] +14 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - bat-jsl-1:          [PASS][31] -> [SKIP][32] ([i915#1072]) +3 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-jsl-1:          [PASS][33] -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - bat-adlp-6:         [DMESG-WARN][35] ([i915#13890]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-adlp-6/igt@core_auth@basic-auth.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-adlp-6/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][37] ([i915#12061]) -> [PASS][38] +1 other test pass
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [DMESG-FAIL][39] ([i915#12061]) -> [PASS][40] +1 other test pass
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-dg2-9:          [DMESG-FAIL][41] ([i915#12061]) -> [PASS][42] +1 other test pass
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [DMESG-FAIL][43] ([i915#12061]) -> [PASS][44] +1 other test pass
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][45] ([i915#12061]) -> [PASS][46] +1 other test pass
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][47] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][48] ([i915#12061] / [i915#13929])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-atsm-1/igt@i915_selftest@live.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][49] ([i915#14204]) -> [DMESG-FAIL][50] ([i915#13929])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-atsm-1/igt@i915_selftest@live@mman.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-atsm-1/igt@i915_selftest@live@mman.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-1:          [SKIP][51] ([i915#4103]) -> [SKIP][52] ([i915#11190]) +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - fi-kbl-7567u:       [SKIP][53] -> [SKIP][54] ([i915#11190]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html
    - bat-apl-1:          [SKIP][55] -> [SKIP][56] ([i915#11190]) +3 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@kms_dsc@dsc-basic.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@kms_dsc@dsc-basic.html
    - fi-skl-6600u:       [SKIP][57] -> [SKIP][58] ([i915#11190]) +3 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@kms_dsc@dsc-basic.html
    - bat-jsl-1:          [SKIP][59] ([i915#3555] / [i915#9886]) -> [SKIP][60] ([i915#11190])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_dsc@dsc-basic.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#15205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_17573 -> Patchwork_152804v2

  CI-20190529: 20190529
  CI_DRM_17573: 9e9925b18a12a6226ec09a7ff19af83470b4534b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8635: 8635
  Patchwork_152804v2: 9e9925b18a12a6226ec09a7ff19af83470b4534b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/index.html

--===============2409722344439932647==
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
<tr><td><b>Series:</b></td><td>Account for DSC bubble overhead for horizontal slices (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152804/">https://patchwork.freedesktop.org/series/152804/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17573 -&gt; Patchwork_152804v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_152804v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_152804v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-bsw-nick fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_152804v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@fbdev@nullptr.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152804v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_debugfs@read-all-entries:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-adlp-6/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-adlp-6/igt@core_debugfs@read-all-entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@fbdev@eof.html">SKIP</a> +9 other tests skip</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@fbdev@eof.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@fbdev@eof.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@fbdev@info.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +13 other tests skip</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15205">i915#15205</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@prime_vgem@basic-fence-flip.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-adlp-6/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-adlp-6/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-kbl-7567u/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +2 other tests skip</li>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-apl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-apl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +3 other tests skip</li>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/fi-skl-6600u/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +3 other tests skip</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17573/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886">i915#9886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152804v2/bat-jsl-1/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17573 -&gt; Patchwork_152804v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17573: 9e9925b18a12a6226ec09a7ff19af83470b4534b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8635: 8635<br />
  Patchwork_152804v2: 9e9925b18a12a6226ec09a7ff19af83470b4534b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2409722344439932647==--
