Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF07160DF79
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 13:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA4E10E4B8;
	Wed, 26 Oct 2022 11:25:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A2DA210E4B8;
 Wed, 26 Oct 2022 11:25:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9858AAADDD;
 Wed, 26 Oct 2022 11:25:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4609399755696150881=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 26 Oct 2022 11:25:49 -0000
Message-ID: <166678354961.25382.12015790543851410459@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/sdvo=3A_Fix_LVDS_fixed_mode_setup_and_clean_up_output_set?=
 =?utf-8?q?up?=
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

--===============4609399755696150881==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/sdvo: Fix LVDS fixed mode setup and clean up output setup
URL   : https://patchwork.freedesktop.org/series/110167/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12296 -> Patchwork_110167v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-kbl-soraka fi-hsw-4770 fi-ctg-p8600 

Known issues
------------

  Here are the changes found in Patchwork_110167v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#7056])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12296/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][3] -> [INCOMPLETE][4] ([i915#7308])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12296/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][5] ([i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/bat-adlp-4/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - {bat-adln-1}:       [DMESG-FAIL][6] ([i915#4258]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12296/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308


Build changes
-------------

  * Linux: CI_DRM_12296 -> Patchwork_110167v1

  CI-20190529: 20190529
  CI_DRM_12296: dc5600688adfc13fed8128d9043bab2257066646 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110167v1: dc5600688adfc13fed8128d9043bab2257066646 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6613542fa09d drm/i915/sdvo: Fix debug print
c5fcf53343f0 drm/i915/sdvo: Reduce copy-pasta in output setup
1da2bdd43d84 drm/i915/sdvo: Get rid of the output type<->device index stuff
7bfb424234a7 drm/i915/sdvo: Don't add DDC modes for LVDS
264624d6a939 drm/i915/sdvo: Simplify output setup debugs
c81bba47b6e1 drm/i915/sdvo: Grab mode_config.mutex during LVDS init to avoid WARNs
2d12fc433e94 drm/i915/sdvo: Setup DDC fully before output init
ddde8400db09 drm/i915/sdvo: Filter out invalid outputs more sensibly

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/index.html

--===============4609399755696150881==
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
<tr><td><b>Series:</b></td><td>drm/i915/sdvo: Fix LVDS fixed mode setup and clean up output setup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110167/">https://patchwork.freedesktop.org/series/110167/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12296 -&gt; Patchwork_110167v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-kbl-soraka fi-hsw-4770 fi-ctg-p8600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110167v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12296/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7056">i915#7056</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12296/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12296/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110167v1/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12296 -&gt; Patchwork_110167v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12296: dc5600688adfc13fed8128d9043bab2257066646 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110167v1: dc5600688adfc13fed8128d9043bab2257066646 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6613542fa09d drm/i915/sdvo: Fix debug print<br />
c5fcf53343f0 drm/i915/sdvo: Reduce copy-pasta in output setup<br />
1da2bdd43d84 drm/i915/sdvo: Get rid of the output type&lt;-&gt;device index stuff<br />
7bfb424234a7 drm/i915/sdvo: Don't add DDC modes for LVDS<br />
264624d6a939 drm/i915/sdvo: Simplify output setup debugs<br />
c81bba47b6e1 drm/i915/sdvo: Grab mode_config.mutex during LVDS init to avoid WARNs<br />
2d12fc433e94 drm/i915/sdvo: Setup DDC fully before output init<br />
ddde8400db09 drm/i915/sdvo: Filter out invalid outputs more sensibly</p>

</body>
</html>

--===============4609399755696150881==--
