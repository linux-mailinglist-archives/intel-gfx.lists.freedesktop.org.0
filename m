Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 649E3625B1A
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Nov 2022 14:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DFA510E170;
	Fri, 11 Nov 2022 13:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F63510E170;
 Fri, 11 Nov 2022 13:21:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5852AA9932;
 Fri, 11 Nov 2022 13:21:32 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2022869916689777923=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 11 Nov 2022 13:21:32 -0000
Message-ID: <166817289233.873.9007017092252371569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221111123120.7759-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Per-device_display_tracepoints?=
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

--===============2022869916689777923==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Per-device display tracepoints
URL   : https://patchwork.freedesktop.org/series/110807/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12370 -> Patchwork_110807v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_110807v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_110807v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/index.html

Participating hosts (41 -> 37)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bdw-samus fi-rkl-11600 fi-tgl-dsi 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110807v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-bdw-gvtdvm:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/fi-bdw-gvtdvm/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/fi-bdw-gvtdvm/igt@i915_selftest@live@gem_contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_110807v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-adlp-4:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_pm_rps@basic-api:
    - bat-adlp-4:         NOTRUN -> [SKIP][4] ([i915#6621])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         NOTRUN -> [INCOMPLETE][5] ([i915#7308] / [i915#7348])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][6] ([fdo#109295] / [i915#3301] / [i915#3708])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-adlp-4:         NOTRUN -> [SKIP][7] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#4312] / [i915#5594])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/fi-hsw-4770/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][9] ([i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][10] ([i915#6434]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-rpls-2/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - bat-adlp-4:         [DMESG-WARN][12] ([i915#7077]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@migrate:
    - {bat-adlp-6}:       [INCOMPLETE][14] ([i915#7348]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-adlp-6/igt@i915_selftest@live@migrate.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-6/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [DMESG-FAIL][16] ([i915#4983]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-rpls-2/igt@i915_selftest@live@reset.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-rpls-2/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@slpc:
    - {bat-adln-1}:       [DMESG-FAIL][18] ([i915#6997]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-adln-1/igt@i915_selftest@live@slpc.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6559]: https://gitlab.freedesktop.org/drm/intel/issues/6559
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348


Build changes
-------------

  * Linux: CI_DRM_12370 -> Patchwork_110807v1

  CI-20190529: 20190529
  CI_DRM_12370: 2c4db4b90bb774739983766cf094423aff82f2c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110807v1: 2c4db4b90bb774739983766cf094423aff82f2c7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

144677ee6dbc drm/i915: Add device name to display tracepoints
51f6aa594287 drm/i915: Pass i915 to frontbuffer tracepoints
25bd68595d91 drm/i915: Print plane name in fbc tracepoints
3649e1393e00 drm/i915: Pass intel_plane to plane tracepoints

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/index.html

--===============2022869916689777923==
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
<tr><td><b>Series:</b></td><td>drm/i915: Per-device display tracepoints</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110807/">https://patchwork.freedesktop.org/series/110807/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12370 -&gt; Patchwork_110807v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_110807v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_110807v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bdw-samus fi-rkl-11600 fi-tgl-dsi </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110807v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gem_contexts:<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/fi-bdw-gvtdvm/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/fi-bdw-gvtdvm/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110807v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-4/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-adlp-6/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adlp-6/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-rpls-2/igt@i915_selftest@live@reset.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12370/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110807v1/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12370 -&gt; Patchwork_110807v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12370: 2c4db4b90bb774739983766cf094423aff82f2c7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110807v1: 2c4db4b90bb774739983766cf094423aff82f2c7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>144677ee6dbc drm/i915: Add device name to display tracepoints<br />
51f6aa594287 drm/i915: Pass i915 to frontbuffer tracepoints<br />
25bd68595d91 drm/i915: Print plane name in fbc tracepoints<br />
3649e1393e00 drm/i915: Pass intel_plane to plane tracepoints</p>

</body>
</html>

--===============2022869916689777923==--
