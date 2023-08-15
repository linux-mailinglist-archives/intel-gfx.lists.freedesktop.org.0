Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD7E77CB96
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 13:19:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70B9A10E251;
	Tue, 15 Aug 2023 11:19:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E72EB10E0F7;
 Tue, 15 Aug 2023 11:19:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE22BAADE8;
 Tue, 15 Aug 2023 11:19:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6974423509735884210=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 15 Aug 2023 11:19:26 -0000
Message-ID: <169209836687.16425.17190444103035285362@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230815101907.2900768-1-jani.nikula@intel.com>
In-Reply-To: <20230815101907.2900768-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/edid=3A_Fix_csync_detailed_mode_parsing=22?=
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

--===============6974423509735884210==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/edid: Fix csync detailed mode parsing"
URL   : https://patchwork.freedesktop.org/series/122455/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13518 -> Patchwork_122455v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_122455v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][2] -> [ABORT][3] ([i915#4983] / [i915#7911] / [i915#7920])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-rpls-1/igt@i915_selftest@live@requests.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-jsl-3:          NOTRUN -> [SKIP][4] ([i915#7828])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-jsl-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [ABORT][5] ([i915#5122]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [DMESG-FAIL][7] ([i915#7059]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][9] ([i915#7699]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [FAIL][11] ([fdo#103375]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][13] ([i915#4423]) -> [DMESG-WARN][14] ([i915#4423])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-adlp-11/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [DMESG-FAIL][15] ([i915#8497]) -> [ABORT][16] ([i915#7982] / [i915#8865])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [SKIP][17] ([i915#1072]) -> [ABORT][18] ([i915#8469] / [i915#8668])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865


Build changes
-------------

  * Linux: CI_DRM_13518 -> Patchwork_122455v1

  CI-20190529: 20190529
  CI_DRM_13518: b937a59ef0ca09d52d76f4f7d433e6b621f669d4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122455v1: b937a59ef0ca09d52d76f4f7d433e6b621f669d4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3ac409922073 Revert "drm/edid: Fix csync detailed mode parsing"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/index.html

--===============6974423509735884210==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm/edid: Fix csync detailed mode parsing&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122455/">https://patchwork.freedesktop.org/series/122455/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13518 -&gt; Patchwork_122455v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122455v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-jsl-3/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8865">i915#8865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13518/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122455v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13518 -&gt; Patchwork_122455v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13518: b937a59ef0ca09d52d76f4f7d433e6b621f669d4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122455v1: b937a59ef0ca09d52d76f4f7d433e6b621f669d4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3ac409922073 Revert "drm/edid: Fix csync detailed mode parsing"</p>

</body>
</html>

--===============6974423509735884210==--
