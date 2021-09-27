Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4262B41A14B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 23:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522FA89CC9;
	Mon, 27 Sep 2021 21:21:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE72289CC9;
 Mon, 27 Sep 2021 21:21:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6939A0BCB;
 Mon, 27 Sep 2021 21:21:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1783084437688489923=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 21:21:17 -0000
Message-ID: <163277767784.14084.8861337381637181672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210923200109.4459-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Reject_bogus_modes_with_fixed_mode_panels_=28rev3=29?=
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

--===============1783084437688489923==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Reject bogus modes with fixed mode panels (rev3)
URL   : https://patchwork.freedesktop.org/series/95003/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10648 -> Patchwork_21171
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21171:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gem_contexts:
    - {fi-jsl-1}:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10648/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_21171 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +32 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][5] -> [INCOMPLETE][6] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10648/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][9] ([fdo#109271]) +30 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (38 -> 33)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (6): bat-adls-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10648 -> Patchwork_21171

  CI-20190529: 20190529
  CI_DRM_10648: 73d93dcb0d48bb76af25ca3f7149598e4bc68098 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6219: 4b5644c9751b489c73c9bb174644c08b31533cc8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21171: 051b9c42f7f03e891937e28ecaffdf883805a931 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

051b9c42f7f0 drm/i915: Drop pointless fixed_mode checks from dsi code
cd57881984ad drm/i915: Reject user modes that don't match fixed mode's refresh rate
88a5d45a1997 drm/i915: Introduce intel_panel_compute_config()
13d031eb6f40 drm/i915: Reject modes that don't match fixed_mode vrefresh
86d77b08e13d drm/i915: Use intel_panel_mode_valid() for DSI/LVDS/DVO
a116ee272a40 drm/i915: Extract intel_panel_mode_valid()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/index.html

--===============1783084437688489923==
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
<tr><td><b>Series:</b></td><td>drm/i915: Reject bogus modes with fixed mode panels (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95003/">https://patchwork.freedesktop.org/series/95003/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10648 -&gt; Patchwork_21171</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21171:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10648/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-jsl-1/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21171 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10648/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21171/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (6): bat-adls-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10648 -&gt; Patchwork_21171</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10648: 73d93dcb0d48bb76af25ca3f7149598e4bc68098 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6219: 4b5644c9751b489c73c9bb174644c08b31533cc8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21171: 051b9c42f7f03e891937e28ecaffdf883805a931 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>051b9c42f7f0 drm/i915: Drop pointless fixed_mode checks from dsi code<br />
cd57881984ad drm/i915: Reject user modes that don't match fixed mode's refresh rate<br />
88a5d45a1997 drm/i915: Introduce intel_panel_compute_config()<br />
13d031eb6f40 drm/i915: Reject modes that don't match fixed_mode vrefresh<br />
86d77b08e13d drm/i915: Use intel_panel_mode_valid() for DSI/LVDS/DVO<br />
a116ee272a40 drm/i915: Extract intel_panel_mode_valid()</p>

</body>
</html>

--===============1783084437688489923==--
