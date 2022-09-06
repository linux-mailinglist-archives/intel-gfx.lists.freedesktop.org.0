Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5415AE96F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 15:24:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F76E10E664;
	Tue,  6 Sep 2022 13:24:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9DF3A10E664;
 Tue,  6 Sep 2022 13:24:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 956FEAAA91;
 Tue,  6 Sep 2022 13:24:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6190012289766940693=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dmitry Osipenko" <dmitry.osipenko@collabora.com>
Date: Tue, 06 Sep 2022 13:24:10 -0000
Message-ID: <166247065057.8879.10106740008610201526@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
In-Reply-To: <20220831153757.97381-1-dmitry.osipenko@collabora.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW92?=
 =?utf-8?q?e_all_drivers_to_a_common_dma-buf_locking_convention?=
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

--===============6190012289766940693==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move all drivers to a common dma-buf locking convention
URL   : https://patchwork.freedesktop.org/series/108187/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12074 -> Patchwork_108187v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/index.html

Participating hosts (44 -> 41)
------------------------------

  Additional (1): fi-icl-u2 
  Missing    (4): fi-cml-u2 fi-bsw-nick fi-bdw-samus bat-dg2-8 

Known issues
------------

  Here are the changes found in Patchwork_108187v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-icl-u2:          NOTRUN -> [SKIP][1] ([i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][2] ([i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][3] -> [DMESG-FAIL][4] ([i915#4528])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - fi-icl-u2:          NOTRUN -> [SKIP][7] ([i915#4103])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:
    - fi-bsw-kefka:       [PASS][8] -> [FAIL][9] ([i915#6298])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-icl-u2:          NOTRUN -> [WARN][10] ([i915#6008])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][11] ([fdo#109285])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][12] ([i915#3555])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][13] ([fdo#109295] / [i915#3301])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-blb-e6850:       NOTRUN -> [FAIL][14] ([fdo#109271] / [i915#2403] / [i915#4312])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-blb-e6850/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-jsl-1}:         [INCOMPLETE][15] ([i915#5134]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-jsl-1/igt@i915_selftest@live@hangcheck.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-jsl-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - {bat-rplp-1}:       [INCOMPLETE][17] ([i915#6690]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/bat-rplp-1/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/bat-rplp-1/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [FAIL][19] ([fdo#103375]) -> [INCOMPLETE][20] ([i915#5982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5134]: https://gitlab.freedesktop.org/drm/intel/issues/5134
  [i915#5886]: https://gitlab.freedesktop.org/drm/intel/issues/5886
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6008]: https://gitlab.freedesktop.org/drm/intel/issues/6008
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6690]: https://gitlab.freedesktop.org/drm/intel/issues/6690


Build changes
-------------

  * Linux: CI_DRM_12074 -> Patchwork_108187v1

  CI-20190529: 20190529
  CI_DRM_12074: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6644: 9a530abd8643805e586583b6cb1af522ddb43408 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108187v1: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

747e17683a7a dma-buf: Remove obsoleted internal lock
4c65409c03ea media: videobuf2: Stop using internal dma-buf lock
ae48d192d9d7 dma-buf: Document dynamic locking convention
ad56ae8c7e42 dma-buf: Move dma_buf_mmap() to dynamic locking specification
c1a04a82d749 dma-buf: Move dma_buf_map_attachment() to dynamic locking specification
a06cc03d3d16 dma-buf: Move dma_buf_attach() to dynamic locking specification
1555960f994f dma-buf: Move dma_buf_vmap() to dynamic locking specification
1cbe9cba072e media: tegra-vde: Prepare to dynamic dma-buf locking specification
8f13f19f34ed media: videobuf2: Prepare to dynamic dma-buf locking specification
c8462efcda32 xen/gntdev: Prepare to dynamic dma-buf locking specification
93293f9e6f05 misc: fastrpc: Prepare to dynamic dma-buf locking specification
f154e9f5a815 RDMA/umem: Prepare to dynamic dma-buf locking specification
2adf45c5ea9d drm/etnaviv: Prepare to dynamic dma-buf locking specification
f6886e52e76d drm/tegra: Prepare to dynamic dma-buf locking specification
6effce960372 drm/omapdrm: Prepare to dynamic dma-buf locking specification
9557515fbc75 drm/i915: Prepare to dynamic dma-buf locking specification
5e44532e5794 drm/armada: Prepare to dynamic dma-buf locking specification
89cf1ff33c59 drm/prime: Prepare to dynamic dma-buf locking specification
9487f33537ad drm/gem: Take reservation lock for vmap/vunmap operations
30c04bc12f6d dma-buf: Add unlocked variant of attachment-mapping functions
3c516218484e dma-buf: Add unlocked variant of vmapping functions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/index.html

--===============6190012289766940693==
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
<tr><td><b>Series:</b></td><td>Move all drivers to a common dma-buf locking convention</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108187/">https://patchwork.freedesktop.org/series/108187/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12074 -&gt; Patchwork_108187v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/index.html</p>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Additional (1): fi-icl-u2 <br />
  Missing    (4): fi-cml-u2 fi-bsw-nick fi-bdw-samus bat-dg2-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108187v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-bdw-5557u/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_force_connector_basic@force-connector-state.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6008">i915#6008</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5134">i915#5134</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-jsl-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/bat-rplp-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6690">i915#6690</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/bat-rplp-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12074/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108187v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12074 -&gt; Patchwork_108187v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12074: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6644: 9a530abd8643805e586583b6cb1af522ddb43408 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108187v1: c16b937da799ddbebf0d940aff159b96ce9fec0f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>747e17683a7a dma-buf: Remove obsoleted internal lock<br />
4c65409c03ea media: videobuf2: Stop using internal dma-buf lock<br />
ae48d192d9d7 dma-buf: Document dynamic locking convention<br />
ad56ae8c7e42 dma-buf: Move dma_buf_mmap() to dynamic locking specification<br />
c1a04a82d749 dma-buf: Move dma_buf_map_attachment() to dynamic locking specification<br />
a06cc03d3d16 dma-buf: Move dma_buf_attach() to dynamic locking specification<br />
1555960f994f dma-buf: Move dma_buf_vmap() to dynamic locking specification<br />
1cbe9cba072e media: tegra-vde: Prepare to dynamic dma-buf locking specification<br />
8f13f19f34ed media: videobuf2: Prepare to dynamic dma-buf locking specification<br />
c8462efcda32 xen/gntdev: Prepare to dynamic dma-buf locking specification<br />
93293f9e6f05 misc: fastrpc: Prepare to dynamic dma-buf locking specification<br />
f154e9f5a815 RDMA/umem: Prepare to dynamic dma-buf locking specification<br />
2adf45c5ea9d drm/etnaviv: Prepare to dynamic dma-buf locking specification<br />
f6886e52e76d drm/tegra: Prepare to dynamic dma-buf locking specification<br />
6effce960372 drm/omapdrm: Prepare to dynamic dma-buf locking specification<br />
9557515fbc75 drm/i915: Prepare to dynamic dma-buf locking specification<br />
5e44532e5794 drm/armada: Prepare to dynamic dma-buf locking specification<br />
89cf1ff33c59 drm/prime: Prepare to dynamic dma-buf locking specification<br />
9487f33537ad drm/gem: Take reservation lock for vmap/vunmap operations<br />
30c04bc12f6d dma-buf: Add unlocked variant of attachment-mapping functions<br />
3c516218484e dma-buf: Add unlocked variant of vmapping functions</p>

</body>
</html>

--===============6190012289766940693==--
