Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4878577DAEA
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 09:08:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D493910E2F0;
	Wed, 16 Aug 2023 07:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9476B10E2EF;
 Wed, 16 Aug 2023 07:08:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 89A9AAADDA;
 Wed, 16 Aug 2023 07:08:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7974414630201260197=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Pablo Ceballos" <pceballos@google.com>
Date: Wed, 16 Aug 2023 07:08:25 -0000
Message-ID: <169216970552.10285.17829606650115336497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230816045654.833973-1-pceballos@google.com>
In-Reply-To: <20230816045654.833973-1-pceballos@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/lspcon=3A_Increase_LSPCON_mode_settle_timeout_=28?=
 =?utf-8?q?rev4=29?=
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

--===============7974414630201260197==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/lspcon: Increase LSPCON mode settle timeout (rev4)
URL   : https://patchwork.freedesktop.org/series/108735/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13524 -> Patchwork_108735v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_108735v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-guc:         [PASS][4] -> [DMESG-FAIL][5] ([i915#5334] / [i915#7872])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-apl-guc:         [PASS][6] -> [DMESG-FAIL][7] ([i915#5334])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [PASS][8] -> [DMESG-FAIL][9] ([i915#7059])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
    - bat-mtlp-6:         [PASS][10] -> [DMESG-FAIL][11] ([i915#7059])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][12] ([i915#1886] / [i915#7913])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [PASS][13] -> [ABORT][14] ([i915#4983] / [i915#7913])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-2/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [PASS][15] -> [DMESG-WARN][16] ([i915#6367])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][17] ([i915#6645])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][18] ([fdo#109271]) +16 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-mtlp-8:         NOTRUN -> [SKIP][19] ([i915#7828])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][20] ([i915#7982]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][22] ([i915#4423]) -> [DMESG-WARN][23] ([i915#4423])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-adlp-11/igt@i915_module_load@load.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-adlp-11/igt@i915_module_load@load.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         [SKIP][24] ([i915#1072]) -> [ABORT][25] ([i915#8442] / [i915#8668] / [i915#8860])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rplp-1/igt@kms_psr@primary_page_flip.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8860]: https://gitlab.freedesktop.org/drm/intel/issues/8860


Build changes
-------------

  * Linux: CI_DRM_13524 -> Patchwork_108735v4

  CI-20190529: 20190529
  CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108735v4: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bbe060d6ce3e drm/i915/display/lspcon: Increase LSPCON mode settle timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/index.html

--===============7974414630201260197==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/lspcon: Increase LSPCON mode settle timeout (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108735/">https://patchwork.freedesktop.org/series/108735/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13524 -&gt; Patchwork_108735v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108735v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13524/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108735v4/bat-rplp-1/igt@kms_psr@primary_page_flip.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8860">i915#8860</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13524 -&gt; Patchwork_108735v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13524: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7436: 81e08c6d648e949df161a4f39118ed3eb1e354e9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108735v4: f69ef04cfdd4b810e790bef365001e58e2d1037f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bbe060d6ce3e drm/i915/display/lspcon: Increase LSPCON mode settle timeout</p>

</body>
</html>

--===============7974414630201260197==--
