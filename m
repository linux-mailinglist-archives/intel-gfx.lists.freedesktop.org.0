Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C15D99DFC0
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 09:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485D510E52E;
	Tue, 15 Oct 2024 07:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 387D710E0DB;
 Tue, 15 Oct 2024 07:53:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4988265651698505027=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Remove_unused_u?=
 =?utf-8?q?nderrun_irq/reporting_bits_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sai Teja Pottumuttu" <sai.teja.pottumuttu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2024 07:53:42 -0000
Message-ID: <172897882222.1268230.10100568255234359247@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
In-Reply-To: <20241015065903.3469512-1-sai.teja.pottumuttu@intel.com>
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

--===============4988265651698505027==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove unused underrun irq/reporting bits (rev2)
URL   : https://patchwork.freedesktop.org/series/139955/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15536 -> Patchwork_139955v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_139955v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - bat-dg2-14:         NOTRUN -> [FAIL][1] ([i915#12292])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-dg2-14/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@nb-await@vecs0:
    - bat-rpls-4:         [DMESG-WARN][2] ([i915#12379]) -> [PASS][3] +1 other test pass
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@i915_selftest@live:
    - bat-arls-1:         [DMESG-FAIL][4] ([i915#10262] / [i915#10341] / [i915#12133]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-arls-1/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-arls-1/igt@i915_selftest@live.html
    - bat-twl-1:          [INCOMPLETE][6] ([i915#12133] / [i915#9413]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-1/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-1/igt@i915_selftest@live.html
    - bat-twl-2:          [INCOMPLETE][8] ([i915#12133] / [i915#9413]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-2/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-twl-2:          [INCOMPLETE][10] ([i915#12382] / [i915#9413]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-2/igt@i915_selftest@live@gt_lrc.html
    - bat-twl-1:          [INCOMPLETE][12] ([i915#10886] / [i915#9413]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-1/igt@i915_selftest@live@gt_lrc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@guc_hang:
    - bat-arls-1:         [DMESG-WARN][14] ([i915#10341]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-arls-1/igt@i915_selftest@live@guc_hang.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-arls-1/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-arls-1:         [DMESG-FAIL][16] ([i915#10262]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html

  
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12292
  [i915#12379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12379
  [i915#12382]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12382
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15536 -> Patchwork_139955v2

  CI-20190529: 20190529
  CI_DRM_15536: f6087efed4047ae323633876dc9b3222bee4ec41 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8072: 8072
  Patchwork_139955v2: f6087efed4047ae323633876dc9b3222bee4ec41 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/index.html

--===============4988265651698505027==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove unused underrun irq/reporting bits (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139955/">https://patchwork.freedesktop.org/series/139955/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15536 -&gt; Patchwork_139955v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139955v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>bat-dg2-14:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-dg2-14/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12292">i915#12292</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12379">i915#12379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-arls-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-arls-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-1/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-1/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12382">i915#12382</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-2/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-twl-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_hang:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-arls-1/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-arls-1/igt@i915_selftest@live@guc_hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15536/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139955v2/bat-arls-1/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15536 -&gt; Patchwork_139955v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15536: f6087efed4047ae323633876dc9b3222bee4ec41 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8072: 8072<br />
  Patchwork_139955v2: f6087efed4047ae323633876dc9b3222bee4ec41 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4988265651698505027==--
