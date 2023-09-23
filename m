Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E61DC7ABD9B
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Sep 2023 05:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D5E010E00E;
	Sat, 23 Sep 2023 03:34:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E5C8310E00E;
 Sat, 23 Sep 2023 03:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D215BA0003;
 Sat, 23 Sep 2023 03:34:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8961847633049144215=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kees Cook" <keescook@chromium.org>
Date: Sat, 23 Sep 2023 03:34:37 -0000
Message-ID: <169544007782.3502.1628178720915433687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230922173110.work.084-kees@kernel.org>
In-Reply-To: <20230922173110.work.084-kees@kernel.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?=3A_Annotate_structs_with_=5F=5Fcounted=5Fby?=
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

--===============8961847633049144215==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm: Annotate structs with __counted_by
URL   : https://patchwork.freedesktop.org/series/124132/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13671 -> Patchwork_124132v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_124132v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_124132v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/index.html

Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-hsw-4770 
  Missing    (2): fi-kbl-soraka fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_124132v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_fence@basic-await@vecs1:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-dg2-11/igt@gem_exec_fence@basic-await@vecs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/bat-dg2-11/igt@gem_exec_fence@basic-await@vecs1.html

  
Known issues
------------

  Here are the changes found in Patchwork_124132v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#9262])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271]) +13 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][6] -> [FAIL][7] ([IGT#3])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
    - fi-hsw-4770:        NOTRUN -> [DMESG-WARN][8] ([i915#8841]) +6 other tests dmesg-warn
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [INCOMPLETE][10] ([i915#9275]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [Intel XE#485]: https://gitlab.freedesktop.org/drm/xe/kernel/issues/485
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275


Build changes
-------------

  * Linux: CI_DRM_13671 -> Patchwork_124132v1

  CI-20190529: 20190529
  CI_DRM_13671: e1973de2c4516e9130157e538014e79c8aa57b41 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7498: 05d14fd260a3cf9dc00ed24733d5589eee32ec08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124132v1: e1973de2c4516e9130157e538014e79c8aa57b41 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7bd5a5d2765d drm/v3d: Annotate struct v3d_perfmon with __counted_by
a8d273897aa2 drm/vmwgfx: Annotate struct vmw_surface_dirty with __counted_by
d83f77480153 drm/virtio: Annotate struct virtio_gpu_object_array with __counted_by
530ec7bbb8d1 drm/vc4: Annotate struct vc4_perfmon with __counted_by
31415effa7db drm/nouveau/pm: Annotate struct nvkm_perfdom with __counted_by
81fc4118fa06 drm/msm/dpu: Annotate struct dpu_hw_intr with __counted_by
725e5d29ae76 drm/i915/selftests: Annotate struct perf_series with __counted_by
cf7cceb525a0 drm/amdgpu/discovery: Annotate struct ip_hw_instance with __counted_by
6c10174386e9 drm/amd/pm: Annotate struct smu10_voltage_dependency_table with __counted_by

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/index.html

--===============8961847633049144215==
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
<tr><td><b>Series:</b></td><td>drm: Annotate structs with __counted_by</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124132/">https://patchwork.freedesktop.org/series/124132/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13671 -&gt; Patchwork_124132v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_124132v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_124132v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-hsw-4770 <br />
  Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_124132v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_fence@basic-await@vecs1:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-dg2-11/igt@gem_exec_fence@basic-await@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/bat-dg2-11/igt@gem_exec_fence@basic-await@vecs1.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124132v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@lmem0:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13671/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124132v1/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13671 -&gt; Patchwork_124132v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13671: e1973de2c4516e9130157e538014e79c8aa57b41 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7498: 05d14fd260a3cf9dc00ed24733d5589eee32ec08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124132v1: e1973de2c4516e9130157e538014e79c8aa57b41 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7bd5a5d2765d drm/v3d: Annotate struct v3d_perfmon with __counted_by<br />
a8d273897aa2 drm/vmwgfx: Annotate struct vmw_surface_dirty with __counted_by<br />
d83f77480153 drm/virtio: Annotate struct virtio_gpu_object_array with __counted_by<br />
530ec7bbb8d1 drm/vc4: Annotate struct vc4_perfmon with __counted_by<br />
31415effa7db drm/nouveau/pm: Annotate struct nvkm_perfdom with __counted_by<br />
81fc4118fa06 drm/msm/dpu: Annotate struct dpu_hw_intr with __counted_by<br />
725e5d29ae76 drm/i915/selftests: Annotate struct perf_series with __counted_by<br />
cf7cceb525a0 drm/amdgpu/discovery: Annotate struct ip_hw_instance with __counted_by<br />
6c10174386e9 drm/amd/pm: Annotate struct smu10_voltage_dependency_table with __counted_by</p>

</body>
</html>

--===============8961847633049144215==--
