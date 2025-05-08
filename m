Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8246EAAFDA6
	for <lists+intel-gfx@lfdr.de>; Thu,  8 May 2025 16:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23D3F10E925;
	Thu,  8 May 2025 14:47:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4870A10E925;
 Thu,  8 May 2025 14:47:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0640121161316950938=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/guc=3A_Enable_DU?=
 =?utf-8?q?AL=5FQUEUE=5FWA_for_newer_platforms_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Julia Filipchuk" <julia.filipchuk@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 08 May 2025 14:47:57 -0000
Message-ID: <174671567728.59893.505077714064184132@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250502223924.94628-1-julia.filipchuk@intel.com>
In-Reply-To: <20250502223924.94628-1-julia.filipchuk@intel.com>
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

--===============0640121161316950938==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms (rev4)
URL   : https://patchwork.freedesktop.org/series/147987/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16516 -> Patchwork_147987v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_147987v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][1] -> [DMESG-FAIL][2] ([i915#14243]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-arlh-3/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@dmabuf:
    - bat-dg2-9:          [PASS][3] -> [ABORT][4] ([i915#14201])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-9/igt@i915_selftest@live@dmabuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-9/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@hugepages:
    - bat-arlh-2:         NOTRUN -> [DMESG-FAIL][5] ([i915#14243])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-2/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-11:        [PASS][6] -> [ABORT][7] ([i915#13696]) +1 other test abort
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-adlp-11/igt@i915_selftest@live@workarounds.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-adlp-11/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [PASS][8] -> [DMESG-FAIL][9] ([i915#12061])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-11/igt@i915_selftest@live@workarounds.html
    - bat-dg2-14:         [PASS][10] -> [DMESG-FAIL][11] ([i915#12061])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [PASS][12] -> [DMESG-FAIL][13] ([i915#12061]) +1 other test dmesg-fail
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [PASS][14] -> [DMESG-WARN][15] ([i915#13735]) +48 other tests dmesg-warn
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [PASS][16] -> [DMESG-WARN][17] ([i915#13735] / [i915#13890]) +49 other tests dmesg-warn
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [DMESG-FAIL][18] ([i915#12061]) -> [PASS][19] +1 other test pass
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-mtlp-8/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-dg2-11:         [INCOMPLETE][20] -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-11/igt@i915_selftest@live@active.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-11/igt@i915_selftest@live@active.html
    - bat-dg2-14:         [ABORT][22] ([i915#14201]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-14/igt@i915_selftest@live@active.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-14/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gt_pm:
    - bat-arlh-2:         [INCOMPLETE][24] ([i915#14046]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-arlh-2/igt@i915_selftest@live@gt_pm.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][26] ([i915#12061]) -> [PASS][27] +1 other test pass
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][28] ([i915#14046]) -> [DMESG-FAIL][29] ([i915#14243])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-arlh-2/igt@i915_selftest@live.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-2/igt@i915_selftest@live.html
    - bat-dg2-9:          [DMESG-FAIL][30] ([i915#12061]) -> [ABORT][31] ([i915#12061] / [i915#13696] / [i915#14201])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-9/igt@i915_selftest@live.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-9/igt@i915_selftest@live.html
    - bat-dg2-11:         [INCOMPLETE][32] ([i915#14212]) -> [DMESG-FAIL][33] ([i915#12061])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-11/igt@i915_selftest@live.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-11/igt@i915_selftest@live.html
    - bat-dg2-14:         [ABORT][34] ([i915#13696] / [i915#14201]) -> [DMESG-FAIL][35] ([i915#12061])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-14/igt@i915_selftest@live.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-14/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13696]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14212
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243


Build changes
-------------

  * Linux: CI_DRM_16516 -> Patchwork_147987v4

  CI-20190529: 20190529
  CI_DRM_16516: 2862c51f227a36e59ee4a9bb90b690c9855a6246 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8357: 8357
  Patchwork_147987v4: 2862c51f227a36e59ee4a9bb90b690c9855a6246 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/index.html

--===============0640121161316950938==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/147987/">https://patchwork.freedesktop.org/series/147987/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16516 -&gt; Patchwork_147987v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_147987v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-9/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-9/igt@i915_selftest@live@dmabuf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-adlp-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-adlp-11/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696">i915#13696</a>) +1 other test abort</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +48 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +49 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-11/igt@i915_selftest@live@active.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-11/igt@i915_selftest@live@active.html">PASS</a></li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-14/igt@i915_selftest@live@active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-14/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-arlh-2/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>)</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-9/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-9/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696">i915#13696</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-11/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14212">i915#14212</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16516/bat-dg2-14/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13696">i915#13696</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147987v4/bat-dg2-14/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16516 -&gt; Patchwork_147987v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16516: 2862c51f227a36e59ee4a9bb90b690c9855a6246 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8357: 8357<br />
  Patchwork_147987v4: 2862c51f227a36e59ee4a9bb90b690c9855a6246 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0640121161316950938==--
