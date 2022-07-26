Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06459581944
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 19:59:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2377196A4B;
	Tue, 26 Jul 2022 17:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F297E96A99;
 Tue, 26 Jul 2022 17:59:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9C42A66C8;
 Tue, 26 Jul 2022 17:59:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6885187546678756954=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arunpravin Paneer Selvam" <arunpravin.paneerselvam@amd.com>
Date: Tue, 26 Jul 2022 17:59:43 -0000
Message-ID: <165885838393.21570.14988165156526482861@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220726162205.2778-1-Arunpravin.PaneerSelvam@amd.com>
In-Reply-To: <20220726162205.2778-1-Arunpravin.PaneerSelvam@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/ttm=3A_Fix_dummy_res_NULL_ptr_deref_bug?=
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

--===============6885187546678756954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/ttm: Fix dummy res NULL ptr deref bug
URL   : https://patchwork.freedesktop.org/series/106727/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11945 -> Patchwork_106727v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/index.html

Participating hosts (31 -> 30)
------------------------------

  Additional (1): bat-jsl-3 
  Missing    (2): fi-rkl-11600 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_106727v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#4613]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       NOTRUN -> [DMESG-FAIL][2] ([i915#62])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][3] ([i915#6114])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][4] -> [DMESG-FAIL][5] ([i915#4528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][6] -> [INCOMPLETE][7] ([i915#146])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bsw-n3050/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][10] -> [DMESG-WARN][11] ([i915#62]) +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-cfl-8109u:       NOTRUN -> [DMESG-WARN][12] ([i915#62]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][13] ([fdo#109271]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-cfl-8109u:       NOTRUN -> [FAIL][14] ([i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][15] ([i915#2940]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][17] ([i915#4785]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [FAIL][19] ([i915#6298]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@varying-size:
    - fi-cfl-8109u:       [DMESG-WARN][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@varying-size.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
    - fi-cfl-8109u:       [INCOMPLETE][23] -> [DMESG-WARN][24] ([i915#62])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6114]: https://gitlab.freedesktop.org/drm/intel/issues/6114
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6477]: https://gitlab.freedesktop.org/drm/intel/issues/6477


Build changes
-------------

  * Linux: CI_DRM_11945 -> Patchwork_106727v1

  CI-20190529: 20190529
  CI_DRM_11945: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106727v1: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

89d6b5c57534 drm/ttm: Fix dummy res NULL ptr deref bug

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/index.html

--===============6885187546678756954==
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
<tr><td><b>Series:</b></td><td>drm/ttm: Fix dummy res NULL ptr deref bug</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106727/">https://patchwork.freedesktop.org/series/106727/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11945 -&gt; Patchwork_106727v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/index.html</p>
<h2>Participating hosts (31 -&gt; 30)</h2>
<p>Additional (1): bat-jsl-3 <br />
  Missing    (2): fi-rkl-11600 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106727v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6114">i915#6114</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bsw-n3050/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@varying-size:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@varying-size.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11945/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106727v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11945 -&gt; Patchwork_106727v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11945: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6598: 97e103419021d0863db527e3f2cf39ccdd132db5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106727v1: 15fbed4f822211fbb7653c2b8591594d92de9551 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>89d6b5c57534 drm/ttm: Fix dummy res NULL ptr deref bug</p>

</body>
</html>

--===============6885187546678756954==--
