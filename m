Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7803FEE2C
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 14:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C696E52A;
	Thu,  2 Sep 2021 12:57:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B2CE6E52A;
 Thu,  2 Sep 2021 12:57:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51584A7DFC;
 Thu,  2 Sep 2021 12:57:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2873736915715152165=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Sep 2021 12:57:21 -0000
Message-ID: <163058744132.29440.18036801085632455041@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210902112824.118524-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210902112824.118524-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Suspend_/_resume_backup-_and_restore_of_LMEM=2E?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2873736915715152165==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Suspend / resume backup- and restore of LMEM.
URL   : https://patchwork.freedesktop.org/series/94278/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10546 -> Patchwork_20942
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/index.html

Known issues
------------

  Here are the changes found in Patchwork_20942 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][2] ([fdo#109315]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][3] ([i915#3718])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10546/fi-kbl-soraka/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][7] -> [DMESG-WARN][8] ([i915#3958])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10546/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([fdo#109309]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([fdo#109285])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([fdo#109278])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([i915#3301])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-icl-u2:          [INCOMPLETE][13] ([i915#3812]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10546/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3812]: https://gitlab.freedesktop.org/drm/intel/issues/3812
  [i915#3958]: https://gitlab.freedesktop.org/drm/intel/issues/3958
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (49 -> 40)
------------------------------

  Missing    (9): fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10546 -> Patchwork_20942

  CI-20190529: 20190529
  CI_DRM_10546: 019e6d03ae43eaa8a2ad30c7483a499050cb0ba9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20942: 6e5be25f0eabd3cfd5e33ce9cdd7151e00af495a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e5be25f0eab drm/i915: Reduce the number of objects subject to memcpy recover
9f642ae6fad1 drm/i915: Don't back up pinned LMEM context images and rings during suspend
85fa40dabcd4 drm/i915/gt: Register the migrate contexts with their engines
bfe27cf0e3f6 drm/i915 Implement LMEM backup and restore for suspend / resume
0f7a5eac69f8 drm/i915/gem: Implement a function to process all gem objects of a region
e3f2d82e684e drm/i915/ttm: Implement a function to copy the contents of two TTM-base objects

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/index.html

--===============2873736915715152165==
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
<tr><td><b>Series:</b></td><td>drm/i915: Suspend / resume backup- and restore of LMEM.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94278/">https://patchwork.freedesktop.org/series/94278/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10546 -&gt; Patchwork_20942</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20942 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10546/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10546/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3958">i915#3958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109309">fdo#109309</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_parallel@engines@contexts:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10546/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3812">i915#3812</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20942/fi-icl-u2/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (49 -&gt; 40)</h2>
<p>Missing    (9): fi-ilk-m540 bat-adls-5 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10546 -&gt; Patchwork_20942</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10546: 019e6d03ae43eaa8a2ad30c7483a499050cb0ba9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6197: 40888f97a6ad219f4ed48a1830d0ef3c9617d006 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20942: 6e5be25f0eabd3cfd5e33ce9cdd7151e00af495a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6e5be25f0eab drm/i915: Reduce the number of objects subject to memcpy recover<br />
9f642ae6fad1 drm/i915: Don't back up pinned LMEM context images and rings during suspend<br />
85fa40dabcd4 drm/i915/gt: Register the migrate contexts with their engines<br />
bfe27cf0e3f6 drm/i915 Implement LMEM backup and restore for suspend / resume<br />
0f7a5eac69f8 drm/i915/gem: Implement a function to process all gem objects of a region<br />
e3f2d82e684e drm/i915/ttm: Implement a function to copy the contents of two TTM-base objects</p>

</body>
</html>

--===============2873736915715152165==--
