Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F0F3CBC26
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 20:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77846E9CC;
	Fri, 16 Jul 2021 18:59:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 834776E9CC;
 Fri, 16 Jul 2021 18:59:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7CA52A0BCB;
 Fri, 16 Jul 2021 18:59:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 16 Jul 2021 18:59:25 -0000
Message-ID: <162646196549.12779.10839689534905904665@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Clean_up_DPLL_stuff?=
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
Content-Type: multipart/mixed; boundary="===============1281254913=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1281254913==
Content-Type: multipart/alternative;
 boundary="===============3339145314004820629=="

--===============3339145314004820629==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Clean up DPLL stuff
URL   : https://patchwork.freedesktop.org/series/92577/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10345 -> Patchwork_20627
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/index.html

Known issues
------------

  Here are the changes found in Patchwork_20627 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#2782] / [i915#2940])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#1436])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - {fi-tgl-1115g4}:    [FAIL][4] ([i915#1888]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][6] ([i915#165]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (41 -> 36)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10345 -> Patchwork_20627

  CI-20190529: 20190529
  CI_DRM_10345: 8c6a974b932fbaa798102b4713ceedf3b04227d9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6142: 16e753fc5e1e51395e1df40865c569984a74c5ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20627: d6989dbe6a384e292409e64cbce3ac26e9e3c57c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d6989dbe6a38 drm/i915: Nuke intel_prepare_shared_dpll()
6be0972a6060 drm/i915: Fold ibx_pch_dpll_prepare() into ibx_pch_dpll_enable()
9ab5635edef8 drm/i915: Fold i9xx_set_pll_dividers() into i9xx_enable_pll()
d57101706e6f drm/i915: Reuse ilk_needs_fb_cb_tune() for the reduced clock as well
13ef7a1fd2ee drm/i915: Call {vlv, chv}_prepare_pll() from {vlv, chv}_enable_pll()
a5fd8442c9f2 drm/i915: Program DPLL P1 dividers consistently
9bb9d3e38217 drm/i915: Remove the 'reg' local variable
a8495dcd7c24 drm/i915: Clean up variable names in old dpll functions
75de79108280 drm/i915: Clean dpll calling convention
1dfbc5556829 drm/i915: Constify struct dpll all over
f38f6423f164 drm/i915: Extract ilk_update_pll_dividers()
f9828f0fa648 drm/i915: Clean up gen2 DPLL readout
85b53fd77510 drm/i915: Set output_types to EDP for vlv/chv DPLL forcing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/index.html

--===============3339145314004820629==
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
<tr><td><b>Series:</b></td><td>drm/i915: Clean up DPLL stuff</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92577/">https://patchwork.freedesktop.org/series/92577/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10345 -&gt; Patchwork_20627</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20627 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10345/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20627/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 36)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10345 -&gt; Patchwork_20627</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10345: 8c6a974b932fbaa798102b4713ceedf3b04227d9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6142: 16e753fc5e1e51395e1df40865c569984a74c5ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20627: d6989dbe6a384e292409e64cbce3ac26e9e3c57c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d6989dbe6a38 drm/i915: Nuke intel_prepare_shared_dpll()<br />
6be0972a6060 drm/i915: Fold ibx_pch_dpll_prepare() into ibx_pch_dpll_enable()<br />
9ab5635edef8 drm/i915: Fold i9xx_set_pll_dividers() into i9xx_enable_pll()<br />
d57101706e6f drm/i915: Reuse ilk_needs_fb_cb_tune() for the reduced clock as well<br />
13ef7a1fd2ee drm/i915: Call {vlv, chv}_prepare_pll() from {vlv, chv}_enable_pll()<br />
a5fd8442c9f2 drm/i915: Program DPLL P1 dividers consistently<br />
9bb9d3e38217 drm/i915: Remove the 'reg' local variable<br />
a8495dcd7c24 drm/i915: Clean up variable names in old dpll functions<br />
75de79108280 drm/i915: Clean dpll calling convention<br />
1dfbc5556829 drm/i915: Constify struct dpll all over<br />
f38f6423f164 drm/i915: Extract ilk_update_pll_dividers()<br />
f9828f0fa648 drm/i915: Clean up gen2 DPLL readout<br />
85b53fd77510 drm/i915: Set output_types to EDP for vlv/chv DPLL forcing</p>

</body>
</html>

--===============3339145314004820629==--

--===============1281254913==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1281254913==--
