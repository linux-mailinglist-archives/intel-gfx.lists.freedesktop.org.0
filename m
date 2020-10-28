Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFF629CDA5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 04:18:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C53D6EC91;
	Wed, 28 Oct 2020 03:17:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB5C06EC85;
 Wed, 28 Oct 2020 03:17:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBFF6A8831;
 Wed, 28 Oct 2020 03:17:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Wed, 28 Oct 2020 03:17:57 -0000
Message-ID: <160385507789.21341.9139823604428055037@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
In-Reply-To: <20201027164208.10026-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1595183393=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1595183393==
Content-Type: multipart/alternative;
 boundary="===============4659086699635026606=="

--===============4659086699635026606==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev2)
URL   : https://patchwork.freedesktop.org/series/82998/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9206 -> Patchwork_18788
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18788:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_content_protectoin@dp-mst-lic-type-0} (NEW):
    - fi-tgl-u2:          NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-u2/igt@kms_content_protectoin@dp-mst-lic-type-0.html
    - {fi-tgl-dsi}:       NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-dsi/igt@kms_content_protectoin@dp-mst-lic-type-0.html
    - fi-cml-u2:          NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-cml-u2/igt@kms_content_protectoin@dp-mst-lic-type-0.html

  * {igt@kms_content_protectoin@dp-mst-lic-type-1} (NEW):
    - fi-icl-u2:          NOTRUN -> [SKIP][4] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-icl-u2/igt@kms_content_protectoin@dp-mst-lic-type-1.html
    - fi-icl-y:           NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-icl-y/igt@kms_content_protectoin@dp-mst-lic-type-1.html

  * {igt@kms_content_protectoin@dp-mst-type-0} (NEW):
    - {fi-ehl-1}:         NOTRUN -> [SKIP][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-ehl-1/igt@kms_content_protectoin@dp-mst-type-0.html
    - fi-tgl-y:           NOTRUN -> [SKIP][7] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@kms_content_protectoin@dp-mst-type-0.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9206 and Patchwork_18788:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  


### New IGT tests (4) ###

  * igt@kms_content_protectoin@dp-mst-lic-type-0:
    - Statuses : 31 skip(s)
    - Exec time: [0.0] s

  * igt@kms_content_protectoin@dp-mst-lic-type-1:
    - Statuses : 31 skip(s)
    - Exec time: [0.0] s

  * igt@kms_content_protectoin@dp-mst-type-0:
    - Statuses : 31 skip(s)
    - Exec time: [0.0] s

  * igt@kms_content_protectoin@dp-mst-type-1:
    - Statuses : 31 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18788 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [PASS][8] -> [DMESG-WARN][9] ([i915#1982])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@mmap:
    - fi-tgl-y:           [PASS][10] -> [DMESG-WARN][11] ([i915#1982]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@fbdev@mmap.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@fbdev@mmap.html

  * igt@gem_ctx_create@basic-files:
    - fi-apl-guc:         [PASS][12] -> [INCOMPLETE][13] ([i915#1635])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-apl-guc/igt@gem_ctx_create@basic-files.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-apl-guc/igt@gem_ctx_create@basic-files.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][14] -> [DMESG-WARN][15] ([i915#1982])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][16] -> [INCOMPLETE][17] ([i915#2606])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-soraka:      [PASS][18] -> [INCOMPLETE][19] ([i915#2606])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-cml-s:           [PASS][20] -> [INCOMPLETE][21] ([i915#2606])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][22] -> [DMESG-WARN][23] ([i915#402]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][24] ([i915#2417]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - {fi-ehl-1}:         [DMESG-WARN][26] ([i915#1982]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-ehl-1/igt@i915_module_load@reload.html
    - fi-skl-lmem:        [DMESG-WARN][28] ([i915#2605]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_module_load@reload.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-skl-lmem/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [DMESG-WARN][30] ([i915#1982]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_busy@basic@flip:
    - {fi-tgl-dsi}:       [DMESG-WARN][32] ([i915#1982]) -> [PASS][33]
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@kms_busy@basic@flip.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-dsi/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-icl-u2:          [INCOMPLETE][34] ([i915#2606]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][36] ([i915#1982]) -> [PASS][37] +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-tgl-y:           [DMESG-WARN][38] ([i915#1982]) -> [PASS][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][40] ([i915#402]) -> [PASS][41] +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@prime_vgem@basic-read.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@prime_vgem@basic-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1784]: https://gitlab.freedesktop.org/drm/intel/issues/1784
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (43 -> 41)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_5827 -> IGTPW_5090
  * Linux: CI_DRM_9206 -> Patchwork_18788

  CI-20190529: 20190529
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5090: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5090/index.html
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18788: d046e7f1a967ed742d1fdecb23c6eb56cddcc95f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d046e7f1a967 drm/i915/hdcp: Enable HDCP 2.2 MST support
514afd1e53e6 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
3e86f0424b87 drm/i915/hdcp: Add HDCP 2.2 stream register
9a53600027fd drm/i915/hdcp: Pass connector to check_2_2_link
9ecb513d0858 drm/i915/hdcp: MST streams support in hdcp port_data
7dcbaf56e27e drm/hdcp: Max MST content streams
d38e764365d0 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
9b2956b02d6e drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
364b23b18975 drm/i915/hdcp: Pass dig_port to intel_hdcp_init
d7f3f52ee6f6 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
ba5452d71c60 drm/i915/hdcp: HDCP stream encryption support
1b51c22e0608 drm/i915/hdcp: Move HDCP enc status timeout to header
1c9e7f470f41 drm/i915/hdcp: DP MST transcoder for link and stream
734531fa0d46 drm/i915/hotplug: Handle CP_IRQ for DP-MST
1b2040195053 drm/i915/hdcp: Get conn while content_type changed
bb73b788c82a drm/i915/hdcp: Update CP property in update_pipe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html

--===============4659086699635026606==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82998/">https://patchwork.freedesktop.org/series/82998/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9206 -&gt; Patchwork_18788</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18788:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_content_protectoin@dp-mst-lic-type-0} (NEW):</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-u2/igt@kms_content_protectoin@dp-mst-lic-type-0.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-dsi/igt@kms_content_protectoin@dp-mst-lic-type-0.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-cml-u2/igt@kms_content_protectoin@dp-mst-lic-type-0.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protectoin@dp-mst-lic-type-1} (NEW):</p>
<ul>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-icl-u2/igt@kms_content_protectoin@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-icl-y/igt@kms_content_protectoin@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protectoin@dp-mst-type-0} (NEW):</p>
<ul>
<li>
<p>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-ehl-1/igt@kms_content_protectoin@dp-mst-type-0.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@kms_content_protectoin@dp-mst-type-0.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9206 and Patchwork_18788:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_content_protectoin@dp-mst-lic-type-0:</p>
<ul>
<li>Statuses : 31 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protectoin@dp-mst-lic-type-1:</p>
<ul>
<li>Statuses : 31 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protectoin@dp-mst-type-0:</p>
<ul>
<li>Statuses : 31 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protectoin@dp-mst-type-1:</p>
<ul>
<li>Statuses : 31 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18788 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@mmap:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@fbdev@mmap.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@fbdev@mmap.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-apl-guc/igt@gem_ctx_create@basic-files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-apl-guc/igt@gem_ctx_create@basic-files.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-cml-s/igt@kms_psr@primary_mmap_gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-ehl-1/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-ehl-1/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-skl-lmem/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-skl-lmem/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-dsi/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-dsi/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2606">i915#2606</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-icl-u2/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@kms_psr@sprite_plane_onoff.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5827 -&gt; IGTPW_5090</li>
<li>Linux: CI_DRM_9206 -&gt; Patchwork_18788</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5090: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5090/index.html<br />
  IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18788: d046e7f1a967ed742d1fdecb23c6eb56cddcc95f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d046e7f1a967 drm/i915/hdcp: Enable HDCP 2.2 MST support<br />
514afd1e53e6 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks<br />
3e86f0424b87 drm/i915/hdcp: Add HDCP 2.2 stream register<br />
9a53600027fd drm/i915/hdcp: Pass connector to check_2_2_link<br />
9ecb513d0858 drm/i915/hdcp: MST streams support in hdcp port_data<br />
7dcbaf56e27e drm/hdcp: Max MST content streams<br />
d38e764365d0 misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len<br />
9b2956b02d6e drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port<br />
364b23b18975 drm/i915/hdcp: Pass dig_port to intel_hdcp_init<br />
d7f3f52ee6f6 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support<br />
ba5452d71c60 drm/i915/hdcp: HDCP stream encryption support<br />
1b51c22e0608 drm/i915/hdcp: Move HDCP enc status timeout to header<br />
1c9e7f470f41 drm/i915/hdcp: DP MST transcoder for link and stream<br />
734531fa0d46 drm/i915/hotplug: Handle CP_IRQ for DP-MST<br />
1b2040195053 drm/i915/hdcp: Get conn while content_type changed<br />
bb73b788c82a drm/i915/hdcp: Update CP property in update_pipe</p>

</body>
</html>

--===============4659086699635026606==--

--===============1595183393==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1595183393==--
