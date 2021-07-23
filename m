Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEC53D4207
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 23:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C2366FC44;
	Fri, 23 Jul 2021 21:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 526AE6FC44;
 Fri, 23 Jul 2021 21:17:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4B969A00F5;
 Fri, 23 Jul 2021 21:17:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 23 Jul 2021 21:17:27 -0000
Message-ID: <162707504728.3043.1946459410282516088@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210723172142.3273510-1-jason@jlekstrand.net>
In-Reply-To: <20210723172142.3273510-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Migrate_memory_to_SMEM_when_imported_cross-device_=28r?=
 =?utf-8?q?ev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1182674928=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1182674928==
Content-Type: multipart/alternative;
 boundary="===============3310254954080313293=="

--===============3310254954080313293==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Migrate memory to SMEM when imported cross-device (rev4)
URL   : https://patchwork.freedesktop.org/series/92617/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10382 -> Patchwork_20697
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/index.html

Known issues
------------

  Here are the changes found in Patchwork_20697 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] ([i915#2782] / [i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][5] -> [DMESG-FAIL][6] ([i915#2927])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][7] ([fdo#109271] / [i915#1436])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][8] ([fdo#109271] / [i915#1436])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][9] ([i915#3303]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (43 -> 36)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10382 -> Patchwork_20697

  CI-20190529: 20190529
  CI_DRM_10382: 03db07ede8eeeae5fa12cb07684084e531db377b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20697: 375f4f22a468a62961c8f58a3111673f940a8984 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

375f4f22a468 drm/i915/gem: Migrate to system at dma-buf attach time (v7)
73e3c44c8b98 drm/i915/gem: Correct the locking and pin pattern for dma-buf (v8)
1edff73b9811 drm/i915/gem: Always call obj->ops->migrate unless can_migrate fails
a97ea186410f drm/i915/gem/ttm: Only call __i915_gem_object_set_pages if needed
c5797011ed85 drm/i915/gem: Unify user object creation (v3)
4bfc49a9a1a1 drm/i915/gem: Call i915_gem_flush_free_objects() in i915_gem_dumb_create()
27a4484e3ab1 drm/i915/gem: Refactor placement setup for i915_gem_object_create* (v2)
d3522f0b05a8 drm/i915/gem: Check object_can_migrate from object_migrate

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/index.html

--===============3310254954080313293==
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
<tr><td><b>Series:</b></td><td>drm/i915: Migrate memory to SMEM when imported cross-device (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92617/">https://patchwork.freedesktop.org/series/92617/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10382 -&gt; Patchwork_20697</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20697 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10382/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20697/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 36)</h2>
<p>Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-adls-4 fi-ctg-p8600 bat-adls-3 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10382 -&gt; Patchwork_20697</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10382: 03db07ede8eeeae5fa12cb07684084e531db377b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6149: 34ff2cf2bc352dce691593db803389fe0eb2be03 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20697: 375f4f22a468a62961c8f58a3111673f940a8984 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>375f4f22a468 drm/i915/gem: Migrate to system at dma-buf attach time (v7)<br />
73e3c44c8b98 drm/i915/gem: Correct the locking and pin pattern for dma-buf (v8)<br />
1edff73b9811 drm/i915/gem: Always call obj-&gt;ops-&gt;migrate unless can_migrate fails<br />
a97ea186410f drm/i915/gem/ttm: Only call __i915_gem_object_set_pages if needed<br />
c5797011ed85 drm/i915/gem: Unify user object creation (v3)<br />
4bfc49a9a1a1 drm/i915/gem: Call i915_gem_flush_free_objects() in i915_gem_dumb_create()<br />
27a4484e3ab1 drm/i915/gem: Refactor placement setup for i915_gem_object_create* (v2)<br />
d3522f0b05a8 drm/i915/gem: Check object_can_migrate from object_migrate</p>

</body>
</html>

--===============3310254954080313293==--

--===============1182674928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1182674928==--
