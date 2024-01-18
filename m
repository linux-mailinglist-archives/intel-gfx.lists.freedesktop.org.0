Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AA58320A1
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jan 2024 21:55:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D46910E189;
	Thu, 18 Jan 2024 20:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7433210E171;
 Thu, 18 Jan 2024 20:55:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2778880154897307101=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Bigjoiner_refactoring_=28re?=
 =?utf-8?q?v3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Thu, 18 Jan 2024 20:55:24 -0000
Message-ID: <170561132447.558566.16446507360392088300@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
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

--===============2778880154897307101==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Bigjoiner refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/128311/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14139 -> Patchwork_128311v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): bat-dg2-9 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_128311v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][2] ([fdo#109271]) +36 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-3}:       [DMESG-WARN][3] ([i915#5591]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - bat-rpls-2:         [ABORT][5] ([i915#10117]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10117]: https://gitlab.freedesktop.org/drm/intel/issues/10117
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591


Build changes
-------------

  * Linux: CI_DRM_14139 -> Patchwork_128311v3

  CI-20190529: 20190529
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7683: 7683
  Patchwork_128311v3: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

dbb61c646ad4 Start separating pipe vs transcoder set logic for bigjoiner during modeset
d1f19656811e drm/i915/bigjoiner: Refactor bigjoiner state readout
7699e87a735c drm/i915: Add bigjoiner force enable option to debugfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/index.html

--===============2778880154897307101==
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
<tr><td><b>Series:</b></td><td>Bigjoiner refactoring (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128311/">https://patchwork.freedesktop.org/series/128311/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14139 -&gt; Patchwork_128311v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128311v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10117">i915#10117</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128311v3/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14139 -&gt; Patchwork_128311v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7683: 7683<br />
  Patchwork_128311v3: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>dbb61c646ad4 Start separating pipe vs transcoder set logic for bigjoiner during modeset<br />
d1f19656811e drm/i915/bigjoiner: Refactor bigjoiner state readout<br />
7699e87a735c drm/i915: Add bigjoiner force enable option to debugfs</p>

</body>
</html>

--===============2778880154897307101==--
