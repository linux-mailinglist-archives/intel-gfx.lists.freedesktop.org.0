Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C1A7739D1
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 12:57:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2561610E1EC;
	Tue,  8 Aug 2023 10:57:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61B3A10E079;
 Tue,  8 Aug 2023 10:57:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58BFCA0BA8;
 Tue,  8 Aug 2023 10:57:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5232908680316627218=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 08 Aug 2023 10:57:49 -0000
Message-ID: <169149226932.13859.5585561605855101921@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230728041150.2524032-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20230728041150.2524032-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRFND?=
 =?utf-8?q?_misc_fixes_=28rev6=29?=
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

--===============5232908680316627218==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: DSC misc fixes (rev6)
URL   : https://patchwork.freedesktop.org/series/117662/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13489 -> Patchwork_117662v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_117662v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence:
    - bat-dg2-11:         [PASS][1] -> [DMESG-FAIL][2] ([i915#8189])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - bat-dg2-11:         [PASS][3] -> [ABORT][4] ([i915#7699])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [PASS][5] -> [DMESG-FAIL][6] ([i915#7059])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [PASS][7] -> [DMESG-FAIL][8] ([i915#8497])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-mtlp-6/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#8585]) +76 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-2:         NOTRUN -> [SKIP][11] ([i915#7828])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][12] ([i915#1845])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [SKIP][13] ([i915#1072]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         NOTRUN -> [ABORT][14] ([i915#8260] / [i915#8668])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-guc:         [FAIL][15] ([i915#7940]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-x1275:       [FAIL][17] ([i915#8843]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][19] ([i915#7699]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-WARN][21] ([i915#6367]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-2:         [ABORT][23] ([i915#6687] / [i915#7978] / [i915#8668]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-9:         [FAIL][25] ([i915#7691]) -> [FAIL][26] ([i915#7940])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [FAIL][27] ([i915#7940]) -> [DMESG-FAIL][28] ([i915#8585])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [ABORT][29] ([i915#8442] / [i915#8668] / [i915#8860]) -> [SKIP][30] ([i915#1072])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8843]: https://gitlab.freedesktop.org/drm/intel/issues/8843
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860


Build changes
-------------

  * Linux: CI_DRM_13489 -> Patchwork_117662v6

  CI-20190529: 20190529
  CI_DRM_13489: ba0acfd5bae2ff82ebfd23d50d4e80020fa9c4c1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7420: 7420
  Patchwork_117662v6: ba0acfd5bae2ff82ebfd23d50d4e80020fa9c4c1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0fb4e033fff7 drm/i915/dp: Check if force_dsc_output_format is possible
e4af87dee51b drm/i915/dp: Check src/sink compressed bpp limit for edp
d4a98a2d4d5c drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
999be6a0cf7b drm/i915/dp: Get optimal link config to have best compressed bpp
e9597640b9d9 drm/i915/dp: Separate out function to get compressed bpp with joiner
9e09153d28ae drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC
fa854d538c79 drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp
cee91666830d drm/i915/dp: Rename helper to get DSC max pipe_bpp
8d2a42b679c6 drm/i915/dp: Avoid left shift of DSC output bpp by 4
7ec91e6a0ddb drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also
ad0d4e72e4bc drm/i915/dp: Add functions to get min/max src input bpc with DSC
e4e8b609185e drm/i915/dp: Avoid forcing DSC BPC for MST case
88824b9d436b drm/display/dp: Fix the DP DSC Receiver cap size
5577c9afd341 drm/i915/dp: Remove extra logs for printing DSC info
ba9999b7f2cb drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck
5e2d7335d4f5 drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp
3797a942deea drm/i915/dp: Use consistent name for link bpp and compressed bpp
77bdcfdccd80 drm/i915/dp_mst: Use output_format to get the final link bpp
406b43623b0f drm/i915/dp: Move compressed bpp check with 420 format inside the helper
496093473664 drm/i915/dp: Consider output_format while computing dsc bpp

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/index.html

--===============5232908680316627218==
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
<tr><td><b>Series:</b></td><td>DSC misc fixes (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/117662/">https://patchwork.freedesktop.org/series/117662/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13489 -&gt; Patchwork_117662v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_117662v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-dg2-11/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-dg2-11/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) +76 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-cfl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8843">i915#8843</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-kbl-x1275/igt@i915_pm_rpm@basic-rte.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7691">i915#7691</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-adlp-9/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13489/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117662v6/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13489 -&gt; Patchwork_117662v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13489: ba0acfd5bae2ff82ebfd23d50d4e80020fa9c4c1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7420: 7420<br />
  Patchwork_117662v6: ba0acfd5bae2ff82ebfd23d50d4e80020fa9c4c1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0fb4e033fff7 drm/i915/dp: Check if force_dsc_output_format is possible<br />
e4af87dee51b drm/i915/dp: Check src/sink compressed bpp limit for edp<br />
d4a98a2d4d5c drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info<br />
999be6a0cf7b drm/i915/dp: Get optimal link config to have best compressed bpp<br />
e9597640b9d9 drm/i915/dp: Separate out function to get compressed bpp with joiner<br />
9e09153d28ae drm/i915/dp: Add DSC BPC/BPP constraints while selecting pipe bpp with DSC<br />
fa854d538c79 drm/i915/dp: Separate out functions for edp/DP for computing DSC bpp<br />
cee91666830d drm/i915/dp: Rename helper to get DSC max pipe_bpp<br />
8d2a42b679c6 drm/i915/dp: Avoid left shift of DSC output bpp by 4<br />
7ec91e6a0ddb drm/i915/dp: Check min bpc DSC limits for dsc_force_bpc also<br />
ad0d4e72e4bc drm/i915/dp: Add functions to get min/max src input bpc with DSC<br />
e4e8b609185e drm/i915/dp: Avoid forcing DSC BPC for MST case<br />
88824b9d436b drm/display/dp: Fix the DP DSC Receiver cap size<br />
5577c9afd341 drm/i915/dp: Remove extra logs for printing DSC info<br />
ba9999b7f2cb drm/i915/intel_cdclk: Add vdsc with bigjoiner constraints on min_cdlck<br />
5e2d7335d4f5 drm/i915/dp: Update Bigjoiner interface bits for computing compressed bpp<br />
3797a942deea drm/i915/dp: Use consistent name for link bpp and compressed bpp<br />
77bdcfdccd80 drm/i915/dp_mst: Use output_format to get the final link bpp<br />
406b43623b0f drm/i915/dp: Move compressed bpp check with 420 format inside the helper<br />
496093473664 drm/i915/dp: Consider output_format while computing dsc bpp</p>

</body>
</html>

--===============5232908680316627218==--
