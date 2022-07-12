Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A26D3572773
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jul 2022 22:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEC5A93D79;
	Tue, 12 Jul 2022 20:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 195EA951B6;
 Tue, 12 Jul 2022 20:39:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 107C5A00A0;
 Tue, 12 Jul 2022 20:39:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2267213992822604688=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Tue, 12 Jul 2022 20:39:32 -0000
Message-ID: <165765837203.12861.8384352599110434750@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220712193910.439171-1-hdegoede@redhat.com>
In-Reply-To: <20220712193910.439171-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/kms=3A_Stop_registering_multiple_/sys/class/backlight_devs_for?=
 =?utf-8?q?_a_single_display_=28rev2=29?=
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

--===============2267213992822604688==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/kms: Stop registering multiple /sys/class/backlight devs for a single display (rev2)
URL   : https://patchwork.freedesktop.org/series/104084/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11877 -> Patchwork_104084v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_104084v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_104084v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html

Participating hosts (39 -> 33)
------------------------------

  Missing    (6): bat-dg1-5 bat-dg2-8 bat-adlp-6 bat-adln-1 bat-rpls-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104084v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@evict:
    - fi-bdw-5557u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bdw-5557u/igt@i915_selftest@live@evict.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bdw-5557u/igt@i915_selftest@live@evict.html

  
Known issues
------------

  Here are the changes found in Patchwork_104084v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bxt-dsi:         [PASS][3] -> [FAIL][4] ([i915#6003])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bxt-dsi/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bxt-dsi/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness:
    - fi-bsw-kefka:       [PASS][5] -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html
    - fi-kbl-soraka:      [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@gtt:
    - fi-bdw-5557u:       [PASS][9] -> [INCOMPLETE][10] ([i915#5685])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bdw-5557u/igt@i915_selftest@live@gtt.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-pnv-d510:        NOTRUN -> [SKIP][11] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - {fi-tgl-dsi}:       [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-tgl-dsi/igt@i915_module_load@load.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-tgl-dsi/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [DMESG-FAIL][14] ([i915#4528]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#5685]: https://gitlab.freedesktop.org/drm/intel/issues/5685
  [i915#6003]: https://gitlab.freedesktop.org/drm/intel/issues/6003


Build changes
-------------

  * Linux: CI_DRM_11877 -> Patchwork_104084v2

  CI-20190529: 20190529
  CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104084v2: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

03434f3a9b5d drm/todo: Add entry about dealing with brightness control on devices with > 1 panel
f60a678ae3cb ACPI: video: Fix indentation of video_detect_dmi_table[] entries
997c977f175b ACPI: video: Drop Clevo/TUXEDO NL5xRU and NL5xNU acpi_backlight=native quirks
d1d4384a3f9c ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk
6c3fca7964c0 ACPI: video: Remove acpi_video_set_dmi_backlight_type()
337df08b0d51 platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c
88a0cccaf8a5 platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c
2c02ab2a967a platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c
b544046af222 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling
47ec79e43441 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c
8ac54c7cc01a platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()
2c9a9d9c994e platform/x86: apple-gmux: Stop calling acpi/video.h functions
b8f094cb3d41 ACPI: video: Add Apple GMUX brightness control detection
94c7368718d0 ACPI: video: Add Nvidia WMI EC brightness control detection
76f5965ce704 ACPI: video: Refactor acpi_video_get_backlight_type() a bit
18c8318ff838 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration
55191d4ed5dd drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration
6bf61ef3e8c1 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails
c4b53a8741ca drm/i915: Call acpi_video_register_backlight() (v2)
2632beb4f21e ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers
f50e9be5558a ACPI: video: Make backlight class device registration a separate step
f488f7b8b479 ACPI: video: Simplify acpi_video_unregister_backlight()
c7f3edec1b91 ACPI: video: Remove acpi_video_bus from list before tearing it down
50ef46fbcd30 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()
7c7ce022fbbb drm/nouveau: Don't register backlight when another backlight should be used
bd0a8b322333 drm/radeon: Don't register backlight when another backlight should be used
28317e03719e drm/amdgpu: Don't register backlight when another backlight should be used
a657e3a2b224 drm/i915: Don't register backlight when another backlight should be used
804bae42c403 ACPI: video: Add acpi_video_backlight_use_native() helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html

--===============2267213992822604688==
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
<tr><td><b>Series:</b></td><td>drm/kms: Stop registering multiple /sys/class/backlight devs for a single display (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104084/">https://patchwork.freedesktop.org/series/104084/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11877 -&gt; Patchwork_104084v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_104084v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_104084v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/index.html</p>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Missing    (6): bat-dg1-5 bat-dg2-8 bat-adlp-6 bat-adln-1 bat-rpls-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_104084v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@evict:<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bdw-5557u/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bdw-5557u/igt@i915_selftest@live@evict.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104084v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bxt-dsi/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6003">i915#6003</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bsw-kefka/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gtt:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-bdw-5557u/igt@i915_selftest@live@gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5685">i915#5685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-pnv-d510/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-tgl-dsi/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-tgl-dsi/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104084v2/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11877 -&gt; Patchwork_104084v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104084v2: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>03434f3a9b5d drm/todo: Add entry about dealing with brightness control on devices with &gt; 1 panel<br />
f60a678ae3cb ACPI: video: Fix indentation of video_detect_dmi_table[] entries<br />
997c977f175b ACPI: video: Drop Clevo/TUXEDO NL5xRU and NL5xNU acpi_backlight=native quirks<br />
d1d4384a3f9c ACPI: video: Drop "Samsung X360" acpi_backlight=native quirk<br />
6c3fca7964c0 ACPI: video: Remove acpi_video_set_dmi_backlight_type()<br />
337df08b0d51 platform/x86: samsung-laptop: Move acpi_backlight=[vendor|native] quirks to ACPI video_detect.c<br />
88a0cccaf8a5 platform/x86: asus-wmi: Move acpi_backlight=native quirks to ACPI video_detect.c<br />
2c02ab2a967a platform/x86: asus-wmi: Move acpi_backlight=vendor quirks to ACPI video_detect.c<br />
b544046af222 platform/x86: asus-wmi: Drop DMI chassis-type check from backlight handling<br />
47ec79e43441 platform/x86: acer-wmi: Move backlight DMI quirks to acpi/video_detect.c<br />
8ac54c7cc01a platform/x86: toshiba_acpi: Stop using acpi_video_set_dmi_backlight_type()<br />
2c9a9d9c994e platform/x86: apple-gmux: Stop calling acpi/video.h functions<br />
b8f094cb3d41 ACPI: video: Add Apple GMUX brightness control detection<br />
94c7368718d0 ACPI: video: Add Nvidia WMI EC brightness control detection<br />
76f5965ce704 ACPI: video: Refactor acpi_video_get_backlight_type() a bit<br />
18c8318ff838 drm/radeon: Register ACPI video backlight when skipping radeon backlight registration<br />
55191d4ed5dd drm/amdgpu: Register ACPI video backlight when skipping amdgpu backlight registration<br />
6bf61ef3e8c1 drm/nouveau: Register ACPI video backlight when nv_backlight registration fails<br />
c4b53a8741ca drm/i915: Call acpi_video_register_backlight() (v2)<br />
2632beb4f21e ACPI: video: Remove code to unregister acpi_video backlight when a native backlight registers<br />
f50e9be5558a ACPI: video: Make backlight class device registration a separate step<br />
f488f7b8b479 ACPI: video: Simplify acpi_video_unregister_backlight()<br />
c7f3edec1b91 ACPI: video: Remove acpi_video_bus from list before tearing it down<br />
50ef46fbcd30 ACPI: video: Drop backlight_device_get_by_type() call from acpi_video_get_backlight_type()<br />
7c7ce022fbbb drm/nouveau: Don't register backlight when another backlight should be used<br />
bd0a8b322333 drm/radeon: Don't register backlight when another backlight should be used<br />
28317e03719e drm/amdgpu: Don't register backlight when another backlight should be used<br />
a657e3a2b224 drm/i915: Don't register backlight when another backlight should be used<br />
804bae42c403 ACPI: video: Add acpi_video_backlight_use_native() helper</p>

</body>
</html>

--===============2267213992822604688==--
