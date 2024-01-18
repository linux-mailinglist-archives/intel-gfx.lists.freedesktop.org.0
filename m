Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 777D7832236
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jan 2024 00:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CDB510E91B;
	Thu, 18 Jan 2024 23:20:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49C1110E91B;
 Thu, 18 Jan 2024 23:20:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6558939481151575604=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/psr=3A_Only_allow_?=
 =?utf-8?q?PSR_in_LPSP_mode_on_HSW_non-ULT?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Thu, 18 Jan 2024 23:20:14 -0000
Message-ID: <170562001429.558566.4817415062344675679@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240118212131.31868-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240118212131.31868-1-ville.syrjala@linux.intel.com>
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

--===============6558939481151575604==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT
URL   : https://patchwork.freedesktop.org/series/128957/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14139 -> Patchwork_128957v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_128957v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_128957v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (2): fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_128957v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:
    - bat-rpls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_128957v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/fi-bsw-n3050/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1849])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] ([fdo#109271]) +36 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_hangman@error-state-basic:
    - bat-mtlp-6:         [PASS][7] -> [ABORT][8] ([i915#9414])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-mtlp-6/igt@i915_hangman@error-state-basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-mtlp-6/igt@i915_hangman@error-state-basic.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - bat-rpls-2:         [ABORT][9] ([i915#10117]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10117]: https://gitlab.freedesktop.org/drm/intel/issues/10117
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_14139 -> Patchwork_128957v1

  CI-20190529: 20190529
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7683: 7683
  Patchwork_128957v1: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

24de1d49e87f drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/index.html

--===============6558939481151575604==
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
<tr><td><b>Series:</b></td><td>drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/128957/">https://patchwork.freedesktop.org/series/128957/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14139 -&gt; Patchwork_128957v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_128957v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_128957v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_128957v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-1.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_128957v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-mtlp-6/igt@i915_hangman@error-state-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-mtlp-6/igt@i915_hangman@error-state-basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14139/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10117">i915#10117</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_128957v1/bat-rpls-2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14139 -&gt; Patchwork_128957v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14139: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7683: 7683<br />
  Patchwork_128957v1: 776dc1588b4b329dba41ded2db883fbc1bf77950 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>24de1d49e87f drm/i915/psr: Only allow PSR in LPSP mode on HSW non-ULT</p>

</body>
</html>

--===============6558939481151575604==--
