Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD1349CC1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 00:12:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D21FF6EE55;
	Thu, 25 Mar 2021 23:12:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40F7F6EE55;
 Thu, 25 Mar 2021 23:12:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32DB7A47E2;
 Thu, 25 Mar 2021 23:12:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 25 Mar 2021 23:12:37 -0000
Message-ID: <161671395718.15545.7333815900727205144@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Alder_Lake-P_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0547696587=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0547696587==
Content-Type: multipart/alternative;
 boundary="===============8074680962456484658=="

--===============8074680962456484658==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Alder Lake-P (rev2)
URL   : https://patchwork.freedesktop.org/series/87897/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9895 -> Patchwork_19858
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/index.html

Known issues
------------

  Here are the changes found in Patchwork_19858 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271]) +24 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#2190])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][5] ([i915#1886] / [i915#2291])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#533])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#2411] / [i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_9895 -> Patchwork_19858

  CI-20190529: 20190529
  CI_DRM_9895: bb187b1b292c637c3ef195f46d6e5c74f60df8f4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19858: d6cca7188c328b11c07372df414c6a6fdbcf58ab @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d6cca7188c32 drm/i915/display/adl_p: Implement PSR changes
e4ebbafb718a drm/i915/perf: Enable OA formats for ADL_P
4c6bdb3a898f drm/i915/display/adl_p: Remove CCS support
db10565794e4 drm/i915/display/adl_p: Implement Wa_22011320316
59365b8cc821 drm/i915/adl_p: Implement Wa_22011091694
b8c997a50244 drm/i915/adl_p: Update memory bandwidth parameters
08ab2ee39ff8 drm/i915/adlp: Add PIPE_MISC2 programming
4b22d79b8150 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner
a3fcb1f129cf drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner
43b982e116e1 drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner
87b27bda44f9 drm/i915/adl_p: Add PLL Support
a826d07dfb49 drm/i915/adl_p: Enable/disable loadgen sharing
741d91ba895c drm/i915/adl_p: Define and use ADL-P specific DP translation tables
172c5e1265df drm/i915/adlp: Define GuC/HuC for Alderlake_P
22f7579ed8ae drm/i915/adl_p: Add initial ADL_P Workarounds
6ae0308eb78c drm/i915/adl_p: Tx escape clock with DSI
b6f7ef6a2700 drm/i915/adl_p: MBUS programming
1d59d31ac064 drm/i915: Move intel_modeset_all_pipes()
3085ffa95a6c drm/i915: Introduce MBUS relative dbuf offsets
1934f7197873 drm/i915/adl_p: Add ddb allocation support
2a5c21d0cfe3 drm/i915/adl_p: Don't config MBUS and DBUF during display initialization
9466294b8073 drm/i915/adl_p: Enable modular fia
b561e55ad7ed drm/i915/adl_p: Implement TC sequences
37791d3e9b57 drm/i915/adl_p: Handle TC cold
105d4ea67ba9 drm/i915/display/tc: Rename safe_mode functions ownership
7d3738ea84a7 drm/i915/adl_p: Add cdclk support for ADL-P
e0b3264bd0aa drm/i915/adl_p: Setup ports/phys
0829e10a0986 drm/i915/adl_p: Load DMC
0a8ca545c487 drm/i915/adl_p: Extend PLANE_WM bits for blocks & lines
cc43924843e1 drm/i915/adl_p: Add dedicated SAGV watermarks
854bc1ad1d76 drm/i915/adl_p: Add PCH support
eccf706853f7 drm/i915/adl_p: ADL_P device info enabling
0d14daf39c18 drm/i915/adl_p: Add PCI Devices IDs
f57027254bab drm/i915/xelpd: Add VRR guardband for VRR CTL
929cf2a04dfd drm/i915/xelpd: Add rc_qp_table for rcparams calculation
60bacc26c600 drm/i915/xelpd: Calculate VDSC RC parameters
47902928aede drm/i915: Get slice height before computing rc params
fe6932615988 drm/i915/xelpd: Support DP1.4 compression BPPs
30661a762a91 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp
1649e5409acb drm/i915/xelpd: Add Wa_14011503030
37130f19e90e drm/i915/xelpd: Required bandwidth increases when VT-d is active
a0d6295b5373 drm/i915/xelpd: Increase maximum watermark lines to 255
1e2bd7a5af67 drm/i915/xelpd: Handle LPSP for XE_LPD
7f1092ee9104 drm/i915/xelpd: Add XE_LPD power wells
b9c9d9f72027 drm/i915/xelpd: Handle new location of outputs D and E
9cd15eaee7ad drm/i915/xelpd: Support 128k plane stride
0bdd697a29f1 drm/i915/xelpd: Define plane capabilities
342f5a714f77 drm/i915/xelpd: Enhanced pipe underrun reporting
06a6b306bb11 drm/i915/xelpd: Handle proper AUX interrupt bits
c64437e8902e drm/i915/xelpd: add XE_LPD display characteristics

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/index.html

--===============8074680962456484658==
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
<tr><td><b>Series:</b></td><td>Introduce Alder Lake-P (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87897/">https://patchwork.freedesktop.org/series/87897/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9895 -&gt; Patchwork_19858</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19858 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9895/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19858/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9895 -&gt; Patchwork_19858</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9895: bb187b1b292c637c3ef195f46d6e5c74f60df8f4 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6046: e76039273b1524147c43dba061756f06003d56ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19858: d6cca7188c328b11c07372df414c6a6fdbcf58ab @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d6cca7188c32 drm/i915/display/adl_p: Implement PSR changes<br />
e4ebbafb718a drm/i915/perf: Enable OA formats for ADL_P<br />
4c6bdb3a898f drm/i915/display/adl_p: Remove CCS support<br />
db10565794e4 drm/i915/display/adl_p: Implement Wa_22011320316<br />
59365b8cc821 drm/i915/adl_p: Implement Wa_22011091694<br />
b8c997a50244 drm/i915/adl_p: Update memory bandwidth parameters<br />
08ab2ee39ff8 drm/i915/adlp: Add PIPE_MISC2 programming<br />
4b22d79b8150 drm/i915/bigjoiner: atomic commit changes for uncompressed joiner<br />
a3fcb1f129cf drm/i915/bigjoiner: Avoid dsc_compute_config for uncompressed bigjoiner<br />
43b982e116e1 drm/i915/bigjoiner: Mode validation with uncompressed pipe joiner<br />
87b27bda44f9 drm/i915/adl_p: Add PLL Support<br />
a826d07dfb49 drm/i915/adl_p: Enable/disable loadgen sharing<br />
741d91ba895c drm/i915/adl_p: Define and use ADL-P specific DP translation tables<br />
172c5e1265df drm/i915/adlp: Define GuC/HuC for Alderlake_P<br />
22f7579ed8ae drm/i915/adl_p: Add initial ADL_P Workarounds<br />
6ae0308eb78c drm/i915/adl_p: Tx escape clock with DSI<br />
b6f7ef6a2700 drm/i915/adl_p: MBUS programming<br />
1d59d31ac064 drm/i915: Move intel_modeset_all_pipes()<br />
3085ffa95a6c drm/i915: Introduce MBUS relative dbuf offsets<br />
1934f7197873 drm/i915/adl_p: Add ddb allocation support<br />
2a5c21d0cfe3 drm/i915/adl_p: Don't config MBUS and DBUF during display initialization<br />
9466294b8073 drm/i915/adl_p: Enable modular fia<br />
b561e55ad7ed drm/i915/adl_p: Implement TC sequences<br />
37791d3e9b57 drm/i915/adl_p: Handle TC cold<br />
105d4ea67ba9 drm/i915/display/tc: Rename safe_mode functions ownership<br />
7d3738ea84a7 drm/i915/adl_p: Add cdclk support for ADL-P<br />
e0b3264bd0aa drm/i915/adl_p: Setup ports/phys<br />
0829e10a0986 drm/i915/adl_p: Load DMC<br />
0a8ca545c487 drm/i915/adl_p: Extend PLANE_WM bits for blocks &amp; lines<br />
cc43924843e1 drm/i915/adl_p: Add dedicated SAGV watermarks<br />
854bc1ad1d76 drm/i915/adl_p: Add PCH support<br />
eccf706853f7 drm/i915/adl_p: ADL_P device info enabling<br />
0d14daf39c18 drm/i915/adl_p: Add PCI Devices IDs<br />
f57027254bab drm/i915/xelpd: Add VRR guardband for VRR CTL<br />
929cf2a04dfd drm/i915/xelpd: Add rc_qp_table for rcparams calculation<br />
60bacc26c600 drm/i915/xelpd: Calculate VDSC RC parameters<br />
47902928aede drm/i915: Get slice height before computing rc params<br />
fe6932615988 drm/i915/xelpd: Support DP1.4 compression BPPs<br />
30661a762a91 drm/i915/display/dsc: Refactor intel_dp_dsc_compute_bpp<br />
1649e5409acb drm/i915/xelpd: Add Wa_14011503030<br />
37130f19e90e drm/i915/xelpd: Required bandwidth increases when VT-d is active<br />
a0d6295b5373 drm/i915/xelpd: Increase maximum watermark lines to 255<br />
1e2bd7a5af67 drm/i915/xelpd: Handle LPSP for XE_LPD<br />
7f1092ee9104 drm/i915/xelpd: Add XE_LPD power wells<br />
b9c9d9f72027 drm/i915/xelpd: Handle new location of outputs D and E<br />
9cd15eaee7ad drm/i915/xelpd: Support 128k plane stride<br />
0bdd697a29f1 drm/i915/xelpd: Define plane capabilities<br />
342f5a714f77 drm/i915/xelpd: Enhanced pipe underrun reporting<br />
06a6b306bb11 drm/i915/xelpd: Handle proper AUX interrupt bits<br />
c64437e8902e drm/i915/xelpd: add XE_LPD display characteristics</p>

</body>
</html>

--===============8074680962456484658==--

--===============0547696587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0547696587==--
