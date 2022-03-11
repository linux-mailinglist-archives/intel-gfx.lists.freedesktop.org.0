Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDAD4D692B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 20:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF16110EA5F;
	Fri, 11 Mar 2022 19:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDF8210EA5F;
 Fri, 11 Mar 2022 19:43:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAD09A0169;
 Fri, 11 Mar 2022 19:43:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3446184750602949199=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Mar 2022 19:43:22 -0000
Message-ID: <164702780293.23985.16291563667562532926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_DRRS_fixes/cleanups_and_start_of_static_DRRS_=28rev2?=
 =?utf-8?q?=29?=
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

--===============3446184750602949199==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: DRRS fixes/cleanups and start of static DRRS (rev2)
URL   : https://patchwork.freedesktop.org/series/101222/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11352 -> Patchwork_22544
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22544 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22544, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/index.html

Participating hosts (42 -> 38)
------------------------------

  Additional (1): bat-dg2-9 
  Missing    (5): fi-bxt-dsi fi-rkl-guc shard-tglu fi-bsw-cyan fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22544:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {fi-jsl-1}:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-jsl-1/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-jsl-1/igt@i915_selftest@live@reset.html

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/bat-adlp-6/igt@kms_busy@basic@flip.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/bat-adlp-6/igt@kms_busy@basic@flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_22544 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][9] -> [INCOMPLETE][10] ([i915#3921])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-bwr-2160:        NOTRUN -> [FAIL][11] ([i915#2722] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][12] ([i915#1436] / [i915#2426] / [i915#4312])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-kbl-soraka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@requests:
    - {bat-rpls-2}:       [INCOMPLETE][13] ([i915#4983]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/bat-rpls-2/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/bat-rpls-2/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][15] ([i915#3049]) -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5291]: https://gitlab.freedesktop.org/drm/intel/issues/5291


Build changes
-------------

  * Linux: CI_DRM_11352 -> Patchwork_22544

  CI-20190529: 20190529
  CI_DRM_11352: 45e9e5b3112ebf7c3bed118a1f10526bc95ca973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6378: 9c79047f49acdb6450368ee13fd8b6d28f3fb8e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22544: f06124f63b7aa22dee57cc4fcf02751793dbfeee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f06124f63b7a drm/i915: Convert fixed_mode/downclock_mode into a list
03d2ad9160a3 drm/i915: Implement static DRRS
ad6c9abe5c1d drm/i915: Enable eDP DRRS on ilk/snb port A
66669c163c68 drm/i915: Move DRRS enable/disable higher up
ca1a8eb54646 drm/i915: Stash DRRS state under intel_crtc
bb15348a55b1 drm/i915: Eliminate the intel_dp dependency from DRRS
1345c858db5e drm/i915: Introduce intel_drrs_type_str()
9d175b312730 drm/i915: Introduce intel_panel_drrs_type()
6b25a4dacf26 drm/i915: Introduce intel_panel_preferred_fixed_mode()
c979129053ad drm/i915: Introduce intel_panel_get_modes()
c2c0474c1e8d drm/i915: Introduce intel_panel_{fixed, downclock}_mode()
6d8a7101ac57 drm/i915: Nuke dev_priv->drrs.type
81362947328f drm/i915: Simplify intel_panel_info()
bdc82c0b879a drm/i915/lvds: Pass fixed_mode to compute_is_dual_link_lvds()
e17b931fdd3c drm/i915/sdvo: Passt the requesed mode to intel_sdvo_create_preferred_input_timing()
dda13ef0a9df drm/i915/dsi: Pass fixed_mode to *_dsi_add_properties()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/index.html

--===============3446184750602949199==
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
<tr><td><b>Series:</b></td><td>drm/i915: DRRS fixes/cleanups and start of static DRRS (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101222/">https://patchwork.freedesktop.org/series/101222/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11352 -&gt; Patchwork_22544</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22544 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22544, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/index.html</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Additional (1): bat-dg2-9 <br />
  Missing    (5): fi-bxt-dsi fi-rkl-guc shard-tglu fi-bsw-cyan fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22544:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-jsl-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-jsl-1/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22544 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/bat-rpls-2/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11352/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22544/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11352 -&gt; Patchwork_22544</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11352: 45e9e5b3112ebf7c3bed118a1f10526bc95ca973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6378: 9c79047f49acdb6450368ee13fd8b6d28f3fb8e1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22544: f06124f63b7aa22dee57cc4fcf02751793dbfeee @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f06124f63b7a drm/i915: Convert fixed_mode/downclock_mode into a list<br />
03d2ad9160a3 drm/i915: Implement static DRRS<br />
ad6c9abe5c1d drm/i915: Enable eDP DRRS on ilk/snb port A<br />
66669c163c68 drm/i915: Move DRRS enable/disable higher up<br />
ca1a8eb54646 drm/i915: Stash DRRS state under intel_crtc<br />
bb15348a55b1 drm/i915: Eliminate the intel_dp dependency from DRRS<br />
1345c858db5e drm/i915: Introduce intel_drrs_type_str()<br />
9d175b312730 drm/i915: Introduce intel_panel_drrs_type()<br />
6b25a4dacf26 drm/i915: Introduce intel_panel_preferred_fixed_mode()<br />
c979129053ad drm/i915: Introduce intel_panel_get_modes()<br />
c2c0474c1e8d drm/i915: Introduce intel_panel_{fixed, downclock}_mode()<br />
6d8a7101ac57 drm/i915: Nuke dev_priv-&gt;drrs.type<br />
81362947328f drm/i915: Simplify intel_panel_info()<br />
bdc82c0b879a drm/i915/lvds: Pass fixed_mode to compute_is_dual_link_lvds()<br />
e17b931fdd3c drm/i915/sdvo: Passt the requesed mode to intel_sdvo_create_preferred_input_timing()<br />
dda13ef0a9df drm/i915/dsi: Pass fixed_mode to *_dsi_add_properties()</p>

</body>
</html>

--===============3446184750602949199==--
