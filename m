Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B99479017
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:40:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944FD10EAB8;
	Fri, 17 Dec 2021 15:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D4DC410EAE4;
 Fri, 17 Dec 2021 15:40:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA026A00A0;
 Fri, 17 Dec 2021 15:40:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3116821467969109253=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 17 Dec 2021 15:40:19 -0000
Message-ID: <163975561979.10408.13146912416834713941@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211217145228.10987-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211217145228.10987-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Asynchronous_vma_unbinding_=28rev3=29?=
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

--===============3116821467969109253==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Asynchronous vma unbinding (rev3)
URL   : https://patchwork.freedesktop.org/series/98055/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11012 -> Patchwork_21870
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/index.html

Participating hosts (42 -> 36)
------------------------------

  Missing    (6): fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_21870 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#1610])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live:
    - fi-skl-6600u:       NOTRUN -> [FAIL][3] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][4] -> [INCOMPLETE][5] ([i915#3921])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@prime_vgem@basic-userptr:
    - fi-skl-6600u:       NOTRUN -> [SKIP][6] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-tgl-dsi/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-tgl-dsi/igt@i915_module_load@reload.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][9] ([i915#4269]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@primary_page_flip:
    - fi-skl-6600u:       [FAIL][11] ([i915#4547]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-skl-6600u/igt@kms_psr@primary_page_flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@kms_psr@primary_page_flip.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][13] ([i915#4312]) -> [FAIL][14] ([i915#1436] / [i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-skl-6600u/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_11012 -> Patchwork_21870

  CI-20190529: 20190529
  CI_DRM_11012: 64bab3fe255d1886ef16ef57451df545380fa6be @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6313: 1793ed798cc09966c27bf478781e0c1d6bb23bad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21870: 508fe6fa71d119fa5ca79d876ac1c9f038b84430 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

508fe6fa71d1 drm/i915: Use struct vma_resource instead of struct vma_snapshot
0e2ee499a329 drm/i915: Use vma resources for async unbinding
866990d2db6d drm/i915: Use the vma resource as argument for gtt binding / unbinding
a7bf661b94a2 drm/i915: Initial introduction of vma resources
2cb9ea59d9f7 drm/i915: Require the vm mutex for i915_vma_bind()
664fd217a101 drm/i915: Break out the i915_deps utility
af22ef498eaa drm/i915: Avoid using the i915_fence_array when collecting dependencies

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/index.html

--===============3116821467969109253==
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
<tr><td><b>Series:</b></td><td>drm/i915: Asynchronous vma unbinding (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98055/">https://patchwork.freedesktop.org/series/98055/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11012 -&gt; Patchwork_21870</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/index.html</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-6 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21870 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@i915_selftest@live.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@kms_psr@primary_page_flip.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11012/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21870/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11012 -&gt; Patchwork_21870</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11012: 64bab3fe255d1886ef16ef57451df545380fa6be @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6313: 1793ed798cc09966c27bf478781e0c1d6bb23bad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21870: 508fe6fa71d119fa5ca79d876ac1c9f038b84430 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>508fe6fa71d1 drm/i915: Use struct vma_resource instead of struct vma_snapshot<br />
0e2ee499a329 drm/i915: Use vma resources for async unbinding<br />
866990d2db6d drm/i915: Use the vma resource as argument for gtt binding / unbinding<br />
a7bf661b94a2 drm/i915: Initial introduction of vma resources<br />
2cb9ea59d9f7 drm/i915: Require the vm mutex for i915_vma_bind()<br />
664fd217a101 drm/i915: Break out the i915_deps utility<br />
af22ef498eaa drm/i915: Avoid using the i915_fence_array when collecting dependencies</p>

</body>
</html>

--===============3116821467969109253==--
