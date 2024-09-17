Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 781CC97AFD8
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 13:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C52610E1B0;
	Tue, 17 Sep 2024 11:52:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7735810E1B0;
 Tue, 17 Sep 2024 11:52:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5494085123664928111=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Block_DC6_on_Vblank_enable_?=
 =?utf-8?q?for_Panel_Replay_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Sep 2024 11:52:52 -0000
Message-ID: <172657397248.1021655.3872594465248767295@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240917063600.3086259-1-jouni.hogander@intel.com>
In-Reply-To: <20240917063600.3086259-1-jouni.hogander@intel.com>
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

--===============5494085123664928111==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Block DC6 on Vblank enable for Panel Replay (rev3)
URL   : https://patchwork.freedesktop.org/series/138630/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15429 -> Patchwork_138630v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138630v3:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_mocs:
    - {bat-arlh-3}:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html

  
Known issues
------------

  Here are the changes found in Patchwork_138630v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@nullptr:
    - bat-arls-1:         [PASS][2] -> [DMESG-WARN][3] ([i915#12102])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-1/igt@fbdev@nullptr.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-1/igt@fbdev@nullptr.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-arls-5:         [PASS][4] -> [INCOMPLETE][5] ([i915#11320])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-5/igt@kms_pipe_crc_basic@nonblocking-crc.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-5/igt@kms_pipe_crc_basic@nonblocking-crc.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - bat-arls-1:         [DMESG-WARN][6] ([i915#12102]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-1/igt@fbdev@read.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-1/igt@fbdev@read.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-edp-1:
    - {bat-arlh-3}:       [INCOMPLETE][8] ([i915#12219]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-edp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [DMESG-WARN][10] ([i915#10341] / [i915#12133]) -> [ABORT][11] ([i915#12133] / [i915#12175])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-5/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-WARN][12] ([i915#10341] / [i915#11637]) -> [ABORT][13] ([i915#12061])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11320]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11320
  [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12175]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12175
  [i915#12219]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12219
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809


Build changes
-------------

  * Linux: CI_DRM_15429 -> Patchwork_138630v3

  CI-20190529: 20190529
  CI_DRM_15429: 38e1b615fb395b928e514108e908cd6edf3d34c3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8022: 2d82f767a959d58c04ff3876d59d67924208d4ef @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_138630v3: 38e1b615fb395b928e514108e908cd6edf3d34c3 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/index.html

--===============5494085123664928111==
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
<tr><td><b>Series:</b></td><td>Block DC6 on Vblank enable for Panel Replay (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/138630/">https://patchwork.freedesktop.org/series/138630/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15429 -&gt; Patchwork_138630v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_138630v3:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>{bat-arlh-3}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arlh-3/igt@i915_selftest@live@gt_mocs.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138630v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-1/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-1/igt@fbdev@nullptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102">i915#12102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-5/igt@kms_pipe_crc_basic@nonblocking-crc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-5/igt@kms_pipe_crc_basic@nonblocking-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11320">i915#11320</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-1/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12102">i915#12102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-1/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>{bat-arlh-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-edp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12219">i915#12219</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arlh-3/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-5/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12175">i915#12175</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15429/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138630v3/bat-arls-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15429 -&gt; Patchwork_138630v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15429: 38e1b615fb395b928e514108e908cd6edf3d34c3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8022: 2d82f767a959d58c04ff3876d59d67924208d4ef @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_138630v3: 38e1b615fb395b928e514108e908cd6edf3d34c3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5494085123664928111==--
