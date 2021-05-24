Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F21F038F63A
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 01:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EE336E442;
	Mon, 24 May 2021 23:25:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1A7C46E43F;
 Mon, 24 May 2021 23:25:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 02B42A47E2;
 Mon, 24 May 2021 23:25:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Souza, Jose" <jose.souza@intel.com>
Date: Mon, 24 May 2021 23:25:54 -0000
Message-ID: <162189875498.10905.9031887665928766266@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210524214805.259692-1-jose.souza@intel.com>
In-Reply-To: <20210524214805.259692-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/display/adl=5Fp=3A_Drop_ea?=
 =?utf-8?q?rlier_return_in_tc=5Fhas=5Fmodular=5Ffia=28=29?=
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
Content-Type: multipart/mixed; boundary="===============0488937650=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0488937650==
Content-Type: multipart/alternative;
 boundary="===============0160306467568034693=="

--===============0160306467568034693==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915/display/adl_p: Drop earlier return in tc_has_modular_fia()
URL   : https://patchwork.freedesktop.org/series/90495/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10128 -> Patchwork_20184
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/index.html

Known issues
------------

  Here are the changes found in Patchwork_20184 that come from known issues:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [DMESG-FAIL][1] ([i915#3462]) -> [INCOMPLETE][2] ([i915#2782] / [i915#3462])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-icl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][3] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][4] ([i915#1436] / [i915#3363])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-skl-6600u/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][5] ([i915#2426] / [i915#2782] / [i915#3363]) -> [FAIL][6] ([i915#2782] / [i915#3363])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-icl-u2/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][7] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][8] ([i915#3363] / [k.org#202321])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-glk-dsi/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-glk-dsi/igt@runner@aborted.html
    - fi-kbl-r:           [FAIL][9] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][10] ([i915#1436] / [i915#3363])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-kbl-r/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-kbl-r/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][11] ([i915#3363] / [i915#3462]) -> [FAIL][12] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-cml-u2/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][13] ([i915#2426] / [i915#3363]) -> [FAIL][14] ([i915#3363])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-cfl-guc/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][15] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][16] ([i915#1436] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-kbl-7567u/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-kbl-7567u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3004]: https://gitlab.freedesktop.org/drm/intel/issues/3004
  [i915#3005]: https://gitlab.freedesktop.org/drm/intel/issues/3005
  [i915#3011]: https://gitlab.freedesktop.org/drm/intel/issues/3011
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3013]: https://gitlab.freedesktop.org/drm/intel/issues/3013
  [i915#3014]: https://gitlab.freedesktop.org/drm/intel/issues/3014
  [i915#3015]: https://gitlab.freedesktop.org/drm/intel/issues/3015
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (34 -> 34)
------------------------------

  Additional (2): fi-ehl-2 fi-hsw-gt1 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10128 -> Patchwork_20184

  CI-20190529: 20190529
  CI_DRM_10128: a65996afe32761b9eef973bf230a566f38ac3340 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6092: d87087c321da07035d4f96d98c34e451b3ccb809 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20184: 71662ccb3c9751b69dca99a05b5d7d89ef8a82ce @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

71662ccb3c97 drm/i915/display/adl_p: Disable PSR2
40b4e76cde29 drm/i915/display/adl_p: Allow DC3CO in pipe and port B
3a9bceb9a7c2 drm/i915: WA for zero memory channel
fd6f0b34ccf4 drm/i915/adl_p: Handle TC cold
7600afa13bd6 drm/i915/display/adl_p: Drop earlier return in tc_has_modular_fia()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/index.html

--===============0160306467568034693==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915/display/adl_p: Drop earlier return in tc_has_modular_fia()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90495/">https://patchwork.freedesktop.org/series/90495/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10128 -&gt; Patchwork_20184</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20184 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10128/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20184/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (34 -&gt; 34)</h2>
<p>Additional (2): fi-ehl-2 fi-hsw-gt1 <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10128 -&gt; Patchwork_20184</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10128: a65996afe32761b9eef973bf230a566f38ac3340 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6092: d87087c321da07035d4f96d98c34e451b3ccb809 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20184: 71662ccb3c9751b69dca99a05b5d7d89ef8a82ce @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>71662ccb3c97 drm/i915/display/adl_p: Disable PSR2<br />
40b4e76cde29 drm/i915/display/adl_p: Allow DC3CO in pipe and port B<br />
3a9bceb9a7c2 drm/i915: WA for zero memory channel<br />
fd6f0b34ccf4 drm/i915/adl_p: Handle TC cold<br />
7600afa13bd6 drm/i915/display/adl_p: Drop earlier return in tc_has_modular_fia()</p>

</body>
</html>

--===============0160306467568034693==--

--===============0488937650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0488937650==--
