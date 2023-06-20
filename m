Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BC57376CC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 23:44:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C55310E38F;
	Tue, 20 Jun 2023 21:44:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB10310E1A0;
 Tue, 20 Jun 2023 21:44:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5586AADE0;
 Tue, 20 Jun 2023 21:44:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8554078900067218582=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 20 Jun 2023 21:44:15 -0000
Message-ID: <168729745564.10443.875896709157346936@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230620173242.26923-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Init_DDI_ports_in_VBT_order_=28rev4=29?=
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

--===============8554078900067218582==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Init DDI ports in VBT order (rev4)
URL   : https://patchwork.freedesktop.org/series/114200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13296 -> Patchwork_114200v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_114200v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-11:        NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@debugfs_test@basic-hwmon.html

  * igt@gem_exec_parallel@engines@basic:
    - bat-mtlp-8:         [PASS][2] -> [FAIL][3] ([i915#8386])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-11:        NOTRUN -> [SKIP][4] ([i915#3282])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][5] -> [INCOMPLETE][6] ([i915#7156] / [i915#7913])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][7] -> [DMESG-FAIL][8] ([i915#5334] / [i915#7872])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [PASS][9] -> [DMESG-FAIL][10] ([i915#7059])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
    - bat-mtlp-6:         [PASS][11] -> [DMESG-FAIL][12] ([i915#7059])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [PASS][13] -> [DMESG-FAIL][14] ([i915#4258] / [i915#7913])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [PASS][15] -> [DMESG-WARN][16] ([i915#6367])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-dg2-8:          NOTRUN -> [SKIP][17] ([i915#6645])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_busy@basic@modeset:
    - bat-adlp-11:        NOTRUN -> [ABORT][18] ([i915#4423])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-dg2-8:          NOTRUN -> [SKIP][19] ([i915#7828])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][20] -> [FAIL][21] ([i915#7932])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        [ABORT][22] ([i915#8011]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-adlp-11/igt@core_auth@basic-auth.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@dmabuf@all-tests@dma_fence:
    - bat-dg2-8:          [DMESG-FAIL][24] ([i915#8189]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-dg2-8/igt@dmabuf@all-tests@dma_fence.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-dg2-8:          [ABORT][26] ([i915#7699] / [i915#8144]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-dg2-8/igt@dmabuf@all-tests@sanitycheck.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_module_load@load:
    - bat-adlp-11:        [DMESG-WARN][28] ([i915#4423]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-adlp-11/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][30] ([i915#5334]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-WARN][32] ([i915#6367]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7156]: https://gitlab.freedesktop.org/drm/intel/issues/7156
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8144]: https://gitlab.freedesktop.org/drm/intel/issues/8144
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8386]: https://gitlab.freedesktop.org/drm/intel/issues/8386


Build changes
-------------

  * Linux: CI_DRM_13296 -> Patchwork_114200v4

  CI-20190529: 20190529
  CI_DRM_13296: 6582018c9b880e8d671c59395e34d599b9edfc59 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7340: e975155e9167f0fed8f3da9c5b61de71d082b5c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114200v4: 6582018c9b880e8d671c59395e34d599b9edfc59 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

50f3fb761514 drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device
970b4393bfe2 drm/i915: Remove AUX CH sanitation
5c7579d61b9d drm/i915: Remove DDC pin sanitation
874a245af0b4 drm/i915: Only populate aux_ch is really needed
448a2277473f drm/i915: Initialize dig_port->aux_ch to NONE to be sure

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/index.html

--===============8554078900067218582==
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
<tr><td><b>Series:</b></td><td>drm/i915: Init DDI ports in VBT order (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114200/">https://patchwork.freedesktop.org/series/114200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13296 -&gt; Patchwork_114200v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114200v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-8/igt@gem_exec_parallel@engines@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8386">i915#8386</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7156">i915#7156</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@kms_busy@basic@modeset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-dg2-8:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-dg2-8/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-dg2-8/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8144">i915#8144</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-dg2-8/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-adlp-11/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13296/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114200v4/bat-rpls-2/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13296 -&gt; Patchwork_114200v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13296: 6582018c9b880e8d671c59395e34d599b9edfc59 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7340: e975155e9167f0fed8f3da9c5b61de71d082b5c7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114200v4: 6582018c9b880e8d671c59395e34d599b9edfc59 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>50f3fb761514 drm/i915: Try to initialize DDI/ICL+ DSI ports for every VBT child device<br />
970b4393bfe2 drm/i915: Remove AUX CH sanitation<br />
5c7579d61b9d drm/i915: Remove DDC pin sanitation<br />
874a245af0b4 drm/i915: Only populate aux_ch is really needed<br />
448a2277473f drm/i915: Initialize dig_port-&gt;aux_ch to NONE to be sure</p>

</body>
</html>

--===============8554078900067218582==--
