Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4DA873112
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 09:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E8010EBF2;
	Wed,  6 Mar 2024 08:48:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B229010EA44;
 Wed,  6 Mar 2024 08:48:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5771956118952063500=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_Fixed_a?=
 =?utf-8?q?_screen_flickering_when_turning_on_display_from_off?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: gareth.yu@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 08:48:48 -0000
Message-ID: <170971492872.524258.17366532723150128028@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306031348.1344034-1-gareth.yu@intel.com>
In-Reply-To: <20240306031348.1344034-1-gareth.yu@intel.com>
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

--===============5771956118952063500==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fixed a screen flickering when turning on display from off
URL   : https://patchwork.freedesktop.org/series/130780/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14395 -> Patchwork_130780v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_130780v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_130780v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/index.html

Participating hosts (41 -> 39)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (3): bat-mtlp-8 fi-glk-j4005 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_130780v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@ring_submission:
    - bat-arls-2:         NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-2/igt@i915_selftest@live@ring_submission.html

  
Known issues
------------

  Here are the changes found in Patchwork_130780v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         [PASS][2] -> [FAIL][3] ([i915#10234])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-3/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-3/boot.html
    - bat-jsl-1:          [PASS][4] -> [FAIL][5] ([i915#8293])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-jsl-1/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-jsl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1849])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][7] ([fdo#109271]) +39 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@late_gt_pm:
    - bat-arls-2:         NOTRUN -> [DMESG-FAIL][8] ([i915#10262]) +5 other tests dmesg-fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-arls-2:         [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-2/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-2/igt@i915_selftest@live@migrate.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14395 -> Patchwork_130780v1

  CI-20190529: 20190529
  CI_DRM_14395: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7746: 7746
  Patchwork_130780v1: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fa4b9d1190dd drm/i915/display: Fixed a screen flickering when turning on display from off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/index.html

--===============5771956118952063500==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fixed a screen flickering when turning on display from off</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130780/">https://patchwork.freedesktop.org/series/130780/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14395 -&gt; Patchwork_130780v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_130780v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_130780v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (3): bat-mtlp-8 fi-glk-j4005 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_130780v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-2/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130780v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-3/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-jsl-1/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-jsl-1/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>bat-arls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-2/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10262">i915#10262</a>) +5 other tests dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14395/bat-arls-2/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v1/bat-arls-2/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14395 -&gt; Patchwork_130780v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14395: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7746: 7746<br />
  Patchwork_130780v1: dd08fd912fdc1b72984a39852fdbee49b97b8ce4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fa4b9d1190dd drm/i915/display: Fixed a screen flickering when turning on display from off</p>

</body>
</html>

--===============5771956118952063500==--
