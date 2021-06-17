Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B0B3AAD18
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 09:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A2B66E882;
	Thu, 17 Jun 2021 07:09:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 008206E029;
 Thu, 17 Jun 2021 07:09:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CDBF4A7DFB;
 Thu, 17 Jun 2021 07:09:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ramalingam C" <ramalingam.c@intel.com>
Date: Thu, 17 Jun 2021 07:09:31 -0000
Message-ID: <162391377181.3751.1963916029346947104@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210617063018.92802-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210617063018.92802-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_TTM_sync_accelerated_migration_and_clear_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1565586260=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1565586260==
Content-Type: multipart/alternative;
 boundary="===============4790800303703509719=="

--===============4790800303703509719==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915 TTM sync accelerated migration and clear (rev4)
URL   : https://patchwork.freedesktop.org/series/91463/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10233 -> Patchwork_20397
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10233 and Patchwork_20397:

### New IGT tests (1) ###

  * igt@i915_selftest@live@migrate:
    - Statuses : 2 dmesg-warn(s) 32 pass(s)
    - Exec time: [0.53, 9.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_20397 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * {igt@i915_selftest@live@migrate} (NEW):
    - {fi-ehl-2}:         NOTRUN -> [DMESG-WARN][1] ([i915#1222])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/fi-ehl-2/igt@i915_selftest@live@migrate.html
    - {fi-jsl-1}:         NOTRUN -> [DMESG-WARN][2] ([i915#1222])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/fi-jsl-1/igt@i915_selftest@live@migrate.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][3] ([i915#1982] / [i915#2411]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10233/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10233 -> Patchwork_20397

  CI-20190529: 20190529
  CI_DRM_10233: e00d16681acd7e91fd02f800adcc20cca89f6127 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20397: 0c1b355b98b0c758f219b94ae5ffcbda0a6acf75 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0c1b355b98b0 drm/i915/gem: Zap the i915_gem_object_blt code
f96ba67920e0 drm/i915/gem: Zap the client blt code
44bc96f6062f drm/i915/ttm: accelerated move implementation
af79c48203b1 drm/i915/gt: Setup a default migration context on the GT
50c44cdbf0dc drm/i915/gt: Pipelined clear
1348ed66563c drm/i915/gt: Pipelined page migration
dafe4c39f77d drm/i915/gt: Export the pinned context constructor and destructor
63732fd3b3dd drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
55d91f54ea63 drm/i915/gt: Add an insert_entry for gen8_ppgtt
3d2c4703e490 drm/i915: Introduce a ww transaction helper
b3d1124db2b3 drm/i915: Break out dma_resv ww locking utilities to separate files
05e61818c510 drm/i915: Reference objects on the ww object list

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/index.html

--===============4790800303703509719==
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
<tr><td><b>Series:</b></td><td>i915 TTM sync accelerated migration and clear (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91463/">https://patchwork.freedesktop.org/series/91463/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10233 -&gt; Patchwork_20397</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10233 and Patchwork_20397:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>Statuses : 2 dmesg-warn(s) 32 pass(s)</li>
<li>Exec time: [0.53, 9.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20397 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>{igt@i915_selftest@live@migrate} (NEW):</p>
<ul>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/fi-ehl-2/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/fi-jsl-1/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1222">i915#1222</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10233/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20397/fi-tgl-dsi/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10233 -&gt; Patchwork_20397</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10233: e00d16681acd7e91fd02f800adcc20cca89f6127 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6109: 61ba2ed489540e6a8a649be38abb075b3ab4d28a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20397: 0c1b355b98b0c758f219b94ae5ffcbda0a6acf75 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0c1b355b98b0 drm/i915/gem: Zap the i915_gem_object_blt code<br />
f96ba67920e0 drm/i915/gem: Zap the client blt code<br />
44bc96f6062f drm/i915/ttm: accelerated move implementation<br />
af79c48203b1 drm/i915/gt: Setup a default migration context on the GT<br />
50c44cdbf0dc drm/i915/gt: Pipelined clear<br />
1348ed66563c drm/i915/gt: Pipelined page migration<br />
dafe4c39f77d drm/i915/gt: Export the pinned context constructor and destructor<br />
63732fd3b3dd drm/i915/gt: Add a routine to iterate over the pagetables of a GTT<br />
55d91f54ea63 drm/i915/gt: Add an insert_entry for gen8_ppgtt<br />
3d2c4703e490 drm/i915: Introduce a ww transaction helper<br />
b3d1124db2b3 drm/i915: Break out dma_resv ww locking utilities to separate files<br />
05e61818c510 drm/i915: Reference objects on the ww object list</p>

</body>
</html>

--===============4790800303703509719==--

--===============1565586260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1565586260==--
