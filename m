Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ECF7FCC21
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 02:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DDF110E5D8;
	Wed, 29 Nov 2023 01:06:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FB5810E5D8;
 Wed, 29 Nov 2023 01:06:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 57614A47DF;
 Wed, 29 Nov 2023 01:06:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7463661288690518995=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 29 Nov 2023 01:06:52 -0000
Message-ID: <170122001232.12093.10470525835439001029@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231128115138.13238-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_cdclk/voltage=5Flevel_cleanups_and_fixes?=
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

--===============7463661288690518995==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: cdclk/voltage_level cleanups and fixes
URL   : https://patchwork.freedesktop.org/series/126979/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13940 -> Patchwork_126979v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/index.html

Participating hosts (39 -> 35)
------------------------------

  Missing    (4): bat-mtlp-8 bat-kbl-2 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_126979v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-adlp-11:        [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adlp-11/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-adlp-11/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-glk-j4005:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-5:         [PASS][5] -> [DMESG-WARN][6] ([i915#5591])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adls-5/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-adls-5/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][7] -> [INCOMPLETE][8] ([i915#9664])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
    - bat-jsl-1:          [PASS][9] -> [INCOMPLETE][10] ([i915#9664])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-dg2-9:          [INCOMPLETE][11] ([i915#9275]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][13] ([IGT#3]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9664]: https://gitlab.freedesktop.org/drm/intel/issues/9664


Build changes
-------------

  * Linux: CI_DRM_13940 -> Patchwork_126979v1

  CI-20190529: 20190529
  CI_DRM_13940: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126979v1: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7db23071146e drm/i915: Simplify intel_ddi_compute_min_voltage_level()
c1c10ef5aa0e drm/i915/mtl: Calculate the correct voltage level from port_clock
c6672d1d4e4f drm/i915: Split intel_ddi_compute_min_voltage_level() into platform variants
ef3a9106841b drm/i915/mtl: Fix voltage_level for cdclk==480MHz
950c9b113ae2 drm/i915/cdclk: Rewrite cdclk->voltage_level selection to use tables
5ec914296f72 drm/i915/cdclk: Remove the assumption that cd2x div==2 when using squashing
72649f96b8f9 drm/i915/cdclk: Give the squash waveform length a name
682ad79ad219 drm/i915/cdclk: s/-1/~0/ when dealing with unsigned values

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/index.html

--===============7463661288690518995==
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
<tr><td><b>Series:</b></td><td>drm/i915: cdclk/voltage_level cleanups and fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126979/">https://patchwork.freedesktop.org/series/126979/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13940 -&gt; Patchwork_126979v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): bat-mtlp-8 bat-kbl-2 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126979v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adlp-11/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-adlp-11/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-adls-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-adls-5/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>
<p>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9664">i915#9664</a>)</p>
</li>
<li>
<p>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-jsl-1/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9664">i915#9664</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13940/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126979v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13940 -&gt; Patchwork_126979v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13940: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7609: 72a759595100b8d167ca78cd2d62e9acd97e36bf @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126979v1: 901cb0fd3326a1c7d40bed6568db1d9e46a1f466 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7db23071146e drm/i915: Simplify intel_ddi_compute_min_voltage_level()<br />
c1c10ef5aa0e drm/i915/mtl: Calculate the correct voltage level from port_clock<br />
c6672d1d4e4f drm/i915: Split intel_ddi_compute_min_voltage_level() into platform variants<br />
ef3a9106841b drm/i915/mtl: Fix voltage_level for cdclk==480MHz<br />
950c9b113ae2 drm/i915/cdclk: Rewrite cdclk-&gt;voltage_level selection to use tables<br />
5ec914296f72 drm/i915/cdclk: Remove the assumption that cd2x div==2 when using squashing<br />
72649f96b8f9 drm/i915/cdclk: Give the squash waveform length a name<br />
682ad79ad219 drm/i915/cdclk: s/-1/~0/ when dealing with unsigned values</p>

</body>
</html>

--===============7463661288690518995==--
