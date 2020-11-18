Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F632B7400
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 02:57:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9826E1A4;
	Wed, 18 Nov 2020 01:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 593186E198;
 Wed, 18 Nov 2020 01:57:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50F0EA8836;
 Wed, 18 Nov 2020 01:57:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Aditya Swarup" <aditya.swarup@intel.com>
Date: Wed, 18 Nov 2020 01:57:27 -0000
Message-ID: <160566464729.24804.17924885814643825666@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201117185029.22078-1-aditya.swarup@intel.com>
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Alderlake-S_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0244817387=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0244817387==
Content-Type: multipart/alternative;
 boundary="===============7064427501348124887=="

--===============7064427501348124887==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Alderlake-S (rev2)
URL   : https://patchwork.freedesktop.org/series/82917/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9350 -> Patchwork_18927
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9350 and Patchwork_18927:

### New CI tests (1) ###

  * boot:
    - Statuses : 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18927 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-byt-j1900/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982] / [k.org#205379])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-u2/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-tgl-y:           [PASS][7] -> [DMESG-WARN][8] ([i915#1982])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_vgem@basic-write:
    - fi-tgl-y:           [PASS][9] -> [DMESG-WARN][10] ([i915#402]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@prime_vgem@basic-write.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - {fi-kbl-7560u}:     [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-kbl-7560u/igt@kms_busy@basic@flip.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-kbl-7560u/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - fi-tgl-y:           [DMESG-WARN][15] ([i915#1982]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [DMESG-WARN][17] ([i915#402]) -> [PASS][18] +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@vgem_basic@setversion.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@vgem_basic@setversion.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-blb-e6850 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9350 -> Patchwork_18927

  CI-20190529: 20190529
  CI_DRM_9350: 3161d1b26b7e1a7cb9146e3f8bd613f901ff5b38 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5855: d9b3c7058efe41e5224dd1e43fac05dc6d049380 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18927: 8a6db152da0270d8f3cb14f6aef8e1bd2c62fd50 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8a6db152da02 drm/i915/adl_s: Update memory bandwidth parameters
0ac2f51c26c7 drm/i915/adl_s: Load DMC
0078b410bdcf drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION
95ce70b633b1 drm/i915/adl_s: Re-use TGL GuC/HuC firmware
6f031f0b15b7 drm/i915/adl_s: Add power wells
0074777509e7 drm/i915/adl_s: MCHBAR memory info registers are moved
707aff1b0892 drm/i915/adl_s: Add display, gt, ctx and ADL-S
3927a843ff1e drm/i915/adl_s: Update PHY_MISC programming
aa5734095dbb drm/i915/adl_s: Update combo PHY master/slave relationships
17a523c28460 drm/i915/adl_s: Add vbt port and aux channel settings for adls
ad1a87bbd43c drm/i915/adl_s: Add adl-s ddc pin mapping
d7994db4541b drm/i915/adl_s: Add HTI support and initialize display for ADL-S
8ae3c608c0d5 drm/i915/adl_s: Configure Port clock registers for ADL-S
4e420980faab drm/i915/adl_s: Configure DPLL for ADL-S
2248efb63de6 drm/i915/adl_s: Add PHYs for Alderlake S
51af91e98816 drm/i915/adl_s: Add Interrupt Support
59b86438365e drm/i915/adl_s: Add PCH support
3db2935953f0 x86/gpu: add ADL_S stolen memory support
d26e247df015 drm/i915/adl_s: Add ADL-S platform info and PCI ids
022d6eeef421 drm/i915/tgl: Fix macros for TGL SOC based WA
b9c32f37d365 drm/i915/dg1: Enable ports

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/index.html

--===============7064427501348124887==
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
<tr><td><b>Series:</b></td><td>Introduce Alderlake-S (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82917/">https://patchwork.freedesktop.org/series/82917/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9350 -&gt; Patchwork_18927</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9350 and Patchwork_18927:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18927 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@kms_psr@primary_mmap_gtt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@prime_vgem@basic-write.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-kbl-7560u/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-kbl-7560u/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@kms_pipe_crc_basic@read-crc-pipe-c.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9350/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18927/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 40)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-blb-e6850 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9350 -&gt; Patchwork_18927</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9350: 3161d1b26b7e1a7cb9146e3f8bd613f901ff5b38 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5855: d9b3c7058efe41e5224dd1e43fac05dc6d049380 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18927: 8a6db152da0270d8f3cb14f6aef8e1bd2c62fd50 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8a6db152da02 drm/i915/adl_s: Update memory bandwidth parameters<br />
0ac2f51c26c7 drm/i915/adl_s: Load DMC<br />
0078b410bdcf drm/i915/display: Add HAS_D12_PLANE_MINIMIZATION<br />
95ce70b633b1 drm/i915/adl_s: Re-use TGL GuC/HuC firmware<br />
6f031f0b15b7 drm/i915/adl_s: Add power wells<br />
0074777509e7 drm/i915/adl_s: MCHBAR memory info registers are moved<br />
707aff1b0892 drm/i915/adl_s: Add display, gt, ctx and ADL-S<br />
3927a843ff1e drm/i915/adl_s: Update PHY_MISC programming<br />
aa5734095dbb drm/i915/adl_s: Update combo PHY master/slave relationships<br />
17a523c28460 drm/i915/adl_s: Add vbt port and aux channel settings for adls<br />
ad1a87bbd43c drm/i915/adl_s: Add adl-s ddc pin mapping<br />
d7994db4541b drm/i915/adl_s: Add HTI support and initialize display for ADL-S<br />
8ae3c608c0d5 drm/i915/adl_s: Configure Port clock registers for ADL-S<br />
4e420980faab drm/i915/adl_s: Configure DPLL for ADL-S<br />
2248efb63de6 drm/i915/adl_s: Add PHYs for Alderlake S<br />
51af91e98816 drm/i915/adl_s: Add Interrupt Support<br />
59b86438365e drm/i915/adl_s: Add PCH support<br />
3db2935953f0 x86/gpu: add ADL_S stolen memory support<br />
d26e247df015 drm/i915/adl_s: Add ADL-S platform info and PCI ids<br />
022d6eeef421 drm/i915/tgl: Fix macros for TGL SOC based WA<br />
b9c32f37d365 drm/i915/dg1: Enable ports</p>

</body>
</html>

--===============7064427501348124887==--

--===============0244817387==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0244817387==--
