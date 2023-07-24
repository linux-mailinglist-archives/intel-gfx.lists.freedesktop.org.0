Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 673157601F9
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 00:00:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5D0010E38C;
	Mon, 24 Jul 2023 22:00:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21DAE10E38C;
 Mon, 24 Jul 2023 22:00:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1A681AADE0;
 Mon, 24 Jul 2023 22:00:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8193667837179180616=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Winiarski?= <michal.winiarski@intel.com>
Date: Mon, 24 Jul 2023 22:00:19 -0000
Message-ID: <169023601910.30101.15033292850602200855@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230724211428.3831636-1-michal.winiarski@intel.com>
In-Reply-To: <20230724211428.3831636-1-michal.winiarski@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Use_full_allocated_minor_range_for_DRM_=28rev3=29?=
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

--===============8193667837179180616==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Use full allocated minor range for DRM (rev3)
URL   : https://patchwork.freedesktop.org/series/108206/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13417 -> Patchwork_108206v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/index.html

Participating hosts (42 -> 41)
------------------------------

  Missing    (1): bat-rpls-2 

Known issues
------------

  Here are the changes found in Patchwork_108206v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [PASS][1] -> [FAIL][2] ([i915#7940]) +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-6:         [PASS][3] -> [DMESG-WARN][4] ([i915#6367])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-mtlp-6/igt@i915_selftest@live@slpc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html
    - bat-mtlp-8:         NOTRUN -> [DMESG-WARN][5] ([i915#6367])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html
    - bat-rpls-1:         [PASS][6] -> [DMESG-WARN][7] ([i915#6367])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-mtlp-8:         NOTRUN -> [SKIP][8] ([i915#6645])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-mtlp-8:         NOTRUN -> [SKIP][9] ([i915#7828])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [ABORT][10] ([i915#8434] / [i915#8442] / [i915#8668])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rplp-1:         NOTRUN -> [SKIP][11] ([i915#1072])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-guc:         [FAIL][12] ([i915#7940]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][14] ([i915#5334] / [i915#7872]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [ABORT][16] ([i915#7982]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@i915_selftest@live@requests.html
    - bat-mtlp-6:         [DMESG-FAIL][18] ([i915#8497]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-cfl-8700k:       [FAIL][20] ([i915#7940]) -> [FAIL][21] ([i915#7691])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_psr@cursor_plane_move:
    - bat-rplp-1:         [ABORT][22] ([i915#8434] / [i915#8668]) -> [SKIP][23] ([i915#1072])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-rplp-1/igt@kms_psr@cursor_plane_move.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rplp-1/igt@kms_psr@cursor_plane_move.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7691]: https://gitlab.freedesktop.org/drm/intel/issues/7691
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13417 -> Patchwork_108206v3

  CI-20190529: 20190529
  CI_DRM_13417: 58ea4f6d151dc9e4f9822e5073d926a11d5af80c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7400: 86fa0e885f8d020eeb046f27fae5729d5962ebd7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108206v3: 58ea4f6d151dc9e4f9822e5073d926a11d5af80c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

5f3e6d03e6b0 drm: Introduce force_extended_minors modparam
c42e18c639da drm: Expand max DRM device number to full MINORBITS
323b8ba06c91 accel: Use XArray instead of IDR for minors
040f50015eb6 drm: Use XArray instead of IDR for minors

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/index.html

--===============8193667837179180616==
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
<tr><td><b>Series:</b></td><td>drm: Use full allocated minor range for DRM (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108206/">https://patchwork.freedesktop.org/series/108206/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13417 -&gt; Patchwork_108206v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/index.html</p>
<h2>Participating hosts (42 -&gt; 41)</h2>
<p>Missing    (1): bat-rpls-2 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108206v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-mtlp-6/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-6/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-mtlp-8:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rplp-1/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-cfl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-mtlp-6/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/fi-cfl-8700k/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7691">i915#7691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13417/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108206v3/bat-rplp-1/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13417 -&gt; Patchwork_108206v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13417: 58ea4f6d151dc9e4f9822e5073d926a11d5af80c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7400: 86fa0e885f8d020eeb046f27fae5729d5962ebd7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108206v3: 58ea4f6d151dc9e4f9822e5073d926a11d5af80c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>5f3e6d03e6b0 drm: Introduce force_extended_minors modparam<br />
c42e18c639da drm: Expand max DRM device number to full MINORBITS<br />
323b8ba06c91 accel: Use XArray instead of IDR for minors<br />
040f50015eb6 drm: Use XArray instead of IDR for minors</p>

</body>
</html>

--===============8193667837179180616==--
