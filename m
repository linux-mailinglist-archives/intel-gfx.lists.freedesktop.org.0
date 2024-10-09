Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C299976BD
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 22:46:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 683F010E806;
	Wed,  9 Oct 2024 20:46:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 998CE10E805;
 Wed,  9 Oct 2024 20:46:16 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8720143527996198773=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Async_flip_+_co?=
 =?utf-8?q?mpression=2C_and_some_plane_cleanups?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 09 Oct 2024 20:46:16 -0000
Message-ID: <172850677662.1212285.11136940573570082321@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
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

--===============8720143527996198773==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Async flip + compression, and some plane cleanups
URL   : https://patchwork.freedesktop.org/series/139807/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15509 -> Patchwork_139807v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_139807v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139807v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-rpls-4 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139807v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-kbl-2:          [PASS][1] -> [FAIL][2] +4 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/bat-kbl-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/bat-kbl-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
    - fi-kbl-guc:         [PASS][3] -> [FAIL][4] +4 other tests fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-guc/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-guc/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-cfl-guc:         [PASS][5] -> [FAIL][6] +8 other tests fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-guc/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-guc/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
    - fi-kbl-x1275:       [PASS][7] -> [FAIL][8] +4 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-x1275/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-x1275/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][9] -> [FAIL][10] +8 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html

  
#### Warnings ####

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - fi-kbl-7567u:       [DMESG-WARN][11] ([i915#11621]) -> [DMESG-FAIL][12] +4 other tests dmesg-fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_addfb_basic@basic-x-tiled-legacy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - fi-cfl-8109u:       [DMESG-WARN][13] ([i915#11621]) -> [DMESG-FAIL][14] +5 other tests dmesg-fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8109u/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8109u/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_busy@basic:
    - fi-kbl-7567u:       [DMESG-WARN][15] ([i915#11621] / [i915#180]) -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_busy@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-7567u:       [DMESG-WARN][17] ([i915#180]) -> [FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-kbl-7567u:       [DMESG-WARN][19] ([i915#11621] / [i915#180]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][21] ([i915#11621]) -> [FAIL][22] +2 other tests fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
    - fi-kbl-7567u:       [DMESG-WARN][23] ([i915#11621]) -> [FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_139807v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][25] -> [ABORT][26] ([i915#12216]) +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/bat-mtlp-8/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-kbl-x1275:       [PASS][27] -> [SKIP][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-cfl-8700k:       [PASS][29] -> [SKIP][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - bat-kbl-2:          [PASS][31] -> [SKIP][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/bat-kbl-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/bat-kbl-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-kbl-guc:         [PASS][33] -> [SKIP][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-cfl-guc:         [PASS][35] -> [SKIP][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [DMESG-WARN][37] ([i915#11621] / [i915#180]) -> [DMESG-WARN][38] ([i915#11621] / [i915#180] / [i915#1982])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@i915_module_load@reload.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-cfl-8109u:       [DMESG-WARN][39] ([i915#11621]) -> [SKIP][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
    - fi-kbl-7567u:       [DMESG-WARN][41] ([i915#11621]) -> [SKIP][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982


Build changes
-------------

  * Linux: CI_DRM_15509 -> Patchwork_139807v1

  CI-20190529: 20190529
  CI_DRM_15509: d5a8081b7a2695cbbd42b6e67c25104c1b86d23b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8061: 8061
  Patchwork_139807v1: d5a8081b7a2695cbbd42b6e67c25104c1b86d23b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/index.html

--===============8720143527996198773==
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
<tr><td><b>Series:</b></td><td>drm/i915: Async flip + compression, and some plane cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139807/">https://patchwork.freedesktop.org/series/139807/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15509 -&gt; Patchwork_139807v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_139807v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139807v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-rpls-4 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139807v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/bat-kbl-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/bat-kbl-2/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">FAIL</a> +4 other tests fail</li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-guc/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-guc/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-guc/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-guc/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">FAIL</a> +8 other tests fail</li>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-x1275/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-x1275/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">FAIL</a> +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">FAIL</a> +8 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_addfb_basic@basic-x-tiled-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_addfb_basic@basic-x-tiled-legacy.html">DMESG-FAIL</a> +4 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8109u/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8109u/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">DMESG-FAIL</a> +5 other tests dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_busy@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_busy@basic.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> +2 other tests fail</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139807v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/bat-mtlp-8/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12216">i915#12216</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-x1275/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8700k/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/bat-kbl-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/bat-kbl-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-guc/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-cfl-8109u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15509/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139807v1/fi-kbl-7567u/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15509 -&gt; Patchwork_139807v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15509: d5a8081b7a2695cbbd42b6e67c25104c1b86d23b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8061: 8061<br />
  Patchwork_139807v1: d5a8081b7a2695cbbd42b6e67c25104c1b86d23b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8720143527996198773==--
