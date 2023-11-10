Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4B27E854B
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 23:01:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1BD910E241;
	Fri, 10 Nov 2023 22:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A867F10E241;
 Fri, 10 Nov 2023 22:01:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1D66AADF0;
 Fri, 10 Nov 2023 22:01:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3770118680729430518=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Allen Ballway" <ballway@chromium.org>
Date: Fri, 10 Nov 2023 22:01:45 -0000
Message-ID: <169965370564.31678.5116472157843620073@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231017175728.1.Ibc6408a8ff1f334974104c5bcc25f2f35a57f36e@changeid>
In-Reply-To: <20231017175728.1.Ibc6408a8ff1f334974104c5bcc25f2f35a57f36e@changeid>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/quirk=3A_Add_quirk_for_devices_with_incorrect_PWM_frequen?=
 =?utf-8?b?Y3kgKHJldjIp?=
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

--===============3770118680729430518==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/quirk: Add quirk for devices with incorrect PWM frequency (rev2)
URL   : https://patchwork.freedesktop.org/series/125243/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13864 -> Patchwork_125243v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_125243v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_125243v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/index.html

Participating hosts (31 -> 32)
------------------------------

  Additional (2): fi-hsw-4770 bat-adlp-11 
  Missing    (1): fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_125243v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_migrate:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@i915_selftest@live@gem_migrate.html

  * igt@i915_selftest@live@gt_timelines:
    - bat-rpls-1:         [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/bat-rpls-1/igt@i915_selftest@live@gt_timelines.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-rpls-1/igt@i915_selftest@live@gt_timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_125243v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-adlp-11:        NOTRUN -> [FAIL][4] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-11/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-adlp-6:         NOTRUN -> [SKIP][5] ([i915#9318])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@debugfs_test@basic-hwmon.html
    - bat-jsl-3:          NOTRUN -> [SKIP][6] ([i915#9318])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@debugfs_test@basic-hwmon.html

  * igt@gem_huc_copy@huc-copy:
    - bat-jsl-3:          NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - bat-jsl-3:          NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@gem_lmem_swapping@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][9] ([i915#3282])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@gem_tiled_pread_basic.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#5190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-jsl-3:          NOTRUN -> [SKIP][11] ([i915#4103]) +1 other test skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
    - bat-adlp-6:         NOTRUN -> [SKIP][12] ([i915#4103] / [i915#5608]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-adlp-6:         NOTRUN -> [SKIP][13] ([i915#3555] / [i915#3840])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-jsl-3:          NOTRUN -> [SKIP][14] ([fdo#109285])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html
    - bat-adlp-6:         NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][16] -> [FAIL][17] ([IGT#3])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][18] ([fdo#109271]) +12 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-jsl-3:          NOTRUN -> [SKIP][20] ([i915#3555]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - bat-jsl-3:          [INCOMPLETE][21] -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/bat-jsl-3/igt@debugfs_test@read_all_entries.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - bat-adlp-6:         [INCOMPLETE][23] ([i915#8449]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/bat-adlp-6/igt@i915_module_load@load.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@i915_module_load@load.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-nick:        [FAIL][25] ([i915#9276]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5608]: https://gitlab.freedesktop.org/drm/intel/issues/5608
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8449]: https://gitlab.freedesktop.org/drm/intel/issues/8449
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9276]: https://gitlab.freedesktop.org/drm/intel/issues/9276
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_13864 -> Patchwork_125243v2

  CI-20190529: 20190529
  CI_DRM_13864: ecd94699e624f4498e03b43a85d8b8c374849346 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125243v2: ecd94699e624f4498e03b43a85d8b8c374849346 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e098ffabcc42 drm/i915/quirk: Add quirk for devices with incorrect PWM frequency

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/index.html

--===============3770118680729430518==
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
<tr><td><b>Series:</b></td><td>drm/i915/quirk: Add quirk for devices with incorrect PWM frequency (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125243/">https://patchwork.freedesktop.org/series/125243/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13864 -&gt; Patchwork_125243v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_125243v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_125243v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/index.html</p>
<h2>Participating hosts (31 -&gt; 32)</h2>
<p>Additional (2): fi-hsw-4770 bat-adlp-11 <br />
  Missing    (1): fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_125243v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@i915_selftest@live@gem_migrate.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/bat-rpls-1/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-rpls-1/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125243v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-11/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5608">i915#5608</a>) +1 other test skip</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
<li>
<p>bat-adlp-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-jsl-3:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/bat-jsl-3/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-jsl-3/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/bat-adlp-6/igt@i915_module_load@load.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8449">i915#8449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/bat-adlp-6/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13864/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9276">i915#9276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125243v2/fi-bsw-nick/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13864 -&gt; Patchwork_125243v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13864: ecd94699e624f4498e03b43a85d8b8c374849346 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7582: 453b9df12fbc9fff561bdb4eb97992983e74c3d4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125243v2: ecd94699e624f4498e03b43a85d8b8c374849346 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e098ffabcc42 drm/i915/quirk: Add quirk for devices with incorrect PWM frequency</p>

</body>
</html>

--===============3770118680729430518==--
