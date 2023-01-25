Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808FD67C0C0
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jan 2023 00:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2728510E3A7;
	Wed, 25 Jan 2023 23:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D21B310E3A7;
 Wed, 25 Jan 2023 23:23:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA9BCA0099;
 Wed, 25 Jan 2023 23:23:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0080691963426163447=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 25 Jan 2023 23:23:01 -0000
Message-ID: <167468898180.5514.8543041408666407039@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1674643465.git.jani.nikula@intel.com>
In-Reply-To: <cover.1674643465.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_switch_to_drm=5Fedid_and_enable_HF-EEODB_support?=
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

--===============0080691963426163447==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: switch to drm_edid and enable HF-EEODB support
URL   : https://patchwork.freedesktop.org/series/113327/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12639 -> Patchwork_113327v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (2): fi-kbl-soraka fi-tgl-dsi 

Known issues
------------

  Here are the changes found in Patchwork_113327v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][1] -> [INCOMPLETE][2] ([i915#6972])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12639/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +26 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][4] ([fdo#109271] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - {bat-adlp-6}:       [DMESG-FAIL][5] ([i915#7699]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12639/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/bat-adlp-6/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-1}:       [DMESG-FAIL][7] ([i915#4983]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12639/bat-rpls-1/igt@i915_selftest@live@reset.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7834]: https://gitlab.freedesktop.org/drm/intel/issues/7834


Build changes
-------------

  * Linux: CI_DRM_12639 -> Patchwork_113327v1

  CI-20190529: 20190529
  CI_DRM_12639: 81c7c4a9c86dac434bc6d8c97fdc440866ca0d65 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113327v1: 81c7c4a9c86dac434bc6d8c97fdc440866ca0d65 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

75695bb6a1eb drm/i915/panel: move panel fixed EDID to struct intel_panel
1d2d765aaee7 drm/i915/opregion: convert intel_opregion_get_edid() to struct drm_edid
99c3dec8cf35 drm/i915/bios: convert intel_bios_init_panel() to drm_edid
bf3e19d682fb drm/i915/edid: convert DP, HDMI and LVDS to drm_edid

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/index.html

--===============0080691963426163447==
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
<tr><td><b>Series:</b></td><td>drm/i915: switch to drm_edid and enable HF-EEODB support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113327/">https://patchwork.freedesktop.org/series/113327/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12639 -&gt; Patchwork_113327v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (2): fi-kbl-soraka fi-tgl-dsi </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113327v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12639/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12639/bat-adlp-6/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12639/bat-rpls-1/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113327v1/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12639 -&gt; Patchwork_113327v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12639: 81c7c4a9c86dac434bc6d8c97fdc440866ca0d65 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113327v1: 81c7c4a9c86dac434bc6d8c97fdc440866ca0d65 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>75695bb6a1eb drm/i915/panel: move panel fixed EDID to struct intel_panel<br />
1d2d765aaee7 drm/i915/opregion: convert intel_opregion_get_edid() to struct drm_edid<br />
99c3dec8cf35 drm/i915/bios: convert intel_bios_init_panel() to drm_edid<br />
bf3e19d682fb drm/i915/edid: convert DP, HDMI and LVDS to drm_edid</p>

</body>
</html>

--===============0080691963426163447==--
