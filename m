Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4207A0756E
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 13:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F2310ED8E;
	Thu,  9 Jan 2025 12:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BE2410ED8C;
 Thu,  9 Jan 2025 12:14:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3417406895622571328=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/xe=3A_remove_unused_x?=
 =?utf-8?q?e=5Fpciids=2Eh_harder=2C_add_missing_PCI_ID?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Jan 2025 12:14:33 -0000
Message-ID: <173642487338.1617231.18221213271520273699@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250109105032.2585416-1-jani.nikula@intel.com>
In-Reply-To: <20250109105032.2585416-1-jani.nikula@intel.com>
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

--===============3417406895622571328==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe: remove unused xe_pciids.h harder, add missing PCI ID
URL   : https://patchwork.freedesktop.org/series/143321/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15929 -> Patchwork_143321v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_143321v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][1] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/fi-pnv-d510/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][2] -> [FAIL][3] ([i915#13401])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-6:         [PASS][4] -> [DMESG-FAIL][5] ([i915#13393]) +1 other test dmesg-fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-mtlp-6/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-mtlp-6/igt@i915_selftest@live.html
    - bat-arlh-3:         [PASS][6] -> [DMESG-FAIL][7] ([i915#12435] / [i915#13393])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-3/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][8] -> [DMESG-FAIL][9] ([i915#13393])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arlh-2:         [PASS][10] -> [DMESG-FAIL][11] ([i915#13393])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:
    - fi-pnv-d510:        NOTRUN -> [SKIP][12] +31 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@dmabuf:
    - bat-arlh-2:         [INCOMPLETE][15] ([i915#13050]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-2/igt@i915_selftest@live@dmabuf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-2/igt@i915_selftest@live@dmabuf.html

  * igt@i915_selftest@live@workarounds:
    - {bat-mtlp-9}:       [DMESG-FAIL][17] ([i915#13393]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [ABORT][19] ([i915#13169]) -> [SKIP][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][21] ([i915#13050]) -> [DMESG-FAIL][22] ([i915#12435] / [i915#13393])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-2/igt@i915_selftest@live.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-2/igt@i915_selftest@live.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15929 -> Patchwork_143321v1

  CI-20190529: 20190529
  CI_DRM_15929: 14e0c4a8247c9514dc57b2231602fb6d9455802b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8182: 8911eff2c6c06d2929c6072f3ba72d2d991985ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143321v1: 14e0c4a8247c9514dc57b2231602fb6d9455802b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/index.html

--===============3417406895622571328==
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
<tr><td><b>Series:</b></td><td>drm/xe: remove unused xe_pciids.h harder, add missing PCI ID</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143321/">https://patchwork.freedesktop.org/series/143321/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15929 -&gt; Patchwork_143321v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143321v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/fi-pnv-d510/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-mtlp-6/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>) +1 other test dmesg-fail</li>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>)</li>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12.html">SKIP</a> +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-2/igt@i915_selftest@live@dmabuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050">i915#13050</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-2/igt@i915_selftest@live@dmabuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169">i915#13169</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15929/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050">i915#13050</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143321v1/bat-arlh-2/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393">i915#13393</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15929 -&gt; Patchwork_143321v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15929: 14e0c4a8247c9514dc57b2231602fb6d9455802b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8182: 8911eff2c6c06d2929c6072f3ba72d2d991985ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143321v1: 14e0c4a8247c9514dc57b2231602fb6d9455802b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3417406895622571328==--
