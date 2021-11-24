Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4857245C62F
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 15:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A996E0D5;
	Wed, 24 Nov 2021 14:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 70BB46E0D5;
 Wed, 24 Nov 2021 14:02:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6819DA73C9;
 Wed, 24 Nov 2021 14:02:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2238209978879494377=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Wed, 24 Nov 2021 14:02:42 -0000
Message-ID: <163776256238.25295.4005260127873551612@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_More_FBC_refactoring?=
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

--===============2238209978879494377==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: More FBC refactoring
URL   : https://patchwork.freedesktop.org/series/97239/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10923 -> Patchwork_21674
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21674 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21674, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/index.html

Participating hosts (39 -> 34)
------------------------------

  Additional (2): fi-skl-guc fi-tgl-u2 
  Missing    (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-jsl-2 bat-jsl-1 fi-skl-6600u 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21674:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-bsw-n3050:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html
    - fi-bsw-kefka:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-bsw-kefka/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-kefka/igt@kms_frontbuffer_tracking@basic.html
    - fi-ilk-650:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html
    - fi-ivb-3770:        [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html
    - fi-skl-guc:         NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-elk-e7500:       [SKIP][10] ([fdo#109271]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-elk-e7500/igt@kms_frontbuffer_tracking@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-elk-e7500/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_21674 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][12] ([fdo#109315]) +17 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][13] ([i915#4006])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-u2:          NOTRUN -> [SKIP][14] ([i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@verify-random:
    - fi-tgl-u2:          NOTRUN -> [SKIP][16] ([i915#4613]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][17] -> [INCOMPLETE][18] ([i915#3921])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [PASS][19] -> [DMESG-FAIL][20] ([i915#2927] / [i915#3428])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][21] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-tgl-u2:          NOTRUN -> [SKIP][22] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-skl-guc:         NOTRUN -> [SKIP][23] ([fdo#109271]) +28 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-tgl-u2:          NOTRUN -> [SKIP][24] ([i915#4103]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-tgl-u2:          NOTRUN -> [SKIP][25] ([fdo#109285])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-guc:         NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#533])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][27] ([i915#3301])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][28] ([fdo#109271] / [i915#1436] / [i915#3428] / [i915#4312])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-nick/igt@runner@aborted.html
    - fi-tgl-u2:          NOTRUN -> [FAIL][29] ([i915#1602] / [i915#2722] / [i915#4312])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [INCOMPLETE][30] ([i915#4432]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][32] ([i915#295]) -> [PASS][33] +12 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Build changes
-------------

  * Linux: CI_DRM_10923 -> Patchwork_21674

  CI-20190529: 20190529
  CI_DRM_10923: 9884a105da0c9d4513b67b3d89ceb9a7086bb972 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6288: a5ac2c3e67bc9a9c8d3f440a0324ee2c5d49eb49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21674: 3d901c6ba4e251d07ee94f629fdb2f8d219d01df @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3d901c6ba4e2 drm/i915/fbc: Pimp the FBC debugfs output
a70975006ff0 drm/i915/fbc: No FBC+double wide pipe
dac670cc9e0d drm/i915/fbc: s/parms/fbc_state/
33c7b45b4f46 drm/i915/fbc: Move plane pointer into intel_fbc_state
af74b495dd54 drm/i915/fbc: Nuke state_cache
e0bd9ec2a43d drm/i915/fbc: Disable FBC fully on FIFO underrun
c6c6f9f8c3f8 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()
da0902427db7 drm/i915/fbc: Allocate intel_fbc dynamically
c62767b59742 drm/i915/fbc: Introduce intel_fbc_add_plane()
5f0b99188755 drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c
277d0981c162 drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff
850242482fdc drm/i915/fbc: Flatten __intel_fbc_pre_update()
8611830ea672 drm/i915/fbc: Track FBC usage per-plane
31e06105aefc drm/i915/fbc: Pass around FBC instance instead of crtc
eddfad2b1288 drm/i915/fbc: Reuse the same struct for the cache and params
6d32c9dc060d drm/i915/fbc: Nuke more FBC state
d39a6774d015 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()
766554ded9a6 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache
af7d3467e59a drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()
daf75ef5fa24 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/index.html

--===============2238209978879494377==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: More FBC refactoring</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97239/">https://patchwork.freedesktop.org/series/97239/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10923 -&gt; Patchwork_21674</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21674 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21674, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/index.html</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Additional (2): fi-skl-guc fi-tgl-u2 <br />
  Missing    (7): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 bat-jsl-2 bat-jsl-1 fi-skl-6600u </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21674:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-n3050/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-bsw-kefka/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-kefka/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-ilk-650/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-ivb-3770/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-elk-e7500/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-elk-e7500/igt@kms_frontbuffer_tracking@basic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21674 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 similar issues</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10923/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21674/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10923 -&gt; Patchwork_21674</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10923: 9884a105da0c9d4513b67b3d89ceb9a7086bb972 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6288: a5ac2c3e67bc9a9c8d3f440a0324ee2c5d49eb49 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21674: 3d901c6ba4e251d07ee94f629fdb2f8d219d01df @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3d901c6ba4e2 drm/i915/fbc: Pimp the FBC debugfs output<br />
a70975006ff0 drm/i915/fbc: No FBC+double wide pipe<br />
dac670cc9e0d drm/i915/fbc: s/parms/fbc_state/<br />
33c7b45b4f46 drm/i915/fbc: Move plane pointer into intel_fbc_state<br />
af74b495dd54 drm/i915/fbc: Nuke state_cache<br />
e0bd9ec2a43d drm/i915/fbc: Disable FBC fully on FIFO underrun<br />
c6c6f9f8c3f8 drm/i915/fbc: Move stuff from intel_fbc_can_enable() into intel_fbc_check_plane()<br />
da0902427db7 drm/i915/fbc: Allocate intel_fbc dynamically<br />
c62767b59742 drm/i915/fbc: Introduce intel_fbc_add_plane()<br />
5f0b99188755 drm/i915/fbc: Move FBC debugfs stuff into intel_fbc.c<br />
277d0981c162 drm/i915/fbc: Pass i915 instead of FBC instance to FBC underrun stuff<br />
850242482fdc drm/i915/fbc: Flatten __intel_fbc_pre_update()<br />
8611830ea672 drm/i915/fbc: Track FBC usage per-plane<br />
31e06105aefc drm/i915/fbc: Pass around FBC instance instead of crtc<br />
eddfad2b1288 drm/i915/fbc: Reuse the same struct for the cache and params<br />
6d32c9dc060d drm/i915/fbc: Nuke more FBC state<br />
d39a6774d015 drm/i915/fbc: Relocate intel_fbc_override_cfb_stride()<br />
766554ded9a6 drm/i915/fbc: Nuke lots of crap from intel_fbc_state_cache<br />
af7d3467e59a drm/i915/fbc: Pass whole plane state to intel_fbc_min_limit()<br />
daf75ef5fa24 drm/i915/fbc: Eliminate racy intel_fbc_is_active() usage</p>

</body>
</html>

--===============2238209978879494377==--
