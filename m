Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57148C6AA59
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 17:32:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E7BA10E4F5;
	Tue, 18 Nov 2025 16:32:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF5A010E4F5;
 Tue, 18 Nov 2025 16:32:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3304395779290960059=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_chang?=
 =?utf-8?q?e_pipe_order_for_platforms_with_big_joiner_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Nov 2025 16:32:23 -0000
Message-ID: <176348354377.6739.11821132856341102683@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251118095801.2248786-1-jani.nikula@intel.com>
In-Reply-To: <20251118095801.2248786-1-jani.nikula@intel.com>
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

--===============3304395779290960059==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: change pipe order for platforms with big joiner (rev2)
URL   : https://patchwork.freedesktop.org/series/157704/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17565 -> Patchwork_157704v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_157704v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_157704v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_157704v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - fi-rkl-11600:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/fi-rkl-11600/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/fi-rkl-11600/igt@i915_module_load@load.html
    - bat-twl-1:          [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-twl-1/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-twl-1/igt@i915_module_load@load.html
    - bat-twl-2:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-twl-2/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-twl-2/igt@i915_module_load@load.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][7] -> [FAIL][8] +20 other tests fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-6:
    - bat-mtlp-9:         [PASS][9] -> [FAIL][10] +20 other tests fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-6.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-6.html

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - bat-rplp-1:         [PASS][11] -> [FAIL][12] +20 other tests fail
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html
    - fi-tgl-1115g4:      [PASS][13] -> [FAIL][14] +20 other tests fail
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/fi-tgl-1115g4/igt@kms_pipe_crc_basic@hang-read-crc.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/fi-tgl-1115g4/igt@kms_pipe_crc_basic@hang-read-crc.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:
    - bat-arls-5:         [PASS][15] -> [FAIL][16] +20 other tests fail
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-hdmi-a-1:
    - bat-adls-6:         [PASS][17] -> [FAIL][18] +20 other tests fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adls-6/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-hdmi-a-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adls-6/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-arlh-3:         [PASS][19] -> [FAIL][20] +20 other tests fail
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-dg1-7:          [PASS][21] -> [FAIL][22] +20 other tests fail
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg1-7/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg1-7/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-adlp-9:         [PASS][23] -> [FAIL][24] +20 other tests fail
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc.html
    - bat-rpls-4:         [PASS][25] -> [FAIL][26] +20 other tests fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-rpls-4/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-rpls-4/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][27] -> [FAIL][28] +20 other tests fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-9:          [PASS][29] -> [FAIL][30] +20 other tests fail
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-edp-1:
    - bat-mtlp-8:         [PASS][31] -> [FAIL][32] +20 other tests fail
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-edp-1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-mtlp-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-dg2-14:         [PASS][33] -> [FAIL][34] +20 other tests fail
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-14/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-14/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
    - bat-arls-6:         [PASS][35] -> [FAIL][36] +20 other tests fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3:
    - bat-adlp-6:         [PASS][37] -> [FAIL][38] +20 other tests fail
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_157704v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-6:         [PASS][39] -> [ABORT][40] ([i915#14365]) +1 other test abort
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adlp-6/igt@i915_selftest@live.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][41] -> [DMESG-FAIL][42] ([i915#12061]) +1 other test dmesg-fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][43] -> [DMESG-FAIL][44] ([i915#12061]) +1 other test dmesg-fail
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][45] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][46] ([i915#12061] / [i915#14204])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][47] ([i915#13929]) -> [DMESG-FAIL][48] ([i915#14204])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live@mman.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365


Build changes
-------------

  * Linux: CI_DRM_17565 -> Patchwork_157704v2

  CI-20190529: 20190529
  CI_DRM_17565: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8631: 8631
  Patchwork_157704v2: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/index.html

--===============3304395779290960059==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: change pipe order for platforms with big joiner (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157704/">https://patchwork.freedesktop.org/series/157704/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17565 -&gt; Patchwork_157704v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_157704v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_157704v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_157704v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/fi-rkl-11600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/fi-rkl-11600/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-twl-1/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-twl-1/igt@i915_module_load@load.html">ABORT</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-twl-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-twl-2/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-1.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-6:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-mtlp-9/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-dp-6.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-rplp-1/igt@kms_pipe_crc_basic@hang-read-crc.html">FAIL</a> +20 other tests fail</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/fi-tgl-1115g4/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/fi-tgl-1115g4/igt@kms_pipe_crc_basic@hang-read-crc.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-arls-5/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-3.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-hdmi-a-1:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adls-6/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adls-6/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-hdmi-a-1.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc.html">FAIL</a> +20 other tests fail</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg1-7/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg1-7/igt@kms_pipe_crc_basic@nonblocking-crc.html">FAIL</a> +20 other tests fail</li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc.html">FAIL</a> +20 other tests fail</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-rpls-4/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-rpls-4/igt@kms_pipe_crc_basic@nonblocking-crc.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-edp-1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-mtlp-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-mtlp-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-edp-1.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-14/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-14/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">FAIL</a> +20 other tests fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adlp-6/igt@kms_pipe_crc_basic@read-crc@pipe-c-dp-3.html">FAIL</a> +20 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_157704v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17565/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157704v2/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17565 -&gt; Patchwork_157704v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17565: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8631: 8631<br />
  Patchwork_157704v2: b603326a067916accf680fd623f4fc3c22bba487 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3304395779290960059==--
