Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D14834BA07
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Mar 2021 00:01:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28B06E158;
	Sat, 27 Mar 2021 23:01:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2FC406E158;
 Sat, 27 Mar 2021 23:01:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 28CEDA8169;
 Sat, 27 Mar 2021 23:01:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Sat, 27 Mar 2021 23:01:01 -0000
Message-ID: <161688606114.11343.15192013572641733499@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325214808.2071517-1-imre.deak@intel.com>
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padding_=28?=
 =?utf-8?q?rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0091148341=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0091148341==
Content-Type: multipart/alternative;
 boundary="===============2048429267766592531=="

--===============2048429267766592531==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for FBs requiring a POT stride padding (rev4)
URL   : https://patchwork.freedesktop.org/series/87859/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9909 -> Patchwork_19873
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/index.html

Known issues
------------

  Here are the changes found in Patchwork_19873 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][4] ([i915#2782] / [i915#2940]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
  [i915#3278]: https://gitlab.freedesktop.org/drm/intel/issues/3278
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 40)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-guc fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9909 -> Patchwork_19873

  CI-20190529: 20190529
  CI_DRM_9909: 3a920a8e00db74289e0bb268c587b11852c1f0b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19873: e03129edeba3163e957e3b253a829ff6da9e2879 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e03129edeba3 drm/i915: For-CI: Force remapping the FB with a POT aligned stride
c18502274537 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height
05bdbe24aeb7 drm/i915: Add support for FBs requiring a POT stride alignment
baed812ca07d drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
f761e5d5d33f drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()
4a0ea0ed0fa1 drm/i915: Shrink the size of intel_remapped_plane_info struct
935e85fd1fef drm/i915/intel_fb: Factor out calc_plane_remap_info()
00828f1cdef2 drm/i915: Simplify copying the FB view state to the plane state
4a36bf1a6c32 drm/i915: Store the normal view FB pitch in FB's intel_fb_view
d305f307559d drm/i915: Unify the FB and plane state view information into one struct
f145b820ccfb drm/i915/intel_fb: Factor out calc_plane_normal_size()
859847278a5b drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
20d4c79e52e4 drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
f6cb9843d256 drm/i915/intel_fb: s/dev_priv/i915/
e7c0be630a7b drm/i915/intel_fb: Unexport intel_fb_check_stride()
61d2cd2a1854 drm/i915/intel_fb: Pull FB plane functions from intel_display.c
6e8d7fa1a6e1 drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
f6085ad454b5 drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c
428b08208692 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
ee05cd39dd80 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
54177780a12e drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()
f7ab7a353234 drm/i915: Make sure i915_ggtt_view is inited when creating an FB
050ed8bd287a drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
da8685b5ab0e drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
7f8aa42d58f8 drm/i915: Fix rotation setup during plane HW readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/index.html

--===============2048429267766592531==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for FBs requiring a POT stride padding (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87859/">https://patchwork.freedesktop.org/series/87859/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9909 -&gt; Patchwork_19873</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19873 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 40)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-j1900 fi-skl-guc fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9909 -&gt; Patchwork_19873</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9909: 3a920a8e00db74289e0bb268c587b11852c1f0b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6047: 3887134e739f480cefe1dc7f13eb54f7bf3ca27f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19873: e03129edeba3163e957e3b253a829ff6da9e2879 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e03129edeba3 drm/i915: For-CI: Force remapping the FB with a POT aligned stride<br />
c18502274537 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height<br />
05bdbe24aeb7 drm/i915: Add support for FBs requiring a POT stride alignment<br />
baed812ca07d drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct<br />
f761e5d5d33f drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()<br />
4a0ea0ed0fa1 drm/i915: Shrink the size of intel_remapped_plane_info struct<br />
935e85fd1fef drm/i915/intel_fb: Factor out calc_plane_remap_info()<br />
00828f1cdef2 drm/i915: Simplify copying the FB view state to the plane state<br />
4a36bf1a6c32 drm/i915: Store the normal view FB pitch in FB's intel_fb_view<br />
d305f307559d drm/i915: Unify the FB and plane state view information into one struct<br />
f145b820ccfb drm/i915/intel_fb: Factor out calc_plane_normal_size()<br />
859847278a5b drm/i915/intel_fb: Factor out calc_plane_aligned_offset()<br />
20d4c79e52e4 drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()<br />
f6cb9843d256 drm/i915/intel_fb: s/dev_priv/i915/<br />
e7c0be630a7b drm/i915/intel_fb: Unexport intel_fb_check_stride()<br />
61d2cd2a1854 drm/i915/intel_fb: Pull FB plane functions from intel_display.c<br />
6e8d7fa1a6e1 drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c<br />
f6085ad454b5 drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c<br />
428b08208692 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c<br />
ee05cd39dd80 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h<br />
54177780a12e drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()<br />
f7ab7a353234 drm/i915: Make sure i915_ggtt_view is inited when creating an FB<br />
050ed8bd287a drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()<br />
da8685b5ab0e drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()<br />
7f8aa42d58f8 drm/i915: Fix rotation setup during plane HW readout</p>

</body>
</html>

--===============2048429267766592531==--

--===============0091148341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0091148341==--
