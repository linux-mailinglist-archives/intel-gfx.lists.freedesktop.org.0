Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CA177C1A3
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Aug 2023 22:39:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABEC410E0D0;
	Mon, 14 Aug 2023 20:39:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0BA3510E0D0;
 Mon, 14 Aug 2023 20:39:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 01877A7E03;
 Mon, 14 Aug 2023 20:39:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9201018648304596985=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Mon, 14 Aug 2023 20:39:50 -0000
Message-ID: <169204559097.19471.6647533494084806235@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230814182449.1060747-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230814182449.1060747-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_TLB-Invalidation_seqno_store?=
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

--===============9201018648304596985==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix TLB-Invalidation seqno store
URL   : https://patchwork.freedesktop.org/series/122433/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13517 -> Patchwork_122433v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): bat-mtlp-8 fi-snb-2520m bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_122433v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-2:         [PASS][2] -> [TIMEOUT][3] ([i915#6794] / [i915#7392])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-rpls-2/igt@i915_selftest@live@mman.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-rpls-2/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-2:         [PASS][4] -> [WARN][5] ([i915#8747])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][6] ([i915#1845] / [i915#5354]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][7] ([i915#5334]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-9:         [DMESG-FAIL][9] ([i915#7699] / [i915#7913]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-adlp-9/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-adlp-9/igt@i915_selftest@live@migrate.html
    - bat-dg2-11:         [DMESG-WARN][11] ([i915#7699]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][13] ([i915#4423]) -> [DMESG-WARN][14] ([i915#4423])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-adlp-11/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-adlp-11/igt@i915_module_load@load.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [Intel XE#486]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/486
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#8879]: https://gitlab.freedesktop.org/drm/intel/issues/8879


Build changes
-------------

  * Linux: CI_DRM_13517 -> Patchwork_122433v1

  CI-20190529: 20190529
  CI_DRM_13517: 85f20fb339f05ec4221bb295c13e46061c5c566f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7435: b6eaa6bfdc94c94b34ec80f437c4b6125eb19357 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122433v1: 85f20fb339f05ec4221bb295c13e46061c5c566f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

87acfec976af drm/i915: Fix TLB-Invalidation seqno store

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/index.html

--===============9201018648304596985==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix TLB-Invalidation seqno store</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122433/">https://patchwork.freedesktop.org/series/122433/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13517 -&gt; Patchwork_122433v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): bat-mtlp-8 fi-snb-2520m bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122433v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-rpls-2/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-rpls-2/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-rpls-2/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-adlp-9/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-adlp-9/igt@i915_selftest@live@migrate.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13517/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122433v1/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13517 -&gt; Patchwork_122433v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13517: 85f20fb339f05ec4221bb295c13e46061c5c566f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7435: b6eaa6bfdc94c94b34ec80f437c4b6125eb19357 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122433v1: 85f20fb339f05ec4221bb295c13e46061c5c566f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>87acfec976af drm/i915: Fix TLB-Invalidation seqno store</p>

</body>
</html>

--===============9201018648304596985==--
