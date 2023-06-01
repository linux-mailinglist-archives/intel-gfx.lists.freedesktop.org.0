Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1844071F4C1
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 23:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBDA210E09D;
	Thu,  1 Jun 2023 21:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 81C2D10E09D;
 Thu,  1 Jun 2023 21:32:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E9B23A0BA8;
 Thu,  1 Jun 2023 21:32:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6443145368738922136=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 01 Jun 2023 21:32:21 -0000
Message-ID: <168565514192.16230.13694680137627166898@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230601155917.2402415-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230601155917.2402415-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp/mtl=3A_intel=5Fpxp=5Finit=5Fhw_needs_runtime-pm_insid?=
 =?utf-8?q?e_pm-complete?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6443145368738922136==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp/mtl: intel_pxp_init_hw needs runtime-pm inside pm-complete
URL   : https://patchwork.freedesktop.org/series/118714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13217 -> Patchwork_118714v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_118714v1 that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - fi-kbl-8809g:       [FAIL][1] ([i915#8293] / [i915#8298]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       NOTRUN -> [ABORT][3] ([i915#8298] / [i915#8299] / [i915#8397])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@guc:
    - bat-rpls-2:         [PASS][5] -> [DMESG-WARN][6] ([i915#7852])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-rpls-2/igt@i915_selftest@live@guc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-rpls-2/igt@i915_selftest@live@guc.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg2-11:         NOTRUN -> [INCOMPLETE][7] ([i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][8] ([i915#8296]) +2 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][9] ([i915#8299])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       NOTRUN -> [CRASH][10] ([i915#8299])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][11] ([i915#3546]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html
    - bat-dg2-11:         NOTRUN -> [SKIP][12] ([i915#1845] / [i915#5354]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][13] ([fdo#109271]) +59 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4579])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-8}:       [DMESG-FAIL][15] ([i915#7059]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@reset:
    - bat-dg2-11:         [INCOMPLETE][17] ([i915#7913]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-dg2-11/igt@i915_selftest@live@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-11/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][19] ([i915#7932]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  
#### Warnings ####

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [SKIP][21] ([i915#3555] / [i915#4579]) -> [ABORT][22] ([i915#4579] / [i915#8260])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8296]: https://gitlab.freedesktop.org/drm/intel/issues/8296
  [i915#8298]: https://gitlab.freedesktop.org/drm/intel/issues/8298
  [i915#8299]: https://gitlab.freedesktop.org/drm/intel/issues/8299
  [i915#8397]: https://gitlab.freedesktop.org/drm/intel/issues/8397


Build changes
-------------

  * Linux: CI_DRM_13217 -> Patchwork_118714v1

  CI-20190529: 20190529
  CI_DRM_13217: 37b9b6d05f2421323eb83d005d8863f59855b003 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7317: c902b72df45aa49faa38205bc5be3c748d33a3e0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118714v1: 37b9b6d05f2421323eb83d005d8863f59855b003 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8359f7546523 drm/i915/pxp/mtl: intel_pxp_init_hw needs runtime-pm inside pm-complete

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/index.html

--===============6443145368738922136==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp/mtl: intel_pxp_init_hw needs runtime-pm inside pm-complete</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118714/">https://patchwork.freedesktop.org/series/118714/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13217 -&gt; Patchwork_118714v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118714v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8298">i915#8298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/boot.html">PASS</a></li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8298">i915#8298</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8397">i915#8397</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-rpls-2/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-rpls-2/igt@i915_selftest@live@guc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7852">i915#7852</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8296">i915#8296</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-connector-state.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8299">i915#8299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>
<p>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-11/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +59 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/fi-kbl-8809g/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-dg2-11/igt@i915_selftest@live@reset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-11/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13217/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118714v1/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13217 -&gt; Patchwork_118714v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13217: 37b9b6d05f2421323eb83d005d8863f59855b003 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7317: c902b72df45aa49faa38205bc5be3c748d33a3e0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118714v1: 37b9b6d05f2421323eb83d005d8863f59855b003 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8359f7546523 drm/i915/pxp/mtl: intel_pxp_init_hw needs runtime-pm inside pm-complete</p>

</body>
</html>

--===============6443145368738922136==--
