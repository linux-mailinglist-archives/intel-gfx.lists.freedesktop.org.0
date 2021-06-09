Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C6B3A0EAC
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 10:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D379E6E40C;
	Wed,  9 Jun 2021 08:23:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7EF5C6E05C;
 Wed,  9 Jun 2021 08:23:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7623FA0019;
 Wed,  9 Jun 2021 08:23:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Wed, 09 Jun 2021 08:23:52 -0000
Message-ID: <162322703245.27477.18063189295855175731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUHJl?=
 =?utf-8?q?reqs_for_TTM_accelerated_migration_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1444187455=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1444187455==
Content-Type: multipart/alternative;
 boundary="===============6142865173782607644=="

--===============6142865173782607644==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Prereqs for TTM accelerated migration (rev2)
URL   : https://patchwork.freedesktop.org/series/91155/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10195 -> Patchwork_20318
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10195 and Patchwork_20318:

### New IGT tests (1) ###

  * igt@i915_selftest@live@migrate:
    - Statuses : 2 dmesg-warn(s) 35 pass(s)
    - Exec time: [0.54, 7.97] s

  

Known issues
------------

  Here are the changes found in Patchwork_20318 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       NOTRUN -> [INCOMPLETE][1] ([i915#2782] / [i915#2940] / [i915#3462])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * {igt@i915_selftest@live@migrate} (NEW):
    - {fi-ehl-2}:         NOTRUN -> [DMESG-WARN][2] ([i915#1222])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-ehl-2/igt@i915_selftest@live@migrate.html
    - {fi-jsl-1}:         NOTRUN -> [DMESG-WARN][3] ([i915#1222])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-jsl-1/igt@i915_selftest@live@migrate.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][5] ([fdo#109271]) +13 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][6] ([fdo#109271] / [i915#1436])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-kefka:       [INCOMPLETE][7] ([i915#2539]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [DMESG-FAIL][9] ([i915#3462]) -> [INCOMPLETE][10] ([i915#2782] / [i915#3462])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [INCOMPLETE][11] ([i915#3462]) -> [DMESG-FAIL][12] ([i915#3462])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][13] ([i915#1436] / [i915#3363]) -> [FAIL][14] ([i915#1436] / [i915#2426] / [i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-skl-6600u/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][15] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][16] ([i915#2782] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-icl-u2/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-icl-u2/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][17] ([i915#1436] / [i915#3363]) -> [FAIL][18] ([i915#1436] / [i915#2426] / [i915#3363])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-kbl-7500u/igt@runner@aborted.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-kbl-7500u/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][19] ([i915#3363] / [i915#3462]) -> [FAIL][20] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-cml-u2/igt@runner@aborted.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][21] ([i915#3363]) -> [FAIL][22] ([i915#2426] / [i915#3363])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-cfl-guc/igt@runner@aborted.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][23] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][24] ([i915#1436] / [i915#3363])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-skl-6700k2/igt@runner@aborted.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-skl-6700k2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10195 -> Patchwork_20318

  CI-20190529: 20190529
  CI_DRM_10195: 70e4d80795934312a3853a4f4f49445ce6db1271 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6103: 3aa79e55e73d4a49a5222e5dfde486b800a29fe7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20318: a6745617acf0c89f578fcce067c052117a8a42aa @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_20318/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST modules-only.symvers
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed
make[1]: *** [modules-only.symvers] Error 1
make[1]: *** Deleting file 'modules-only.symvers'
Makefile:1759: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

a6745617acf0 drm/i915/gt: Setup a default migration context on the GT
b4f5bf5e3091 drm/i915/gt: Pipelined clear
5fcf6685a775 drm/i915/gt: Pipelined page migration
86e3a5a7d285 drm/i915/gt: Export the pinned context constructor and destructor
e63c320c3025 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
50f6709e7fff drm/i915/gt: Add an insert_entry for gen8_ppgtt
8bf111e86cf9 drm/i915: Introduce a ww transaction helper
ae3f71f8fc2d drm/i915: Break out dma_resv ww locking utilities to separate files
be1926db749f drm/i915: Reference objects on the ww object list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/index.html

--===============6142865173782607644==
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
<tr><td><b>Series:</b></td><td>Prereqs for TTM accelerated migration (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91155/">https://patchwork.freedesktop.org/series/91155/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10195 -&gt; Patchwork_20318</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10195 and Patchwork_20318:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>Statuses : 2 dmesg-warn(s) 35 pass(s)</li>
<li>Exec time: [0.54, 7.97] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20318 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>{igt@i915_selftest@live@migrate} (NEW):</p>
<ul>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10195/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-kbl-soraka fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10195 -&gt; Patchwork_20318</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10195: 70e4d80795934312a3853a4f4f49445ce6db1271 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6103: 3aa79e55e73d4a49a5222e5dfde486b800a29fe7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20318: a6745617acf0c89f578fcce067c052117a8a42aa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_20318/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
Kernel: arch/x86/boot/bzImage is ready  (#1)<br />
  MODPOST modules-only.symvers<br />
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">1</a>: <strong><em> [modules-only.symvers] Error 1<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20318/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">1</a>: </em></strong> Deleting file 'modules-only.symvers'<br />
Makefile:1759: recipe for target 'modules' failed<br />
make: *** [modules] Error 2</p>
<p>== Linux commits ==</p>
<p>a6745617acf0 drm/i915/gt: Setup a default migration context on the GT<br />
b4f5bf5e3091 drm/i915/gt: Pipelined clear<br />
5fcf6685a775 drm/i915/gt: Pipelined page migration<br />
86e3a5a7d285 drm/i915/gt: Export the pinned context constructor and destructor<br />
e63c320c3025 drm/i915/gt: Add a routine to iterate over the pagetables of a GTT<br />
50f6709e7fff drm/i915/gt: Add an insert_entry for gen8_ppgtt<br />
8bf111e86cf9 drm/i915: Introduce a ww transaction helper<br />
ae3f71f8fc2d drm/i915: Break out dma_resv ww locking utilities to separate files<br />
be1926db749f drm/i915: Reference objects on the ww object list</p>

</body>
</html>

--===============6142865173782607644==--

--===============1444187455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1444187455==--
