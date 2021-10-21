Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD04364A4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 16:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4273F6E45E;
	Thu, 21 Oct 2021 14:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF75B6E3F7;
 Thu, 21 Oct 2021 14:46:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D30C1A47DF;
 Thu, 21 Oct 2021 14:46:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4816447604164232301=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 14:46:27 -0000
Message-ID: <163482758783.20177.17436427649432839952@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021114410.2437099-1-matthew.auld@intel.com>
In-Reply-To: <20211021114410.2437099-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/clflush=3A_fixup_handling_?=
 =?utf-8?q?of_cache=5Fdirty?=
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

--===============4816447604164232301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915/clflush: fixup handling of cache_dirty
URL   : https://patchwork.freedesktop.org/series/96119/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10770 -> Patchwork_21404
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/index.html

Known issues
------------

  Here are the changes found in Patchwork_21404 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:
    - fi-cfl-8109u:       [PASS][1] -> [FAIL][2] ([i915#4165])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] ([i915#295]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-tgl-dsi/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][7] ([i915#3303]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][9] ([i915#4269]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [FAIL][11] ([i915#2546]) -> [DMESG-WARN][12] ([i915#295])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4165]: https://gitlab.freedesktop.org/drm/intel/issues/4165
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Participating hosts (38 -> 34)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bsw-kefka fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10770 -> Patchwork_21404

  CI-20190529: 20190529
  CI_DRM_10770: 214e8b46143416c4a130cbaeea8430ad9fa19f63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21404: e587884c5e8190c6b861ea451d73e91ca4ffbe83 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e587884c5e81 drm/i915: stop setting cache_dirty on discrete
8458b5d40c8d drm/i915: move cpu_write_needs_clflush
b9d957e084bd drm/i915/clflush: disallow on discrete
a73be2e8149b drm/i915/clflush: fixup handling of cache_dirty

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/index.html

--===============4816447604164232301==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915/clflush: fixup handling of cache_dirty</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96119/">https://patchwork.freedesktop.org/series/96119/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10770 -&gt; Patchwork_21404</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21404 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4165">i915#4165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) +17 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10770/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21404/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bsw-kefka fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10770 -&gt; Patchwork_21404</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10770: 214e8b46143416c4a130cbaeea8430ad9fa19f63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21404: e587884c5e8190c6b861ea451d73e91ca4ffbe83 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e587884c5e81 drm/i915: stop setting cache_dirty on discrete<br />
8458b5d40c8d drm/i915: move cpu_write_needs_clflush<br />
b9d957e084bd drm/i915/clflush: disallow on discrete<br />
a73be2e8149b drm/i915/clflush: fixup handling of cache_dirty</p>

</body>
</html>

--===============4816447604164232301==--
