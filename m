Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93542B99161
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 11:23:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6DED10E6C8;
	Wed, 24 Sep 2025 09:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8591910E6C8;
 Wed, 24 Sep 2025 09:23:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2098716858047110446=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gvt=3A_Improve_i?=
 =?utf-8?q?ntel=5Fvgpu=5Fioctl_hdr_error_handling_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Sep 2025 09:23:51 -0000
Message-ID: <175870583153.361018.5055134120957106983@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250923212332.112137-2-jonathan.cavitt@intel.com>
In-Reply-To: <20250923212332.112137-2-jonathan.cavitt@intel.com>
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

--===============2098716858047110446==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Improve intel_vgpu_ioctl hdr error handling (rev4)
URL   : https://patchwork.freedesktop.org/series/154798/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17264 -> Patchwork_154798v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_154798v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_154798v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/index.html

Participating hosts (43 -> 42)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_154798v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@reset:
    - bat-rplp-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-rplp-1/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-rplp-1/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_154798v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][3] -> [ABORT][4] ([i915#12904]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-apl-1/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live:
    - bat-rplp-1:         [PASS][5] -> [ABORT][6] ([i915#14365])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-rplp-1/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-rplp-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-dg2-14:         [PASS][7] -> [ABORT][8] ([i915#14201]) +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-adlp-6:         [PASS][9] -> [ABORT][10] ([i915#14365]) +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-adlp-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-adlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-tgl-1115g4:      [PASS][11] -> [FAIL][12] ([i915#14867])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-atsm-1:         [ABORT][13] ([i915#14201]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-atsm-1/igt@i915_selftest@live@reset.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-atsm-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][17] ([i915#12061]) -> [PASS][18] +1 other test pass
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [ABORT][19] ([i915#14201]) -> [DMESG-FAIL][20] ([i915#12061] / [i915#13929])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-atsm-1/igt@i915_selftest@live.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-atsm-1/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867


Build changes
-------------

  * Linux: CI_DRM_17264 -> Patchwork_154798v4

  CI-20190529: 20190529
  CI_DRM_17264: 53ee7e373ce454dc86b39ac27aa84d95c536b670 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8550: 4f8c7886ad02e116804ec08714f17bce1755c6e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_154798v4: 53ee7e373ce454dc86b39ac27aa84d95c536b670 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/index.html

--===============2098716858047110446==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Improve intel_vgpu_ioctl hdr error handling (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/154798/">https://patchwork.freedesktop.org/series/154798/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17264 -&gt; Patchwork_154798v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_154798v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_154798v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_154798v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-rplp-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-rplp-1/igt@i915_selftest@live@reset.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_154798v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-apl-1/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-dg2-14/igt@i915_selftest@live@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-adlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-adlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/fi-tgl-1115g4/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14867">i915#14867</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-atsm-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-atsm-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17264/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154798v4/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17264 -&gt; Patchwork_154798v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17264: 53ee7e373ce454dc86b39ac27aa84d95c536b670 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8550: 4f8c7886ad02e116804ec08714f17bce1755c6e4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_154798v4: 53ee7e373ce454dc86b39ac27aa84d95c536b670 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2098716858047110446==--
