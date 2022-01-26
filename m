Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4D749C4BC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 08:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EDC310E13D;
	Wed, 26 Jan 2022 07:51:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DF2310E13D;
 Wed, 26 Jan 2022 07:51:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07CE2A0003;
 Wed, 26 Jan 2022 07:51:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0397119644755078602=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 26 Jan 2022 07:51:06 -0000
Message-ID: <164318346699.25401.1776989840157884247@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220124192638.26262-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Skip_dsc_readout_if_the?=
 =?utf-8?q?_transcoder_is_disabled_=28rev3=29?=
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

--===============0397119644755078602==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915: Skip dsc readout if the transcoder is disabled (rev3)
URL   : https://patchwork.freedesktop.org/series/99276/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11137 -> Patchwork_22107
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/index.html

Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-bsw-cyan fi-icl-u2 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22107 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       [PASS][1] -> [INCOMPLETE][2] ([i915#4547])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3] ([i915#2722] / [i915#4312])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - {fi-tgl-dsi}:       [DMESG-WARN][4] ([i915#1982]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  
#### Warnings ####

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          [DMESG-FAIL][6] ([i915#4494]) -> [DMESG-FAIL][7] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/bat-dg1-6/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957


Build changes
-------------

  * Linux: CI_DRM_11137 -> Patchwork_22107

  CI-20190529: 20190529
  CI_DRM_11137: 4d22013ea4c52e5dd3625861c9c65fb8027f53a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6332: 27c9c3f5181a840c777399be7681d2cadd7940cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22107: a482258b26c8cc8fd2caec0a5a9e418ec91110a9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a482258b26c8 drm/i915: Move dsc/joiner enable into hsw_crtc_enable()
a422870c91fe drm/i915: Extract hsw_configure_cpu_transcoder()
6e0a920132a4 drm/i915: Use per-device debugs for bigjoiner stuff
996231b27dcd drm/i915: Simplify intel_dsc_source_support()
b3833d967cb7 drm/i915: Skip dsc readout if the transcoder is disabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/index.html

--===============0397119644755078602==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915: Skip dsc readout if the transcoder is disabled (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99276/">https://patchwork.freedesktop.org/series/99276/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11137 -&gt; Patchwork_22107</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/index.html</p>
<h2>Participating hosts (48 -&gt; 42)</h2>
<p>Missing    (6): fi-hsw-4200u fi-bsw-cyan fi-icl-u2 fi-ctg-p8600 fi-pnv-d510 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22107 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc-pipe-c:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/fi-tgl-dsi/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11137/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22107/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11137 -&gt; Patchwork_22107</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11137: 4d22013ea4c52e5dd3625861c9c65fb8027f53a6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6332: 27c9c3f5181a840c777399be7681d2cadd7940cd @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22107: a482258b26c8cc8fd2caec0a5a9e418ec91110a9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a482258b26c8 drm/i915: Move dsc/joiner enable into hsw_crtc_enable()<br />
a422870c91fe drm/i915: Extract hsw_configure_cpu_transcoder()<br />
6e0a920132a4 drm/i915: Use per-device debugs for bigjoiner stuff<br />
996231b27dcd drm/i915: Simplify intel_dsc_source_support()<br />
b3833d967cb7 drm/i915: Skip dsc readout if the transcoder is disabled</p>

</body>
</html>

--===============0397119644755078602==--
