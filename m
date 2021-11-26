Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6C645E867
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Nov 2021 08:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 577246E917;
	Fri, 26 Nov 2021 07:19:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 024F16E917;
 Fri, 26 Nov 2021 07:19:16 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EF199A363C;
 Fri, 26 Nov 2021 07:19:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9058032107223067568=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 26 Nov 2021 07:19:15 -0000
Message-ID: <163791115595.11078.1191505553844093396@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_More_FBC_refactoring_=28rev2=29?=
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

--===============9058032107223067568==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: More FBC refactoring (rev2)
URL   : https://patchwork.freedesktop.org/series/97239/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10929 -> Patchwork_21684
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/index.html

Participating hosts (42 -> 35)
------------------------------

  Additional (1): fi-tgl-u2 
  Missing    (8): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21684 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][2] ([fdo#109271]) +26 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][3] ([fdo#109271]) +31 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][4] ([i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html
    - fi-skl-6700k2:      NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#2190])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-tgl-u2:          NOTRUN -> [SKIP][7] ([i915#4613]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [PASS][8] -> [DMESG-FAIL][9] ([i915#2373])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][10] -> [INCOMPLETE][11] ([i915#3921])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][13] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-tgl-u2:          NOTRUN -> [SKIP][15] ([i915#4103]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][16] ([fdo#109285])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6700k2:      NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#533])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][18] ([i915#3301])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6700k2:      [INCOMPLETE][19] ([i915#198]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [INCOMPLETE][21] ([i915#4432]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3970]: https://gitlab.freedesktop.org/drm/intel/issues/3970
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4375]: https://gitlab.freedesktop.org/drm/intel/issues/4375
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10929 -> Patchwork_21684

  CI-20190529: 20190529
  CI_DRM_10929: 59e636eb65235e3b6220ecf1b19da2a6dca76160 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6291: 9ff3844d8c1fee8d8736d888f16223c4789fb69f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21684: 707fe3ea76e0902d881c1b2315a32406c29b92f6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

707fe3ea76e0 drm/i915/fbc: Pimp the FBC debugfs output
265f35c68dfa drm/i915/fbc: No FBC+double wide pipe
1613ba4b582f drm/i915/fbc: s/parms/fbc_state/
0d101081f6ba drm/i915/fbc: Move plane pointer into intel_fbc_state
333fc023eb02 drm/i915/fbc: Nuke state_cache
80232297151f drm/i915/fbc: Disable FBC fully on FIFO underrun
66c429270725 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()
17e23c924c3e drm/i915/fbc: Allocate intel_fbc dynamically
fe90fc1caab3 drm/i915/fbc: Introduce intel_fbc_add_plane()
30449365cb8d drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c
3a841917eade drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff
ff34e90358e2 drm/i915/fbc: Flatten __intel_fbc_pre_update()
2e39a4018470 drm/i915/fbc: Track FBC usage per-plane
8f85614ed262 drm/i915/fbc: Pass around FBC instance instead of crtc
f83f4327755d drm/i915/fbc: Reuse the same struct for the cache and params
c8cc75f5871a drm/i915/fbc: Nuke more FBC state
545993666997 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()
efd77e8334c0 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache
bed0959cfa5b drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()
b0fe40e87a84 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/index.html

--===============9058032107223067568==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: More FBC refactoring (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97239/">https://patchwork.freedesktop.org/series/97239/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10929 -&gt; Patchwork_21684</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/index.html</p>
<h2>Participating hosts (42 -&gt; 35)</h2>
<p>Additional (1): fi-tgl-u2 <br />
  Missing    (8): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21684 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-skl-6700k2/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10929/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21684/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10929 -&gt; Patchwork_21684</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10929: 59e636eb65235e3b6220ecf1b19da2a6dca76160 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6291: 9ff3844d8c1fee8d8736d888f16223c4789fb69f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21684: 707fe3ea76e0902d881c1b2315a32406c29b92f6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>707fe3ea76e0 drm/i915/fbc: Pimp the FBC debugfs output<br />
265f35c68dfa drm/i915/fbc: No FBC+double wide pipe<br />
1613ba4b582f drm/i915/fbc: s/parms/fbc_state/<br />
0d101081f6ba drm/i915/fbc: Move plane pointer into intel_fbc_state<br />
333fc023eb02 drm/i915/fbc: Nuke state_cache<br />
80232297151f drm/i915/fbc: Disable FBC fully on FIFO underrun<br />
66c429270725 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()<br />
17e23c924c3e drm/i915/fbc: Allocate intel_fbc dynamically<br />
fe90fc1caab3 drm/i915/fbc: Introduce intel_fbc_add_plane()<br />
30449365cb8d drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c<br />
3a841917eade drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff<br />
ff34e90358e2 drm/i915/fbc: Flatten __intel_fbc_pre_update()<br />
2e39a4018470 drm/i915/fbc: Track FBC usage per-plane<br />
8f85614ed262 drm/i915/fbc: Pass around FBC instance instead of crtc<br />
f83f4327755d drm/i915/fbc: Reuse the same struct for the cache and params<br />
c8cc75f5871a drm/i915/fbc: Nuke more FBC state<br />
545993666997 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()<br />
efd77e8334c0 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache<br />
bed0959cfa5b drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()<br />
b0fe40e87a84 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage</p>

</body>
</html>

--===============9058032107223067568==--
