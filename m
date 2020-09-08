Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 576F9261AE3
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 20:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2B36E8AC;
	Tue,  8 Sep 2020 18:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3ACEF6E8AA;
 Tue,  8 Sep 2020 18:42:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 32998A66C9;
 Tue,  8 Sep 2020 18:42:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alejandro Sior" <aho@sior.be>
Date: Tue, 08 Sep 2020 18:42:43 -0000
Message-ID: <159959056320.21758.5998874045275067453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <743818af-fa38-e31a-1780-84a6a7e72e25@web.de>
In-Reply-To: <743818af-fa38-e31a-1780-84a6a7e72e25@web.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Prevent_NULL_pointer_dereference_in_intel=5Fvgpu?=
 =?utf-8?b?X3JlZ19yd19lZGlkKCk=?=
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
Content-Type: multipart/mixed; boundary="===============0444407335=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0444407335==
Content-Type: multipart/alternative;
 boundary="===============3977703753081089421=="

--===============3977703753081089421==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()
URL   : https://patchwork.freedesktop.org/series/81470/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8982 -> Patchwork_18455
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/index.html

Known issues
------------

  Here are the changes found in Patchwork_18455 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-7500u:       [PASS][1] -> [INCOMPLETE][2] ([i915#2439])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#2439])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-cfl-8109u:       [INCOMPLETE][5] ([i915#2439]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
    - fi-bdw-5557u:       [INCOMPLETE][7] ([i915#2439]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html
    - fi-skl-6600u:       [INCOMPLETE][9] ([i915#2439]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-6600u/igt@gem_exec_gttfill@basic.html
    - fi-elk-e7500:       [INCOMPLETE][11] ([i915#66]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-elk-e7500/igt@gem_exec_gttfill@basic.html
    - fi-skl-lmem:        [INCOMPLETE][13] ([i915#2439]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-lmem/igt@gem_exec_gttfill@basic.html
    - fi-ilk-650:         [INCOMPLETE][15] ([i915#2439]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-ilk-650/igt@gem_exec_gttfill@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-ilk-650/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@basic:
    - fi-bsw-kefka:       [INCOMPLETE][17] ([i915#2439]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html
    - {fi-ehl-1}:         [INCOMPLETE][19] ([i915#2439]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-ehl-1/igt@gem_exec_parallel@engines@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-ehl-1/igt@gem_exec_parallel@engines@basic.html

  * igt@i915_selftest@live@gem_execbuf:
    - fi-gdg-551:         [INCOMPLETE][21] ([i915#172]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html
    - fi-snb-2520m:       [INCOMPLETE][23] ([i915#2439]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html

  
#### Warnings ####

  * igt@gem_exec_parallel@engines@basic:
    - fi-bxt-dsi:         [INCOMPLETE][25] ([i915#1635]) -> [INCOMPLETE][26] ([i915#1635] / [i915#2439])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html
    - fi-apl-guc:         [INCOMPLETE][27] ([i915#1635]) -> [INCOMPLETE][28] ([i915#1635] / [i915#2439])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       [FAIL][29] ([i915#1186] / [i915#1784]) -> [FAIL][30] ([i915#1186] / [i915#1784] / [i915#2439])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-x1275/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       [FAIL][31] ([i915#2439]) -> [FAIL][32] ([i915#1436] / [i915#2109] / [i915#2439])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-kefka/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      [FAIL][33] ([i915#483]) -> [FAIL][34] ([i915#2439] / [i915#483])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-gvtdvm/igt@runner@aborted.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       [FAIL][35] ([i915#1186]) -> [FAIL][36] ([i915#1186] / [i915#2439])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-8700k/igt@runner@aborted.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-8700k/igt@runner@aborted.html
    - fi-skl-6600u:       [FAIL][37] ([i915#1186]) -> [FAIL][38] ([i915#2398] / [i915#2439])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@runner@aborted.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-6600u/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][39] ([i915#1186]) -> [FAIL][40] ([i915#2398] / [i915#2439])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-8109u/igt@runner@aborted.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-8109u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][41] ([i915#1186]) -> [FAIL][42] ([i915#1186] / [i915#2439])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-icl-u2/igt@runner@aborted.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][43] ([i915#2398] / [k.org#202321]) -> [FAIL][44] ([i915#2398] / [i915#2439] / [k.org#202321])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-glk-dsi/igt@runner@aborted.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-glk-dsi/igt@runner@aborted.html
    - fi-skl-lmem:        [FAIL][45] ([i915#1186]) -> [FAIL][46] ([i915#2398] / [i915#2439])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-lmem/igt@runner@aborted.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-lmem/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][47] ([i915#1635] / [i915#2398] / [i915#337]) -> [FAIL][48] ([i915#1635] / [i915#2398] / [i915#2439] / [i915#337])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@runner@aborted.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-apl-guc/igt@runner@aborted.html
    - fi-kbl-r:           [FAIL][49] ([i915#1186] / [i915#1784]) -> [FAIL][50] ([i915#1186] / [i915#2439])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-r/igt@runner@aborted.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-r/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][51] ([i915#483]) -> [FAIL][52] ([i915#2439] / [i915#483])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-5557u/igt@runner@aborted.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][53] ([i915#2398]) -> [FAIL][54] ([i915#1186] / [i915#1784] / [i915#2439])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@runner@aborted.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][55] ([i915#1186]) -> [FAIL][56] ([i915#1186] / [i915#1784] / [i915#2439])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-guc/igt@runner@aborted.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][57] ([i915#1186]) -> [FAIL][58] ([i915#1186] / [i915#2082] / [i915#2439])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cml-u2/igt@runner@aborted.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][59] ([i915#1635] / [i915#2398]) -> [FAIL][60] ([i915#1635] / [i915#2398] / [i915#2439])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bxt-dsi/igt@runner@aborted.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cml-s:           [FAIL][61] ([i915#1186] / [i915#2082]) -> [FAIL][62] ([i915#1186] / [i915#2082] / [i915#2439])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cml-s/igt@runner@aborted.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cml-s/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][63] ([i915#1186]) -> [FAIL][64] ([i915#1186] / [i915#2439])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-guc/igt@runner@aborted.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         [FAIL][65] ([i915#1186]) -> [FAIL][66] ([i915#1186] / [i915#2439])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-guc/igt@runner@aborted.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-guc/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1186]: https://gitlab.freedesktop.org/drm/intel/issues/1186
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#172]: https://gitlab.freedesktop.org/drm/intel/issues/172
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2109]: https://gitlab.freedesktop.org/drm/intel/issues/2109
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#483]: https://gitlab.freedesktop.org/drm/intel/issues/483
  [i915#66]: https://gitlab.freedesktop.org/drm/intel/issues/66
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (42 -> 36)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8982 -> Patchwork_18455

  CI-20190529: 20190529
  CI_DRM_8982: 666ff2a4ca80b0715a8709ef5462d16b8c92d8ef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18455: cc442c9d2d41b46f6f59d8378d3013a12f5ca91e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cc442c9d2d41 drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/index.html

--===============3977703753081089421==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81470/">https://patchwork.freedesktop.org/series/81470/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8982 -&gt; Patchwork_18455</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18455 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-7500u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bsw-nick/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bdw-5557u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-6600u/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/66">i915#66</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-elk-e7500/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-lmem/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-lmem/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-ilk-650/igt@gem_exec_gttfill@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-ilk-650/igt@gem_exec_gttfill@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bsw-kefka/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-ehl-1/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-ehl-1/igt@gem_exec_parallel@engines@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>
<p>fi-gdg-551:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/172">i915#172</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-gdg-551/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-snb-2520m/igt@i915_selftest@live@gem_execbuf.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@basic:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bxt-dsi/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-apl-guc/igt@gem_exec_parallel@engines@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2109">i915#2109</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-lmem/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-lmem/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/483">i915#483</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1784">i915#1784</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1186">i915#1186</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (42 -&gt; 36)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8982 -&gt; Patchwork_18455</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8982: 666ff2a4ca80b0715a8709ef5462d16b8c92d8ef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18455: cc442c9d2d41b46f6f59d8378d3013a12f5ca91e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cc442c9d2d41 drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()</p>

</body>
</html>

--===============3977703753081089421==--

--===============0444407335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0444407335==--
