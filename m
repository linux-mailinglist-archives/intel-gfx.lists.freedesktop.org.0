Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 022A7A429CD
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 18:32:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C1D410E050;
	Mon, 24 Feb 2025 17:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53EAF10E050;
 Mon, 24 Feb 2025 17:32:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6764220402653257973=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/hdcp=3A_switch_t?=
 =?utf-8?q?o_guard_and_scoped_guard_for_mutexes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Feb 2025 17:32:55 -0000
Message-ID: <174041837533.1668378.12671646852964790447@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250224101428.204519-1-jani.nikula@intel.com>
In-Reply-To: <20250224101428.204519-1-jani.nikula@intel.com>
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

--===============6764220402653257973==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: switch to guard and scoped guard for mutexes
URL   : https://patchwork.freedesktop.org/series/145326/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16171 -> Patchwork_145326v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_145326v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_145326v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/index.html

Participating hosts (44 -> 44)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_145326v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@hang-read-crc:
    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2] +2 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-twl-2:          [ABORT][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-twl-2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@i915_module_load@reload.html

  
Known issues
------------

  Here are the changes found in Patchwork_145326v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - bat-twl-2:          NOTRUN -> [SKIP][5] ([i915#10213] / [i915#11671]) +3 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@gem_lmem_swapping@basic.html

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][6] -> [DMESG-WARN][7] ([i915#13494])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-mtlp-9/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-7:          [PASS][8] -> [FAIL][9] ([i915#13633])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][10] -> [FAIL][11] ([i915#13633])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-twl-1:          [PASS][12] -> [ABORT][13] ([i915#12435] / [i915#12919] / [i915#13503])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-twl-1/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-1/igt@i915_selftest@live.html
    - bat-twl-2:          NOTRUN -> [INCOMPLETE][14] ([i915#12435] / [i915#12445])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@i915_selftest@live.html

  * igt@i915_selftest@live@perf:
    - bat-twl-1:          [PASS][15] -> [ABORT][16] ([i915#12919])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-twl-1/igt@i915_selftest@live@perf.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-1/igt@i915_selftest@live@perf.html

  * igt@i915_selftest@live@reset:
    - bat-twl-2:          NOTRUN -> [INCOMPLETE][17] ([i915#12445])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][18] -> [SKIP][19] ([i915#9197]) +3 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await:
    - bat-rpls-4:         [FAIL][20] -> [PASS][21] +1 other test pass
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-rpls-4/igt@gem_exec_fence@basic-await.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-rpls-4/igt@gem_exec_fence@basic-await.html

  
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#12435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435
  [i915#12445]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445
  [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
  [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_16171 -> Patchwork_145326v1

  CI-20190529: 20190529
  CI_DRM_16171: a5a9504217e25c850ff9e82d38c1093dbdbf20f9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8246: 2670886863d5821273146d7f94cdd3c8e3a4fe0b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_145326v1: a5a9504217e25c850ff9e82d38c1093dbdbf20f9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/index.html

--===============6764220402653257973==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: switch to guard and scoped guard for mutexes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/145326/">https://patchwork.freedesktop.org/series/145326/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16171 -&gt; Patchwork_145326v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_145326v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_145326v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_145326v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@hang-read-crc.html">DMESG-WARN</a> +2 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-twl-2/igt@i915_module_load@reload.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@i915_module_load@reload.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_145326v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213">i915#10213</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671">i915#11671</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633">i915#13633</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-twl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503">i915#13503</a>)</li>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435">i915#12435</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-twl-1/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-1/igt@i915_selftest@live@perf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919">i915#12919</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-twl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-twl-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12445">i915#12445</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_fence@basic-await:<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16171/bat-rpls-4/igt@gem_exec_fence@basic-await.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145326v1/bat-rpls-4/igt@gem_exec_fence@basic-await.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16171 -&gt; Patchwork_145326v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16171: a5a9504217e25c850ff9e82d38c1093dbdbf20f9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8246: 2670886863d5821273146d7f94cdd3c8e3a4fe0b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_145326v1: a5a9504217e25c850ff9e82d38c1093dbdbf20f9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6764220402653257973==--
