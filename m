Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0903475B057
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 15:47:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35D110E14D;
	Thu, 20 Jul 2023 13:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 04A1510E5CA;
 Thu, 20 Jul 2023 13:47:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF026AA01E;
 Thu, 20 Jul 2023 13:47:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8617920821439277163=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 20 Jul 2023 13:47:13 -0000
Message-ID: <168986083394.20753.4102252290587327889@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230720080715.3063267-1-suraj.kandpal@intel.com>
In-Reply-To: <20230720080715.3063267-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_DSC_PPS_readout_=28rev4=29?=
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

--===============8617920821439277163==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add DSC PPS readout (rev4)
URL   : https://patchwork.freedesktop.org/series/120456/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13399 -> Patchwork_120456v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/index.html

Participating hosts (43 -> 43)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_120456v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-skl-guc:         [PASS][2] -> [FAIL][3] ([i915#7940]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
    - bat-adlp-9:         [PASS][4] -> [ABORT][5] ([i915#7977] / [i915#8668])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][6] -> [FAIL][7] ([i915#7940])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][8] -> [DMESG-FAIL][9] ([i915#5334] / [i915#7872])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][10] ([i915#8937]) +23 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@migrate:
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][11] ([i915#7699] / [i915#8504] / [i915#8937])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][12] ([i915#6367])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@i915_selftest@live@slpc.html
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][13] ([i915#6367] / [i915#8937])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@slpc.html
    - bat-rpls-1:         NOTRUN -> [DMESG-WARN][14] ([i915#6367])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#6645])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
    - bat-rpls-1:         NOTRUN -> [ABORT][16] ([i915#6687] / [i915#7978] / [i915#8668])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-2:         NOTRUN -> [SKIP][17] ([i915#7828])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][18] ([i915#7828])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][19] ([i915#1845] / [i915#5354]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][20] ([i915#1845])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-cfl-8700k:       [FAIL][21] ([i915#7940]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [ABORT][23] ([i915#7913] / [i915#7982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-2/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][25] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-1/igt@i915_selftest@live@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@prime_self_import@basic-with_fd_dup:
    - fi-kbl-soraka:      [INCOMPLETE][27] -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-soraka/igt@prime_self_import@basic-with_fd_dup.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-kbl-soraka/igt@prime_self_import@basic-with_fd_dup.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][29] ([i915#4423]) -> [DMESG-WARN][30] ([i915#4423])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-11/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][31] ([i915#7940]) -> [FAIL][32] ([i915#8843])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-mtlp-8:         [DMESG-FAIL][33] -> [DMESG-WARN][34] ([i915#8937])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][35] ([i915#7982]) -> [DMESG-WARN][36] ([i915#8937])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-8:         [DMESG-FAIL][37] ([i915#6763]) -> [DMESG-WARN][38] ([i915#8937])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [ABORT][39] ([i915#8860]) -> [ABORT][40] ([i915#8442] / [i915#8668] / [i915#8860])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7977]: https://gitlab.freedesktop.org/drm/intel/issues/7977
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8504]: https://gitlab.freedesktop.org/drm/intel/issues/8504
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8843]: https://gitlab.freedesktop.org/drm/intel/issues/8843
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860
  [i915#8937]: https://gitlab.freedesktop.org/drm/intel/issues/8937


Build changes
-------------

  * Linux: CI_DRM_13399 -> Patchwork_120456v4

  CI-20190529: 20190529
  CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120456v4: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0c8627790436 drm/i915/display: Compare the readout dsc pps params
edc5ad89f482 drm/i915/vdsc: Fill the intel_dsc_get_pps_config function
de2c83f8c39e drm/i915/vdsc: Remove unused dsc registers
bfe5aca3c5ab drm/i915/vdsc: Add function to write in PPS register
e27d5f44ba72 drm/i915/vdsc: Add function to read any PPS register
8cc34d483522 drm/i915/vdsc: Add a check for dsc split cases
4db28d967456 drm/i915/vdsc: Refactor dsc register field macro

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/index.html

--===============8617920821439277163==
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
<tr><td><b>Series:</b></td><td>Add DSC PPS readout (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120456/">https://patchwork.freedesktop.org/series/120456/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13399 -&gt; Patchwork_120456v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120456v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue</p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-adlp-9/igt@i915_pm_rpm@basic-rte.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7977">i915#7977</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8504">i915#8504</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_fd_dup:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-soraka/igt@prime_self_import@basic-with_fd_dup.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-kbl-soraka/igt@prime_self_import@basic-with_fd_dup.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8843">i915#8843</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120456v4/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13399 -&gt; Patchwork_120456v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120456v4: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0c8627790436 drm/i915/display: Compare the readout dsc pps params<br />
edc5ad89f482 drm/i915/vdsc: Fill the intel_dsc_get_pps_config function<br />
de2c83f8c39e drm/i915/vdsc: Remove unused dsc registers<br />
bfe5aca3c5ab drm/i915/vdsc: Add function to write in PPS register<br />
e27d5f44ba72 drm/i915/vdsc: Add function to read any PPS register<br />
8cc34d483522 drm/i915/vdsc: Add a check for dsc split cases<br />
4db28d967456 drm/i915/vdsc: Refactor dsc register field macro</p>

</body>
</html>

--===============8617920821439277163==--
