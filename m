Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9899429EB04
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Oct 2020 12:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1FC36ECAA;
	Thu, 29 Oct 2020 11:53:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1CC9A6ECAA;
 Thu, 29 Oct 2020 11:53:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1446DA8831;
 Thu, 29 Oct 2020 11:53:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 29 Oct 2020 11:53:03 -0000
Message-ID: <160397238305.1422.5643028154072248044@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20201029101428.4058311-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_fbcon=3A_Disable_accelerated_scroll?=
 =?utf-8?q?ing?=
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
Content-Type: multipart/mixed; boundary="===============1469991074=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1469991074==
Content-Type: multipart/alternative;
 boundary="===============4005957249689730760=="

--===============4005957249689730760==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] fbcon: Disable accelerated scrolling
URL   : https://patchwork.freedesktop.org/series/83194/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9216 -> Patchwork_18803
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9216 and Patchwork_18803:

### New CI tests (1) ###

  * boot:
    - Statuses : 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18803 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_create@basic:
    - fi-tgl-u2:          [PASS][1] -> [INCOMPLETE][2] ([CI#80])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-u2/igt@gem_exec_create@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-u2/igt@gem_exec_create@basic.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#402]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-y/igt@prime_vgem@basic-write.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-y/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [DMESG-WARN][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][11] ([i915#402]) -> [PASS][12] +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_busy@busy@all:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#1982]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-y/igt@gem_busy@busy@all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-y/igt@gem_busy@busy@all.html

  * igt@i915_module_load@reload:
    - {fi-ehl-1}:         [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-ehl-1/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-ehl-1/igt@i915_module_load@reload.html
    - fi-icl-y:           [DMESG-WARN][17] ([i915#1982]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-icl-y/igt@i915_module_load@reload.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-icl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [DMESG-FAIL][19] -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@gt_timelines:
    - fi-apl-guc:         [INCOMPLETE][21] ([i915#1635]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][23] ([i915#1982]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][25] ([i915#1982]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9216 -> Patchwork_18803

  CI-20190529: 20190529
  CI_DRM_9216: b50212d10fa0b1ef83ad62d4b445b361f282ed36 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18803: ef7c8e4df6fdd3c50ba35e38eb70cf7ef798422e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ef7c8e4df6fd drm/qxl: Remove fbcon acceleration leftovers
84aed1557f93 fbcon: Drop EXPORT_SYMBOL
83d868107d69 fbcon: Disable accelerated scrolling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/index.html

--===============4005957249689730760==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] fbcon: Disable accelerated scrolling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/83194/">https://patchwork.freedesktop.org/series/83194/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9216 -&gt; Patchwork_18803</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9216 and Patchwork_18803:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18803 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-u2/igt@gem_exec_create@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-u2/igt@gem_exec_create@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80">CI#80</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-y/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-y/igt@prime_vgem@basic-write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_busy@busy@all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-tgl-y/igt@gem_busy@busy@all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-tgl-y/igt@gem_busy@busy@all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-ehl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-ehl-1/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-icl-y/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_timelines:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-apl-guc/igt@i915_selftest@live@gt_timelines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9216/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18803/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9216 -&gt; Patchwork_18803</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9216: b50212d10fa0b1ef83ad62d4b445b361f282ed36 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5828: db972bdaab8ada43b742bc9621bb0fc9d56a6fc6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18803: ef7c8e4df6fdd3c50ba35e38eb70cf7ef798422e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ef7c8e4df6fd drm/qxl: Remove fbcon acceleration leftovers<br />
84aed1557f93 fbcon: Drop EXPORT_SYMBOL<br />
83d868107d69 fbcon: Disable accelerated scrolling</p>

</body>
</html>

--===============4005957249689730760==--

--===============1469991074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1469991074==--
