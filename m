Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7779DAD0143
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jun 2025 13:36:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9281010E38A;
	Fri,  6 Jun 2025 11:26:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7FC10E2BD;
 Fri,  6 Jun 2025 11:26:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3379613878104618328=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/panel=2C_drm/i915=3A_?=
 =?utf-8?q?ACPI_support_for_panel_follower?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Jun 2025 11:26:02 -0000
Message-ID: <174920916203.55366.16611964534158164021@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1749199013.git.jani.nikula@intel.com>
In-Reply-To: <cover.1749199013.git.jani.nikula@intel.com>
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

--===============3379613878104618328==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/panel, drm/i915: ACPI support for panel follower
URL   : https://patchwork.freedesktop.org/series/149924/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16658 -> Patchwork_149924v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-snb-2520m fi-elk-e7500 

Known issues
------------

  Here are the changes found in Patchwork_149924v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][1] -> [INCOMPLETE][2] ([i915#12904]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-apl-1/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@gem_exec_fence@nb-await@vecs0:
    - bat-rpls-4:         [PASS][3] -> [DMESG-WARN][4] ([i915#13400]) +1 other test dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][5] -> [DMESG-WARN][6] ([i915#13494])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-mtlp-9/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - bat-twl-2:          [PASS][7] -> [INCOMPLETE][8] ([i915#14096]) +1 other test incomplete
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@hugepages:
    - bat-arlh-2:         [PASS][9] -> [DMESG-FAIL][10] ([i915#14243]) +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-arlh-2/igt@i915_selftest@live@hugepages.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@reset:
    - bat-atsm-1:         [ABORT][11] ([i915#14201]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-atsm-1/igt@i915_selftest@live@reset.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-atsm-1/igt@i915_selftest@live@reset.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][13] ([i915#12061]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-dg2-11:         [DMESG-FAIL][15] ([i915#12061]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [ABORT][17] ([i915#14201]) -> [DMESG-FAIL][18] ([i915#12061] / [i915#13929])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-atsm-1/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][19] ([i915#14204]) -> [DMESG-FAIL][20] ([i915#13929])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-atsm-1/igt@i915_selftest@live@mman.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14096]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243


Build changes
-------------

  * Linux: CI_DRM_16658 -> Patchwork_149924v1

  CI-20190529: 20190529
  CI_DRM_16658: 180cee22a876c2dfec1099123ba7ded61fbb24ee @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8400: 90a23a10be60c805ab0da456e846d1ec45799f9d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_149924v1: 180cee22a876c2dfec1099123ba7ded61fbb24ee @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/index.html

--===============3379613878104618328==
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
<tr><td><b>Series:</b></td><td>drm/panel, drm/i915: ACPI support for panel follower</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/149924/">https://patchwork.freedesktop.org/series/149924/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16658 -&gt; Patchwork_149924v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-snb-2520m fi-elk-e7500 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_149924v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-apl-1/igt@dmabuf@all-tests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@vecs0:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-twl-2/igt@i915_selftest@live@guc_multi_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14096">i915#14096</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-arlh-2/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-arlh-2/igt@i915_selftest@live@hugepages.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-atsm-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-atsm-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-atsm-1/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16658/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149924v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16658 -&gt; Patchwork_149924v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16658: 180cee22a876c2dfec1099123ba7ded61fbb24ee @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8400: 90a23a10be60c805ab0da456e846d1ec45799f9d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_149924v1: 180cee22a876c2dfec1099123ba7ded61fbb24ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3379613878104618328==--
