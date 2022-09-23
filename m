Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 723AC5E8160
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 20:03:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC5F810E802;
	Fri, 23 Sep 2022 18:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 693AB10E5CC;
 Fri, 23 Sep 2022 18:02:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 616CFAADD2;
 Fri, 23 Sep 2022 18:02:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4154270709084441603=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Fri, 23 Sep 2022 18:02:57 -0000
Message-ID: <166395617736.30119.14819968545364812961@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220923143730.13498-1-nirmoy.das@intel.com>
In-Reply-To: <20220923143730.13498-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_debug_print_in_vm=5Ffault=5Fttm_=28rev3=29?=
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

--===============4154270709084441603==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve debug print in vm_fault_ttm (rev3)
URL   : https://patchwork.freedesktop.org/series/108887/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12175 -> Patchwork_108887v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/index.html

Participating hosts (46 -> 44)
------------------------------

  Missing    (2): fi-hsw-4770 fi-skl-6700k2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108887v3:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_lrc:
    - {fi-tgl-dsi}:       [INCOMPLETE][1] ([i915#2411]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2:
    - {bat-dg2-11}:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_108887v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [PASS][5] -> [FAIL][6] ([i915#6298])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@lmem0:
    - {bat-dg2-11}:       [DMESG-WARN][8] ([i915#6816]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6816]: https://gitlab.freedesktop.org/drm/intel/issues/6816
  [i915#6818]: https://gitlab.freedesktop.org/drm/intel/issues/6818


Build changes
-------------

  * Linux: CI_DRM_12175 -> Patchwork_108887v3

  CI-20190529: 20190529
  CI_DRM_12175: a916f2c47c5965886be7a023eb78e67470237fe3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108887v3: a916f2c47c5965886be7a023eb78e67470237fe3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

824c9b8b86b0 drm/i915: Improve debug print in vm_fault_ttm

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/index.html

--===============4154270709084441603==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve debug print in vm_fault_ttm (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108887/">https://patchwork.freedesktop.org/series/108887/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12175 -&gt; Patchwork_108887v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/index.html</p>
<h2>Participating hosts (46 -&gt; 44)</h2>
<p>Missing    (2): fi-hsw-4770 fi-skl-6700k2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_108887v3:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/fi-tgl-dsi/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-2.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108887v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@lmem0:<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12175/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6816">i915#6816</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108887v3/bat-dg2-11/igt@gem_exec_suspend@basic-s3@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12175 -&gt; Patchwork_108887v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12175: a916f2c47c5965886be7a023eb78e67470237fe3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6662: dcb1d7a8822e62935f4fe3f2e6a04caaee669369 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108887v3: a916f2c47c5965886be7a023eb78e67470237fe3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>824c9b8b86b0 drm/i915: Improve debug print in vm_fault_ttm</p>

</body>
</html>

--===============4154270709084441603==--
