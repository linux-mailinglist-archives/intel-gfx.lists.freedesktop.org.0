Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 530D3349F49
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 03:02:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 420666EEA0;
	Fri, 26 Mar 2021 02:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 071146EEA0;
 Fri, 26 Mar 2021 02:02:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F33DBA47E2;
 Fri, 26 Mar 2021 02:02:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Fri, 26 Mar 2021 02:02:02 -0000
Message-ID: <161672412296.10682.11627339652234050372@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325214808.2071517-1-imre.deak@intel.com>
In-Reply-To: <20210325214808.2071517-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padding_=28?=
 =?utf-8?q?rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0134472004=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0134472004==
Content-Type: multipart/alternative;
 boundary="===============2968616213912686767=="

--===============2968616213912686767==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for FBs requiring a POT stride padding (rev2)
URL   : https://patchwork.freedesktop.org/series/87859/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9898 -> Patchwork_19860
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/index.html

Known issues
------------

  Here are the changes found in Patchwork_19860 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#1372])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][5] -> [DMESG-FAIL][6] ([i915#165])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9898 -> Patchwork_19860

  CI-20190529: 20190529
  CI_DRM_9898: 7563bf7465e47b8e4da44b8893bf84138c73ae03 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19860: 976ec37918b8b9c7874a1c0c23dd36c2c60937be @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

976ec37918b8 drm/i915: For-CI: Force remapping the FB with a POT aligned stride
6cc2ddf9efdd drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height
6c0b22fa513b drm/i915: Add support for FBs requiring a POT stride alignment
1b14a1eea28c drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct
1246ab4e7f34 drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()
f512c0321559 drm/i915: Shrink the size of intel_remapped_plane_info struct
87513f08b16f drm/i915/intel_fb: Factor out calc_plane_remap_info()
8f2daa82f5c6 drm/i915: Simplify copying the FB view state to the plane state
9d7a5bf9a603 drm/i915: Store the normal view FB pitch in FB's intel_fb_view
6bdf1a98f034 drm/i915: Unify the FB and plane state view information into one struct
69a2c13f45f1 drm/i915/intel_fb: Factor out calc_plane_normal_size()
d2627b052235 drm/i915/intel_fb: Factor out calc_plane_aligned_offset()
4d810e6cea9d drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()
17ff50f84603 drm/i915/intel_fb: s/dev_priv/i915/
805971e3be7a drm/i915/intel_fb: Unexport intel_fb_check_stride()
75c769f06db9 drm/i915/intel_fb: Pull FB plane functions from intel_display.c
577959d8fc0b drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c
0bb703ff29fe drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c
07af54575ea2 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c
375f0a62f577 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h
fc86089318ab drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()
216d1439b4d6 drm/i915: Make sure i915_ggtt_view is inited when creating an FB
882e8bffda0a drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()
839db6023edd drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()
b96999775f53 drm/i915: Fix rotation setup during plane HW readout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/index.html

--===============2968616213912686767==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for FBs requiring a POT stride padding (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87859/">https://patchwork.freedesktop.org/series/87859/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9898 -&gt; Patchwork_19860</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19860 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_render_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9898/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19860/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9898 -&gt; Patchwork_19860</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9898: 7563bf7465e47b8e4da44b8893bf84138c73ae03 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19860: 976ec37918b8b9c7874a1c0c23dd36c2c60937be @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>976ec37918b8 drm/i915: For-CI: Force remapping the FB with a POT aligned stride<br />
6cc2ddf9efdd drm/i915/selftest: Add remap/rotate vma subtests when dst_stride!=width/height<br />
6c0b22fa513b drm/i915: Add support for FBs requiring a POT stride alignment<br />
1b14a1eea28c drm/i915: s/stride/src_stride/ in the intel_remapped_plane_info struct<br />
1246ab4e7f34 drm/i915/selftest: Unify use of intel_remapped_plane_info in igt_vma_rotate_remap()<br />
f512c0321559 drm/i915: Shrink the size of intel_remapped_plane_info struct<br />
87513f08b16f drm/i915/intel_fb: Factor out calc_plane_remap_info()<br />
8f2daa82f5c6 drm/i915: Simplify copying the FB view state to the plane state<br />
9d7a5bf9a603 drm/i915: Store the normal view FB pitch in FB's intel_fb_view<br />
6bdf1a98f034 drm/i915: Unify the FB and plane state view information into one struct<br />
69a2c13f45f1 drm/i915/intel_fb: Factor out calc_plane_normal_size()<br />
d2627b052235 drm/i915/intel_fb: Factor out calc_plane_aligned_offset()<br />
4d810e6cea9d drm/i915/intel_fb: Factor out convert_plane_offset_to_xy()<br />
17ff50f84603 drm/i915/intel_fb: s/dev_priv/i915/<br />
805971e3be7a drm/i915/intel_fb: Unexport intel_fb_check_stride()<br />
75c769f06db9 drm/i915/intel_fb: Pull FB plane functions from intel_display.c<br />
577959d8fc0b drm/i915/intel_fb: Pull FB plane functions from intel_sprite.c<br />
0bb703ff29fe drm/i915/intel_fb: Pull is_surface_linear() from intel_display.c/skl_universal_plane.c<br />
07af54575ea2 drm/i915/intel_fb: Pull FB plane functions from skl_universal_plane.c<br />
375f0a62f577 drm/i915/intel_fb: Pull FB plane functions from intel_display_types.h<br />
fc86089318ab drm/i915/selftest: Make sure to init i915_ggtt_view in igt_vma_rotate_remap()<br />
216d1439b4d6 drm/i915: Make sure i915_ggtt_view is inited when creating an FB<br />
882e8bffda0a drm/i915/selftest: Fix debug message in igt_vma_remapped_gtt()<br />
839db6023edd drm/i915/selftest: Fix error handling in igt_vma_remapped_gtt()<br />
b96999775f53 drm/i915: Fix rotation setup during plane HW readout</p>

</body>
</html>

--===============2968616213912686767==--

--===============0134472004==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0134472004==--
