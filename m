Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DE2A331AF
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 22:39:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0676910E0A7;
	Wed, 12 Feb 2025 21:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B79B10E0A7;
 Wed, 12 Feb 2025 21:39:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3134498275915597964=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_conve?=
 =?utf-8?q?rsions_to_struct_intel=5Fdisplay?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2025 21:39:27 -0000
Message-ID: <173939636743.1433732.3289115752617323023@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1739378095.git.jani.nikula@intel.com>
In-Reply-To: <cover.1739378095.git.jani.nikula@intel.com>
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

--===============3134498275915597964==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: conversions to struct intel_display
URL   : https://patchwork.freedesktop.org/series/144748/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16122 -> Patchwork_144748v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/index.html

Participating hosts (43 -> 43)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_144748v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][1] -> [FAIL][2] ([i915#13633])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
    - bat-dg1-7:          [PASS][3] -> [FAIL][4] ([i915#13633])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][5] -> [FAIL][6] ([i915#13633])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
    - bat-apl-1:          [PASS][7] -> [DMESG-WARN][8] ([i915#13532]) +1 other test dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][9] -> [SKIP][10] ([i915#9197]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_psr@psr-primary-mmap-gtt:
    - fi-pnv-d510:        NOTRUN -> [SKIP][11] +33 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html

  * igt@runner@aborted:
    - bat-twl-1:          NOTRUN -> [FAIL][12] ([i915#13655])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-twl-1/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [INCOMPLETE][13] ([i915#12904]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-apl-1/igt@dmabuf@all-tests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live:
    - bat-dg1-6:          [INCOMPLETE][15] -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-dg1-6/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-dg1-6/igt@i915_selftest@live.html
    - bat-twl-2:          [ABORT][17] ([i915#12919] / [i915#13503]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-twl-2/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_engines:
    - bat-twl-2:          [ABORT][19] ([i915#12919]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-twl-2/igt@i915_selftest@live@gt_engines.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-twl-2/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][21] ([i915#12061]) -> [PASS][22] +1 other test pass
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][23] ([i915#12061]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [DMESG-FAIL][25] ([i915#12061]) -> [PASS][26] +1 other test pass
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13532]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13532
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#13655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13655
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16122 -> Patchwork_144748v1

  CI-20190529: 20190529
  CI_DRM_16122: 1e935d0d289627796230e9e1ca1451647fe9a2ad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8228: 8228
  Patchwork_144748v1: 1e935d0d289627796230e9e1ca1451647fe9a2ad @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/index.html

--===============3134498275915597964==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: conversions to struct intel_display</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144748/">https://patchwork.freedesktop.org/series/144748/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16122 -&gt; Patchwork_144748v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/index.html</p>
<h2>Participating hosts (43 -&gt; 43)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144748v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-dp1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13532">i915#13532</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-twl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-twl-1/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13655">i915#13655</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-dg1-6/igt@i915_selftest@live.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-dg1-6/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-twl-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-twl-2/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-twl-2/igt@i915_selftest@live@gt_engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-twl-2/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16122/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144748v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16122 -&gt; Patchwork_144748v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16122: 1e935d0d289627796230e9e1ca1451647fe9a2ad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8228: 8228<br />
  Patchwork_144748v1: 1e935d0d289627796230e9e1ca1451647fe9a2ad @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3134498275915597964==--
