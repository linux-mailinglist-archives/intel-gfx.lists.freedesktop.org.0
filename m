Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDABF4BDB41
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Feb 2022 18:23:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10E3910E736;
	Mon, 21 Feb 2022 17:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA8B510E72F;
 Mon, 21 Feb 2022 17:23:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E41DDA47DF;
 Mon, 21 Feb 2022 17:23:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0357005092965092768=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Mon, 21 Feb 2022 17:23:50 -0000
Message-ID: <164546423092.21413.2151333296576078013@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220221110356.5532-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Move_framestart=5Fdelay?=
 =?utf-8?q?_to_crtc=5Fstate?=
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

--===============0357005092965092768==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Move framestart_delay to crtc_state
URL   : https://patchwork.freedesktop.org/series/100484/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11263 -> Patchwork_22341
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html

Participating hosts (45 -> 41)
------------------------------

  Additional (2): bat-dg2-8 fi-apl-guc 
  Missing    (6): shard-tglu fi-bsw-cyan fi-icl-u2 fi-kbl-8809g shard-rkl shard-dg1 

Known issues
------------

  Here are the changes found in Patchwork_22341 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-hsw-4770:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         NOTRUN -> [DMESG-WARN][2] ([i915#1610])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][5] -> [INCOMPLETE][6] ([i915#3921])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][7] ([i915#4312])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-skl-6600u/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][8] ([i915#2426] / [i915#4312])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-apl-guc/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][9] ([i915#2426] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-bdw-5557u:       [INCOMPLETE][10] ([i915#146]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][12] ([i915#4785]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][14] ([i915#4269]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][16] ([fdo#109271]) -> [FAIL][17] ([i915#3049])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3049]: https://gitlab.freedesktop.org/drm/intel/issues/3049
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#5137]: https://gitlab.freedesktop.org/drm/intel/issues/5137


Build changes
-------------

  * Linux: CI_DRM_11263 -> Patchwork_22341

  CI-20190529: 20190529
  CI_DRM_11263: 4f574e4e0184dfccce23b438846b95bbb4d14e39 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22341: 5c2c5dd707a4d3e5ed0d381400d8314e45693744 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5c2c5dd707a4 drm/i915: Relocate a few more pch transcoder bits
4881ec7a860a drm/i915: Relocate ibx pch port sanitation code
ee349a2861c4 drm/i915: Remove framestart_delay sanitation
7d7813453e30 drm/i915: Move framestart_delay to crtc_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html

--===============0357005092965092768==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Move framestart_delay to crtc_state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100484/">https://patchwork.freedesktop.org/series/100484/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11263 -&gt; Patchwork_22341</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/index.html</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (2): bat-dg2-8 fi-apl-guc <br />
  Missing    (6): shard-tglu fi-bsw-cyan fi-icl-u2 fi-kbl-8809g shard-rkl shard-dg1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22341 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-hsw-4770/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-skl-6600u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-bdw-5557u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11263/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22341/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3049">i915#3049</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11263 -&gt; Patchwork_22341</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11263: 4f574e4e0184dfccce23b438846b95bbb4d14e39 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22341: 5c2c5dd707a4d3e5ed0d381400d8314e45693744 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5c2c5dd707a4 drm/i915: Relocate a few more pch transcoder bits<br />
4881ec7a860a drm/i915: Relocate ibx pch port sanitation code<br />
ee349a2861c4 drm/i915: Remove framestart_delay sanitation<br />
7d7813453e30 drm/i915: Move framestart_delay to crtc_state</p>

</body>
</html>

--===============0357005092965092768==--
