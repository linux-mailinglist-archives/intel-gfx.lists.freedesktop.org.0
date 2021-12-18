Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA45479944
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Dec 2021 08:13:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6040F10E6C2;
	Sat, 18 Dec 2021 07:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8CAB410E5F1;
 Sat, 18 Dec 2021 07:13:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C7D5A47E1;
 Sat, 18 Dec 2021 07:13:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8570712172273997218=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Sat, 18 Dec 2021 07:13:24 -0000
Message-ID: <163981160434.5974.5611667318327998417@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211218061313.100571-1-lucas.demarchi@intel.com>
In-Reply-To: <20211218061313.100571-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgeDg2?=
 =?utf-8?q?/quirks=3A_Fix_logic_to_apply_quirk_once?=
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

--===============8570712172273997218==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: x86/quirks: Fix logic to apply quirk once
URL   : https://patchwork.freedesktop.org/series/98200/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11014 -> Patchwork_21874
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/index.html

Participating hosts (41 -> 33)
------------------------------

  Additional (1): fi-bxt-dsi 
  Missing    (9): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-n3050 fi-bsw-cyan bat-adlp-6 fi-pnv-d510 bat-jsl-2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_21874 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][6] ([fdo#109271]) +30 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-bxt-dsi:         NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#533])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][8] ([fdo#109271]) +62 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][9] ([i915#1436] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-skl-6600u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic:
    - fi-bsw-nick:        [DMESG-WARN][10] ([i915#3428]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-bsw-nick/igt@gem_ctx_exec@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bsw-nick/igt@gem_ctx_exec@basic.html

  * igt@i915_selftest@live@gem_contexts:
    - {fi-tgl-dsi}:       [INCOMPLETE][12] ([i915#402]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hugepages:
    - {fi-tgl-dsi}:       [INCOMPLETE][14] -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][16] ([i915#4269]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_11014 -> Patchwork_21874

  CI-20190529: 20190529
  CI_DRM_11014: c4f095f24fcdc6e85ae112052b3034328e24ae66 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6313: 1793ed798cc09966c27bf478781e0c1d6bb23bad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21874: 238a09b51604f2825f00e6aa795adc1dd3022849 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

238a09b51604 x86/quirks: Fix logic to apply quirk once

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/index.html

--===============8570712172273997218==
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
<tr><td><b>Series:</b></td><td>x86/quirks: Fix logic to apply quirk once</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98200/">https://patchwork.freedesktop.org/series/98200/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11014 -&gt; Patchwork_21874</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/index.html</p>
<h2>Participating hosts (41 -&gt; 33)</h2>
<p>Additional (1): fi-bxt-dsi <br />
  Missing    (9): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-bsw-n3050 fi-bsw-cyan bat-adlp-6 fi-pnv-d510 bat-jsl-2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21874 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-skl-6600u/igt@i915_selftest@live.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-bxt-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bxt-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-bsw-nick/igt@gem_ctx_exec@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-bsw-nick/igt@gem_ctx_exec@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-tgl-dsi/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-tgl-dsi/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11014/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21874/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11014 -&gt; Patchwork_21874</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11014: c4f095f24fcdc6e85ae112052b3034328e24ae66 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6313: 1793ed798cc09966c27bf478781e0c1d6bb23bad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21874: 238a09b51604f2825f00e6aa795adc1dd3022849 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>238a09b51604 x86/quirks: Fix logic to apply quirk once</p>

</body>
</html>

--===============8570712172273997218==--
