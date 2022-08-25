Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D85A16B3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 18:30:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB6C10E7E2;
	Thu, 25 Aug 2022 16:30:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A8EB10E7DF;
 Thu, 25 Aug 2022 16:30:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 24575AADDD;
 Thu, 25 Aug 2022 16:30:18 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2887134046370955070=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Thu, 25 Aug 2022 16:30:18 -0000
Message-ID: <166144501811.24644.10388593034951324166@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220825143726.269890-1-hdegoede@redhat.com>
In-Reply-To: <20220825143726.269890-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
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

--===============2887134046370955070==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/kms: Stop registering multiple /sys/class/backlight devs for a single display
URL   : https://patchwork.freedesktop.org/series/107755/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12025 -> Patchwork_107755v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): bat-dg2-8 bat-rpls-2 fi-hsw-4770 

Known issues
------------

  Here are the changes found in Patchwork_107755v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-bsw-kefka:       [PASS][1] -> [SKIP][2] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [PASS][3] -> [INCOMPLETE][4] ([i915#4418])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][5] -> [INCOMPLETE][6] ([i915#3303] / [i915#4785])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#4312] / [i915#6246])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-ivb-3770:        [FAIL][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][10] ([i915#2867]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][12] ([i915#6298]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][14] ([fdo#103375]) -> [INCOMPLETE][15] ([i915#5982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
    - fi-elk-e7500:       [INCOMPLETE][16] ([i915#6598] / [i915#6601] / [i915#6648]) -> [INCOMPLETE][17] ([i915#6598] / [i915#6648])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6530]: https://gitlab.freedesktop.org/drm/intel/issues/6530
  [i915#6579]: https://gitlab.freedesktop.org/drm/intel/issues/6579
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6648]: https://gitlab.freedesktop.org/drm/intel/issues/6648


Build changes
-------------

  * Linux: CI_DRM_12025 -> Patchwork_107755v1

  CI-20190529: 20190529
  CI_DRM_12025: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107755v1: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dcb253de416d drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
0693d1e4160d ACPI: video: Fix indentation of video_detect_dmi_table[] entries
3dc1ab4f6532 ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks
baf8ec8c4e08 ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
22e02f0682d8 ACPI: video: Remove acpi_video_set_dmi_backlight_type()
a065026855a3 platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
1e0d0ee9fa5d platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
a5637f478514 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
85e765a53f78 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
18254a3375e8 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
a70d889be4d2 platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
4bd5de41b8de platform/x86: apple-gmux: Stop calling acpi/video.h functions
504ca6c6f603 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()
2dd8881f0aa2 ACPI: video: Add Apple GMUX brightness control detection
e094a651d72d ACPI: video: Add Nvidia WMI EC brightness control detection (v3)
c053f9f49ba6 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
bf6434bd7c43 platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header (v2)
4b0784addd38 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
d75ddf0d7e6f drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
945afbc25747 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails (v2)
36d81d3183f9 drm/i915: Call acpi_video_register_backlight() (v3)
3dc3f76a30aa ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
04128a8901c9 ACPI: video: Make backlight class device registration a separate step (v2)
5f285d37ec6a ACPI: video: Simplify acpi_video_unregister_backlight()
189b7f335ac9 ACPI: video: Remove acpi_video_bus from list before tearing it down
db2bba94dcd0 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
6f5e65f7d87a drm/nouveau: Don't register backlight when another backlight should be used (v2)
b8bf18759df0 drm/radeon: Don't register backlight when another backlight should be used (v3)
bfa741acc99e drm/amdgpu: Don't register backlight when another backlight should be used (v3)
426f8a2ce3d3 drm/i915: Don't register backlight when another backlight should be used (v2)
152630e9e122 ACPI: video: Add acpi_video_backlight_use_native() helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/index.html

--===============2887134046370955070==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107755/">https://patchwork.freedesktop.org/series/107755/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12025 -&gt; Patchwork_107755v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): bat-dg2-8 bat-rpls-2 fi-hsw-4770 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107755v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107755v1/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12025 -&gt; Patchwork_107755v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12025: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107755v1: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dcb253de416d drm/todo: Add entry about dealing with brightness control on devices with &gt; 1 panel<br />
0693d1e4160d ACPI: video: Fix indentation of video_detect_dmi_table[] entries<br />
3dc1ab4f6532 ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks<br />
baf8ec8c4e08 ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk<br />
22e02f0682d8 ACPI: video: Remove acpi_video_set_dmi_backlight_type()<br />
a065026855a3 platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c<br />
1e0d0ee9fa5d platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c<br />
a5637f478514 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c<br />
85e765a53f78 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling<br />
18254a3375e8 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c<br />
a70d889be4d2 platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()<br />
4bd5de41b8de platform/x86: apple-gmux: Stop calling acpi/video.h functions<br />
504ca6c6f603 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()<br />
2dd8881f0aa2 ACPI: video: Add Apple GMUX brightness control detection<br />
e094a651d72d ACPI: video: Add Nvidia WMI EC brightness control detection (v3)<br />
c053f9f49ba6 ACPI: video: Refactor acpi_video_get_backlight_type() a bit<br />
bf6434bd7c43 platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header (v2)<br />
4b0784addd38 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration<br />
d75ddf0d7e6f drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration<br />
945afbc25747 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails (v2)<br />
36d81d3183f9 drm/i915: Call acpi_video_register_backlight() (v3)<br />
3dc3f76a30aa ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers<br />
04128a8901c9 ACPI: video: Make backlight class device registration a separate step (v2)<br />
5f285d37ec6a ACPI: video: Simplify acpi_video_unregister_backlight()<br />
189b7f335ac9 ACPI: video: Remove acpi_video_bus from list before tearing it down<br />
db2bba94dcd0 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()<br />
6f5e65f7d87a drm/nouveau: Don't register backlight when another backlight should be used (v2)<br />
b8bf18759df0 drm/radeon: Don't register backlight when another backlight should be used (v3)<br />
bfa741acc99e drm/amdgpu: Don't register backlight when another backlight should be used (v3)<br />
426f8a2ce3d3 drm/i915: Don't register backlight when another backlight should be used (v2)<br />
152630e9e122 ACPI: video: Add acpi_video_backlight_use_native() helper</p>

</body>
</html>

--===============2887134046370955070==--
