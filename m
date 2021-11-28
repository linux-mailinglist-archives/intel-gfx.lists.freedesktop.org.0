Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD54460507
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Nov 2021 07:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECA2B6F406;
	Sun, 28 Nov 2021 06:42:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CC6986F406;
 Sun, 28 Nov 2021 06:42:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C3523A47E1;
 Sun, 28 Nov 2021 06:42:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9060228974455167152=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Sun, 28 Nov 2021 06:42:57 -0000
Message-ID: <163808177776.26089.9996758672651370520@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_More_FBC_refactoring_=28rev3=29?=
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

--===============9060228974455167152==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: More FBC refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/97239/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10934 -> Patchwork_21690
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/index.html

Participating hosts (41 -> 32)
------------------------------

  Missing    (9): fi-kbl-soraka bat-dg1-6 fi-tgl-u2 bat-dg1-5 bat-adlp-6 bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21690 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@bad-flink:
    - fi-skl-6600u:       NOTRUN -> [FAIL][4] ([i915#4547])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][5] -> [INCOMPLETE][6] ([i915#4432])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-11600:       [PASS][7] -> [DMESG-FAIL][8] ([i915#2373])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][9] -> [DMESG-WARN][10] ([i915#4269])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][11] ([i915#3928] / [i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [FAIL][12] ([i915#4547]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_pm:
    - {fi-jsl-1}:         [DMESG-FAIL][14] ([i915#1886]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-jsl-1/igt@i915_selftest@live@gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [DMESG-FAIL][16] -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [INCOMPLETE][18] ([i915#3921]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_10934 -> Patchwork_21690

  CI-20190529: 20190529
  CI_DRM_10934: 6a8f90ec433e2f5de5fc16d7a4839771b7027cc0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6293: bf11f87c27ad1cec3e60bd31c23080d19aa093f3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21690: 5076f20a6bda76f23a1b2e87dc4c4f32bd32eeed @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5076f20a6bda drm/i915/fbc: Pimp the FBC debugfs output
65cdebed3462 drm/i915/fbc: No FBC+double wide pipe
c8fe1882d435 drm/i915/fbc: s/parms/fbc_state/
c63d4fbb2cac drm/i915/fbc: Move plane pointer into intel_fbc_state
160889a06c69 drm/i915/fbc: Nuke state_cache
d0e5f415b54b drm/i915/fbc: Disable FBC fully on FIFO underrun
5023c9d56830 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()
39f3617ba35b drm/i915/fbc: Allocate intel_fbc dynamically
aac0390be0a4 drm/i915/fbc: Introduce intel_fbc_add_plane()
b9d51c6c3959 drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c
01c5bd8f3273 drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff
88636ab19217 drm/i915/fbc: Flatten __intel_fbc_pre_update()
fa1855f35110 drm/i915/fbc: Track FBC usage per-plane
61bff1141b24 drm/i915/fbc: Pass around FBC instance instead of crtc
1acf585d8f7a drm/i915/fbc: Reuse the same struct for the cache and params
54eed564808c drm/i915/fbc: Nuke more FBC state
9f5b6931ea18 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()
d34c28935927 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache
d3fce6e917a0 drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()
ecef8578b004 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/index.html

--===============9060228974455167152==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: More FBC refactoring (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97239/">https://patchwork.freedesktop.org/series/97239/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10934 -&gt; Patchwork_21690</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/index.html</p>
<h2>Participating hosts (41 -&gt; 32)</h2>
<p>Missing    (9): fi-kbl-soraka bat-dg1-6 fi-tgl-u2 bat-dg1-5 bat-adlp-6 bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21690 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-skl-6600u/igt@gem_flink_basic@bad-flink.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-rkl-11600/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10934/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21690/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10934 -&gt; Patchwork_21690</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10934: 6a8f90ec433e2f5de5fc16d7a4839771b7027cc0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6293: bf11f87c27ad1cec3e60bd31c23080d19aa093f3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21690: 5076f20a6bda76f23a1b2e87dc4c4f32bd32eeed @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5076f20a6bda drm/i915/fbc: Pimp the FBC debugfs output<br />
65cdebed3462 drm/i915/fbc: No FBC+double wide pipe<br />
c8fe1882d435 drm/i915/fbc: s/parms/fbc_state/<br />
c63d4fbb2cac drm/i915/fbc: Move plane pointer into intel_fbc_state<br />
160889a06c69 drm/i915/fbc: Nuke state_cache<br />
d0e5f415b54b drm/i915/fbc: Disable FBC fully on FIFO underrun<br />
5023c9d56830 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()<br />
39f3617ba35b drm/i915/fbc: Allocate intel_fbc dynamically<br />
aac0390be0a4 drm/i915/fbc: Introduce intel_fbc_add_plane()<br />
b9d51c6c3959 drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c<br />
01c5bd8f3273 drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff<br />
88636ab19217 drm/i915/fbc: Flatten __intel_fbc_pre_update()<br />
fa1855f35110 drm/i915/fbc: Track FBC usage per-plane<br />
61bff1141b24 drm/i915/fbc: Pass around FBC instance instead of crtc<br />
1acf585d8f7a drm/i915/fbc: Reuse the same struct for the cache and params<br />
54eed564808c drm/i915/fbc: Nuke more FBC state<br />
9f5b6931ea18 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()<br />
d34c28935927 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache<br />
d3fce6e917a0 drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()<br />
ecef8578b004 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage</p>

</body>
</html>

--===============9060228974455167152==--
