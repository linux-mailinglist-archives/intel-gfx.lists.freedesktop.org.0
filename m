Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FAFA16B67
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 12:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C4410E3AE;
	Mon, 20 Jan 2025 11:20:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC6D10E050;
 Mon, 20 Jan 2025 11:20:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7639164353348101308=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_iommu=3A_intel=3A_apply_q?=
 =?utf-8?q?uirk=5Fiommu=5Figfx_for_8086=3A0044_=28QM57/QS57=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mingcong Bai" <jeffbai@aosc.io>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2025 11:20:29 -0000
Message-ID: <173737202936.2106959.17031756236251444867@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250120093540.512825-1-jeffbai@aosc.io>
In-Reply-To: <20250120093540.512825-1-jeffbai@aosc.io>
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

--===============7639164353348101308==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: iommu: intel: apply quirk_iommu_igfx for 8086:0044 (QM57/QS57)
URL   : https://patchwork.freedesktop.org/series/143719/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15983 -> Patchwork_143719v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/index.html

Participating hosts (41 -> 41)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_143719v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][1] -> [FAIL][2] ([i915#13401])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-jsl-3:          [PASS][3] -> [INCOMPLETE][4] ([i915#12445] / [i915#13241])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-jsl-3/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-jsl-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#11621]) +132 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@migrate:
    - bat-jsl-3:          [PASS][7] -> [INCOMPLETE][8] ([i915#12445])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-jsl-3/igt@i915_selftest@live@migrate.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-jsl-3/igt@i915_selftest@live@migrate.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][9] -> [SKIP][10] ([i915#9197]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-adlp-6:         [INCOMPLETE][11] ([i915#9413]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-adlp-6/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-2:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-arlh-2/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html
    - {bat-mtlp-9}:       [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
  [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15983 -> Patchwork_143719v1

  CI-20190529: 20190529
  CI_DRM_15983: 4d9c78b35c395ed49796502224f3a421b0ce65ef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8198: 1d1ae626601119d249b530547b9e226c6a684144 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143719v1: 4d9c78b35c395ed49796502224f3a421b0ce65ef @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/index.html

--===============7639164353348101308==
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
<tr><td><b>Series:</b></td><td>iommu: intel: apply quirk_iommu_igfx for 8086:0044 (QM57/QS57)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143719/">https://patchwork.freedesktop.org/series/143719/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15983 -&gt; Patchwork_143719v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/index.html</p>
<h2>Participating hosts (41 -&gt; 41)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143719v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401">i915#13401</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-jsl-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-jsl-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241">i915#13241</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) +132 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-jsl-3/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-jsl-3/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +1 other test skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-adlp-6/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-arlh-2/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-arlh-2/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>{bat-mtlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15983/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143719v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15983 -&gt; Patchwork_143719v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15983: 4d9c78b35c395ed49796502224f3a421b0ce65ef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8198: 1d1ae626601119d249b530547b9e226c6a684144 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143719v1: 4d9c78b35c395ed49796502224f3a421b0ce65ef @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7639164353348101308==--
