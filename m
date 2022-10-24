Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79D2E60B3C8
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 19:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6C9110E569;
	Mon, 24 Oct 2022 17:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61E8110E569;
 Mon, 24 Oct 2022 17:16:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 56EC5AADDC;
 Mon, 24 Oct 2022 17:16:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5387969225947923914=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Akihiko Odaki" <akihiko.odaki@daynix.com>
Date: Mon, 24 Oct 2022 17:16:11 -0000
Message-ID: <166663177134.3425.16844073509306239890@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221024113513.5205-1-akihiko.odaki@daynix.com>
In-Reply-To: <20221024113513.5205-1-akihiko.odaki@daynix.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRmFs?=
 =?utf-8?q?lback_to_native_backlight?=
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

--===============5387969225947923914==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fallback to native backlight
URL   : https://patchwork.freedesktop.org/series/110054/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12285 -> Patchwork_110054v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110054v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110054v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/index.html

Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-icl-u2 fi-bdw-samus bat-dg1-5 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110054v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hugepages:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-rkl-guc/igt@i915_selftest@live@hugepages.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-rkl-guc/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_110054v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][5] -> [FAIL][6] ([i915#7229])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][7] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][9] ([fdo#109271] / [fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-kbl-x1275/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][10] ([i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-adlp-4/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][12] ([i915#2582]) -> [PASS][13] +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@fbdev@read.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-rpls-2/igt@fbdev@read.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-bsw-kefka:       [SKIP][14] ([fdo#109271]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-FAIL][16] ([i915#62]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - fi-cfl-8109u:       [DMESG-WARN][18] ([i915#5904] / [i915#7174]) -> [PASS][19] +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][20] ([i915#4785]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - fi-kbl-x1275:       [DMESG-FAIL][22] -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html
    - {bat-rpls-2}:       [DMESG-FAIL][24] -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-rpls-2/igt@i915_selftest@live@hugepages.html
    - {bat-jsl-1}:        [DMESG-FAIL][26] -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-jsl-1/igt@i915_selftest@live@hugepages.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-jsl-1/igt@i915_selftest@live@hugepages.html
    - {bat-rpls-1}:       [DMESG-FAIL][28] -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-1/igt@i915_selftest@live@hugepages.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [DMESG-WARN][30] ([i915#5904]) -> [PASS][31] +27 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [DMESG-WARN][32] ([i915#5904] / [i915#62]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [DMESG-WARN][34] ([i915#62]) -> [PASS][35] +13 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7174]: https://gitlab.freedesktop.org/drm/intel/issues/7174
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12285 -> Patchwork_110054v1

  CI-20190529: 20190529
  CI_DRM_12285: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7023: 229bb0accbb7c8cedcc8d9256ad2b6683c9f161a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110054v1: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

304ccd9171a2 ACPI: video: Fallback to native backlight
4f72d85a89b6 ACPI: video: Remove acpi_video_get_backlight_type()
6ffbea4ff64c platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()
ad22e9eb8e62 platform/x86: dell-laptop: Use acpi_video_get_backlight_types()
835a3b84622c platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()
1dd18bd4761b platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()
6bf781ecf5eb platform/x86: sony-laptop: Use acpi_video_get_backlight_types()
ccddcc4863b8 platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()
5e937b66c6cb platform/x86: panasonic-laptop: Use acpi_video_get_backlight_types()
0817019194ea platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_types()
b27606235c2c platform/x86: msi-wmi: Use acpi_video_get_backlight_types()
c0e81b0086a2 platform/x86: msi-laptop: Use acpi_video_get_backlight_types()
81d55327c323 platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()
37418e841590 platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()
344c092dfdd5 platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()
24c46abdb5f7 platform/x86: compal-laptop: Use acpi_video_get_backlight_types()
273708e7dc48 platform/x86: asus-wmi: Use acpi_video_get_backlight_types()
2484330d7c62 platform/x86: asus-laptop: Use acpi_video_get_backlight_types()
208895193f42 platform/x86: acer-wmi: Use acpi_video_get_backlight_types()
4083d0f95444 LoongArch: Use acpi_video_get_backlight_types()
c73c0c60e7b2 ACPI: video: Introduce acpi_video_get_backlight_types()
c1d74817a188 drm/i915/opregion: Improve backlight request condition

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/index.html

--===============5387969225947923914==
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
<tr><td><b>Series:</b></td><td>Fallback to native backlight</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110054/">https://patchwork.freedesktop.org/series/110054/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12285 -&gt; Patchwork_110054v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110054v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_110054v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/index.html</p>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-icl-u2 fi-bdw-samus bat-dg1-5 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110054v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-rkl-guc/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-rkl-guc/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110054v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-kbl-x1275/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-kbl-x1275/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7174">i915#7174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-kbl-x1275/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-jsl-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-jsl-1/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/bat-rpls-1/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/bat-rpls-1/igt@i915_selftest@live@hugepages.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12285/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110054v1/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +13 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12285 -&gt; Patchwork_110054v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12285: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7023: 229bb0accbb7c8cedcc8d9256ad2b6683c9f161a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110054v1: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>304ccd9171a2 ACPI: video: Fallback to native backlight<br />
4f72d85a89b6 ACPI: video: Remove acpi_video_get_backlight_type()<br />
6ffbea4ff64c platform/x86: intel_oaktrail: Use acpi_video_get_backlight_types()<br />
ad22e9eb8e62 platform/x86: dell-laptop: Use acpi_video_get_backlight_types()<br />
835a3b84622c platform/x86: toshiba_acpi: Use acpi_video_get_backlight_types()<br />
1dd18bd4761b platform/x86: thinkpad_acpi: Use acpi_video_get_backlight_types()<br />
6bf781ecf5eb platform/x86: sony-laptop: Use acpi_video_get_backlight_types()<br />
ccddcc4863b8 platform/x86: samsung-laptop: Use acpi_video_get_backlight_types()<br />
5e937b66c6cb platform/x86: panasonic-laptop: Use acpi_video_get_backlight_types()<br />
0817019194ea platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_types()<br />
b27606235c2c platform/x86: msi-wmi: Use acpi_video_get_backlight_types()<br />
c0e81b0086a2 platform/x86: msi-laptop: Use acpi_video_get_backlight_types()<br />
81d55327c323 platform/x86: ideapad-laptop: Use acpi_video_get_backlight_types()<br />
37418e841590 platform/x86: fujitsu-laptop: Use acpi_video_get_backlight_types()<br />
344c092dfdd5 platform/x86: eeepc-laptop: Use acpi_video_get_backlight_types()<br />
24c46abdb5f7 platform/x86: compal-laptop: Use acpi_video_get_backlight_types()<br />
273708e7dc48 platform/x86: asus-wmi: Use acpi_video_get_backlight_types()<br />
2484330d7c62 platform/x86: asus-laptop: Use acpi_video_get_backlight_types()<br />
208895193f42 platform/x86: acer-wmi: Use acpi_video_get_backlight_types()<br />
4083d0f95444 LoongArch: Use acpi_video_get_backlight_types()<br />
c73c0c60e7b2 ACPI: video: Introduce acpi_video_get_backlight_types()<br />
c1d74817a188 drm/i915/opregion: Improve backlight request condition</p>

</body>
</html>

--===============5387969225947923914==--
