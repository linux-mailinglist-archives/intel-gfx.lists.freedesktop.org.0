Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE525A0455
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 01:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC6510E380;
	Wed, 24 Aug 2022 23:00:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF76110E380;
 Wed, 24 Aug 2022 23:00:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A4D8FA363D;
 Wed, 24 Aug 2022 23:00:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5032973720110256725=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Wed, 24 Aug 2022 23:00:02 -0000
Message-ID: <166138200264.9870.15049723802250980853@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220824121523.1291269-1-hdegoede@redhat.com>
In-Reply-To: <20220824121523.1291269-1-hdegoede@redhat.com>
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

--===============5032973720110256725==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/kms: Stop registering multiple /sys/class/backlight devs for a single display
URL   : https://patchwork.freedesktop.org/series/107674/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12022 -> Patchwork_107674v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-dg2-8 
  Missing    (2): bat-dg2-9 bat-jsl-3 

Known issues
------------

  Here are the changes found in Patchwork_107674v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       NOTRUN -> [FAIL][1] ([fdo#103375])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-bsw-kefka:       [PASS][2] -> [SKIP][3] ([fdo#109271])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gem:
    - fi-pnv-d510:        [PASS][4] -> [DMESG-FAIL][5] ([i915#4528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-pnv-d510/igt@i915_selftest@live@gem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-pnv-d510/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [PASS][6] -> [INCOMPLETE][7] ([i915#4418])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][8] ([i915#4817] / [i915#6598])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-11600:       NOTRUN -> [SKIP][9] ([fdo#111827])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][10] ([fdo#109271] / [i915#2403] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][11] ([i915#4785]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - {fi-jsl-1}:         [INCOMPLETE][13] ([i915#5134]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][15] ([i915#6257] / [i915#6380]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-rpls-1/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][17] ([i915#5982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][19] ([i915#6298]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6579]: https://gitlab.freedesktop.org/drm/intel/issues/6579
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6642]: https://gitlab.freedesktop.org/drm/intel/issues/6642
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645


Build changes
-------------

  * Linux: CI_DRM_12022 -> Patchwork_107674v1

  CI-20190529: 20190529
  CI_DRM_12022: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107674v1: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

aea4883cde5f drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
dc0477f762cf ACPI: video: Fix indentation of video_detect_dmi_table[] entries
9d9dc4f0578f ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks
cb30b7176810 ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
5cb0261a859d ACPI: video: Remove acpi_video_set_dmi_backlight_type()
772e0684f9cc platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
e94cbdc56e56 platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
ea28b695c028 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
cda042fb3a22 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
d18f9ade199e platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
fb7b34fac49f platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
36a271fc81a1 platform/x86: apple-gmux: Stop calling acpi/video.h functions
51fe202b7285 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()
1c16b68737fa ACPI: video: Add Apple GMUX brightness control detection
c75e02994d47 ACPI: video: Add Nvidia WMI EC brightness control detection (v3)
1301e08e3f23 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
cca5625046fb platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header (v2)
1afc34348915 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
37d7b42ede91 drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
7b7115875253 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails (v2)
752b8689717f drm/i915: Call acpi_video_register_backlight() (v2)
5a4b15ea02f7 ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
17703151b0b8 ACPI: video: Make backlight class device registration a separate step (v2)
9cefc4a451fd ACPI: video: Simplify acpi_video_unregister_backlight()
27ea49dd513f ACPI: video: Remove acpi_video_bus from list before tearing it down
95a439ee397b ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
aaee9e5a2085 drm/nouveau: Don't register backlight when another backlight should be used (v2)
ea9f2e02572e drm/radeon: Don't register backlight when another backlight should be used (v3)
3845347b4fc2 drm/amdgpu: Don't register backlight when another backlight should be used (v3)
09ccf00c92b6 drm/i915: Don't register backlight when another backlight should be used
ca55e0429dd9 ACPI: video: Add acpi_video_backlight_use_native() helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/index.html

--===============5032973720110256725==
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
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107674/">https://patchwork.freedesktop.org/series/107674/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12022 -&gt; Patchwork_107674v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-dg2-8 <br />
  Missing    (2): bat-dg2-9 bat-jsl-3 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107674v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-pnv-d510/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-pnv-d510/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-hsw-4770/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5134">i915#5134</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6380">i915#6380</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12022/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107674v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12022 -&gt; Patchwork_107674v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12022: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107674v1: 7d700aafd2532afd10b5bd0d1fd76eb3a0d6610a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>aea4883cde5f drm/todo: Add entry about dealing with brightness control on devices with &gt; 1 panel<br />
dc0477f762cf ACPI: video: Fix indentation of video_detect_dmi_table[] entries<br />
9d9dc4f0578f ACPI: video: Drop NL5x?U, PF4NU1F and PF5?U?? acpi_backlight=native quirks<br />
cb30b7176810 ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk<br />
5cb0261a859d ACPI: video: Remove acpi_video_set_dmi_backlight_type()<br />
772e0684f9cc platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c<br />
e94cbdc56e56 platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c<br />
ea28b695c028 platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c<br />
cda042fb3a22 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling<br />
d18f9ade199e platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c<br />
fb7b34fac49f platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()<br />
36a271fc81a1 platform/x86: apple-gmux: Stop calling acpi/video.h functions<br />
51fe202b7285 platform/x86: nvidia-wmi-ec-backlight: Use acpi_video_get_backlight_type()<br />
1c16b68737fa ACPI: video: Add Apple GMUX brightness control detection<br />
c75e02994d47 ACPI: video: Add Nvidia WMI EC brightness control detection (v3)<br />
1301e08e3f23 ACPI: video: Refactor acpi_video_get_backlight_type() a bit<br />
cca5625046fb platform/x86: nvidia-wmi-ec-backlight: Move fw interface definitions to a header (v2)<br />
1afc34348915 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration<br />
37d7b42ede91 drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration<br />
7b7115875253 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails (v2)<br />
752b8689717f drm/i915: Call acpi_video_register_backlight() (v2)<br />
5a4b15ea02f7 ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers<br />
17703151b0b8 ACPI: video: Make backlight class device registration a separate step (v2)<br />
9cefc4a451fd ACPI: video: Simplify acpi_video_unregister_backlight()<br />
27ea49dd513f ACPI: video: Remove acpi_video_bus from list before tearing it down<br />
95a439ee397b ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()<br />
aaee9e5a2085 drm/nouveau: Don't register backlight when another backlight should be used (v2)<br />
ea9f2e02572e drm/radeon: Don't register backlight when another backlight should be used (v3)<br />
3845347b4fc2 drm/amdgpu: Don't register backlight when another backlight should be used (v3)<br />
09ccf00c92b6 drm/i915: Don't register backlight when another backlight should be used<br />
ca55e0429dd9 ACPI: video: Add acpi_video_backlight_use_native() helper</p>

</body>
</html>

--===============5032973720110256725==--
