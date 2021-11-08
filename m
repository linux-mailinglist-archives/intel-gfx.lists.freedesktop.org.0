Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E497449C23
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Nov 2021 20:02:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2DA6E45C;
	Mon,  8 Nov 2021 19:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B67F96E452;
 Mon,  8 Nov 2021 19:02:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AF240A8169;
 Mon,  8 Nov 2021 19:02:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5081488245164178189=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 08 Nov 2021 19:02:28 -0000
Message-ID: <163639814869.32037.5429226325380588286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211108174547.979714-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211108174547.979714-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Prepare_error_capture_for_asynchronous_migration_=28re?=
 =?utf-8?b?djIp?=
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

--===============5081488245164178189==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Prepare error capture for asynchronous migration (rev2)
URL   : https://patchwork.freedesktop.org/series/96493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10854 -> Patchwork_21535
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/index.html

Participating hosts (40 -> 35)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus 

New tests
---------

  New tests have been introduced between CI_DRM_10854 and Patchwork_21535:

### New IGT tests (1) ###

  * igt@gem_exec_suspend@basic-s0:
    - Statuses : 1 incomplete(s) 32 pass(s) 1 skip(s)
    - Exec time: [0.0, 20.41] s

  

Known issues
------------

  Here are the changes found in Patchwork_21535 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - fi-icl-u2:          NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#1610])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][5] ([i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-bdw-5557u:       [PASS][6] -> [DMESG-FAIL][7] ([i915#541])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][8] ([fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          NOTRUN -> [SKIP][9] ([fdo#109278]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][10] ([fdo#109285])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([i915#3301])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-skl-6600u:       [FAIL][12] ([i915#3239]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][14] ([i915#3921]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-hsw-gt1}:       [DMESG-WARN][16] ([i915#4290]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#3239]: https://gitlab.freedesktop.org/drm/intel/issues/3239
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4290]: https://gitlab.freedesktop.org/drm/intel/issues/4290
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Build changes
-------------

  * Linux: CI_DRM_10854 -> Patchwork_21535

  CI-20190529: 20190529
  CI_DRM_10854: 895fb34d3265137c84fe3e9dd48fb9ad2e00fd36 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21535: 6cd0fb32331c9c588c51fdfaa4f5ca69af86c5f2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6cd0fb32331c drm/i915: Initial introduction of vma resources
c10709188aa4 drm/i915: Update error capture code to avoid using the current vma state
04cf071c7201 drm/i915: Use __GFP_KSWAPD_RECLAIM in the capture code
1948fce512ee drm/i915: Avoid allocating a page array for the gpu coredump

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/index.html

--===============5081488245164178189==
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
<tr><td><b>Series:</b></td><td>drm/i915: Prepare error capture for asynchronous migration (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96493/">https://patchwork.freedesktop.org/series/96493/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10854 -&gt; Patchwork_21535</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-bdw-samus </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10854 and Patchwork_21535:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>Statuses : 1 incomplete(s) 32 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 20.41] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21535 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@amdgpu/amd_cs_nop@fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-bdw-5557u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3239">i915#3239</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-skl-6600u/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10854/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4290">i915#4290</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21535/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10854 -&gt; Patchwork_21535</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10854: 895fb34d3265137c84fe3e9dd48fb9ad2e00fd36 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6274: 569de51145fba197a8d93b2417348d47507bf485 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21535: 6cd0fb32331c9c588c51fdfaa4f5ca69af86c5f2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6cd0fb32331c drm/i915: Initial introduction of vma resources<br />
c10709188aa4 drm/i915: Update error capture code to avoid using the current vma state<br />
04cf071c7201 drm/i915: Use __GFP_KSWAPD_RECLAIM in the capture code<br />
1948fce512ee drm/i915: Avoid allocating a page array for the gpu coredump</p>

</body>
</html>

--===============5081488245164178189==--
