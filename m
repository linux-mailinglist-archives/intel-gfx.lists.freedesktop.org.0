Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A236F3BB75F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jul 2021 08:58:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F42F898C8;
	Mon,  5 Jul 2021 06:58:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C7FBA898C8;
 Mon,  5 Jul 2021 06:58:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C0DD1A73C7;
 Mon,  5 Jul 2021 06:58:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: venkata.sai.patnana@intel.com
Date: Mon, 05 Jul 2021 06:58:03 -0000
Message-ID: <162546828376.22951.11444999297430535123@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210705060840.25030-1-venkata.sai.patnana@intel.com>
In-Reply-To: <20210705060840.25030-1-venkata.sai.patnana@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display/dsc=3A_Add_Per_connector_debugfs_node_for_DSC_BPP?=
 =?utf-8?q?_enable?=
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
Content-Type: multipart/mixed; boundary="===============1847065674=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1847065674==
Content-Type: multipart/alternative;
 boundary="===============0635426064435098283=="

--===============0635426064435098283==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable
URL   : https://patchwork.freedesktop.org/series/92188/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10304 -> Patchwork_20524
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20524 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20524, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20524:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-y:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-icl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-y/igt@debugfs_test@read_all_entries.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-icl-u2:          [{ABORT}][3] ([i915#1814]) -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-icl-u2/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-u2/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {fi-ehl-2}:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-ehl-2/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-ehl-2/igt@debugfs_test@read_all_entries.html
    - {fi-tgl-dsi}:       [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-tgl-dsi/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-tgl-dsi/igt@debugfs_test@read_all_entries.html
    - {fi-tgl-1115g4}:    [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html
    - {fi-jsl-1}:         [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-jsl-1/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-jsl-1/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - {fi-ehl-2}:         NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20524 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][14] ([fdo#109271]) +17 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][15] -> [INCOMPLETE][16] ([i915#2782] / [i915#2940])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][17] ([fdo#109271] / [i915#1436])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-bsw-kefka/igt@runner@aborted.html
    - fi-icl-y:           NOTRUN -> [FAIL][18] ([i915#1814])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-y/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][19] ([i915#2782]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [FAIL][21] ([i915#3449]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][23] ([i915#1372]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-icl-u2:          [FAIL][25] ([i915#1814] / [i915#3363]) -> [FAIL][26] ([i915#1814] / [i915#2722] / [i915#3363])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-icl-u2/igt@runner@aborted.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-u2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3449]: https://gitlab.freedesktop.org/drm/intel/issues/3449
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (36 -> 35)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * IGT: IGT_6128 -> IGTPW_5971
  * Linux: CI_DRM_10304 -> Patchwork_20524

  CI-20190529: 20190529
  CI_DRM_10304: 3d3b5479895dd6dd133571ded4318adf595708ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5971: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5971/index.html
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20524: 7f23639025dda76c27252a4a5145d0addb4b6ead @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7f23639025dd drm/i915/display/dsc: Set BPP in the kernel
0391ab67ea4c drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/index.html

--===============0635426064435098283==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92188/">https://patchwork.freedesktop.org/series/92188/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10304 -&gt; Patchwork_20524</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20524 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20524, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20524:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-icl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-y/igt@debugfs_test@read_all_entries.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-icl-u2/igt@debugfs_test@read_all_entries.html">{ABORT}</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-u2/igt@debugfs_test@read_all_entries.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-ehl-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-ehl-2/igt@debugfs_test@read_all_entries.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-tgl-dsi/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-tgl-dsi/igt@debugfs_test@read_all_entries.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-tgl-1115g4}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-tgl-1115g4/igt@debugfs_test@read_all_entries.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-jsl-1/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-jsl-1/igt@debugfs_test@read_all_entries.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-ehl-2/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20524 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-y/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3449">i915#3449</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10304/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20524/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (36 -&gt; 35)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6128 -&gt; IGTPW_5971</li>
<li>Linux: CI_DRM_10304 -&gt; Patchwork_20524</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10304: 3d3b5479895dd6dd133571ded4318adf595708ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5971: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5971/index.html<br />
  IGT_6128: b24e5949af7e51f0af484d2ce4cb4c5a41ac5358 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20524: 7f23639025dda76c27252a4a5145d0addb4b6ead @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7f23639025dd drm/i915/display/dsc: Set BPP in the kernel<br />
0391ab67ea4c drm/i915/display/dsc: Add Per connector debugfs node for DSC BPP enable</p>

</body>
</html>

--===============0635426064435098283==--

--===============1847065674==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1847065674==--
