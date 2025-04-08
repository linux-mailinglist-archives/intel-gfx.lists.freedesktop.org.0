Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9490FA81341
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 19:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA0B410E28D;
	Tue,  8 Apr 2025 17:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88A1B10E28D;
 Tue,  8 Apr 2025 17:09:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6524290591312029352=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/plane=3A_file_an?=
 =?utf-8?q?d_function_renames?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 08 Apr 2025 17:09:53 -0000
Message-ID: <174413219355.49225.15628608991032371691@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <cover.1744129283.git.jani.nikula@intel.com>
In-Reply-To: <cover.1744129283.git.jani.nikula@intel.com>
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

--===============6524290591312029352==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/plane: file and function renames
URL   : https://patchwork.freedesktop.org/series/147416/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16377 -> Patchwork_147416v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_147416v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_147416v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (2): bat-adlp-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_147416v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-arlh-3/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-arlh-3/igt@i915_selftest@live.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][3] ([i915#13971]) -> [INCOMPLETE][4] +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-arlh-2/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-arlh-2/igt@i915_selftest@live.html

  
Known issues
------------

  Here are the changes found in Patchwork_147416v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] +14 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][6] -> [DMESG-WARN][7] ([i915#13735]) +82 other tests dmesg-warn
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][8] -> [DMESG-FAIL][9] ([i915#12061]) +1 other test dmesg-fail
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][10] ([i915#5190])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13735] / [i915#13890]) +49 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][13] ([i915#1072]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][14] ([i915#12904]) -> [PASS][15] +1 other test pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-apl-1/igt@dmabuf@all-tests.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-9:         [DMESG-FAIL][16] ([i915#12061]) -> [PASS][17] +1 other test pass
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#13971]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13971
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190


Build changes
-------------

  * Linux: CI_DRM_16377 -> Patchwork_147416v1

  CI-20190529: 20190529
  CI_DRM_16377: a33da369e8cde6c7208381a592866cd61f1ce188 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8309: fb77fb2d8d58a2539c9d67d00e1747351eec0bea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_147416v1: a33da369e8cde6c7208381a592866cd61f1ce188 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/index.html

--===============6524290591312029352==
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
<tr><td><b>Series:</b></td><td>drm/i915/plane: file and function renames</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/147416/">https://patchwork.freedesktop.org/series/147416/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16377 -&gt; Patchwork_147416v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_147416v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_147416v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (2): bat-adlp-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_147416v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13971">i915#13971</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_147416v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +82 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +49 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/fi-hsw-4770/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16377/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147416v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16377 -&gt; Patchwork_147416v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16377: a33da369e8cde6c7208381a592866cd61f1ce188 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8309: fb77fb2d8d58a2539c9d67d00e1747351eec0bea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_147416v1: a33da369e8cde6c7208381a592866cd61f1ce188 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6524290591312029352==--
