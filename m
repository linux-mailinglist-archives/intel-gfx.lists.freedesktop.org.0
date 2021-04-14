Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C0035EB7F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 05:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC54889885;
	Wed, 14 Apr 2021 03:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8547589BF1;
 Wed, 14 Apr 2021 03:38:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7BCB8A7E03;
 Wed, 14 Apr 2021 03:38:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 03:38:58 -0000
Message-ID: <161837153847.4307.14912602987365678594@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210414022309.30898-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_FBC_cleanups?=
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
Content-Type: multipart/mixed; boundary="===============0768465007=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0768465007==
Content-Type: multipart/alternative;
 boundary="===============2849017517262773833=="

--===============2849017517262773833==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: FBC cleanups
URL   : https://patchwork.freedesktop.org/series/89036/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9966 -> Patchwork_19928
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19928 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19928, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19928:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-icl-y:           NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][2] -> [FAIL][3] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9966/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-ehl-2}:         [PASS][4] -> [FAIL][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9966/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_19928 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][6] ([fdo#109315]) +17 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-y:           NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-y:           NOTRUN -> [SKIP][8] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-y:           NOTRUN -> [SKIP][9] ([fdo#109285])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-icl-y:           NOTRUN -> [SKIP][10] ([fdo#109278])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-icl-y:           NOTRUN -> [SKIP][11] ([fdo#110189]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-y:           NOTRUN -> [SKIP][12] ([i915#3301])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][13] ([i915#1602] / [i915#2029])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [DMESG-WARN][14] ([i915#1982] / [k.org#205379]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9966/fi-tgl-y/igt@i915_module_load@reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-tgl-y/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2629]: https://gitlab.freedesktop.org/drm/intel/issues/2629
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-icl-y 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9966 -> Patchwork_19928

  CI-20190529: 20190529
  CI_DRM_9966: 0f7f5236775ef3b8bb2ed5ba456797850f0c4e93 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6064: 48d89e2c65c54883b0776930a884e6d3bcefb45b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19928: b64f68cd1fa2208314a4da5288eb80e3a2847c27 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b64f68cd1fa2 drm/i915: Pimp the FBC debugfs output
86585b14aee8 drm/i915: No FBC+double wide pipe
761fdc25c3fe drm/i915: Nuke lots of crap from intel_fbc_state_cache
064c4919edc5 drm/i915: Move the "recompress on activate" to a central place
9ef16c7d0055 drm/i915: Clear no_fbc_reason on activate
2f5361a510d8 drm/i915: Extract intel_fbc_update()
576bdb61126e drm/i915: Rewrite the FBC tiling check a bit
d006a5bb82f9 drm/i915: Add frontbuffer tracking tracepoints

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/index.html

--===============2849017517262773833==
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
<tr><td><b>Series:</b></td><td>drm/i915: FBC cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89036/">https://patchwork.freedesktop.org/series/89036/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9966 -&gt; Patchwork_19928</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19928 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19928, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19928:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9966/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9966/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-ehl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19928 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9966/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19928/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Additional (1): fi-icl-y <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9966 -&gt; Patchwork_19928</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9966: 0f7f5236775ef3b8bb2ed5ba456797850f0c4e93 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6064: 48d89e2c65c54883b0776930a884e6d3bcefb45b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19928: b64f68cd1fa2208314a4da5288eb80e3a2847c27 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b64f68cd1fa2 drm/i915: Pimp the FBC debugfs output<br />
86585b14aee8 drm/i915: No FBC+double wide pipe<br />
761fdc25c3fe drm/i915: Nuke lots of crap from intel_fbc_state_cache<br />
064c4919edc5 drm/i915: Move the "recompress on activate" to a central place<br />
9ef16c7d0055 drm/i915: Clear no_fbc_reason on activate<br />
2f5361a510d8 drm/i915: Extract intel_fbc_update()<br />
576bdb61126e drm/i915: Rewrite the FBC tiling check a bit<br />
d006a5bb82f9 drm/i915: Add frontbuffer tracking tracepoints</p>

</body>
</html>

--===============2849017517262773833==--

--===============0768465007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0768465007==--
