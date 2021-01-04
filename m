Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A70722E9586
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 14:05:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0354089EB7;
	Mon,  4 Jan 2021 13:05:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 94CE689316;
 Mon,  4 Jan 2021 13:05:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E473A7DFE;
 Mon,  4 Jan 2021 13:05:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 Jan 2021 13:05:42 -0000
Message-ID: <160976554257.24932.16129717096256571109@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210104115145.24460-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210104115145.24460-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/selftests=3A_Set_error_ret?=
 =?utf-8?q?urns?=
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
Content-Type: multipart/mixed; boundary="===============1628268139=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1628268139==
Content-Type: multipart/alternative;
 boundary="===============3180643218622301170=="

--===============3180643218622301170==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/6] drm/i915/selftests: Set error returns
URL   : https://patchwork.freedesktop.org/series/85440/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9541 -> Patchwork_19245
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/index.html

Known issues
------------

  Here are the changes found in Patchwork_19245 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [PASS][4] -> [INCOMPLETE][5] ([i915#2268])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-bsw-kefka:       [PASS][6] -> [INCOMPLETE][7] ([i915#2369])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hugepages:
    - fi-bsw-kefka:       [PASS][8] -> [DMESG-WARN][9] ([i915#2826])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][10] -> [DMESG-FAIL][11] ([i915#165])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][12] ([i915#1436])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2268]: https://gitlab.freedesktop.org/drm/intel/issues/2268
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2826]: https://gitlab.freedesktop.org/drm/intel/issues/2826
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (39 -> 36)
------------------------------

  Missing    (3): fi-cml-u2 fi-ilk-m540 fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_9541 -> Patchwork_19245

  CI-20190529: 20190529
  CI_DRM_9541: e8f34fa9c86e87ec32f92ec9b615e468928233f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5941: 58b135e66be4fa4db8f668fa5d125b31537cb9a6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19245: c04ace8141415d169345b2ef447d70246c95f6e3 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c04ace814141 drm/i915/gt: Remove timeslice suppression
f4334c245caa drm/i915/gt: Restore ce->signal flush before releasing virtual engine
a09becee5f16 drm/i915/gt: Check the virtual still matches upon locking
64dc3f4f54bb drm/i915/gt: Allow failed resets without assertion
ad716358ae5b drm/i915: Set rawclk earlier during mmio probe
a79946cc2df2 drm/i915/selftests: Set error returns

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/index.html

--===============3180643218622301170==
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
<tr><td><b>Series:</b></td><td>series starting with [1/6] drm/i915/selftests: Set error returns</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85440/">https://patchwork.freedesktop.org/series/85440/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9541 -&gt; Patchwork_19245</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19245 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-y/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-tgl-u2/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2268">i915#2268</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-bsw-kefka/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-bsw-kefka/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2826">i915#2826</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_self_import@basic-with_two_bos:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9541/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19245/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): fi-cml-u2 fi-ilk-m540 fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9541 -&gt; Patchwork_19245</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9541: e8f34fa9c86e87ec32f92ec9b615e468928233f4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5941: 58b135e66be4fa4db8f668fa5d125b31537cb9a6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19245: c04ace8141415d169345b2ef447d70246c95f6e3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c04ace814141 drm/i915/gt: Remove timeslice suppression<br />
f4334c245caa drm/i915/gt: Restore ce-&gt;signal flush before releasing virtual engine<br />
a09becee5f16 drm/i915/gt: Check the virtual still matches upon locking<br />
64dc3f4f54bb drm/i915/gt: Allow failed resets without assertion<br />
ad716358ae5b drm/i915: Set rawclk earlier during mmio probe<br />
a79946cc2df2 drm/i915/selftests: Set error returns</p>

</body>
</html>

--===============3180643218622301170==--

--===============1628268139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1628268139==--
