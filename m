Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86358823CCE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 08:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99CEE10E39F;
	Thu,  4 Jan 2024 07:37:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAE2910E39F;
 Thu,  4 Jan 2024 07:37:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0320709961984508120=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/display=3A_Skip_C1?=
 =?utf-8?q?0_state_verification_in_case_of_fastset_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Thu, 04 Jan 2024 07:37:11 -0000
Message-ID: <170435383175.1841.3990300617776655861@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231219123246.832245-1-mika.kahola@intel.com>
In-Reply-To: <20231219123246.832245-1-mika.kahola@intel.com>
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

--===============0320709961984508120==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Skip C10 state verification in case of fastset (rev3)
URL   : https://patchwork.freedesktop.org/series/127966/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14076 -> Patchwork_127966v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127966v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127966v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127966v3:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-await@bcs0:
    - bat-adln-1:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/bat-adln-1/igt@gem_exec_fence@basic-await@bcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/bat-adln-1/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@i915_module_load@reload:
    - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@i915_module_load@reload.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:
    - fi-kbl-7567u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_127966v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [PASS][7] -> [DMESG-WARN][8] ([i915#9730]) +31 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-kbl-7567u:       [PASS][9] -> [DMESG-WARN][10] ([i915#180])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pm_rpm@basic-pci-d3-state:
    - fi-kbl-7567u:       [PASS][11] -> [DMESG-WARN][12] ([i915#8585]) +12 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#8585]: https://gitlab.freedesktop.org/drm/intel/issues/8585
  [i915#9730]: https://gitlab.freedesktop.org/drm/intel/issues/9730
  [i915#9920]: https://gitlab.freedesktop.org/drm/intel/issues/9920


Build changes
-------------

  * Linux: CI_DRM_14076 -> Patchwork_127966v3

  CI-20190529: 20190529
  CI_DRM_14076: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127966v3: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

83a1d5fbb5f6 drm/i915/display: Skip C10 state verification in case of fastset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/index.html

--===============0320709961984508120==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Skip C10 state verification in case of fastset (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127966/">https://patchwork.freedesktop.org/series/127966/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14076 -&gt; Patchwork_127966v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127966v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127966v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127966v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/bat-adln-1/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/bat-adln-1/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127966v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9730">i915#9730</a>) +31 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14076/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127966v3/fi-kbl-7567u/igt@kms_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8585">i915#8585</a>) +12 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14076 -&gt; Patchwork_127966v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14076: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127966v3: 6fb23c8c47c3c76c9ea4e62d3e4244eb42a6d081 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>83a1d5fbb5f6 drm/i915/display: Skip C10 state verification in case of fastset</p>

</body>
</html>

--===============0320709961984508120==--
