Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A65264402
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 12:28:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D6E6E8F9;
	Thu, 10 Sep 2020 10:28:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E0C686E8F4;
 Thu, 10 Sep 2020 10:28:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA3B2A47EA;
 Thu, 10 Sep 2020 10:28:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 10 Sep 2020 10:28:03 -0000
Message-ID: <159973368388.26638.10072199312805531212@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200910095227.9466-1-jani.nikula@intel.com>
In-Reply-To: <20200910095227.9466-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915=3A_disable_all_display_fea?=
 =?utf-8?q?tures_when_no_display?=
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
Content-Type: multipart/mixed; boundary="===============0205803362=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0205803362==
Content-Type: multipart/alternative;
 boundary="===============3829438841400122923=="

--===============3829438841400122923==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915: disable all display features when no display
URL   : https://patchwork.freedesktop.org/series/81541/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8992 -> Patchwork_18466
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/index.html

Known issues
------------

  Here are the changes found in Patchwork_18466 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2] ([i915#2439])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-pnv-d510:        [PASS][3] -> [INCOMPLETE][4] ([i915#2439] / [i915#299])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-blb-e6850:       [PASS][5] -> [INCOMPLETE][6] ([i915#2440])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2600:        [PASS][7] -> [INCOMPLETE][8] ([i915#2440] / [i915#82])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html
    - fi-ilk-650:         [PASS][9] -> [INCOMPLETE][10] ([i915#2439])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][11] ([i915#2417]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_gttfill@basic:
    - fi-cfl-guc:         [INCOMPLETE][13] ([i915#2439]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-cfl-guc/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-cfl-guc/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-soraka/igt@i915_module_load@reload.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-bsw-nick:        [INCOMPLETE][17] ([i915#2439]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
    - {fi-tgl-dsi}:       [INCOMPLETE][19] ([i915#2439]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-kbl-r:           [FAIL][21] ([i915#1186] / [i915#2439]) -> [FAIL][22] ([i915#1186] / [i915#1784] / [i915#2439])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-r/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-r/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][23] ([i915#1784] / [i915#2398] / [i915#2439]) -> [FAIL][24] ([i915#1186] / [i915#2439])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-7500u/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][25] ([i915#1186] / [i915#1784] / [i915#2439]) -> [FAIL][26] ([i915#1186] / [i915#2439])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-guc/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][27] ([i915#1186] / [i915#2082] / [i915#2439]) -> [FAIL][28] ([i915#1186] / [i915#2439])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-cml-s/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][29] ([i915#1186] / [i915#2439]) -> [FAIL][30] ([i915#2398] / [i915#2439])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-cfl-guc/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-cfl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2440]: https://gitlab.freedesktop.org/drm/intel/issues/2440
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8992 -> Patchwork_18466

  CI-20190529: 20190529
  CI_DRM_8992: 112fd8dcacfde4bb22054010843e9257bad73ec4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18466: 765a8a2ae5c19a6b8f1d982963a777a474d23d17 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

765a8a2ae5c1 drm/i915: move gmbus restore to i915_restore_display
7e59438fed88 drm/i915: move gen4 GCDGMBUS save/restore to display save/restore
e7ece370fe10 drm/i915: disable all display features when no display

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/index.html

--===============3829438841400122923==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915: disable all display features when no display</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81541/">https://patchwork.freedesktop.org/series/81541/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8992 -&gt; Patchwork_18466</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18466 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-pnv-d510/igt@gem_tiled_fence_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-blb-e6850/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-snb-2600/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2440">i915#2440</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/82">i915#82</a>)</p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-ilk-650/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-cfl-guc/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-cfl-guc/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-tgl-dsi/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8992/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18466/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8992 -&gt; Patchwork_18466</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8992: 112fd8dcacfde4bb22054010843e9257bad73ec4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5780: 9c5dfeb0338d7f98ad998663a595eab71ea887f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18466: 765a8a2ae5c19a6b8f1d982963a777a474d23d17 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>765a8a2ae5c1 drm/i915: move gmbus restore to i915_restore_display<br />
7e59438fed88 drm/i915: move gen4 GCDGMBUS save/restore to display save/restore<br />
e7ece370fe10 drm/i915: disable all display features when no display</p>

</body>
</html>

--===============3829438841400122923==--

--===============0205803362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0205803362==--
