Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 259A45A0270
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 22:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64B34C5668;
	Wed, 24 Aug 2022 20:03:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AFF5C56A6;
 Wed, 24 Aug 2022 20:03:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7F80AAADD5;
 Wed, 24 Aug 2022 20:03:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5243080039551494417=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 24 Aug 2022 20:03:40 -0000
Message-ID: <166137142051.9870.17681578815317633196@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220818184302.10051-1-hdegoede@redhat.com>
In-Reply-To: <20220818184302.10051-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/kms=3A_Stop_registering_multiple_/sys/class/backlight_devs_for?=
 =?utf-8?q?_a_single_display?=
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

--===============5243080039551494417==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/kms: Stop registering multiple /sys/class/backlight devs for a single display
URL   : https://patchwork.freedesktop.org/series/107458/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12021 -> Patchwork_107458v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107458v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107458v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-hsw-4770 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107458v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2520m:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {bat-dg2-10}:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-10/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/bat-dg2-10/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-9}:        [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_107458v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-bsw-kefka:       [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][9] -> [INCOMPLETE][10] ([i915#4418])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@runner@aborted:
    - fi-kbl-soraka:      NOTRUN -> [FAIL][11] ([i915#6219])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][12] -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-elk-e7500:       [INCOMPLETE][14] ([i915#6598] / [i915#6601] / [i915#6648]) -> [INCOMPLETE][15] ([i915#6598] / [i915#6648])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#6219]: https://gitlab.freedesktop.org/drm/intel/issues/6219
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6648]: https://gitlab.freedesktop.org/drm/intel/issues/6648


Build changes
-------------

  * Linux: CI_DRM_12021 -> Patchwork_107458v1

  CI-20190529: 20190529
  CI_DRM_12021: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107458v1: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ca6b4b55a517 drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
a8a3fc47af60 ACPI: video: Fix indentation of video_detect_dmi_table[] entries
ab42ec87e2d2 ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks
d83dc9fcd5eb ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
f26245a90911 ACPI: video: Remove acpi_video_set_dmi_backlight_type()
5313d04fda5e platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
fc72edea64ab platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
595e2ff87ff7 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
80018d45bdac platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
38845481ecbc platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
1942b4989a9d platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
9d36d8385122 platform/x86: apple-gmux: Stop calling acpi/video.h functions
8feb52dd8e0d platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()
73fe29de2322 ACPI: video: Add Apple GMUX brightness control detection
12ac59b54c57 ACPI: video: Add Nvidia WMI EC brightness control detection (v2)
720c3de10c82 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
8962fe5539a6 platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header
1fe5b0fd8ab2 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
bf17d6cf1641 drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
ce0dc25db522 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails
6ba94845f76b drm/i915: Call acpi_video_register_backlight() (v2)
0496644cdbce ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
44b38e262538 ACPI: video: Make backlight class device registration a separate step (v2)
519e9addb26b ACPI: video: Simplify acpi_video_unregister_backlight()
f1ed7737725a ACPI: video: Remove acpi_video_bus from list before tearing it down
8dfcd7f588f0 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
abb9d64d51a5 drm/nouveau: Don't register backlight when another backlight should be used
209571063342 drm/radeon: Don't register backlight when another backlight should be used (v3)
ff8f73a450b9 drm/amdgpu: Don't register backlight when another backlight should be used (v3)
03a35e8ebe0c drm/i915: Don't register backlight when another backlight should be used
a0fe79be2f97 ACPI: video: Add acpi_video_backlight_use_native() helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/index.html

--===============5243080039551494417==
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
<tr><td><b>Series:</b></td><td>drm/kms: Stop registering multiple /sys/class/backlight devs for a single display</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107458/">https://patchwork.freedesktop.org/series/107458/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12021 -&gt; Patchwork_107458v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107458v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107458v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-hsw-4770 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107458v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-snb-2520m/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-10/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/bat-dg2-10/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/bat-dg2-9/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107458v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6219">i915#6219</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12021/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107458v1/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12021 -&gt; Patchwork_107458v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12021: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107458v1: 078959b4819e4e0ab8cf2965e7bfd98278c0b35d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ca6b4b55a517 drm/todo: Add entry about dealing with brightness control on devices with &gt; 1 panel<br />
a8a3fc47af60 ACPI: video: Fix indentation of video_detect_dmi_table[] entries<br />
ab42ec87e2d2 ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks<br />
d83dc9fcd5eb ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk<br />
f26245a90911 ACPI: video: Remove acpi_video_set_dmi_backlight_type()<br />
5313d04fda5e platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c<br />
fc72edea64ab platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c<br />
595e2ff87ff7 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c<br />
80018d45bdac platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling<br />
38845481ecbc platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c<br />
1942b4989a9d platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()<br />
9d36d8385122 platform/x86: apple-gmux: Stop calling acpi/video.h functions<br />
8feb52dd8e0d platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()<br />
73fe29de2322 ACPI: video: Add Apple GMUX brightness control detection<br />
12ac59b54c57 ACPI: video: Add Nvidia WMI EC brightness control detection (v2)<br />
720c3de10c82 ACPI: video: Refactor acpi_video_get_backlight_type() a bit<br />
8962fe5539a6 platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header<br />
1fe5b0fd8ab2 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration<br />
bf17d6cf1641 drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration<br />
ce0dc25db522 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails<br />
6ba94845f76b drm/i915: Call acpi_video_register_backlight() (v2)<br />
0496644cdbce ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers<br />
44b38e262538 ACPI: video: Make backlight class device registration a separate step (v2)<br />
519e9addb26b ACPI: video: Simplify acpi_video_unregister_backlight()<br />
f1ed7737725a ACPI: video: Remove acpi_video_bus from list before tearing it down<br />
8dfcd7f588f0 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()<br />
abb9d64d51a5 drm/nouveau: Don't register backlight when another backlight should be used<br />
209571063342 drm/radeon: Don't register backlight when another backlight should be used (v3)<br />
ff8f73a450b9 drm/amdgpu: Don't register backlight when another backlight should be used (v3)<br />
03a35e8ebe0c drm/i915: Don't register backlight when another backlight should be used<br />
a0fe79be2f97 ACPI: video: Add acpi_video_backlight_use_native() helper</p>

</body>
</html>

--===============5243080039551494417==--
