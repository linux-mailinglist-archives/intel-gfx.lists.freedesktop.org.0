Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCF82A64EC
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 14:19:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D17CD6E9A8;
	Wed,  4 Nov 2020 13:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 196EF6E171;
 Wed,  4 Nov 2020 13:19:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D6F2A47DB;
 Wed,  4 Nov 2020 13:19:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 04 Nov 2020 13:19:45 -0000
Message-ID: <160449598502.21428.1748913874525214534@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201104122043.876567-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20201104122043.876567-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/2=5D_drm/i915=3A_Improve_record_of?=
 =?utf-8?q?_hung_engines_in_error_state?=
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
Content-Type: multipart/mixed; boundary="===============2020256113=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2020256113==
Content-Type: multipart/alternative;
 boundary="===============2371612614452737581=="

--===============2371612614452737581==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [RFC,1/2] drm/i915: Improve record of hung engines in error state
URL   : https://patchwork.freedesktop.org/series/83493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9263 -> Patchwork_18850
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9263 and Patchwork_18850:

### New CI tests (1) ###

  * boot:
    - Statuses : 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18850 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-byt-j1900/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6] ([i915#541])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][7] -> [DMESG-WARN][8] ([i915#1982]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#165]) +15 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
    - fi-apl-guc:         [DMESG-WARN][17] ([i915#1635] / [i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@kms_flip@basic-flip-vs-modeset@d-dsi1:
    - {fi-tgl-dsi}:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9263 -> Patchwork_18850

  CI-20190529: 20190529
  CI_DRM_9263: d024f57bbf34cd9dedaff4d026a7ed8f58325bad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5832: 9c583f7e2a6638b5ff6a3682fea548a1313512e7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18850: ca731d18e828dccce4340125ea27f22e0f6d6e84 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ca731d18e828 drm/i915: Use user engine names in error state ecode
3c852854e2b3 drm/i915: Improve record of hung engines in error state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/index.html

--===============2371612614452737581==
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
<tr><td><b>Series:</b></td><td>series starting with [RFC,1/2] drm/i915: Improve record of hung engines in error state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83493/">https://patchwork.freedesktop.org/series/83493/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9263 -&gt; Patchwork_18850</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9263 and Patchwork_18850:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18850 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) +15 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-dsi1:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9263/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18850/fi-tgl-dsi/igt@kms_flip@basic-flip-vs-modeset@d-dsi1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9263 -&gt; Patchwork_18850</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9263: d024f57bbf34cd9dedaff4d026a7ed8f58325bad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5832: 9c583f7e2a6638b5ff6a3682fea548a1313512e7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18850: ca731d18e828dccce4340125ea27f22e0f6d6e84 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ca731d18e828 drm/i915: Use user engine names in error state ecode<br />
3c852854e2b3 drm/i915: Improve record of hung engines in error state</p>

</body>
</html>

--===============2371612614452737581==--

--===============2020256113==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2020256113==--
