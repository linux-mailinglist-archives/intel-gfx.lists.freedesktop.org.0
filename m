Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3175823F23
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 11:02:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D1C910E3F7;
	Thu,  4 Jan 2024 10:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A89510E3F7;
 Thu,  4 Jan 2024 10:02:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6458357178303912109=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_TC_phy_check_cleanup_=28rev?=
 =?utf-8?q?4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Date: Thu, 04 Jan 2024 10:02:00 -0000
Message-ID: <170436252062.1841.11161130753633783766@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20231219212629.136868-1-radhakrishna.sripada@intel.com>
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

--===============6458357178303912109==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: TC phy check cleanup (rev4)
URL   : https://patchwork.freedesktop.org/series/127989/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14077 -> Patchwork_127989v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127989v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127989v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/index.html

Participating hosts (38 -> 38)
------------------------------

  Additional (2): fi-bsw-nick fi-pnv-d510 
  Missing    (2): bat-jsl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127989v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {bat-adls-6}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-adls-6/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-adls-6/igt@i915_selftest@live@gt_lrc.html

  
Known issues
------------

  Here are the changes found in Patchwork_127989v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +28 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] ([fdo#109271]) +15 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@dmabuf:
    - bat-mtlp-8:         [PASS][7] -> [DMESG-FAIL][8] ([i915#9896])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-mtlp-8/igt@i915_selftest@live@dmabuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-mtlp-8/igt@i915_selftest@live@dmabuf.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][9] -> [ABORT][10] ([i915#8668])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][11] ([i915#9500]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-3}:       [SKIP][13] ([i915#1849] / [i915#5354]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-rpls-3/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-rpls-3/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9500]: https://gitlab.freedesktop.org/drm/intel/issues/9500
  [i915#9896]: https://gitlab.freedesktop.org/drm/intel/issues/9896


Build changes
-------------

  * Linux: CI_DRM_14077 -> Patchwork_127989v4

  CI-20190529: 20190529
  CI_DRM_14077: f23ccca46969b7c4a5d6633724c46065ae2bfd97 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127989v4: f23ccca46969b7c4a5d6633724c46065ae2bfd97 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7e9bb64f8f20 drm/i915: Separate tc check for legacy and non legacy tc phys
d054bc8e3eeb drm/i915: Introduce intel_encoder_phy_data_lookup
1c627f19e7cf drm/i915: Rename intel_bios_encoder_data_lookup as a port variant

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/index.html

--===============6458357178303912109==
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
<tr><td><b>Series:</b></td><td>TC phy check cleanup (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127989/">https://patchwork.freedesktop.org/series/127989/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14077 -&gt; Patchwork_127989v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127989v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127989v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/index.html</p>
<h2>Participating hosts (38 -&gt; 38)</h2>
<p>Additional (2): fi-bsw-nick fi-pnv-d510 <br />
  Missing    (2): bat-jsl-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127989v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-adls-6/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-adls-6/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127989v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@dmabuf:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-mtlp-8/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-mtlp-8/igt@i915_selftest@live@dmabuf.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9896">i915#9896</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14077/bat-rpls-3/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127989v4/bat-rpls-3/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14077 -&gt; Patchwork_127989v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14077: f23ccca46969b7c4a5d6633724c46065ae2bfd97 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7655: ddf7cf40a00caa7d02f3729e1e50f78f102463d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127989v4: f23ccca46969b7c4a5d6633724c46065ae2bfd97 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7e9bb64f8f20 drm/i915: Separate tc check for legacy and non legacy tc phys<br />
d054bc8e3eeb drm/i915: Introduce intel_encoder_phy_data_lookup<br />
1c627f19e7cf drm/i915: Rename intel_bios_encoder_data_lookup as a port variant</p>

</body>
</html>

--===============6458357178303912109==--
