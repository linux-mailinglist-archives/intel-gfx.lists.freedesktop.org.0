Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B0C357BEF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 07:45:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60FF66EA06;
	Thu,  8 Apr 2021 05:44:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D5936EA03;
 Thu,  8 Apr 2021 05:44:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 440B6A47DB;
 Thu,  8 Apr 2021 05:44:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 08 Apr 2021 05:44:58 -0000
Message-ID: <161786069825.10404.4135295740730492506@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210408045227.985408-1-lucas.demarchi@intel.com>
In-Reply-To: <20210408045227.985408-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Extend_GEN_renames_to_the_rest_of_the_driver_=28rev2?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============1617048227=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1617048227==
Content-Type: multipart/alternative;
 boundary="===============0091863038188867012=="

--===============0091863038188867012==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Extend GEN renames to the rest of the driver (rev2)
URL   : https://patchwork.freedesktop.org/series/88825/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9934 -> Patchwork_19900
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/index.html

Known issues
------------

  Here are the changes found in Patchwork_19900 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +6 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@fbdev@write:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@fbdev@write.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@fbdev@write.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#1982] / [i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [DMESG-WARN][9] ([i915#1982] / [k.org#205379]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@i915_module_load@reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9934 -> Patchwork_19900

  CI-20190529: 20190529
  CI_DRM_9934: 0607d7e72c8069ea03f991499b45791120a85036 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6061: 4aa7cd3ac664af4a7ca87d3fa8ed44208e4b0fa5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19900: e1b404b9b97278525c0ce19e10c4e1d88a95f07d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e1b404b9b972 drm/i915: split dgfx features from gen 12
38c8ca70a088 drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER
3a85bfab0b35 drm/i915/display: use DISPLAY_VER() on remaining users
b857f06983f3 drm/i915: add media and display versions to device_info print
bb6756e3a46d drm/i915: finish removal of gen from intel_device_info
87f338a98fc3 drm/i915: eliminate remaining uses of intel_device_info->gen
cfbe5560528d drm/i915: finish removal of gen_mask
e5492f832b05 drm/i915/selftests: eliminate use of gen_mask
fe5e3e94c2b1 drm/i915/selftests: replace unused mask with simple version
6f23787ecba4 drm/i915/gt: replace gen use in intel_engine_cs
ee9f103524db drm/i915: add macros for graphics and media versions
80f2d9b2707c drm/i915: rename display.version to display.ver

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/index.html

--===============0091863038188867012==
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
<tr><td><b>Series:</b></td><td>drm/i915: Extend GEN renames to the rest of the driver (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88825/">https://patchwork.freedesktop.org/series/88825/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9934 -&gt; Patchwork_19900</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19900 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-kbl-soraka/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@fbdev@write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@gem_render_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9934/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19900/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9934 -&gt; Patchwork_19900</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9934: 0607d7e72c8069ea03f991499b45791120a85036 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6061: 4aa7cd3ac664af4a7ca87d3fa8ed44208e4b0fa5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19900: e1b404b9b97278525c0ce19e10c4e1d88a95f07d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e1b404b9b972 drm/i915: split dgfx features from gen 12<br />
38c8ca70a088 drm/i915: replace IS_GEN and friends with IS_GRAPHICS_VER<br />
3a85bfab0b35 drm/i915/display: use DISPLAY_VER() on remaining users<br />
b857f06983f3 drm/i915: add media and display versions to device_info print<br />
bb6756e3a46d drm/i915: finish removal of gen from intel_device_info<br />
87f338a98fc3 drm/i915: eliminate remaining uses of intel_device_info-&gt;gen<br />
cfbe5560528d drm/i915: finish removal of gen_mask<br />
e5492f832b05 drm/i915/selftests: eliminate use of gen_mask<br />
fe5e3e94c2b1 drm/i915/selftests: replace unused mask with simple version<br />
6f23787ecba4 drm/i915/gt: replace gen use in intel_engine_cs<br />
ee9f103524db drm/i915: add macros for graphics and media versions<br />
80f2d9b2707c drm/i915: rename display.version to display.ver</p>

</body>
</html>

--===============0091863038188867012==--

--===============1617048227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1617048227==--
