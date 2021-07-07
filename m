Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 836603BE591
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 11:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB8706E865;
	Wed,  7 Jul 2021 09:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2A8866E864;
 Wed,  7 Jul 2021 09:26:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 22751A8836;
 Wed,  7 Jul 2021 09:26:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tejas Upadhyay" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Date: Wed, 07 Jul 2021 09:26:12 -0000
Message-ID: <162564997210.30453.785176118303641010@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210707082226.945948-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210707082226.945948-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fs=3A_Fix_dma=5Fmask=5Fsize_to_39_bit?=
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
Content-Type: multipart/mixed; boundary="===============0181525719=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0181525719==
Content-Type: multipart/alternative;
 boundary="===============1917774470934910446=="

--===============1917774470934910446==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/adl_s: Fix dma_mask_size to 39 bit
URL   : https://patchwork.freedesktop.org/series/92262/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10308 -> Patchwork_20541
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20541 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20541, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20541:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-snb-2520m:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20541 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#3718])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#2190])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-snb-2520m:       NOTRUN -> [SKIP][8] ([fdo#109271]) +18 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#533])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-8109u:       NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][11] ([fdo#109271]) +5 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-cfl-8109u:       NOTRUN -> [SKIP][12] ([fdo#109271]) +6 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][13] ([fdo#109271]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][14] ([i915#2722] / [i915#3363])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][15] ([i915#2722] / [i915#3363])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@runner@aborted.html

  * igt@vgem_basic@unload:
    - fi-cfl-8109u:       NOTRUN -> [INCOMPLETE][16] ([i915#3744])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@vgem_basic@unload.html
    - fi-bdw-5557u:       NOTRUN -> [INCOMPLETE][17] ([i915#3744])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@vgem_basic@unload.html
    - fi-kbl-x1275:       NOTRUN -> [INCOMPLETE][18] ([i915#3744])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@vgem_basic@unload.html
    - fi-snb-2520m:       NOTRUN -> [INCOMPLETE][19] ([i915#3744])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@vgem_basic@unload.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-cfl-8109u:       [INCOMPLETE][20] ([i915#155]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][22] ([i915#1602] / [i915#2029]) -> [FAIL][23] ([i915#2722])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-bdw-5557u/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@runner@aborted.html

  * igt@vgem_basic@unload:
    - fi-pnv-d510:        [INCOMPLETE][24] ([i915#299]) -> [INCOMPLETE][25] ([i915#299] / [i915#3744])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-pnv-d510/igt@vgem_basic@unload.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-pnv-d510/igt@vgem_basic@unload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3718]: https://gitlab.freedesktop.org/drm/intel/issues/3718
  [i915#3744]: https://gitlab.freedesktop.org/drm/intel/issues/3744
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (38 -> 37)
------------------------------

  Additional (2): fi-kbl-x1275 fi-snb-2520m 
  Missing    (3): fi-icl-y fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10308 -> Patchwork_20541

  CI-20190529: 20190529
  CI_DRM_10308: 9d1b5a9bdfbfb97b6e6b7ee3d863ee373ee9fd9e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20541: 55117d4dae7d10c7c3bde52cdd70513472326996 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

55117d4dae7d drm/i915/adl_s: Fix dma_mask_size to 39 bit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/index.html

--===============1917774470934910446==
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
<tr><td><b>Series:</b></td><td>drm/i915/adl_s: Fix dma_mask_size to 39 bit</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92262/">https://patchwork.freedesktop.org/series/92262/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10308 -&gt; Patchwork_20541</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20541 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20541, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20541:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20541 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3718">i915#3718</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-kbl-x1275/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-snb-2520m/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-cfl-8109u/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10308/fi-pnv-d510/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20541/fi-pnv-d510/igt@vgem_basic@unload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3744">i915#3744</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (2): fi-kbl-x1275 fi-snb-2520m <br />
  Missing    (3): fi-icl-y fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10308 -&gt; Patchwork_20541</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10308: 9d1b5a9bdfbfb97b6e6b7ee3d863ee373ee9fd9e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20541: 55117d4dae7d10c7c3bde52cdd70513472326996 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>55117d4dae7d drm/i915/adl_s: Fix dma_mask_size to 39 bit</p>

</body>
</html>

--===============1917774470934910446==--

--===============0181525719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0181525719==--
