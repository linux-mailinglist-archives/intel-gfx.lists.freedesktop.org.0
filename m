Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFA69D3E1E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 15:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7248D10E05B;
	Wed, 20 Nov 2024 14:54:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D1FC10E05B;
 Wed, 20 Nov 2024 14:54:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5865854458137064480=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_ensure_segment_?=
 =?utf-8?q?offset_never_exceeds_allowed_max_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2024 14:54:46 -0000
Message-ID: <173211448646.751870.15863919556501587234@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <upbjdavlbcxku63ns4vstp5kgbn2anxwewpmnppszgb67fn66t@tfclfgkqijue>
In-Reply-To: <upbjdavlbcxku63ns4vstp5kgbn2anxwewpmnppszgb67fn66t@tfclfgkqijue>
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

--===============5865854458137064480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: ensure segment offset never exceeds allowed max (rev8)
URL   : https://patchwork.freedesktop.org/series/140374/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15724 -> Patchwork_140374v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_140374v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-twl-1:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-twl-1/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-twl-1/igt@core_hotunplug@unbind-rebind.html

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-apl-1/igt@dmabuf@all-tests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_pm_rpm@module-reload:
    - bat-dg2-11:         [PASS][5] -> [FAIL][6] ([i915#12903])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
    - bat-rpls-4:         [PASS][7] -> [FAIL][8] ([i915#12903])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-rpls-4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live:
    - bat-mtlp-6:         [PASS][9] -> [ABORT][10] ([i915#12829])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-mtlp-6/igt@i915_selftest@live.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-mtlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [PASS][11] -> [ABORT][12] ([i915#12915])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +3 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-arlh-3:         [ABORT][15] ([i915#12829]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-arlh-3/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [ABORT][17] ([i915#12061]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-dg2-13:         [DMESG-WARN][19] ([i915#12253]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12253]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253
  [i915#12829]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829
  [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#12915]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12915
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197


Build changes
-------------

  * Linux: CI_DRM_15724 -> Patchwork_140374v8

  CI-20190529: 20190529
  CI_DRM_15724: 0cb17ecec562c61d45997a2fced4e5ed99b31f99 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_140374v8: 0cb17ecec562c61d45997a2fced4e5ed99b31f99 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/index.html

--===============5865854458137064480==
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
<tr><td><b>Series:</b></td><td>drm/i915: ensure segment offset never exceeds allowed max (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/140374/">https://patchwork.freedesktop.org/series/140374/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15724 -&gt; Patchwork_140374v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_140374v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-twl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-twl-1/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-dg2-11/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903">i915#12903</a>)</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-rpls-4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903">i915#12903</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-mtlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829">i915#12829</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12915">i915#12915</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197">i915#9197</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-arlh-3/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829">i915#12829</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-arlh-3/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-arlh-3/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12253">i915#12253</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140374v8/bat-dg2-13/igt@kms_chamelium_edid@hdmi-edid-read.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15724 -&gt; Patchwork_140374v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15724: 0cb17ecec562c61d45997a2fced4e5ed99b31f99 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_140374v8: 0cb17ecec562c61d45997a2fced4e5ed99b31f99 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5865854458137064480==--
