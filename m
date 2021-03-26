Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD1F34B31C
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Mar 2021 00:48:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBA746F501;
	Fri, 26 Mar 2021 23:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6424E6F3E7;
 Fri, 26 Mar 2021 23:48:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D546A0003;
 Fri, 26 Mar 2021 23:48:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 26 Mar 2021 23:48:18 -0000
Message-ID: <161680249834.10687.7396608797987336318@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325214808.2071517-1-imre.deak@intel.com>
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padding_=28?=
 =?utf-8?q?rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1459376316=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1459376316==
Content-Type: multipart/alternative;
 boundary="===============0509838932629788799=="

--===============0509838932629788799==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for FBs requiring a POT stride padding (rev3)
URL   : https://patchwork.freedesktop.org/series/87859/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9909 -> Patchwork_19871
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/index.html

Known issues
------------

  Here are the changes found in Patchwork_19871 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-icl-y:           NOTRUN -> [SKIP][2] ([fdo#109315]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][5] -> [FAIL][6] ([i915#1888])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-y:           NOTRUN -> [SKIP][7] ([i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-y:           NOTRUN -> [SKIP][8] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-y:           NOTRUN -> [SKIP][9] ([fdo#109285])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-icl-y:           NOTRUN -> [SKIP][10] ([fdo#109278])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-icl-y:           NOTRUN -> [SKIP][11] ([fdo#110189]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-y:           NOTRUN -> [SKIP][12] ([i915#3301])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][15] ([i915#2782] / [i915#2940]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-byt-j1900:       [DMESG-WARN][17] ([i915#3303]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 43)
------------------------------

  Additional (1): fi-icl-y 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9909 -> Patchwork_19871

  CI-20190529: 20190529
  CI_DRM_9909: 3a920a8e00db74289e0bb268c587b11852c1f0b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19871: 589eb635f86deb1d1bade7d766c2db23cc16e094 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

589eb635f86d drm/i915: For-CI: Force remapping the FB with a POT aligned stride
81fb2f0a6835 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height
8b68c1f5e3ce drm/i915: Add support for FBs requiring a POT stride alignment
8d44da0209c1 drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
93d0281c4ba3 drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()
04760a228df9 drm/i915: Shrink the size of intel_remapped_plane_info struct
0435822005cc drm/i915/intel_fb: Factor out calc_plane_remap_info()
dc4b4a551b93 drm/i915: Simplify copying the FB view state to the plane state
cf97dd091bb2 drm/i915: Store the normal view FB pitch in FB's intel_fb_view
9b0815c4a082 drm/i915: Unify the FB and plane state view information into one struct
2ba06d265715 drm/i915/intel_fb: Factor out calc_plane_normal_size()
8e9ea612941d drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
848242f45a3f drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
12cb02ede602 drm/i915/intel_fb: s/dev_priv/i915/
b8f83dc1f235 drm/i915/intel_fb: Unexport intel_fb_check_stride()
f0cc6bc131c9 drm/i915/intel_fb: Pull FB plane functions from intel_display.c
397e72df537f drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
c6464f4378de drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c
0d7a1a670b95 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
d36175b1b932 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
432c34011eb7 drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()
d69907b34f92 drm/i915: Make sure i915_ggtt_view is inited when creating an FB
c8f8f224a2f4 drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
1add1c1e3590 drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
09b57964ee1a drm/i915: Fix rotation setup during plane HW readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/index.html

--===============0509838932629788799==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for FBs requiring a POT stride padding (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87859/">https://patchwork.freedesktop.org/series/87859/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9909 -&gt; Patchwork_19871</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19871 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=110189">fdo#110189</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-icl-y/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19871/fi-byt-j1900/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 43)</h2>
<p>Additional (1): fi-icl-y <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9909 -&gt; Patchwork_19871</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9909: 3a920a8e00db74289e0bb268c587b11852c1f0b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19871: 589eb635f86deb1d1bade7d766c2db23cc16e094 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>589eb635f86d drm/i915: For-CI: Force remapping the FB with a POT aligned stride<br />
81fb2f0a6835 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height<br />
8b68c1f5e3ce drm/i915: Add support for FBs requiring a POT stride alignment<br />
8d44da0209c1 drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct<br />
93d0281c4ba3 drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()<br />
04760a228df9 drm/i915: Shrink the size of intel_remapped_plane_info struct<br />
0435822005cc drm/i915/intel_fb: Factor out calc_plane_remap_info()<br />
dc4b4a551b93 drm/i915: Simplify copying the FB view state to the plane state<br />
cf97dd091bb2 drm/i915: Store the normal view FB pitch in FB's intel_fb_view<br />
9b0815c4a082 drm/i915: Unify the FB and plane state view information into one struct<br />
2ba06d265715 drm/i915/intel_fb: Factor out calc_plane_normal_size()<br />
8e9ea612941d drm/i915/intel_fb: Factor out calc_plane_aligned_offset()<br />
848242f45a3f drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()<br />
12cb02ede602 drm/i915/intel_fb: s/dev_priv/i915/<br />
b8f83dc1f235 drm/i915/intel_fb: Unexport intel_fb_check_stride()<br />
f0cc6bc131c9 drm/i915/intel_fb: Pull FB plane functions from intel_display.c<br />
397e72df537f drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c<br />
c6464f4378de drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c<br />
0d7a1a670b95 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c<br />
d36175b1b932 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h<br />
432c34011eb7 drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()<br />
d69907b34f92 drm/i915: Make sure i915_ggtt_view is inited when creating an FB<br />
c8f8f224a2f4 drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()<br />
1add1c1e3590 drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()<br />
09b57964ee1a drm/i915: Fix rotation setup during plane HW readout</p>

</body>
</html>

--===============0509838932629788799==--

--===============1459376316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1459376316==--
