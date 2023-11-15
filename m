Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 204377EBA81
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 01:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 039E710E381;
	Wed, 15 Nov 2023 00:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E762610E381;
 Wed, 15 Nov 2023 00:12:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DE179A47E9;
 Wed, 15 Nov 2023 00:12:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7704974922068091702=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 15 Nov 2023 00:12:15 -0000
Message-ID: <170000713585.647.10914196970304957265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231114155528.96935-1-jani.nikula@intel.com>
In-Reply-To: <20231114155528.96935-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_keep_struct_intel=5Fdisplay_members_sorted?=
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

--===============7704974922068091702==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: keep struct intel_display members sorted
URL   : https://patchwork.freedesktop.org/series/126413/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13875 -> Patchwork_126413v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126413v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126413v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/index.html

Participating hosts (39 -> 28)
------------------------------

  Missing    (11): fi-skl-guc bat-adlm-1 fi-tgl-1115g4 fi-cfl-8700k fi-apl-guc fi-snb-2520m fi-glk-j4005 fi-elk-e7500 fi-blb-e6850 bat-jsl-3 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126413v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - bat-rpls-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rpls-1/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-rpls-1/igt@i915_selftest@live@migrate.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-vga-1:
    - fi-hsw-4770:        NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-vga-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_126413v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-hsw-4770:        [FAIL][4] ([i915#8293]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-hsw-4770/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [PASS][6] -> [INCOMPLETE][7] ([i915#9275])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-atsm-1:         NOTRUN -> [SKIP][8] ([i915#6645])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#5190])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_flip@basic-flip-vs-dpms@d-dp5:
    - bat-adlp-11:        [PASS][10] -> [DMESG-FAIL][11] ([i915#6868])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - bat-adlp-11:        NOTRUN -> [SKIP][12] ([i915#3637])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:
    - fi-hsw-4770:        NOTRUN -> [SKIP][13] ([fdo#109271]) +7 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-atsm-1:         NOTRUN -> [SKIP][14] ([i915#1836])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [INCOMPLETE][15] ([i915#9174]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9174]: https://gitlab.freedesktop.org/drm/intel/issues/9174
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_13875 -> Patchwork_126413v1

  CI-20190529: 20190529
  CI_DRM_13875: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7588: 328c5873b8f061267fdf86ed32cb5ecc611ba081 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126413v1: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7baae8307045 drm/i915/display: keep struct intel_display members sorted

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/index.html

--===============7704974922068091702==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: keep struct intel_display members sorted</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126413/">https://patchwork.freedesktop.org/series/126413/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13875 -&gt; Patchwork_126413v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126413v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126413v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/index.html</p>
<h2>Participating hosts (39 -&gt; 28)</h2>
<p>Missing    (11): fi-skl-guc bat-adlm-1 fi-tgl-1115g4 fi-cfl-8700k fi-apl-guc fi-snb-2520m fi-glk-j4005 fi-elk-e7500 fi-blb-e6850 bat-jsl-3 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126413v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-rpls-1/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-rpls-1/igt@i915_selftest@live@migrate.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-vga-1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126413v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/fi-hsw-4770/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-atsm-1/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6645">i915#6645</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@d-dp5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-dpms@d-dp5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-adlp-11/igt@kms_flip@basic-flip-vs-modeset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/fi-hsw-4770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-vga-1.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-atsm-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-atsm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1836">i915#1836</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13875/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9174">i915#9174</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126413v1/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13875 -&gt; Patchwork_126413v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13875: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7588: 328c5873b8f061267fdf86ed32cb5ecc611ba081 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126413v1: 00536be456cfe5f687c0e782f8dfba7db666d89b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7baae8307045 drm/i915/display: keep struct intel_display members sorted</p>

</body>
</html>

--===============7704974922068091702==--
