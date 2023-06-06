Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7819E7247BB
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 17:29:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D939110E374;
	Tue,  6 Jun 2023 15:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C67ED10E374;
 Tue,  6 Jun 2023 15:29:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C32FAAADD6;
 Tue,  6 Jun 2023 15:29:26 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6382354027316804245=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 06 Jun 2023 15:29:26 -0000
Message-ID: <168606536679.22671.16507267451497257926@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230606104238.31953-1-shawn.c.lee@intel.com>
In-Reply-To: <20230606104238.31953-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_update_DP_2=2E0_vswing_table_for_C20_phy?=
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

--===============6382354027316804245==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: update DP 2.0 vswing table for C20 phy
URL   : https://patchwork.freedesktop.org/series/118924/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13236 -> Patchwork_118924v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/index.html

Participating hosts (41 -> 35)
------------------------------

  Missing    (6): fi-bsw-n3050 fi-ilk-650 fi-apl-guc fi-snb-2520m fi-cfl-8109u fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_118924v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [ABORT][2] ([i915#7911] / [i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-WARN][3] ([i915#6367])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][4] ([i915#6687] / [i915#7978])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][5] -> [FAIL][6] ([i915#7932])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_mocs:
    - {bat-mtlp-8}:       [DMESG-FAIL][7] ([i915#7059]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [DMESG-WARN][9] ([i915#7699]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][11] ([i915#7911] / [i915#7920] / [i915#7982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-rpls-1/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5}:
    - {bat-adlp-11}:      [DMESG-FAIL][13] ([i915#6868]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html

  * {igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5}:
    - {bat-adlp-11}:      [FAIL][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [FAIL][17] ([i915#7932]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6868]: https://gitlab.freedesktop.org/drm/intel/issues/6868
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982


Build changes
-------------

  * Linux: CI_DRM_13236 -> Patchwork_118924v1

  CI-20190529: 20190529
  CI_DRM_13236: 6ef9ba991d96572648aa75eb7818d8c111f2eb4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118924v1: 6ef9ba991d96572648aa75eb7818d8c111f2eb4f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

979cf47d3245 drm/i915/mtl: update DP 2.0 vswing table for C20 phy

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/index.html

--===============6382354027316804245==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: update DP 2.0 vswing table for C20 phy</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118924/">https://patchwork.freedesktop.org/series/118924/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13236 -&gt; Patchwork_118924v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/index.html</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Missing    (6): fi-bsw-n3050 fi-ilk-650 fi-apl-guc fi-snb-2520m fi-cfl-8109u fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118924v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5}:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6868">i915#6868</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5}:</p>
<ul>
<li>{bat-adlp-11}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-dp-5.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13236/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118924v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13236 -&gt; Patchwork_118924v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13236: 6ef9ba991d96572648aa75eb7818d8c111f2eb4f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7320: 1c96b08a4cde6f2d49824a8cc3303bd860617b52 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118924v1: 6ef9ba991d96572648aa75eb7818d8c111f2eb4f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>979cf47d3245 drm/i915/mtl: update DP 2.0 vswing table for C20 phy</p>

</body>
</html>

--===============6382354027316804245==--
