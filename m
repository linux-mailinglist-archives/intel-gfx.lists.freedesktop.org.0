Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9752D46988B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 15:19:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B227C72E8D;
	Mon,  6 Dec 2021 14:19:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A86346FB72;
 Mon,  6 Dec 2021 14:19:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1EF7A0099;
 Mon,  6 Dec 2021 14:19:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2264426732855013978=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rikard Falkeborn" <rikard.falkeborn@gmail.com>
Date: Mon, 06 Dec 2021 14:19:38 -0000
Message-ID: <163880037863.15872.15221297089317760584@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211204105527.15741-1-rikard.falkeborn@gmail.com>
In-Reply-To: <20211204105527.15741-1-rikard.falkeborn@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Constify_static_structs?=
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

--===============2264426732855013978==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Constify static structs
URL   : https://patchwork.freedesktop.org/series/97616/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10965 -> Patchwork_21763
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21763 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21763, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/index.html

Participating hosts (43 -> 31)
------------------------------

  Missing    (12): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21763:

### CI changes ###

#### Possible regressions ####

  * boot:
    - fi-ivb-3770:        [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-ivb-3770/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-ivb-3770/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_21763 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +35 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][4] ([fdo#109271]) +17 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@gem_exec_parallel@engines:
    - fi-skl-6600u:       NOTRUN -> [FAIL][5] ([i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-skl-6600u/igt@gem_exec_parallel@engines.html

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [PASS][6] -> [INCOMPLETE][7] ([i915#4432])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@runner@aborted:
    - fi-skl-6600u:       NOTRUN -> [FAIL][9] ([i915#3363] / [i915#4312])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-skl-6600u/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][10] ([i915#3928] / [i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-bsw-kefka:       [INCOMPLETE][11] ([i915#2539]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][13] ([i915#1888]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][15] ([i915#2927] / [i915#3428]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2539]: https://gitlab.freedesktop.org/drm/intel/issues/2539
  [i915#2927]: https://gitlab.freedesktop.org/drm/intel/issues/2927
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_10965 -> Patchwork_21763

  CI-20190529: 20190529
  CI_DRM_10965: e9dedc5d0907d96371774cacca10160a167c5cd2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6300: f69bd65fa9f72b7d5e5a5a22981f16d034334761 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21763: 1b4f726b33b29872094bf21ed6b84899ef79fd54 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

1b4f726b33b2 drm/i915/gvt: Constify vgpu_types
f75eaccd8a90 drm/i915/gvt: Constify gtt_type_table_entry
d11cda723a89 drm/i915/gvt: Constify formats
6b20e5f39324 drm/i915/gvt: Constify cmd_interrupt_events
431473d1ea36 drm/i915/gvt: Constify gvt_mmio_block
e41696ad17dc drm/i915/gvt: Constify intel_gvt_sched_policy_ops
b150cdd67e79 drm/i915/gvt: Constify intel_gvt_irq_ops
9f75a74af3af drm/i915/gvt: Constify intel_gvt_gtt_pte_ops
ad6d0d2d2854 drm/i915/gvt: Constify intel_gvt_gtt_pte_ops

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/index.html

--===============2264426732855013978==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Constify static structs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97616/">https://patchwork.freedesktop.org/series/97616/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10965 -&gt; Patchwork_21763</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21763 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21763, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/index.html</p>
<h2>Participating hosts (43 -&gt; 31)</h2>
<p>Missing    (12): fi-ilk-m540 bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-ctg-p8600 fi-kbl-x1275 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21763:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-ivb-3770/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-ivb-3770/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21763 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-skl-6600u/igt@gem_exec_parallel@engines.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2539">i915#2539</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-kefka/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10965/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2927">i915#2927</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21763/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10965 -&gt; Patchwork_21763</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10965: e9dedc5d0907d96371774cacca10160a167c5cd2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6300: f69bd65fa9f72b7d5e5a5a22981f16d034334761 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21763: 1b4f726b33b29872094bf21ed6b84899ef79fd54 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>1b4f726b33b2 drm/i915/gvt: Constify vgpu_types<br />
f75eaccd8a90 drm/i915/gvt: Constify gtt_type_table_entry<br />
d11cda723a89 drm/i915/gvt: Constify formats<br />
6b20e5f39324 drm/i915/gvt: Constify cmd_interrupt_events<br />
431473d1ea36 drm/i915/gvt: Constify gvt_mmio_block<br />
e41696ad17dc drm/i915/gvt: Constify intel_gvt_sched_policy_ops<br />
b150cdd67e79 drm/i915/gvt: Constify intel_gvt_irq_ops<br />
9f75a74af3af drm/i915/gvt: Constify intel_gvt_gtt_pte_ops<br />
ad6d0d2d2854 drm/i915/gvt: Constify intel_gvt_gtt_pte_ops</p>

</body>
</html>

--===============2264426732855013978==--
