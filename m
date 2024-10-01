Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB43498B1EE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 03:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 981BC10E5B2;
	Tue,  1 Oct 2024 01:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 617E310E5B2;
 Tue,  1 Oct 2024 01:53:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3855394911834442266=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_platfor?=
 =?utf-8?q?m_identification_with_display-=3Eplatform=2E=3Cplatform=3E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 01:53:02 -0000
Message-ID: <172774758237.1139982.2351931826988707291@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <cover.1727699233.git.jani.nikula@intel.com>
In-Reply-To: <cover.1727699233.git.jani.nikula@intel.com>
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

--===============3855394911834442266==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: platform identification with display->platform.<platform>
URL   : https://patchwork.freedesktop.org/series/139302/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15461 -> Patchwork_139302v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/index.html

Participating hosts (42 -> 42)
------------------------------

  Additional (1): bat-dg2-13 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_139302v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-6:         [PASS][1] -> [DMESG-WARN][2] ([i915#10341])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-mtlp-6/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-mtlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][3] ([i915#11637] / [i915#12133]) +8 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_tlb:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][4] ([i915#11637]) +21 other tests dmesg-warn
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-6:         [PASS][5] -> [DMESG-WARN][6] ([i915#11349])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@objects:
    - bat-arls-5:         NOTRUN -> [DMESG-WARN][7] ([i915#10341] / [i915#11637]) +2 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@objects.html

  * igt@kms_chamelium_hpd@dp-hpd-fast:
    - bat-dg2-13:         NOTRUN -> [SKIP][8] ([i915#7828]) +8 other tests skip
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - bat-arls-5:         [DMESG-WARN][9] ([i915#11637] / [i915#1982]) -> [DMESG-WARN][10] ([i915#11637])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-arls-5/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_module_load@reload.html

  * igt@i915_selftest@live:
    - bat-arls-5:         [ABORT][11] ([i915#12061] / [i915#12133]) -> [DMESG-WARN][12] ([i915#10341] / [i915#12133])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-arls-5/igt@i915_selftest@live.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [ABORT][13] ([i915#12061]) -> [DMESG-WARN][14] ([i915#10341] / [i915#11637])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828


Build changes
-------------

  * Linux: CI_DRM_15461 -> Patchwork_139302v1

  CI-20190529: 20190529
  CI_DRM_15461: 4e4d7873ac763aa0bd9207ea9ec2b89bb52a6fe1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8043: 8043
  Patchwork_139302v1: 4e4d7873ac763aa0bd9207ea9ec2b89bb52a6fe1 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/index.html

--===============3855394911834442266==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: platform identification with display-&gt;platform.&lt;platform&gt;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139302/">https://patchwork.freedesktop.org/series/139302/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15461 -&gt; Patchwork_139302v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/index.html</p>
<h2>Participating hosts (42 -&gt; 42)</h2>
<p>Additional (1): bat-dg2-13 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139302v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-mtlp-6/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) +8 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_tlb:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) +21 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-5:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@objects.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-fast:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-dg2-13/igt@kms_chamelium_hpd@dp-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +8 other tests skip</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-arls-5/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15461/bat-arls-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139302v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15461 -&gt; Patchwork_139302v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15461: 4e4d7873ac763aa0bd9207ea9ec2b89bb52a6fe1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8043: 8043<br />
  Patchwork_139302v1: 4e4d7873ac763aa0bd9207ea9ec2b89bb52a6fe1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3855394911834442266==--
