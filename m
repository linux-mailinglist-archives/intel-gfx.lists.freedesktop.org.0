Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E7CC68EEE
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 11:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3268A10E164;
	Tue, 18 Nov 2025 10:56:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7940B10E164;
 Tue, 18 Nov 2025 10:56:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4844578907964218074=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915=3A_call_irq_and_?=
 =?utf-8?q?rps_through_the_parent_interface_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Nov 2025 10:56:30 -0000
Message-ID: <176346339048.3615.8708097677734450@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1763370930.git.jani.nikula@intel.com>
In-Reply-To: <cover.1763370930.git.jani.nikula@intel.com>
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

--===============4844578907964218074==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: call irq and rps through the parent interface (rev6)
URL   : https://patchwork.freedesktop.org/series/157575/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17559 -> Patchwork_157575v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html

Participating hosts (44 -> 44)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_157575v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([i915#1849])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] +25 other tests skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [PASS][3] -> [INCOMPLETE][4] ([i915#14764] / [i915#14818] / [i915#14837] / [i915#15175] / [i915#15198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-arlh-3/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@sanitycheck:
    - bat-arlh-3:         [PASS][5] -> [INCOMPLETE][6] ([i915#15303])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-dg2-14/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - fi-bsw-nick:        NOTRUN -> [SKIP][9] ([i915#11190]) +16 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][10] ([i915#12061]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][12] ([i915#12061]) -> [PASS][13] +1 other test pass
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-modeset:
    - fi-bsw-n3050:       [DMESG-WARN][14] ([i915#15203]) -> [PASS][15] +3 other tests pass
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-cfl-guc:         [SKIP][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/fi-cfl-guc/igt@kms_hdmi_inject@inject-audio.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-cfl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764
  [i915#14818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818
  [i915#14837]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837
  [i915#15175]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15175
  [i915#15198]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15198
  [i915#15203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15203
  [i915#15303]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15303
  [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849


Build changes
-------------

  * Linux: CI_DRM_17559 -> Patchwork_157575v6

  CI-20190529: 20190529
  CI_DRM_17559: 4ebea764d0e6ddbcaed6a474aee387f9c45e2eab @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8628: 8628
  Patchwork_157575v6: 4ebea764d0e6ddbcaed6a474aee387f9c45e2eab @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html

--===============4844578907964218074==
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
<tr><td><b>Series:</b></td><td>drm/i915: call irq and rps through the parent interface (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/157575/">https://patchwork.freedesktop.org/series/157575/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17559 -&gt; Patchwork_157575v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>Additional (1): fi-bsw-nick <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_157575v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-arlh-3/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14764">i915#14764</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818">i915#14818</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14837">i915#14837</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15175">i915#15175</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15198">i915#15198</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-arlh-3/igt@i915_selftest@live@sanitycheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15303">i915#15303</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-nick/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a>) +16 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15203">i915#15203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-modeset.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17559/fi-cfl-guc/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_157575v6/fi-cfl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17559 -&gt; Patchwork_157575v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17559: 4ebea764d0e6ddbcaed6a474aee387f9c45e2eab @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8628: 8628<br />
  Patchwork_157575v6: 4ebea764d0e6ddbcaed6a474aee387f9c45e2eab @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============4844578907964218074==--
