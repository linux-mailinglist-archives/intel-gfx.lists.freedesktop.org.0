Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D451B66A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 05:16:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1476210F8DC;
	Thu,  5 May 2022 03:16:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FAC010F8DC;
 Thu,  5 May 2022 03:16:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0E045AADD3;
 Thu,  5 May 2022 03:16:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8945854298427319890=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 05 May 2022 03:16:27 -0000
Message-ID: <165172058702.7659.15817931452529401379@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Make_fastset_not_suck_and_allow_seamless_M/N_changes_?=
 =?utf-8?b?KHJldjQp?=
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

--===============8945854298427319890==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Make fastset not suck and allow seamless M/N changes (rev4)
URL   : https://patchwork.freedesktop.org/series/103491/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11607 -> Patchwork_103491v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (2): bat-adlm-1 bat-dg2-9 
  Missing    (3): bat-dg2-8 fi-rkl-11600 fi-bsw-cyan 

Known issues
------------

  Here are the changes found in Patchwork_103491v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][1] -> [INCOMPLETE][2] ([i915#5801] / [i915#5847])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-8809g:       [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-kbl-8809g/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-kbl-8809g/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-snb-2600:        NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#3428] / [i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bxt-dsi:         NOTRUN -> [FAIL][8] ([i915#5257])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-bxt-dsi/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][9] ([i915#3303] / [i915#4785]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
    - {fi-ehl-2}:         [INCOMPLETE][11] ([i915#5134]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][13] ([i915#3921]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][15] ([i915#4983] / [i915#5338]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/bat-rpls-1/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][17] ([i915#3576]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#5171]: https://gitlab.freedesktop.org/drm/intel/issues/5171
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5181]: https://gitlab.freedesktop.org/drm/intel/issues/5181
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5329]: https://gitlab.freedesktop.org/drm/intel/issues/5329
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5338]: https://gitlab.freedesktop.org/drm/intel/issues/5338
  [i915#5537]: https://gitlab.freedesktop.org/drm/intel/issues/5537
  [i915#5606]: https://gitlab.freedesktop.org/drm/intel/issues/5606
  [i915#5703]: https://gitlab.freedesktop.org/drm/intel/issues/5703
  [i915#5775]: https://gitlab.freedesktop.org/drm/intel/issues/5775
  [i915#5801]: https://gitlab.freedesktop.org/drm/intel/issues/5801
  [i915#5847]: https://gitlab.freedesktop.org/drm/intel/issues/5847


Build changes
-------------

  * Linux: CI_DRM_11607 -> Patchwork_103491v4

  CI-20190529: 20190529
  CI_DRM_11607: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6465: f6bb4399881a806fbff75ce3df89b60286d55917 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103491v4: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

940d8c3ae7e3 drm/i915: Round TMDS clock to nearest
974d1f0f2f47 drm/i915: Round to closest in M/N calculations
1ee98a0e8064 drm/i915: Use a fixed N value always
4f6da868519b drm/i915: Require an exact DP link freq match for the DG2 PLL
e6528bc1b478 drm/i915: Allow M/N change during fastset on bdw+
c61b8c7394c9 drm/i915: Add intel_panel_highest_mode()
28216b3c7e50 drm/i915: Check hw.enable and hw.active in intel_pipe_config_compare()
ec03a48feaa4 drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled
feab306ca85b drm/i915: Nuke fastet state copy hacks
77cfcaa85641 drm/i915: Set active dpll early for icl+
a95aebd02268 drm/i915: Make all clock checks non-fuzzy
73adc42965f8 drm/i915: Make M/N checks non-fuzzy
9dad727d1830 drm/i915: Skip FDI vs. dotclock sanity check during readout
89b67046c1ce drm/i915: Compute clocks earlier
b3171a362400 drm/i915: Feed the DPLL output freq back into crtc_state
8bd35246ef57 drm/i915: Introduce struct iclkip_params
80358929fadb drm/i915: Extract intel_crtc_dotclock()
a16a168a5a0c drm/i915: Improve modeset debugs
7030a2cd7cb7 drm/i915: s/pipe_config/crtc_state/
e68b09f90e06 drm/i915: Adjust intel_modeset_pipe_config() & co. calling convention
d8d0963f2a10 drm/i915: Extract PIPE_CONF_CHECK_RECT()
fee56952e76c drm/i915: Extract PIPE_CONF_CHECK_TIMINGS()
c449b9a0548d drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()
bcfb20e75d14 drm/i915: Clean up DPLL related debugs
eb226d9ddd6a drm/i915: Do .crtc_compute_clock() earlier
dff87200df64 drm/i915: Split shared dpll .get_dplls() into compute and get phases

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/index.html

--===============8945854298427319890==
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
<tr><td><b>Series:</b></td><td>drm/i915: Make fastset not suck and allow seamless M/N changes (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103491/">https://patchwork.freedesktop.org/series/103491/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11607 -&gt; Patchwork_103491v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (2): bat-adlm-1 bat-dg2-9 <br />
  Missing    (3): bat-dg2-8 fi-rkl-11600 fi-bsw-cyan </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_103491v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5801">i915#5801</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5847">i915#5847</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-kbl-8809g/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-kbl-8809g/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-snb-2600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5134">i915#5134</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5338">i915#5338</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11607/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103491v4/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11607 -&gt; Patchwork_103491v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11607: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6465: f6bb4399881a806fbff75ce3df89b60286d55917 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103491v4: b0f0de5bb000952abb29696adb93f289e49b129c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>940d8c3ae7e3 drm/i915: Round TMDS clock to nearest<br />
974d1f0f2f47 drm/i915: Round to closest in M/N calculations<br />
1ee98a0e8064 drm/i915: Use a fixed N value always<br />
4f6da868519b drm/i915: Require an exact DP link freq match for the DG2 PLL<br />
e6528bc1b478 drm/i915: Allow M/N change during fastset on bdw+<br />
c61b8c7394c9 drm/i915: Add intel_panel_highest_mode()<br />
28216b3c7e50 drm/i915: Check hw.enable and hw.active in intel_pipe_config_compare()<br />
ec03a48feaa4 drm/i915: Skip intel_modeset_pipe_config_late() if the pipe is not enabled<br />
feab306ca85b drm/i915: Nuke fastet state copy hacks<br />
77cfcaa85641 drm/i915: Set active dpll early for icl+<br />
a95aebd02268 drm/i915: Make all clock checks non-fuzzy<br />
73adc42965f8 drm/i915: Make M/N checks non-fuzzy<br />
9dad727d1830 drm/i915: Skip FDI vs. dotclock sanity check during readout<br />
89b67046c1ce drm/i915: Compute clocks earlier<br />
b3171a362400 drm/i915: Feed the DPLL output freq back into crtc_state<br />
8bd35246ef57 drm/i915: Introduce struct iclkip_params<br />
80358929fadb drm/i915: Extract intel_crtc_dotclock()<br />
a16a168a5a0c drm/i915: Improve modeset debugs<br />
7030a2cd7cb7 drm/i915: s/pipe_config/crtc_state/<br />
e68b09f90e06 drm/i915: Adjust intel_modeset_pipe_config() &amp; co. calling convention<br />
d8d0963f2a10 drm/i915: Extract PIPE_CONF_CHECK_RECT()<br />
fee56952e76c drm/i915: Extract PIPE_CONF_CHECK_TIMINGS()<br />
c449b9a0548d drm/i915: Reassign DPLLs only for crtcs going throug .compute_config()<br />
bcfb20e75d14 drm/i915: Clean up DPLL related debugs<br />
eb226d9ddd6a drm/i915: Do .crtc_compute_clock() earlier<br />
dff87200df64 drm/i915: Split shared dpll .get_dplls() into compute and get phases</p>

</body>
</html>

--===============8945854298427319890==--
