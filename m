Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 614F65B600E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 20:17:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A4B10E092;
	Mon, 12 Sep 2022 18:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C1D4510E092;
 Mon, 12 Sep 2022 18:17:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9A11A7DFF;
 Mon, 12 Sep 2022 18:17:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3973239629585102067=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 12 Sep 2022 18:17:41 -0000
Message-ID: <166300666175.11338.5757378555455985229@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Some_house_cleaning?=
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

--===============3973239629585102067==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Some house cleaning
URL   : https://patchwork.freedesktop.org/series/108426/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12123 -> Patchwork_108426v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-rkl-11600 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_108426v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][1] -> [INCOMPLETE][2] ([i915#3303] / [i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12123/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12123/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#4312] / [i915#6246])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - {bat-rpls-2}:       [DMESG-WARN][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12123/bat-rpls-2/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/bat-rpls-2/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6670]: https://gitlab.freedesktop.org/drm/intel/issues/6670


Build changes
-------------

  * Linux: CI_DRM_12123 -> Patchwork_108426v1

  CI-20190529: 20190529
  CI_DRM_12123: 5dd153b15e2e3198fca3d84db9e155f454645f91 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108426v1: 5dd153b15e2e3198fca3d84db9e155f454645f91 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d6f67a484e7a drm/i915: s/intel_connector/connector/ in init code
160000cb14b5 drm/i915: Finish s/intel_encoder/encoder/ rename
9558b8e1e3a0 drm/i915: Don't init eDP if we can't find a fixed mode
9c722f39880b drm/i915: Clean up connector->*_allowed setup
88f07fd6ec57 drm/i915: Extract intel_attach_scaling_mode_property()
f387bee2c7e3 drm/i915: Move eDP scaling_mode prop setup to the proper place
70470ea4c46b drm/i915: Extract intel_lvds_add_properties()
dc026855af76 drm/i915: Extract intel_dp_mst_add_properties()
d16db10af4d1 drm/i915: Extract intel_tv_add_properties()
4f08aa24180b drm/i915: Extract intel_edp_backlight_setup()
95df3fdc7b5e drm/i915: Pass intel_encoder to to_lvds_encoder()
72980db31b2c drm/i915: Use BIT() when dealing with output types
4a382d2e7ed5 drm/i915: Drop pointless 'budget' variable
1380e82d92b8 drm/i915: Clean up transcoder_to_stream_enc_status()
4943cf293b98 drm/i915: Drop pointless middle man variable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/index.html

--===============3973239629585102067==
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
<tr><td><b>Series:</b></td><td>drm/i915: Some house cleaning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108426/">https://patchwork.freedesktop.org/series/108426/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12123 -&gt; Patchwork_108426v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-rkl-11600 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108426v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12123/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12123/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12123/bat-rpls-2/igt@gem_exec_gttfill@basic.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108426v1/bat-rpls-2/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12123 -&gt; Patchwork_108426v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12123: 5dd153b15e2e3198fca3d84db9e155f454645f91 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6650: f7aff600ab16d6405f0704b1743d2b7909715752 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108426v1: 5dd153b15e2e3198fca3d84db9e155f454645f91 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d6f67a484e7a drm/i915: s/intel_connector/connector/ in init code<br />
160000cb14b5 drm/i915: Finish s/intel_encoder/encoder/ rename<br />
9558b8e1e3a0 drm/i915: Don't init eDP if we can't find a fixed mode<br />
9c722f39880b drm/i915: Clean up connector-&gt;*_allowed setup<br />
88f07fd6ec57 drm/i915: Extract intel_attach_scaling_mode_property()<br />
f387bee2c7e3 drm/i915: Move eDP scaling_mode prop setup to the proper place<br />
70470ea4c46b drm/i915: Extract intel_lvds_add_properties()<br />
dc026855af76 drm/i915: Extract intel_dp_mst_add_properties()<br />
d16db10af4d1 drm/i915: Extract intel_tv_add_properties()<br />
4f08aa24180b drm/i915: Extract intel_edp_backlight_setup()<br />
95df3fdc7b5e drm/i915: Pass intel_encoder to to_lvds_encoder()<br />
72980db31b2c drm/i915: Use BIT() when dealing with output types<br />
4a382d2e7ed5 drm/i915: Drop pointless 'budget' variable<br />
1380e82d92b8 drm/i915: Clean up transcoder_to_stream_enc_status()<br />
4943cf293b98 drm/i915: Drop pointless middle man variable</p>

</body>
</html>

--===============3973239629585102067==--
