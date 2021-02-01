Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9417B30B3B7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 00:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55D188EB5;
	Mon,  1 Feb 2021 23:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C2DB88EB5;
 Mon,  1 Feb 2021 23:53:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 99D92A47EB;
 Mon,  1 Feb 2021 23:53:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Date: Mon, 01 Feb 2021 23:53:05 -0000
Message-ID: <161222358562.18682.15809997112365029960@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210201230133.19221-1-anusha.srivatsa@intel.com>
In-Reply-To: <20210201230133.19221-1-anusha.srivatsa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg1=3A_Add_GuC_and_HuC_support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0522678035=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0522678035==
Content-Type: multipart/alternative;
 boundary="===============1939958850349234780=="

--===============1939958850349234780==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg1: Add GuC and HuC support (rev2)
URL   : https://patchwork.freedesktop.org/series/86482/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9713 -> Patchwork_19557
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19557 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19557, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19557:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_huc_copy@huc-copy:
    - fi-tgl-y:           [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_huc_copy@huc-copy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@gem_huc_copy@huc-copy.html

  
Known issues
------------

  Here are the changes found in Patchwork_19557 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#2411] / [i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-guc:         [PASS][5] -> [SKIP][6] ([fdo#109271])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-guc:         [PASS][7] -> [SKIP][8] ([fdo#109271])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-skl-guc:         [PASS][9] -> [SKIP][10] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-skl-guc/igt@gem_huc_copy@huc-copy.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-skl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-apl-guc:         [PASS][11] -> [SKIP][12] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-apl-guc/igt@gem_huc_copy@huc-copy.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][13] -> [INCOMPLETE][14] ([i915#2782] / [i915#926])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-apl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-apl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#533])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-apl-guc:         NOTRUN -> [SKIP][17] ([fdo#109271]) +26 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@kms_psr@primary_page_flip.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][18] -> [DMESG-WARN][19] ([i915#402]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@vgem_basic@setversion.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][20] ([i915#402]) -> [PASS][21] +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         [DMESG-WARN][22] ([i915#1610]) -> [PASS][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-apl-guc/igt@i915_hangman@error-state-basic.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  * igt@i915_pm_rpm@module-reload:
    - fi-cfl-8109u:       [DMESG-WARN][24] ([i915#203]) -> [PASS][25] +27 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [DMESG-WARN][26] ([i915#1037]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_engines:
    - fi-cfl-8109u:       [DMESG-WARN][28] -> [PASS][29] +4 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7500u:       [DMESG-WARN][30] ([i915#2605]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#926]: https://gitlab.freedesktop.org/drm/intel/issues/926


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9713 -> Patchwork_19557

  CI-20190529: 20190529
  CI_DRM_9713: cc7b6cbff2a0a75ad4fe84d055ee1a762f0ce64b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5984: ccfc101419c1e233f87ca509781c5f8e09a2f3ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19557: 9fda1194e6b2d779578348a0376731049c9d187f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

9fda1194e6b2 drm/i915/dg1: Add GuC and HuC support

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/index.html

--===============1939958850349234780==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg1: Add GuC and HuC support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86482/">https://patchwork.freedesktop.org/series/86482/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9713 -&gt; Patchwork_19557</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19557 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19557, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19557:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_huc_copy@huc-copy:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@gem_huc_copy@huc-copy.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19557 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-kbl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-apl-guc/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/926">i915#926</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-apl-guc/igt@i915_hangman@error-state-basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-cfl-8109u/igt@i915_selftest@live@gt_engines.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9713/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19557/fi-kbl-7500u/igt@i915_selftest@live@sanitycheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9713 -&gt; Patchwork_19557</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9713: cc7b6cbff2a0a75ad4fe84d055ee1a762f0ce64b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5984: ccfc101419c1e233f87ca509781c5f8e09a2f3ae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19557: 9fda1194e6b2d779578348a0376731049c9d187f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>9fda1194e6b2 drm/i915/dg1: Add GuC and HuC support</p>

</body>
</html>

--===============1939958850349234780==--

--===============0522678035==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0522678035==--
