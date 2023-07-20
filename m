Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B890375B49D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 18:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C87AB10E5DE;
	Thu, 20 Jul 2023 16:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 49AAD10E5DE;
 Thu, 20 Jul 2023 16:37:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4477EAA01E;
 Thu, 20 Jul 2023 16:37:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6333202637878352543=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 20 Jul 2023 16:37:21 -0000
Message-ID: <168987104124.20750.17684374497119388208@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230714061339.2897609-1-suraj.kandpal@intel.com>
In-Reply-To: <20230714061339.2897609-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hotplug=3A_Reduce_SHPD=5FFILTER_to_250us_=28rev3=29?=
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

--===============6333202637878352543==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hotplug: Reduce SHPD_FILTER to 250us (rev3)
URL   : https://patchwork.freedesktop.org/series/120722/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13399 -> Patchwork_120722v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_120722v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - bat-mtlp-6:         [PASS][2] -> [DMESG-WARN][3] ([i915#8937])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-6/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-cfl-8109u:       [PASS][4] -> [FAIL][5] ([i915#7940])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-skl-guc:         [PASS][6] -> [FAIL][7] ([i915#7940]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html
    - fi-kbl-7567u:       [PASS][8] -> [FAIL][9] ([i915#7940])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8700k:       [PASS][10] -> [FAIL][11] ([i915#7940])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][12] ([i915#8937]) +23 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@migrate:
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][13] ([i915#7699] / [i915#8504] / [i915#8937])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         NOTRUN -> [DMESG-WARN][14] ([i915#6367])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@i915_selftest@live@slpc.html
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][15] ([i915#6367] / [i915#8937])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html
    - bat-rpls-1:         NOTRUN -> [DMESG-WARN][16] ([i915#6367])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][17] ([i915#6645])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html
    - bat-rpls-1:         NOTRUN -> [ABORT][18] ([i915#6687] / [i915#7978] / [i915#8668])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-2:         NOTRUN -> [SKIP][19] ([i915#7828])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-mtlp-8:         NOTRUN -> [SKIP][20] ([i915#7828])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-2:         NOTRUN -> [SKIP][21] ([i915#1845])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - bat-mtlp-6:         [DMESG-WARN][22] ([i915#8937]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@core_auth@basic-auth.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-6/igt@core_auth@basic-auth.html

  * igt@i915_pm_rpm@module-reload:
    - fi-rkl-11600:       [FAIL][24] ([i915#7940]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html
    - fi-skl-guc:         [FAIL][26] ([i915#7940]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-skl-guc/igt@i915_pm_rpm@module-reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-skl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [ABORT][28] ([i915#7913] / [i915#7982]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-2/igt@i915_selftest@live@requests.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][30] ([i915#4983] / [i915#7461] / [i915#8347] / [i915#8384]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-1/igt@i915_selftest@live@reset.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][32] ([i915#4423]) -> [DMESG-WARN][33] ([i915#4423])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-11/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][34] ([i915#7940]) -> [FAIL][35] ([i915#8843])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [DMESG-WARN][36] ([i915#8937]) -> [DMESG-FAIL][37] ([i915#7059])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-mtlp-8:         [DMESG-FAIL][38] -> [DMESG-WARN][39] ([i915#8937])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][40] ([i915#7982]) -> [DMESG-WARN][41] ([i915#8937])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [DMESG-WARN][42] ([i915#8937]) -> [DMESG-WARN][43] ([i915#6367] / [i915#8937])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-8:         [DMESG-FAIL][44] ([i915#6763]) -> [DMESG-WARN][45] ([i915#8937])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@workarounds.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [ABORT][46] ([i915#8860]) -> [ABORT][47] ([i915#8442] / [i915#8668] / [i915#8860])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
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

  * Linux: CI_DRM_13399 -> Patchwork_120722v3

  CI-20190529: 20190529
  CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120722v3: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

379e37854d09 drm/i915/hotplug: Reduce SHPD_FILTER to 250us

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/index.html

--===============6333202637878352543==
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
<tr><td><b>Series:</b></td><td>drm/i915/hotplug: Reduce SHPD_FILTER to 250us (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120722/">https://patchwork.freedesktop.org/series/120722/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13399 -&gt; Patchwork_120722v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120722v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-6/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-skl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-kbl-7567u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8504">i915#8504</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-6/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-rkl-11600/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-skl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8843">i915#8843</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-mtlp-8/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8937">i915#8937</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13399/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120722v3/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13399 -&gt; Patchwork_120722v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13399: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7396: 8e84faf33c2cf3482c7dff814d256089bc03db5d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120722v3: fcafac400c8ed8c9fe9419e94a6cd2dc3bc87da1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>379e37854d09 drm/i915/hotplug: Reduce SHPD_FILTER to 250us</p>

</body>
</html>

--===============6333202637878352543==--
