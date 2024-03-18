Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2888487F2AE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 22:55:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25D7310E81C;
	Mon, 18 Mar 2024 21:55:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8307F10E81C;
 Mon, 18 Mar 2024 21:55:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2516349776174350795=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_DMC_wak?=
 =?utf-8?q?elock_implementation_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Luca Coelho" <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Mar 2024 21:55:40 -0000
Message-ID: <171079894050.900325.1976381251352582103@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240318133757.1479189-1-luciano.coelho@intel.com>
In-Reply-To: <20240318133757.1479189-1-luciano.coelho@intel.com>
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

--===============2516349776174350795==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: DMC wakelock implementation (rev2)
URL   : https://patchwork.freedesktop.org/series/131124/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14443 -> Patchwork_131124v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131124v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131124v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html

Participating hosts (35 -> 35)
------------------------------

  Additional (2): bat-arls-4 bat-jsl-1 
  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131124v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adln-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adln-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-adln-1/igt@i915_selftest@live@hangcheck.html

  
Known issues
------------

  Here are the changes found in Patchwork_131124v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][3] -> [FAIL][4] ([i915#10234])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-arls-3/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-arls-3/boot.html
    - bat-jsl-1:          NOTRUN -> [FAIL][5] ([i915#8293])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-jsl-1/boot.html
    - fi-apl-guc:         [PASS][6] -> [FAIL][7] ([i915#8293])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-apl-guc/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-apl-guc/boot.html

  
#### Possible fixes ####

  * boot:
    - fi-cfl-8109u:       [FAIL][8] ([i915#8293]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-cfl-8109u/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-kbl-8809g:       [PASS][10] -> [INCOMPLETE][11] ([i915#10454])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-kbl-8809g/igt@dmabuf@all-tests@dma_fence_chain.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-kbl-8809g/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][12] ([i915#2190])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@gem:
    - bat-dg2-8:          [PASS][14] -> [ABORT][15] ([i915#10366])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-dg2-8/igt@i915_selftest@live@gem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-dg2-8/igt@i915_selftest@live@gem.html

  * igt@kms_pm_backlight@basic-brightness:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][16] +11 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adlp-6:         [ABORT][17] ([i915#10021]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adlp-6/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-adlp-6/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10021]: https://gitlab.freedesktop.org/drm/intel/issues/10021
  [i915#10196]: https://gitlab.freedesktop.org/drm/intel/issues/10196
  [i915#10197]: https://gitlab.freedesktop.org/drm/intel/issues/10197
  [i915#10200]: https://gitlab.freedesktop.org/drm/intel/issues/10200
  [i915#10202]: https://gitlab.freedesktop.org/drm/intel/issues/10202
  [i915#10206]: https://gitlab.freedesktop.org/drm/intel/issues/10206
  [i915#10207]: https://gitlab.freedesktop.org/drm/intel/issues/10207
  [i915#10208]: https://gitlab.freedesktop.org/drm/intel/issues/10208
  [i915#10209]: https://gitlab.freedesktop.org/drm/intel/issues/10209
  [i915#10211]: https://gitlab.freedesktop.org/drm/intel/issues/10211
  [i915#10212]: https://gitlab.freedesktop.org/drm/intel/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/intel/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/intel/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10436]: https://gitlab.freedesktop.org/drm/intel/issues/10436
  [i915#10454]: https://gitlab.freedesktop.org/drm/intel/issues/10454
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
  [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/intel/issues/9812
  [i915#9886]: https://gitlab.freedesktop.org/drm/intel/issues/9886


Build changes
-------------

  * Linux: CI_DRM_14443 -> Patchwork_131124v2

  CI-20190529: 20190529
  CI_DRM_14443: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7769: 7769
  Patchwork_131124v2: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

2ef377f406a9 drm/i915/display: tie DMC wakelock to DC5/6 state transitions
65265f211717 drm/i915/display: add module parameter to enable DMC wakelock
b6649b71e886 drm/i915/display: don't allow DMC wakelock on older hardware
42bb743a04e4 drm/i915/display: add support for DMC wakelocks

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html

--===============2516349776174350795==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: DMC wakelock implementation (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131124/">https://patchwork.freedesktop.org/series/131124/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14443 -&gt; Patchwork_131124v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131124v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131124v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/index.html</p>
<h2>Participating hosts (35 -&gt; 35)</h2>
<p>Additional (2): bat-arls-4 bat-jsl-1 <br />
  Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131124v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adln-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-adln-1/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131124v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>bat-jsl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-apl-guc/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/fi-kbl-8809g/igt@dmabuf@all-tests@dma_fence_chain.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-kbl-8809g/igt@dmabuf@all-tests@dma_fence_chain.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10454">i915#10454</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-dg2-8/igt@i915_selftest@live@gem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-dg2-8/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> +11 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14443/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131124v2/bat-adlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14443 -&gt; Patchwork_131124v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14443: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7769: 7769<br />
  Patchwork_131124v2: ce8cc731d53f9197a853b0d00386d7835f2b80e6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>2ef377f406a9 drm/i915/display: tie DMC wakelock to DC5/6 state transitions<br />
65265f211717 drm/i915/display: add module parameter to enable DMC wakelock<br />
b6649b71e886 drm/i915/display: don't allow DMC wakelock on older hardware<br />
42bb743a04e4 drm/i915/display: add support for DMC wakelocks</p>

</body>
</html>

--===============2516349776174350795==--
