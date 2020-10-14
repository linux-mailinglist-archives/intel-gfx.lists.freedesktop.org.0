Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B71A28D9AB
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DB626E9D3;
	Wed, 14 Oct 2020 05:45:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CAD276E156;
 Wed, 14 Oct 2020 05:45:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BA464A47EA;
 Wed, 14 Oct 2020 05:45:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 14 Oct 2020 05:45:42 -0000
Message-ID: <160265434272.21207.9141306036101907766@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_DP_MST_Support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0898939580=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0898939580==
Content-Type: multipart/alternative;
 boundary="===============6793069667526817242=="

--===============6793069667526817242==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 DP MST Support (rev2)
URL   : https://patchwork.freedesktop.org/series/81538/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9137 -> Patchwork_18696
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18696:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@core_hotunplug@unbind-rebind}:
    - fi-skl-6700k2:      [DMESG-WARN][1] ([i915#2203]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html
    - {fi-ehl-1}:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-u2:          [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - {fi-kbl-7560u}:     [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-7560u/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-7560u/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-6600u:       [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
    - fi-cml-s:           [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cml-s/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cml-s/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-soraka:      [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-r:           [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-r/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-r/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - {fi-tgl-dsi}:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [DMESG-WARN][25] ([i915#289]) -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-y:           [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-icl-y/igt@core_hotunplug@unbind-rebind.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-icl-y/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [PASS][31] -> [INCOMPLETE][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-guc:         [DMESG-WARN][33] ([i915#2203]) -> [INCOMPLETE][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-guc:         [DMESG-WARN][35] ([i915#2203]) -> [INCOMPLETE][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-tgl-y:           [PASS][37] -> [INCOMPLETE][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-x1275:       [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-dsi:         [PASS][41] -> [INCOMPLETE][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@runner@aborted:
    - {fi-ehl-1}:         NOTRUN -> [FAIL][43]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-ehl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18696 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][44] -> [DMESG-WARN][45] ([i915#1982])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:
    - fi-tgl-y:           [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][48] -> [DMESG-WARN][49] ([i915#402]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][50] ([i915#1982]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][52] ([i915#1161] / [i915#262]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - {fi-tgl-dsi}:       [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * {igt@prime_vgem@basic-userptr}:
    - fi-tgl-y:           [DMESG-WARN][58] ([i915#402]) -> [PASS][59] +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][60] ([i915#2411] / [i915#402]) -> [DMESG-WARN][61] ([i915#2411])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#289]: https://gitlab.freedesktop.org/drm/intel/issues/289
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (46 -> 40)
------------------------------

  Missing    (6): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_9137 -> Patchwork_18696

  CI-20190529: 20190529
  CI_DRM_9137: 9c7e985c2336328b14dd87c0f6a83af094f59d53 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5813: d4e6dd955a1dad02271aa41c9389f5097ee17765 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18696: ac59ab83da2ad34c09a723697b4ff7635e8b2cd7 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ac59ab83da2a drm/i915/hdcp: Enable HDCP 2.2 MST support
0b04d5020a92 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
f47295717b3e drm/i915/hdcp: Add HDCP 2.2 stream register
1300b2ad499f drm/i915/hdcp: Pass connector to check_2_2_link
629f09e3ddea drm/i915/hdcp: mst streams support in hdcp port_data
03477decebcc drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
86046073868b drm/i915/hdcp: Pass dig_port to intel_hdcp_init
87a4a87a3296 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
3a6056295149 drm/i915/hdcp: HDCP stream encryption support
ec157320f9ee drm/i915/hdcp: Move HDCP enc status timeout to header
2147d0efa227 drm/i915/hdcp: DP MST transcoder for link and stream
46a92a431c4f drm/i915/hotplug: Handle CP_IRQ for DP-MST
51e1dc4c0c75 drm/i915/hdcp: Update CP property in update_pipe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/index.html

--===============6793069667526817242==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 DP MST Support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81538/">https://patchwork.freedesktop.org/series/81538/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9137 -&gt; Patchwork_18696</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18696:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@core_hotunplug@unbind-rebind}:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-ehl-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-7560u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-7560u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cml-s/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cml-s/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-r:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-r/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-r/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/289">i915#289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-icl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-icl-y/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-skl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-x1275/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-ehl-1/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18696 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@kms_flip@basic-flip-vs-wf_vblank@d-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@prime_vgem@basic-userptr}:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9137/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18696/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 40)</h2>
<p>Missing    (6): fi-cml-u2 fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9137 -&gt; Patchwork_18696</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9137: 9c7e985c2336328b14dd87c0f6a83af094f59d53 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5813: d4e6dd955a1dad02271aa41c9389f5097ee17765 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18696: ac59ab83da2ad34c09a723697b4ff7635e8b2cd7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ac59ab83da2a drm/i915/hdcp: Enable HDCP 2.2 MST support<br />
0b04d5020a92 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks<br />
f47295717b3e drm/i915/hdcp: Add HDCP 2.2 stream register<br />
1300b2ad499f drm/i915/hdcp: Pass connector to check_2_2_link<br />
629f09e3ddea drm/i915/hdcp: mst streams support in hdcp port_data<br />
03477decebcc drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port<br />
86046073868b drm/i915/hdcp: Pass dig_port to intel_hdcp_init<br />
87a4a87a3296 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support<br />
3a6056295149 drm/i915/hdcp: HDCP stream encryption support<br />
ec157320f9ee drm/i915/hdcp: Move HDCP enc status timeout to header<br />
2147d0efa227 drm/i915/hdcp: DP MST transcoder for link and stream<br />
46a92a431c4f drm/i915/hotplug: Handle CP_IRQ for DP-MST<br />
51e1dc4c0c75 drm/i915/hdcp: Update CP property in update_pipe</p>

</body>
</html>

--===============6793069667526817242==--

--===============0898939580==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0898939580==--
