Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD24DD0A3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 23:20:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4120610E121;
	Thu, 17 Mar 2022 22:20:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36EFE10E121;
 Thu, 17 Mar 2022 22:20:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31A86AA01E;
 Thu, 17 Mar 2022 22:20:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7674036757370012166=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 17 Mar 2022 22:20:53 -0000
Message-ID: <164755565316.32162.3353876191920318053@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220317185655.1786958-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220317185655.1786958-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_GuC_Error_Capture_Support?=
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

--===============7674036757370012166==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add GuC Error Capture Support
URL   : https://patchwork.freedesktop.org/series/101503/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11378 -> Patchwork_22598
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/index.html

Participating hosts (48 -> 45)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (4): fi-bsw-cyan shard-rkl shard-tglu fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22598 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +57 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][2] ([i915#3921])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@vga-edid-read:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#5341])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +14 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [FAIL][6] ([i915#3194]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][8] ([i915#4391]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/bat-rpls-2/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/bat-rpls-2/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_pm:
    - {bat-rpls-2}:       [INCOMPLETE][10] -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@kms_busy@basic@modeset:
    - {bat-adlp-6}:       [DMESG-WARN][12] ([i915#3576]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/bat-adlp-6/igt@kms_busy@basic@modeset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/bat-adlp-6/igt@kms_busy@basic@modeset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3194]: https://gitlab.freedesktop.org/drm/intel/issues/3194
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4391]: https://gitlab.freedesktop.org/drm/intel/issues/4391
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5192]: https://gitlab.freedesktop.org/drm/intel/issues/5192
  [i915#5193]: https://gitlab.freedesktop.org/drm/intel/issues/5193
  [i915#5291]: https://gitlab.freedesktop.org/drm/intel/issues/5291
  [i915#5337]: https://gitlab.freedesktop.org/drm/intel/issues/5337
  [i915#5339]: https://gitlab.freedesktop.org/drm/intel/issues/5339
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5356]: https://gitlab.freedesktop.org/drm/intel/issues/5356


Build changes
-------------

  * Linux: CI_DRM_11378 -> Patchwork_22598

  CI-20190529: 20190529
  CI_DRM_11378: 3ec612f871c18232b04e5530e485992c76bf13a6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6385: f3df40281d93d5a63ee98fa30e90852d780673c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22598: a107441ace88da317a6c8ff2361434245337580a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a107441ace88 drm/i915/guc: Print the GuC error capture output register list.
8e2c0be4c956 drm/i915/guc: Plumb GuC-capture into gpu_coredump
e07d357906ea drm/i915/guc: Pre-allocate output nodes for extraction
53b78c3576f3 drm/i915/guc: Extract GuC error capture lists on G2H notification.
2ca7d4dd9146 drm/i915/guc: Check sizing of guc_capture output
6533fb008c8e drm/i915/guc: Add capture region into intel_guc_log
770ecb5b750c drm/i915/guc: Update GuC-log relay function names
3d2525dba7a8 drm/i915/guc: Add GuC's error state capture output structures.
436c506544ba drm/i915/guc: Add Gen9 registers for GuC error state capture.
6d4d03ab0932 drm/i915/guc: Add DG2 registers for GuC error state capture.
6064e6ac7665 drm/i915/guc: Add XE_LP steered register lists support
c37f99f9157f drm/i915/guc: Add XE_LP static registers for GuC error capture.
eaf2d6ffbe31 drm/i915/guc: Update GuC ADS size for error capture lists

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/index.html

--===============7674036757370012166==
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
<tr><td><b>Series:</b></td><td>Add GuC Error Capture Support</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101503/">https://patchwork.freedesktop.org/series/101503/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11378 -&gt; Patchwork_22598</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/index.html</p>
<h2>Participating hosts (48 -&gt; 45)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (4): fi-bsw-cyan shard-rkl shard-tglu fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22598 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-bdw-5557u/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-bdw-5557u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-bdw-5557u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +14 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3194">i915#3194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4391">i915#4391</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11378/bat-adlp-6/igt@kms_busy@basic@modeset.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22598/bat-adlp-6/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11378 -&gt; Patchwork_22598</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11378: 3ec612f871c18232b04e5530e485992c76bf13a6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6385: f3df40281d93d5a63ee98fa30e90852d780673c9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22598: a107441ace88da317a6c8ff2361434245337580a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>a107441ace88 drm/i915/guc: Print the GuC error capture output register list.<br />
8e2c0be4c956 drm/i915/guc: Plumb GuC-capture into gpu_coredump<br />
e07d357906ea drm/i915/guc: Pre-allocate output nodes for extraction<br />
53b78c3576f3 drm/i915/guc: Extract GuC error capture lists on G2H notification.<br />
2ca7d4dd9146 drm/i915/guc: Check sizing of guc_capture output<br />
6533fb008c8e drm/i915/guc: Add capture region into intel_guc_log<br />
770ecb5b750c drm/i915/guc: Update GuC-log relay function names<br />
3d2525dba7a8 drm/i915/guc: Add GuC's error state capture output structures.<br />
436c506544ba drm/i915/guc: Add Gen9 registers for GuC error state capture.<br />
6d4d03ab0932 drm/i915/guc: Add DG2 registers for GuC error state capture.<br />
6064e6ac7665 drm/i915/guc: Add XE_LP steered register lists support<br />
c37f99f9157f drm/i915/guc: Add XE_LP static registers for GuC error capture.<br />
eaf2d6ffbe31 drm/i915/guc: Update GuC ADS size for error capture lists</p>

</body>
</html>

--===============7674036757370012166==--
