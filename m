Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4238120DD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 22:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 937E510E855;
	Wed, 13 Dec 2023 21:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1772910E855;
 Wed, 13 Dec 2023 21:47:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 10003A0169;
 Wed, 13 Dec 2023 21:47:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7791748960424516392=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5B1/4?=
 =?utf-8?q?=5D_drm/ttm=3A_return_ENOSPC_from_ttm=5Fbo=5Fmem=5Fspace?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Wed, 13 Dec 2023 21:47:14 -0000
Message-ID: <170250403405.10260.12375624178279900322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213144222.1871-1-christian.koenig@amd.com>
In-Reply-To: <20231213144222.1871-1-christian.koenig@amd.com>
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

--===============7791748960424516392==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/ttm: return ENOSPC from ttm_bo_mem_space
URL   : https://patchwork.freedesktop.org/series/127752/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14017 -> Patchwork_127752v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/index.html

Participating hosts (37 -> 38)
------------------------------

  Additional (2): bat-rpls-2 bat-kbl-2 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127752v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_psr@psr-primary-page-flip}:
    - bat-rpls-2:         NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_psr@psr-primary-page-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_127752v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-2:         NOTRUN -> [SKIP][2] ([i915#9318])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1849])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-rkl-11600:       [PASS][4] -> [FAIL][5] ([fdo#103375])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] ([fdo#109271]) +36 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][7] ([i915#3282])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@gem_tiled_pread_basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-rpls-2:         NOTRUN -> [SKIP][8] ([i915#4103]) +1 other test skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_dsc@dsc-basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][9] ([i915#3555] / [i915#3840])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_dsc@dsc-basic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-2:         NOTRUN -> [SKIP][10] ([fdo#109285])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][11] -> [ABORT][12] ([i915#8668])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-rpls-2:         NOTRUN -> [SKIP][13] ([i915#5354])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_pm_backlight@basic-brightness.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318


Build changes
-------------

  * Linux: CI_DRM_14017 -> Patchwork_127752v1

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127752v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

22a0d5c2f2ba drm/amdgpu: use GTT only as fallback for VRAM|GTT
190c2a343a62 drm/ttm: improve idle/busy handling
a27ec5857635 drm/ttm: replace busy placement with flags v3
ab036fe2a6fa drm/ttm: return ENOSPC from ttm_bo_mem_space

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/index.html

--===============7791748960424516392==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/ttm: return ENOSPC from ttm_bo_mem_space</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127752/">https://patchwork.freedesktop.org/series/127752/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017 -&gt; Patchwork_127752v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/index.html</p>
<h2>Participating hosts (37 -&gt; 38)</h2>
<p>Additional (2): bat-rpls-2 bat-kbl-2 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127752v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_psr@psr-primary-page-flip}:<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_psr@psr-primary-page-flip.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127752v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9318">i915#9318</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127752v1/bat-rpls-2/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127752v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127752v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>22a0d5c2f2ba drm/amdgpu: use GTT only as fallback for VRAM|GTT<br />
190c2a343a62 drm/ttm: improve idle/busy handling<br />
a27ec5857635 drm/ttm: replace busy placement with flags v3<br />
ab036fe2a6fa drm/ttm: return ENOSPC from ttm_bo_mem_space</p>

</body>
</html>

--===============7791748960424516392==--
