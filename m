Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5088C77D711
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 02:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE53C10E2A6;
	Wed, 16 Aug 2023 00:27:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A676910E2A6;
 Wed, 16 Aug 2023 00:27:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C150AA01E;
 Wed, 16 Aug 2023 00:27:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1532076543988589665=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 16 Aug 2023 00:27:42 -0000
Message-ID: <169214566260.10282.440565540843521390@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230815202916.1211768-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230815202916.1211768-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp/mtl=3A_Update_gsc-heci_cmd_submission_to_align_with_f?=
 =?utf-8?q?w/hw_spec?=
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

--===============1532076543988589665==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp/mtl: Update gsc-heci cmd submission to align with fw/hw spec
URL   : https://patchwork.freedesktop.org/series/122479/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13524 -> Patchwork_122479v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_122479v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [PASS][2] -> [DMESG-FAIL][3] ([i915#7059])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][4] -> [ABORT][5] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-1/igt@i915_selftest@live@reset.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][6] ([i915#6645])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-mtlp-8:         NOTRUN -> [SKIP][7] ([i915#7828])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][8] ([i915#1845] / [i915#5354]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][9] ([i915#7982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [DMESG-WARN][11] ([i915#6367]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][13] ([i915#4423]) -> [DMESG-WARN][14] ([i915#4423])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-adlp-11/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-2:         [ABORT][15] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#8347]) -> [ABORT][16] ([i915#4983] / [i915#7461] / [i915#7913] / [i915#7981] / [i915#8347])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-2/igt@i915_selftest@live@reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [SKIP][17] ([i915#1072]) -> [ABORT][18] ([i915#8469] / [i915#8668])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8469]: https://gitlab.freedesktop.org/drm/intel/issues/8469
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13524 -> Patchwork_122479v1

  CI-20190529: 20190529
  CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122479v1: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1dcfdd6af09a drm/i915/gt/pxp: User PXP contexts requires runalone bit in lrc
56fa926ec8aa drm/i915/pxp/mtl: Update pxp-firmware packet size
702d1551b743 drm/i915/pxp/mtl: Update pxp-firmware response timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/index.html

--===============1532076543988589665==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp/mtl: Update gsc-heci cmd submission to align with fw/hw spec</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122479/">https://patchwork.freedesktop.org/series/122479/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13524 -&gt; Patchwork_122479v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122479v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-rpls-2/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7981">i915#7981</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122479v1/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8469">i915#8469</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13524 -&gt; Patchwork_122479v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122479v1: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1dcfdd6af09a drm/i915/gt/pxp: User PXP contexts requires runalone bit in lrc<br />
56fa926ec8aa drm/i915/pxp/mtl: Update pxp-firmware packet size<br />
702d1551b743 drm/i915/pxp/mtl: Update pxp-firmware response timeout</p>

</body>
</html>

--===============1532076543988589665==--
