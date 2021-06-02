Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FFF83991C9
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 19:34:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A246EE25;
	Wed,  2 Jun 2021 17:34:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F83F6EE25;
 Wed,  2 Jun 2021 17:34:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 07B8BA8836;
 Wed,  2 Jun 2021 17:34:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 02 Jun 2021 17:34:44 -0000
Message-ID: <162265528402.11226.10327173319995409432@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210602164149.391653-1-jason@jlekstrand.net>
In-Reply-To: <20210602164149.391653-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Get_rid_of_fence_error_propagation?=
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
Content-Type: multipart/mixed; boundary="===============0061058383=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0061058383==
Content-Type: multipart/alternative;
 boundary="===============0111206187104544110=="

--===============0111206187104544110==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Get rid of fence error propagation
URL   : https://patchwork.freedesktop.org/series/90891/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10161 -> Patchwork_20265
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/index.html

Known issues
------------

  Here are the changes found in Patchwork_20265 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@execlists:
    - fi-skl-guc:         NOTRUN -> [DMESG-FAIL][2] ([i915#3462])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][3] -> [INCOMPLETE][4] ([i915#2782])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([i915#1372])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
    - fi-skl-guc:         NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#533])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-skl-guc:         NOTRUN -> [SKIP][9] ([fdo#109271]) +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html

  * igt@runner@aborted:
    - fi-skl-guc:         NOTRUN -> [FAIL][10] ([i915#1436] / [i915#2426] / [i915#3363])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-kbl-soraka:      [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-soraka/igt@core_auth@basic-auth.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-kbl-soraka/igt@core_auth@basic-auth.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [DMESG-FAIL][13] ([i915#3462]) -> [INCOMPLETE][14] ([i915#2782] / [i915#3462])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [INCOMPLETE][15] ([i915#3462]) -> [DMESG-FAIL][16] ([i915#3462])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][17] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][18] ([i915#2782] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-icl-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][19] ([i915#3363]) -> [FAIL][20] ([i915#2426] / [i915#3363])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-bxt-dsi/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][21] ([i915#2426] / [i915#3363]) -> [FAIL][22] ([i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cfl-guc/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][23] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][24] ([i915#1436] / [i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-7567u/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][25] ([i915#1436] / [i915#3363]) -> [FAIL][26] ([i915#1436] / [i915#2426] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-skl-6700k2/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3537]: https://gitlab.freedesktop.org/drm/intel/issues/3537
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (46 -> 43)
------------------------------

  Additional (2): fi-skl-guc fi-tgl-1115g4 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10161 -> Patchwork_20265

  CI-20190529: 20190529
  CI_DRM_10161: 6ce32fba8fd6caa0cd3ea578b35f76d188ebb155 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20265: 59562703d27b5736cb8f4e4f76efbab591e03618 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

59562703d27b Revert "drm/i915: Skip over MI_NOOP when parsing"
afd44bdaa7c9 Revert "drm/i915: Propagate errors on awaiting already signaled fences"
f9732cd9968a drm/i915: Drop error handling from dma_fence_work
0f6ab544bc55 drm/i915: Remove allow_alloc from i915_gem_object_get_sg*
18e3ff57e304 drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/index.html

--===============0111206187104544110==
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
<tr><td><b>Series:</b></td><td>drm/i915: Get rid of fence error propagation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90891/">https://patchwork.freedesktop.org/series/90891/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10161 -&gt; Patchwork_20265</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20265 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-soraka/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-kbl-soraka/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10161/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20265/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Additional (2): fi-skl-guc fi-tgl-1115g4 <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10161 -&gt; Patchwork_20265</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10161: 6ce32fba8fd6caa0cd3ea578b35f76d188ebb155 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6098: 1fbc1e7d602f96a7f4e2b95057eef994656b8e74 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20265: 59562703d27b5736cb8f4e4f76efbab591e03618 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>59562703d27b Revert "drm/i915: Skip over MI_NOOP when parsing"<br />
afd44bdaa7c9 Revert "drm/i915: Propagate errors on awaiting already signaled fences"<br />
f9732cd9968a drm/i915: Drop error handling from dma_fence_work<br />
0f6ab544bc55 drm/i915: Remove allow_alloc from i915_gem_object_get_sg*<br />
18e3ff57e304 drm/i915: Revert "drm/i915/gem: Asynchronous cmdparser"</p>

</body>
</html>

--===============0111206187104544110==--

--===============0061058383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0061058383==--
