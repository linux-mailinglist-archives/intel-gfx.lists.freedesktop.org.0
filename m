Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 019B9624CAD
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 22:13:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CDEA10E8BA;
	Thu, 10 Nov 2022 21:13:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C058E10E8D1;
 Thu, 10 Nov 2022 21:13:15 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCF1CAA0ED;
 Thu, 10 Nov 2022 21:13:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6672014608636120979=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stephen Rothwell" <sfr@canb.auug.org.au>
Date: Thu, 10 Nov 2022 21:13:15 -0000
Message-ID: <166811479576.16956.1693602914743737286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221110111036.63cb67d1@canb.auug.org.au>
In-Reply-To: <20221110111036.63cb67d1@canb.auug.org.au>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbGlu?=
 =?utf-8?q?ux-next=3A_build_failure_after_merge_of_the_drm-misc_tree?=
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

--===============6672014608636120979==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: linux-next: build failure after merge of the drm-misc tree
URL   : https://patchwork.freedesktop.org/series/110730/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12365 -> Patchwork_110730v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/index.html

Participating hosts (41 -> 38)
------------------------------

  Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-kbl-8809g 

Known issues
------------

  Here are the changes found in Patchwork_110730v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bxt-dsi:         [PASS][1] -> [FAIL][2] ([i915#7362])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-bxt-dsi/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-bxt-dsi/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-bdw-gvtdvm:      [PASS][3] -> [INCOMPLETE][4] ([i915#7506])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][6] -> [INCOMPLETE][7] ([i915#7308] / [i915#7348])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][8] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-apl-guc:         NOTRUN -> [SKIP][9] ([fdo#109271]) +11 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][10] ([i915#4312])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/bat-adlp-4/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][11] ([i915#4312])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-bdw-gvtdvm/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][12] ([i915#2867]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_render_tiled_blits@basic:
    - fi-apl-guc:         [INCOMPLETE][14] ([i915#7056]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-apl-guc/igt@gem_render_tiled_blits@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [SKIP][16] ([fdo#109271]) -> [PASS][17] +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-guc:         [DMESG-FAIL][18] ([i915#5334]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#7029]: https://gitlab.freedesktop.org/drm/intel/issues/7029
  [i915#7056]: https://gitlab.freedesktop.org/drm/intel/issues/7056
  [i915#7308]: https://gitlab.freedesktop.org/drm/intel/issues/7308
  [i915#7348]: https://gitlab.freedesktop.org/drm/intel/issues/7348
  [i915#7362]: https://gitlab.freedesktop.org/drm/intel/issues/7362
  [i915#7506]: https://gitlab.freedesktop.org/drm/intel/issues/7506


Build changes
-------------

  * Linux: CI_DRM_12365 -> Patchwork_110730v1

  CI-20190529: 20190529
  CI_DRM_12365: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110730v1: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/index.html

--===============6672014608636120979==
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
<tr><td><b>Series:</b></td><td>linux-next: build failure after merge of the drm-misc tree</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110730/">https://patchwork.freedesktop.org/series/110730/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12365 -&gt; Patchwork_110730v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/index.html</p>
<h2>Participating hosts (41 -&gt; 38)</h2>
<p>Missing    (3): fi-ctg-p8600 fi-bdw-samus fi-kbl-8809g </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110730v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-bxt-dsi/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-bxt-dsi/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7362">i915#7362</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-bdw-gvtdvm/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7506">i915#7506</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7308">i915#7308</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7348">i915#7348</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7056">i915#7056</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-apl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-pnv-d510/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12365/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110730v1/fi-skl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12365 -&gt; Patchwork_110730v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12365: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7050: 42839a7c2bab78bc6cda8c949d8545606f377735 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110730v1: 1bda5b0abc8a0d9d53d9fec1a390dc93e2b0ba57 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>

</body>
</html>

--===============6672014608636120979==--
