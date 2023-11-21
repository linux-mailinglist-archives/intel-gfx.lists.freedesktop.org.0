Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A421D7F25E8
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Nov 2023 07:47:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D1310E121;
	Tue, 21 Nov 2023 06:47:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 623F010E121;
 Tue, 21 Nov 2023 06:47:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27BCEA3ECB;
 Tue, 21 Nov 2023 06:47:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8175058008335402680=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 21 Nov 2023 06:47:24 -0000
Message-ID: <170054924413.30159.13546443010996018574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231121054324.9988-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Audio_fastset=2C_and_some_fixes_=28rev3=29?=
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

--===============8175058008335402680==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Audio fastset, and some fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/126041/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13901 -> Patchwork_126041v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126041v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126041v3, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/index.html

Participating hosts (31 -> 27)
------------------------------

  Additional (2): fi-hsw-4770 fi-pnv-d510 
  Missing    (6): fi-kbl-soraka fi-kbl-7567u bat-dg2-9 fi-snb-2520m bat-dg2-11 bat-mtlp-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126041v3:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-blb-e6850:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-blb-e6850/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-blb-e6850/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_126041v3 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-tgl-1115g4:      [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-tgl-1115g4/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-tgl-1115g4/boot.html
    - fi-hsw-4770:        NOTRUN -> [FAIL][5] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-hsw-4770/boot.html
    - fi-apl-guc:         [PASS][6] -> [FAIL][7] ([i915#8293])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-apl-guc/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][8] ([fdo#109271]) +25 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][9] -> [ABORT][10] ([i915#7911])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * {igt@kms_psr@psr_cursor_plane_move@edp-1}:
    - bat-jsl-1:          [SKIP][11] ([i915#9648]) -> [PASS][12] +2 other tests pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/bat-jsl-1/igt@kms_psr@psr_cursor_plane_move@edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/bat-jsl-1/igt@kms_psr@psr_cursor_plane_move@edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648


Build changes
-------------

  * Linux: CI_DRM_13901 -> Patchwork_126041v3

  CI-20190529: 20190529
  CI_DRM_13901: 8d55b3869b666b36e26a40cfc2f1f84b72a34cd3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126041v3: 8d55b3869b666b36e26a40cfc2f1f84b72a34cd3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3e00f8e223a4 drm/i915: Implement audio fastset
6b6cb0c81be7 drm/i915: Push audio_{enable, disable}() to the pre/post pane update stage
905c6a3bfcf7 drm/i915: Hoist the encoder->audio_{enable, disable}() calls higher up
69b4cf29364c drm/i915: Convert audio enable/disable into encoder vfuncs
040e8f7f59b8 drm/i915: Split g4x+ HDMI audio presence detect from port enable
7558f66c12cb drm/i915: Split g4x+ DP audio presence detect from port enable
8ede16f02242 drm/i915: Wrap g4x+ DP/HDMI audio enable/disable
deda336c27cc drm/i915: Push audio enable/disable further out
05bfa561cc2b drm/i915: Polish some RMWs
1a1cfe0fd09e drm/i915: Call intel_pre_plane_updates() also for pipes getting enabled
a386160d11cd drm/i915: Check pipe active state in {planes, vrr}_{enabling, disabling}()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/index.html

--===============8175058008335402680==
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
<tr><td><b>Series:</b></td><td>drm/i915: Audio fastset, and some fixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126041/">https://patchwork.freedesktop.org/series/126041/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13901 -&gt; Patchwork_126041v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126041v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126041v3, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/index.html</p>
<h2>Participating hosts (31 -&gt; 27)</h2>
<p>Additional (2): fi-hsw-4770 fi-pnv-d510 <br />
  Missing    (6): fi-kbl-soraka fi-kbl-7567u bat-dg2-9 fi-snb-2520m bat-dg2-11 bat-mtlp-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126041v3:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-blb-e6850/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-blb-e6850/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126041v3 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>boot:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-tgl-1115g4/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-tgl-1115g4/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</p>
</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>{igt@kms_psr@psr_cursor_plane_move@edp-1}:<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13901/bat-jsl-1/igt@kms_psr@psr_cursor_plane_move@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9648">i915#9648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126041v3/bat-jsl-1/igt@kms_psr@psr_cursor_plane_move@edp-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13901 -&gt; Patchwork_126041v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13901: 8d55b3869b666b36e26a40cfc2f1f84b72a34cd3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126041v3: 8d55b3869b666b36e26a40cfc2f1f84b72a34cd3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3e00f8e223a4 drm/i915: Implement audio fastset<br />
6b6cb0c81be7 drm/i915: Push audio_{enable, disable}() to the pre/post pane update stage<br />
905c6a3bfcf7 drm/i915: Hoist the encoder-&gt;audio_{enable, disable}() calls higher up<br />
69b4cf29364c drm/i915: Convert audio enable/disable into encoder vfuncs<br />
040e8f7f59b8 drm/i915: Split g4x+ HDMI audio presence detect from port enable<br />
7558f66c12cb drm/i915: Split g4x+ DP audio presence detect from port enable<br />
8ede16f02242 drm/i915: Wrap g4x+ DP/HDMI audio enable/disable<br />
deda336c27cc drm/i915: Push audio enable/disable further out<br />
05bfa561cc2b drm/i915: Polish some RMWs<br />
1a1cfe0fd09e drm/i915: Call intel_pre_plane_updates() also for pipes getting enabled<br />
a386160d11cd drm/i915: Check pipe active state in {planes, vrr}_{enabling, disabling}()</p>

</body>
</html>

--===============8175058008335402680==--
