Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F74833688A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 01:22:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D34389D2F;
	Thu, 11 Mar 2021 00:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 24D9489CF5;
 Thu, 11 Mar 2021 00:22:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C655A7525;
 Thu, 11 Mar 2021 00:22:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 11 Mar 2021 00:22:14 -0000
Message-ID: <161542213408.28799.16796475455140938583@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210310221736.2963264-1-imre.deak@intel.com>
In-Reply-To: <20210310221736.2963264-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padding?=
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
Content-Type: multipart/mixed; boundary="===============1661363763=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1661363763==
Content-Type: multipart/alternative;
 boundary="===============5803472323456516950=="

--===============5803472323456516950==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for FBs requiring a POT stride padding
URL   : https://patchwork.freedesktop.org/series/87859/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9846 -> Patchwork_19778
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19778 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19778, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19778:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_19778 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][3] -> [TIMEOUT][4] ([i915#3145])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][5] ([i915#2502] / [i915#3145]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  * igt@gem_tiled_fence_blits@basic:
    - fi-kbl-8809g:       [TIMEOUT][7] ([i915#3145]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][9] ([i915#1982] / [k.org#205379]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-tgl-dsi/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-kbl-soraka:      [FAIL][11] ([i915#49]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-soraka/igt@kms_frontbuffer_tracking@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-soraka/igt@kms_frontbuffer_tracking@basic.html
    - fi-cml-u2:          [FAIL][13] ([i915#2546] / [i915#49]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9846 -> Patchwork_19778

  CI-20190529: 20190529
  CI_DRM_9846: 5c27a442313682671bff079c5be5ed4a4d7ce0ae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6028: f3109d1e3b554903df9109e1e4d10c881b3f811b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19778: 6e8b518f0150b1c85784ee944374ff2cccb93cf4 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6e8b518f0150 drm/i915: For-CI: Force remapping the FB with a POT aligned stride
b16c3104a159 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height
bfe3127a1805 drm/i915: Add support for FBs requiring a POT stride alignment
b13f65945d4f drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
79b5bf7c9b6a drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()
96ddf283b6a1 drm/i915: Shrink the size of intel_remapped_plane_info struct
83f72c175fb3 drm/i915/intel_fb: Factor out plane_calc_remap_info()
807bfafc794c drm/i915/intel_fb: Factor out calc_plane_normal_size()
8e313191a2fc drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
2c84adf69613 drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
1cbb58c4f9e2 drm/i915/intel_fb: s/dev_priv/i915/
43c989a7f696 drm/i915/intel_fb: Unexport intel_fb_check_stride()
ad92868131cf drm/i915/intel_fb: Pull FB plane functions from intel_display.c
2ccb0484ceae drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
5f87fb70bbe6 drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c
0a66f2a34ef0 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
ecd1e2ca8d81 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
f7eb68e1408a drm/i915: Remove duplicate intel_surf_alignment() declaration
94b05922b150 drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()
af24925ca495 drm/i915: Make sure i915_ggtt_view is inited when creating an FB
fed9a9cbe28d drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
40363381f9ec drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
5ddacca7a473 drm/i915: Fix rotation setup during plane HW readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/index.html

--===============5803472323456516950==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for FBs requiring a POT stride padding</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87859/">https://patchwork.freedesktop.org/series/87859/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9846 -&gt; Patchwork_19778</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19778 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19778, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19778:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19778 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-8809g/igt@gem_tiled_fence_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-kbl-soraka/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-kbl-soraka/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9846/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19778/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (47 -&gt; 42)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9846 -&gt; Patchwork_19778</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9846: 5c27a442313682671bff079c5be5ed4a4d7ce0ae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6028: f3109d1e3b554903df9109e1e4d10c881b3f811b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19778: 6e8b518f0150b1c85784ee944374ff2cccb93cf4 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6e8b518f0150 drm/i915: For-CI: Force remapping the FB with a POT aligned stride<br />
b16c3104a159 drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height<br />
bfe3127a1805 drm/i915: Add support for FBs requiring a POT stride alignment<br />
b13f65945d4f drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct<br />
79b5bf7c9b6a drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()<br />
96ddf283b6a1 drm/i915: Shrink the size of intel_remapped_plane_info struct<br />
83f72c175fb3 drm/i915/intel_fb: Factor out plane_calc_remap_info()<br />
807bfafc794c drm/i915/intel_fb: Factor out calc_plane_normal_size()<br />
8e313191a2fc drm/i915/intel_fb: Factor out calc_plane_aligned_offset()<br />
2c84adf69613 drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()<br />
1cbb58c4f9e2 drm/i915/intel_fb: s/dev_priv/i915/<br />
43c989a7f696 drm/i915/intel_fb: Unexport intel_fb_check_stride()<br />
ad92868131cf drm/i915/intel_fb: Pull FB plane functions from intel_display.c<br />
2ccb0484ceae drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c<br />
5f87fb70bbe6 drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c<br />
0a66f2a34ef0 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c<br />
ecd1e2ca8d81 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h<br />
f7eb68e1408a drm/i915: Remove duplicate intel_surf_alignment() declaration<br />
94b05922b150 drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()<br />
af24925ca495 drm/i915: Make sure i915_ggtt_view is inited when creating an FB<br />
fed9a9cbe28d drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()<br />
40363381f9ec drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()<br />
5ddacca7a473 drm/i915: Fix rotation setup during plane HW readout</p>

</body>
</html>

--===============5803472323456516950==--

--===============1661363763==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1661363763==--
