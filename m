Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B6687603D
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 09:52:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C18D31135F9;
	Fri,  8 Mar 2024 08:52:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E83E113544;
 Fri,  8 Mar 2024 08:52:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2047981518809130024=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Use_drm=5Fprint?=
 =?utf-8?q?er_more_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 08 Mar 2024 08:52:55 -0000
Message-ID: <170988797512.611678.4164158868065132779@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

--===============2047981518809130024==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use drm_printer more (rev7)
URL   : https://patchwork.freedesktop.org/series/129956/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14410 -> Patchwork_129956v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129956v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129956v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-dg1-7 bat-jsl-1 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129956v7:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@late_gt_pm:
    - bat-dg2-14:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-dg2-14/igt@i915_selftest@live@late_gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-14/igt@i915_selftest@live@late_gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_129956v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [PASS][3] -> [INCOMPLETE][4] ([i915#10094])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gem_migrate:
    - bat-dg2-9:          [PASS][5] -> [ABORT][6] ([i915#10366])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][7] ([i915#9197]) +2 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@ring_submission:
    - bat-dg2-8:          [ABORT][8] ([i915#10366]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-dg2-8/igt@i915_selftest@live@ring_submission.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-8/igt@i915_selftest@live@ring_submission.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-mtlp-6:         [SKIP][10] ([i915#10295] / [i915#9792]) -> [SKIP][11] ([i915#9792]) +16 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  [i915#10094]: https://gitlab.freedesktop.org/drm/intel/issues/10094
  [i915#10295]: https://gitlab.freedesktop.org/drm/intel/issues/10295
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197
  [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792


Build changes
-------------

  * Linux: CI_DRM_14410 -> Patchwork_129956v7

  CI-20190529: 20190529
  CI_DRM_14410: 8b08118a57ee3a7b6dc72cc43bb42e696ee488b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129956v7: 8b08118a57ee3a7b6dc72cc43bb42e696ee488b1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

da0455ebf981 drm/i915: Create the printer only once in intel_pipe_config_compare()
a53e2a32736b drm/i915: Reuse pipe_config_mismatch() more
77eb18a8fefb drm/i915: Relocate pipe_config_mismatch()
fe1a86dc1162 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled
ecdd0a5d80ac drm/i915: Convert the remaining state dump to drm_printer
234fe0dd08d4 drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()
f1d503cfe967 drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer
c1847a03e2fa drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer
40163d1c5639 drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer
ec674d38792a drm/i915: Include CRTC info in VSC SDP mismatch prints
2bd8262d4d32 drm/i915: Include CRTC info in infoframe mismatch prints
e7bdeff150a1 drm/i915: Indicate which pipe failed the fastset check overall

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/index.html

--===============2047981518809130024==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use drm_printer more (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129956/">https://patchwork.freedesktop.org/series/129956/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14410 -&gt; Patchwork_129956v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129956v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129956v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-dg1-7 bat-jsl-1 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129956v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@late_gt_pm:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-dg2-14/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-14/igt@i915_selftest@live@late_gt_pm.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129956v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10094">i915#10094</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-9/igt@i915_selftest@live@gem_migrate.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-dg2-8/igt@i915_selftest@live@ring_submission.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-dg2-8/igt@i915_selftest@live@ring_submission.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14410/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10295">i915#10295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v7/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9792">i915#9792</a>) +16 other tests skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14410 -&gt; Patchwork_129956v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14410: 8b08118a57ee3a7b6dc72cc43bb42e696ee488b1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7749: 2fd91b8c3cf9aa2b0bb78537a6b5e2bc3de50e0e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129956v7: 8b08118a57ee3a7b6dc72cc43bb42e696ee488b1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>da0455ebf981 drm/i915: Create the printer only once in intel_pipe_config_compare()<br />
a53e2a32736b drm/i915: Reuse pipe_config_mismatch() more<br />
77eb18a8fefb drm/i915: Relocate pipe_config_mismatch()<br />
fe1a86dc1162 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled<br />
ecdd0a5d80ac drm/i915: Convert the remaining state dump to drm_printer<br />
234fe0dd08d4 drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()<br />
f1d503cfe967 drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer<br />
c1847a03e2fa drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer<br />
40163d1c5639 drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer<br />
ec674d38792a drm/i915: Include CRTC info in VSC SDP mismatch prints<br />
2bd8262d4d32 drm/i915: Include CRTC info in infoframe mismatch prints<br />
e7bdeff150a1 drm/i915: Indicate which pipe failed the fastset check overall</p>

</body>
</html>

--===============2047981518809130024==--
