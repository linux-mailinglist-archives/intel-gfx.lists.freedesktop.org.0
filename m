Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E3B409954
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 18:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51D46E1BD;
	Mon, 13 Sep 2021 16:34:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 851736E1BD;
 Mon, 13 Sep 2021 16:34:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C98AA01BB;
 Mon, 13 Sep 2021 16:34:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3776770697616977617=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 16:34:27 -0000
Message-ID: <163155086747.12461.2926509506803352906@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_bigjoiner_state_readout?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3776770697616977617==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix bigjoiner state readout
URL   : https://patchwork.freedesktop.org/series/94609/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10574 -> Patchwork_21023
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/index.html

Known issues
------------

  Here are the changes found in Patchwork_21023 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +10 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][2] -> [INCOMPLETE][3] ([i915#3921])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#1982]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-y/igt@i915_module_load@reload.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-rkl-guc:         [FAIL][8] ([i915#3983]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3983]: https://gitlab.freedesktop.org/drm/intel/issues/3983


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10574 -> Patchwork_21023

  CI-20190529: 20190529
  CI_DRM_10574: 3ad0415f7f7a68058d5ff02d8a7ac51d8b542cf9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6204: 1084c5eb74fd0daf8c9b8e83e85f5208c396579b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21023: 87e0b2b138a24fe72223a9be289195193f7be5cb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

87e0b2b138a2 drm/i915: Nuke PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE
18329b38477a drm/i915: Reduce bigjoiner special casing
d1e188d0f92d drm/i915: Perform correct cpu_transcoder readout for bigjoiner
c2e6e3a6e446 drm/i915: Split PPS write from DSC enable
4ac52967591b drm/i915: Simplify intel_crtc_copy_uapi_to_hw_state_nomodeset()
414928c8adbe drm/i915: Introduce intel_master_crtc()
228d612ee392 drm/i915: Configure TRANSCONF just the once with bigjoiner
f72fb22ecd92 drm/i915: Pimp HSW+ transcoder state readout
d395994fdc73 drm/i915: Extract hsw_panel_transcoders()
5adf1c1b4f21 drm/i915: Adjust intel_dsc_power_domain() calling convention
6e8de16f0343 drm/i915: Introduce with_intel_display_power_if_enabled()
9f3183ee9429 drm/i915: s/pipe/transcoder/ when dealing with PIPECONF/TRANSCONF
a3fc21d5d6df drm/i915: Flatten hsw_crtc_compute_clock()
9be6c55e57d1 drm/i915: Extract intel_dp_use_bigjoiner()
36568f62f4b3 drm/i915: Disable all planes before modesetting any pipes
c2571575849c Revert "drm/i915/display: Disable audio, DRRS and PSR before planes"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/index.html

--===============3776770697616977617==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix bigjoiner state readout</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94609/">https://patchwork.freedesktop.org/series/94609/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10574 -&gt; Patchwork_21023</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21023 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10574/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3983">i915#3983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21023/fi-rkl-guc/igt@kms_force_connector_basic@force-connector-state.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10574 -&gt; Patchwork_21023</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10574: 3ad0415f7f7a68058d5ff02d8a7ac51d8b542cf9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6204: 1084c5eb74fd0daf8c9b8e83e85f5208c396579b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21023: 87e0b2b138a24fe72223a9be289195193f7be5cb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>87e0b2b138a2 drm/i915: Nuke PIPE_CONFIG_QUIRK_BIGJOINER_SLAVE<br />
18329b38477a drm/i915: Reduce bigjoiner special casing<br />
d1e188d0f92d drm/i915: Perform correct cpu_transcoder readout for bigjoiner<br />
c2e6e3a6e446 drm/i915: Split PPS write from DSC enable<br />
4ac52967591b drm/i915: Simplify intel_crtc_copy_uapi_to_hw_state_nomodeset()<br />
414928c8adbe drm/i915: Introduce intel_master_crtc()<br />
228d612ee392 drm/i915: Configure TRANSCONF just the once with bigjoiner<br />
f72fb22ecd92 drm/i915: Pimp HSW+ transcoder state readout<br />
d395994fdc73 drm/i915: Extract hsw_panel_transcoders()<br />
5adf1c1b4f21 drm/i915: Adjust intel_dsc_power_domain() calling convention<br />
6e8de16f0343 drm/i915: Introduce with_intel_display_power_if_enabled()<br />
9f3183ee9429 drm/i915: s/pipe/transcoder/ when dealing with PIPECONF/TRANSCONF<br />
a3fc21d5d6df drm/i915: Flatten hsw_crtc_compute_clock()<br />
9be6c55e57d1 drm/i915: Extract intel_dp_use_bigjoiner()<br />
36568f62f4b3 drm/i915: Disable all planes before modesetting any pipes<br />
c2571575849c Revert "drm/i915/display: Disable audio, DRRS and PSR before planes"</p>

</body>
</html>

--===============3776770697616977617==--
