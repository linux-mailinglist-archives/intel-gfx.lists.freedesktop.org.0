Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B628C2CF8CD
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Dec 2020 02:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D5036E3AC;
	Sat,  5 Dec 2020 01:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1396C6E3A0;
 Sat,  5 Dec 2020 01:51:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A627A0019;
 Sat,  5 Dec 2020 01:51:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Sat, 05 Dec 2020 01:51:04 -0000
Message-ID: <160713306401.22630.12822602840878963511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201205010844.361880-1-aditya.swarup@intel.com>
In-Reply-To: <20201205010844.361880-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Alderlake-S_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0443896062=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0443896062==
Content-Type: multipart/alternative;
 boundary="===============4198573546927710024=="

--===============4198573546927710024==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Alderlake-S (rev3)
URL   : https://patchwork.freedesktop.org/series/82917/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9445 -> Patchwork_19067
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9445 and Patchwork_19067:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19067 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_linear_blits@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-tgl-y/igt@gem_render_linear_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-tgl-y/igt@gem_render_linear_blits@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-skl-6700k2:      [PASS][3] -> [INCOMPLETE][4] ([i915#146] / [i915#2405])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-cml-s:           [PASS][5] -> [INCOMPLETE][6] ([i915#2377])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-cml-s/igt@prime_vgem@basic-fence-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-cml-s/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@gem_basic@create-fd-close:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-tgl-y/igt@gem_basic@create-fd-close.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-tgl-y/igt@gem_basic@create-fd-close.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-snb-2600:        [INCOMPLETE][9] -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html

  
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#2377]: https://gitlab.freedesktop.org/drm/intel/issues/2377
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9445 -> Patchwork_19067

  CI-20190529: 20190529
  CI_DRM_9445: 2e3d245730b4ce190e96d9731a2a6f06bb0ec57a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19067: 4550beb694af36a8cea5bfd14dc1353644abd1ed @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4550beb694af drm/i915/adl_s: Update memory bandwidth parameters
fceb5bcdc2e0 drm/i915/adl_s: Load DMC
75bb40138464 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
e234d322b07f drm/i915/adl_s: Re-use TGL GuC/HuC firmware
3c42824c88e1 drm/i915/adl_s: Add power wells
7363cd5f8d3f drm/i915/adl_s: MCHBAR memory info registers are moved
ea3c5de02c7f drm/i915/adl_s: Add GT and CTX WAs for ADL-S
b2ac95cad0d1 drm/i915/adl_s: Add display WAs for ADL-S
cc24f634335a drm/i915/adl_s: Update PHY_MISC programming
b3310f98c834 drm/i915/adl_s: Update combo PHY master/slave relationships
fbd148aa96fd drm/i915/adl_s: Add vbt port and aux channel settings for adls
241ce3db14df drm/i915/adl_s: Add adl-s ddc pin mapping
8982e3cd419c drm/i915/adl_s: Initialize display for ADL-S
2591c7399649 drm/i915/adl_s: Configure Port clock registers for ADL-S
114e7efe0b1a drm/i915/adl_s: Configure DPLL for ADL-S
d1bd8b907825 drm/i915/adl_s: Add PHYs for Alderlake S
ca0a9e7d58c5 drm/i915/adl_s: Add Interrupt Support
130950398722 drm/i915/adl_s: Add PCH support
150a0b30604f x86/gpu: add ADL_S stolen memory support
75d8d0e1ed7d drm/i915/adl_s: Add ADL-S platform info and PCI ids
deb53d194dbb drm/i915/tgl: Add bound checks and simplify TGL REVID macros
d90e9bb9cd0e drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/index.html

--===============4198573546927710024==
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
<tr><td><b>Series:</b></td><td>Introduce Alderlake-S (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82917/">https://patchwork.freedesktop.org/series/82917/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9445 -&gt; Patchwork_19067</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9445 and Patchwork_19067:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19067 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-tgl-y/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-tgl-y/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-skl-6700k2/igt@kms_chamelium@common-hpd-after-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-cml-s/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-cml-s/igt@prime_vgem@basic-fence-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2377">i915#2377</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-tgl-y/igt@gem_basic@create-fd-close.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-tgl-y/igt@gem_basic@create-fd-close.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9445/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19067/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9445 -&gt; Patchwork_19067</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9445: 2e3d245730b4ce190e96d9731a2a6f06bb0ec57a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5881: 10d4e2e9177eb747b9f2ab9122e3ab60e91654fb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19067: 4550beb694af36a8cea5bfd14dc1353644abd1ed @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4550beb694af drm/i915/adl_s: Update memory bandwidth parameters<br />
fceb5bcdc2e0 drm/i915/adl_s: Load DMC<br />
75bb40138464 drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION<br />
e234d322b07f drm/i915/adl_s: Re-use TGL GuC/HuC firmware<br />
3c42824c88e1 drm/i915/adl_s: Add power wells<br />
7363cd5f8d3f drm/i915/adl_s: MCHBAR memory info registers are moved<br />
ea3c5de02c7f drm/i915/adl_s: Add GT and CTX WAs for ADL-S<br />
b2ac95cad0d1 drm/i915/adl_s: Add display WAs for ADL-S<br />
cc24f634335a drm/i915/adl_s: Update PHY_MISC programming<br />
b3310f98c834 drm/i915/adl_s: Update combo PHY master/slave relationships<br />
fbd148aa96fd drm/i915/adl_s: Add vbt port and aux channel settings for adls<br />
241ce3db14df drm/i915/adl_s: Add adl-s ddc pin mapping<br />
8982e3cd419c drm/i915/adl_s: Initialize display for ADL-S<br />
2591c7399649 drm/i915/adl_s: Configure Port clock registers for ADL-S<br />
114e7efe0b1a drm/i915/adl_s: Configure DPLL for ADL-S<br />
d1bd8b907825 drm/i915/adl_s: Add PHYs for Alderlake S<br />
ca0a9e7d58c5 drm/i915/adl_s: Add Interrupt Support<br />
130950398722 drm/i915/adl_s: Add PCH support<br />
150a0b30604f x86/gpu: add ADL_S stolen memory support<br />
75d8d0e1ed7d drm/i915/adl_s: Add ADL-S platform info and PCI ids<br />
deb53d194dbb drm/i915/tgl: Add bound checks and simplify TGL REVID macros<br />
d90e9bb9cd0e drm/i915/tgl: Fix REVID macros for TGL to fetch correct stepping</p>

</body>
</html>

--===============4198573546927710024==--

--===============0443896062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0443896062==--
