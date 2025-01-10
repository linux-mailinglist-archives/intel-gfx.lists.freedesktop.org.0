Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C4DA094EA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 16:20:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6CF210E02D;
	Fri, 10 Jan 2025 15:20:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8750210E02D;
 Fri, 10 Jan 2025 15:20:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3385838530545152699=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Ensure_irq?=
 =?utf-8?q?s=27_status_does_not_change_with_spin=5Funlock?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2025 15:20:03 -0000
Message-ID: <173652240355.1994924.35324381783754915@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <gtrmxhovj2qpmcica76f7uxharhztbt7fdoromyxbsd7ltjvuq@lhnv2wcxm7or>
In-Reply-To: <gtrmxhovj2qpmcica76f7uxharhztbt7fdoromyxbsd7ltjvuq@lhnv2wcxm7or>
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

--===============3385838530545152699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Ensure irqs' status does not change with spin_unlock
URL   : https://patchwork.freedesktop.org/series/143393/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15942 -> Patchwork_143393v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_143393v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_143393v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-adlp-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_143393v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@guc:
    - bat-rplp-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-rplp-1/igt@i915_selftest@live@guc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-rplp-1/igt@i915_selftest@live@guc.html

  
Known issues
------------

  Here are the changes found in Patchwork_143393v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-rplp-1:         [PASS][3] -> [ABORT][4] ([i915#13399])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-rplp-1/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-rplp-1/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][5] -> [SKIP][6] ([i915#9197]) +2 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - bat-arlh-2:         [INCOMPLETE][7] ([i915#13050]) -> [PASS][8] +1 other test pass
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-arlh-2/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-arlh-2/igt@i915_selftest@live@execlists.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [SKIP][9] -> [ABORT][10] ([i915#13169])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
  [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
  [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15942 -> Patchwork_143393v1

  CI-20190529: 20190529
  CI_DRM_15942: 00f4619246294b1de4bac42742cfef95c1f37fde @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8186: 2c6b2f0ed4075aa1ac3d341d612e41343cff4e4d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_143393v1: 00f4619246294b1de4bac42742cfef95c1f37fde @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/index.html

--===============3385838530545152699==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Ensure irqs&#x27; status does not change with spin_unlock</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/143393/">https://patchwork.freedesktop.org/series/143393/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15942 -&gt; Patchwork_143393v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_143393v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_143393v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-adlp-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_143393v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-rplp-1/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-rplp-1/igt@i915_selftest@live@guc.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_143393v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-rplp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-rplp-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399">i915#13399</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-arlh-2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050">i915#13050</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/bat-arlh-2/igt@i915_selftest@live@execlists.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143393v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169">i915#13169</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15942 -&gt; Patchwork_143393v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15942: 00f4619246294b1de4bac42742cfef95c1f37fde @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8186: 2c6b2f0ed4075aa1ac3d341d612e41343cff4e4d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_143393v1: 00f4619246294b1de4bac42742cfef95c1f37fde @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3385838530545152699==--
