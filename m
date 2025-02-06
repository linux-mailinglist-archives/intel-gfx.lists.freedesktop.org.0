Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F609A2ABFE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 15:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EFE10E881;
	Thu,  6 Feb 2025 14:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6262410E881;
 Thu,  6 Feb 2025 14:59:13 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1249402010828687342=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dp=5Fmst=3A_Fix_?=
 =?utf-8?q?getting_display_pointer_in_intel=5Fdp=5Fmst=5Fcompute=5Fmin=5Fhbl?=
 =?utf-8?q?ank=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 06 Feb 2025 14:59:13 -0000
Message-ID: <173885395339.2076900.7525219802088210176@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250205232855.3017421-1-imre.deak@intel.com>
In-Reply-To: <20250205232855.3017421-1-imre.deak@intel.com>
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

--===============1249402010828687342==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Fix getting display pointer in intel_dp_mst_compute_min_hblank()
URL   : https://patchwork.freedesktop.org/series/144387/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16076 -> Patchwork_144387v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_144387v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_144387v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_144387v1:

### IGT changes ###

#### Warnings ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [ABORT][1] ([i915#13641]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-mtlp-9/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-mtlp-9/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_144387v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - bat-twl-2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-twl-2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-twl-2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - bat-adls-6:         [PASS][5] -> [FAIL][6] ([i915#13633])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-adls-6/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][11] -> [SKIP][12] ([i915#9197]) +2 other tests skip
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Warnings ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-cfl-8109u:       [DMESG-WARN][13] ([i915#11621]) -> [DMESG-WARN][14] ([i915#11621] / [i915#1982]) +4 other tests dmesg-warn
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  
  [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#13641]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13641
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16076 -> Patchwork_144387v1

  CI-20190529: 20190529
  CI_DRM_16076: 7a632b6798b6a05b63725249e3209afea13ea499 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8224: c659b986ba648584d36b3cfece897bc84a33dcbb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_144387v1: 7a632b6798b6a05b63725249e3209afea13ea499 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0d8375dee031 drm/i915/dp_mst: Fix getting display pointer in intel_dp_mst_compute_min_hblank()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/index.html

--===============1249402010828687342==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Fix getting display pointer in intel_dp_mst_compute_min_hblank()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/144387/">https://patchwork.freedesktop.org/series/144387/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16076 -&gt; Patchwork_144387v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_144387v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_144387v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_144387v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13641">i915#13641</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_144387v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-twl-2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-twl-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-adls-6/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v1/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621">i915#11621</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +4 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16076 -&gt; Patchwork_144387v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16076: 7a632b6798b6a05b63725249e3209afea13ea499 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8224: c659b986ba648584d36b3cfece897bc84a33dcbb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_144387v1: 7a632b6798b6a05b63725249e3209afea13ea499 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0d8375dee031 drm/i915/dp_mst: Fix getting display pointer in intel_dp_mst_compute_min_hblank()</p>

</body>
</html>

--===============1249402010828687342==--
