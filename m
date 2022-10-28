Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C6B61117F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Oct 2022 14:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC4810E827;
	Fri, 28 Oct 2022 12:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6C30810E81D;
 Fri, 28 Oct 2022 12:32:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 64C36AAA91;
 Fri, 28 Oct 2022 12:32:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0459391167405015792=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Riana Tauro" <riana.tauro@intel.com>
Date: Fri, 28 Oct 2022 12:32:28 -0000
Message-ID: <166696034838.15990.675565190711188850@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221028095058.3624647-1-riana.tauro@intel.com>
In-Reply-To: <20221028095058.3624647-1-riana.tauro@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_selftest_for_slpc_tile_interaction_=28rev2=29?=
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

--===============0459391167405015792==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add selftest for slpc tile interaction (rev2)
URL   : https://patchwork.freedesktop.org/series/110248/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12315 -> Patchwork_110248v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/index.html

Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-ctg-p8600 fi-icl-u2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110248v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@workarounds:
    - {bat-adlm-1}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/bat-adlm-1/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/bat-adlm-1/igt@i915_selftest@live@workarounds.html

  
Known issues
------------

  Here are the changes found in Patchwork_110248v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [PASS][3] -> [INCOMPLETE][4] ([i915#7073])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6600u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-skl-6600u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][6] ([i915#6687]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][8] ([fdo#109271]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@mman:
    - fi-rkl-guc:         [INCOMPLETE][10] ([i915#6794]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-rkl-guc/igt@i915_selftest@live@mman.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-rkl-guc/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][12] ([i915#6367]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
#### Warnings ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [SKIP][14] ([fdo#109271]) -> [FAIL][15] ([i915#7229])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12315 -> Patchwork_110248v2

  CI-20190529: 20190529
  CI_DRM_12315: 98d9a019d4a1155e411923a6683f67005cf60b5f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7029: c32cb1e614017f14274d335ac571383799e6c786 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110248v2: 98d9a019d4a1155e411923a6683f67005cf60b5f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

92ff8374b5f9 drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/index.html

--===============0459391167405015792==
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
<tr><td><b>Series:</b></td><td>Add selftest for slpc tile interaction (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110248/">https://patchwork.freedesktop.org/series/110248/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12315 -&gt; Patchwork_110248v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/index.html</p>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-ctg-p8600 fi-icl-u2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110248v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/bat-adlm-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/bat-adlm-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110248v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-skl-6600u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-rkl-guc/igt@i915_selftest@live@mman.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-rkl-guc/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12315/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110248v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12315 -&gt; Patchwork_110248v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12315: 98d9a019d4a1155e411923a6683f67005cf60b5f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7029: c32cb1e614017f14274d335ac571383799e6c786 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110248v2: 98d9a019d4a1155e411923a6683f67005cf60b5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>92ff8374b5f9 drm/i915/guc/slpc: Add selftest for slpc tile-tile interaction</p>

</body>
</html>

--===============0459391167405015792==--
