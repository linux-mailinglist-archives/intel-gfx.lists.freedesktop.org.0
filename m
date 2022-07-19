Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2205457A423
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jul 2022 18:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7A918BEBD;
	Tue, 19 Jul 2022 16:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 077BC8F9AB;
 Tue, 19 Jul 2022 16:23:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F2F44A0169;
 Tue, 19 Jul 2022 16:23:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0564809778602334692=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Gwan-gyeong Mun" <gwan-gyeong.mun@intel.com>
Date: Tue, 19 Jul 2022 16:23:23 -0000
Message-ID: <165824780396.16363.11255804345588929792@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220719140424.430572-1-gwan-gyeong.mun@intel.com>
In-Reply-To: <20220719140424.430572-1-gwan-gyeong.mun@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRml4?=
 =?utf-8?q?es_integer_overflow_or_integer_truncation_issues_in_page_lookup?=
 =?utf-8?q?s=2C_ttm_place_configuration_and_scatterlist_creation_=28rev6?=
 =?utf-8?q?=29?=
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

--===============0564809778602334692==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev6)
URL   : https://patchwork.freedesktop.org/series/104704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11923 -> Patchwork_104704v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/index.html

Participating hosts (36 -> 37)
------------------------------

  Additional (1): bat-dg2-9 

Known issues
------------

  Here are the changes found in Patchwork_104704v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - fi-pnv-d510:        [PASS][1] -> [DMESG-FAIL][2] ([i915#4528])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11923/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/fi-pnv-d510/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@sanitycheck:
    - {bat-adln-1}:       [DMESG-FAIL][3] ([i915#6297]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11923/bat-adln-1/igt@i915_selftest@live@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/bat-adln-1/igt@i915_selftest@live@sanitycheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#6297]: https://gitlab.freedesktop.org/drm/intel/issues/6297


Build changes
-------------

  * Linux: CI_DRM_11923 -> Patchwork_104704v6

  CI-20190529: 20190529
  CI_DRM_11923: ff2849b5552c960205ac3e3b3f7a7be78a96702a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6592: d7c0659613199a5dcf535ed3add68ed1991ead7e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104704v6: ff2849b5552c960205ac3e3b3f7a7be78a96702a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ab66aade407a drm/i915: Remove truncation warning for large objects
821908e6ffe6 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large
c1714af71852 drm/i915: Check if the size is too big while creating shmem file
ef9456c56f81 drm/i915: Check for integer truncation on the configuration of ttm place
1b3a7139baf1 drm/i915: Check for integer truncation on scatterlist creation
c6df3d0c779f drm/i915/gem: Typecheck page lookups
d5fbb4ad562d drm: Move and add a few utility macros into drm util header

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/index.html

--===============0564809778602334692==
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
<tr><td><b>Series:</b></td><td>Fixes integer overflow or integer truncation issues in page lookups, ttm place configuration and scatterlist creation (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104704/">https://patchwork.freedesktop.org/series/104704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11923 -&gt; Patchwork_104704v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/index.html</p>
<h2>Participating hosts (36 -&gt; 37)</h2>
<p>Additional (1): bat-dg2-9 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104704v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@requests:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11923/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@sanitycheck:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11923/bat-adln-1/igt@i915_selftest@live@sanitycheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6297">i915#6297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104704v6/bat-adln-1/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11923 -&gt; Patchwork_104704v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11923: ff2849b5552c960205ac3e3b3f7a7be78a96702a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6592: d7c0659613199a5dcf535ed3add68ed1991ead7e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104704v6: ff2849b5552c960205ac3e3b3f7a7be78a96702a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ab66aade407a drm/i915: Remove truncation warning for large objects<br />
821908e6ffe6 drm/i915: Use error code as -E2BIG when the size of gem ttm object is too large<br />
c1714af71852 drm/i915: Check if the size is too big while creating shmem file<br />
ef9456c56f81 drm/i915: Check for integer truncation on the configuration of ttm place<br />
1b3a7139baf1 drm/i915: Check for integer truncation on scatterlist creation<br />
c6df3d0c779f drm/i915/gem: Typecheck page lookups<br />
d5fbb4ad562d drm: Move and add a few utility macros into drm util header</p>

</body>
</html>

--===============0564809778602334692==--
