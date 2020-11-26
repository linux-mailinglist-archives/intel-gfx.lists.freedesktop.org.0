Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEF52C523F
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Nov 2020 11:46:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7996E88C;
	Thu, 26 Nov 2020 10:46:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 467126E88C;
 Thu, 26 Nov 2020 10:46:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3DC87A7525;
 Thu, 26 Nov 2020 10:46:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 26 Nov 2020 10:46:21 -0000
Message-ID: <160638758122.4112.7176376043374042425@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201126073722.19107-1-anshuman.gupta@intel.com>
In-Reply-To: <20201126073722.19107-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev5=29?=
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
Content-Type: multipart/mixed; boundary="===============2088635951=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2088635951==
Content-Type: multipart/alternative;
 boundary="===============8650442901903084644=="

--===============8650442901903084644==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev5)
URL   : https://patchwork.freedesktop.org/series/82998/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9392 -> Patchwork_18986
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18986:

### IGT changes ###

#### Possible regressions ####

  * {igt@kms_content_protection@dp-mst-lic-type-0} (NEW):
    - fi-tgl-u2:          NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-u2/igt@kms_content_protection@dp-mst-lic-type-0.html
    - {fi-ehl-1}:         NOTRUN -> [SKIP][2] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-ehl-1/igt@kms_content_protection@dp-mst-lic-type-0.html
    - fi-tgl-y:           NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@kms_content_protection@dp-mst-lic-type-0.html

  * {igt@kms_content_protection@dp-mst-lic-type-1} (NEW):
    - fi-cml-u2:          NOTRUN -> [SKIP][4] +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-cml-u2/igt@kms_content_protection@dp-mst-lic-type-1.html
    - fi-icl-y:           NOTRUN -> [SKIP][5] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-y/igt@kms_content_protection@dp-mst-lic-type-1.html
    - fi-cml-s:           NOTRUN -> [SKIP][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-cml-s/igt@kms_content_protection@dp-mst-lic-type-1.html

  * {igt@kms_content_protection@dp-mst-type-0} (NEW):
    - fi-kbl-guc:         NOTRUN -> [FAIL][7] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-guc/igt@kms_content_protection@dp-mst-type-0.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][8] +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-bsw-nick/igt@kms_content_protection@dp-mst-type-0.html

  * {igt@kms_content_protection@dp-mst-type-1} (NEW):
    - fi-icl-u2:          NOTRUN -> [SKIP][9] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-u2/igt@kms_content_protection@dp-mst-type-1.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9392 and Patchwork_18986:

### New CI tests (1) ###

  * boot:
    - Statuses : 40 pass(s)
    - Exec time: [0.0] s

  


### New IGT tests (4) ###

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - Statuses : 2 fail(s) 35 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - Statuses : 2 fail(s) 35 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_content_protection@dp-mst-type-0:
    - Statuses : 2 fail(s) 35 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_content_protection@dp-mst-type-1:
    - Statuses : 2 fail(s) 35 skip(s)
    - Exec time: [0.0, 0.00] s

  

Known issues
------------

  Here are the changes found in Patchwork_18986 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-tgl-y:           [PASS][10] -> [DMESG-WARN][11] ([i915#1982] / [k.org#205379])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@i915_module_load@reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][12] -> [DMESG-FAIL][13] ([i915#541])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-cfl-8109u:       [PASS][14] -> [DMESG-FAIL][15] ([i915#541])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][16] -> [DMESG-WARN][17] ([i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-kbl-7500u:       [PASS][18] -> [DMESG-WARN][19] ([i915#165])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][20] -> [DMESG-WARN][21] ([i915#1982])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][22] -> [DMESG-WARN][23] ([i915#402]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - {fi-kbl-7560u}:     [INCOMPLETE][24] ([i915#2417]) -> [PASS][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][26] ([i915#1982]) -> [PASS][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-byt-j1900/igt@i915_module_load@reload.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [DMESG-FAIL][28] ([i915#2601] / [i915#541]) -> [PASS][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-y:           [DMESG-WARN][30] ([i915#1982]) -> [PASS][31]
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@kms_busy@basic@flip.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][32] ([i915#1982]) -> [PASS][33] +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  * igt@prime_self_import@basic-with_one_bo:
    - fi-tgl-y:           [DMESG-WARN][34] ([i915#402]) -> [PASS][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-tgl-y:           [DMESG-WARN][36] ([i915#1982] / [i915#2411]) -> [DMESG-WARN][37] ([i915#2411])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2417]: https://gitlab.freedesktop.org/drm/intel/issues/2417
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_5870 -> IGTPW_5228
  * Linux: CI_DRM_9392 -> Patchwork_18986

  CI-20190529: 20190529
  CI_DRM_9392: 000f10be44a48c2fe20ba33544a6094da2e56fc9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5228: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5228/index.html
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18986: 28e8195e636b41480255774950216f4d1a46f858 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

28e8195e636b drm/i915/hdcp: Enable HDCP 2.2 MST support
b27e53406aa5 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
40ebf781db7c drm/i915/hdcp: Add HDCP 2.2 stream register
cdef9be4dbfb drm/i915/hdcp: Pass connector to check_2_2_link
3062c90f915d drm/i915/hdcp: MST streams support in hdcp port_data
194192a51d06 drm/hdcp: Max MST content streams
809b35f4f68e misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len
7b2287859815 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port
f2f428fd437a drm/i915/hdcp: Pass dig_port to intel_hdcp_init
364abd7a10e7 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support
3b08477e804e drm/i915/hdcp: Enable HDCP 1.4 stream encryption
de0fc99eeb69 drm/i915/hdcp: HDCP stream encryption support
2410d90472dd drm/i915/hdcp: Move HDCP enc status timeout to header
9ebb17cb5dd1 drm/i915/hdcp: DP MST transcoder for link and stream
e0378ed7d400 drm/i915/hdcp: No HDCP when encoder is't initialized
a1399e34cc6b drm/i915/hotplug: Handle CP_IRQ for DP-MST
cae9bce2e99c drm/i915/hdcp: Get conn while content_type changed
fede738db387 drm/i915/hdcp: Update CP property in update_pipe

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html

--===============8650442901903084644==
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
<tr><td><b>Series:</b></td><td>HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82998/">https://patchwork.freedesktop.org/series/82998/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9392 -&gt; Patchwork_18986</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18986:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>{igt@kms_content_protection@dp-mst-lic-type-0} (NEW):</p>
<ul>
<li>
<p>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-u2/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>{fi-ehl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-ehl-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@dp-mst-lic-type-1} (NEW):</p>
<ul>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-cml-u2/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>fi-icl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-y/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-cml-s/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@dp-mst-type-0} (NEW):</p>
<ul>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-guc/igt@kms_content_protection@dp-mst-type-0.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-bsw-nick/igt@kms_content_protection@dp-mst-type-0.html">FAIL</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_content_protection@dp-mst-type-1} (NEW):</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-u2/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9392 and Patchwork_18986:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h3>New IGT tests (4)</h3>
<ul>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>Statuses : 2 fail(s) 35 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>Statuses : 2 fail(s) 35 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>Statuses : 2 fail(s) 35 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>Statuses : 2 fail(s) 35 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18986 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-cfl-8109u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-7500u/igt@kms_chamelium@dp-edid-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2417">i915#2417</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-kbl-7560u/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@prime_self_import@basic-with_one_bo.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9392/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18986/fi-tgl-y/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5870 -&gt; IGTPW_5228</li>
<li>Linux: CI_DRM_9392 -&gt; Patchwork_18986</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9392: 000f10be44a48c2fe20ba33544a6094da2e56fc9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5228: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5228/index.html<br />
  IGT_5870: 08b13995b85df26a77212e4fb21fd772976ef33c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18986: 28e8195e636b41480255774950216f4d1a46f858 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>28e8195e636b drm/i915/hdcp: Enable HDCP 2.2 MST support<br />
b27e53406aa5 drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks<br />
40ebf781db7c drm/i915/hdcp: Add HDCP 2.2 stream register<br />
cdef9be4dbfb drm/i915/hdcp: Pass connector to check_2_2_link<br />
3062c90f915d drm/i915/hdcp: MST streams support in hdcp port_data<br />
194192a51d06 drm/hdcp: Max MST content streams<br />
809b35f4f68e misc/mei/hdcp: Fix AUTH_STREAM_REQ cmd buffer len<br />
7b2287859815 drm/i915/hdcp: Encapsulate hdcp_port_data to dig_port<br />
f2f428fd437a drm/i915/hdcp: Pass dig_port to intel_hdcp_init<br />
364abd7a10e7 drm/i915/hdcp: Enable Gen12 HDCP 1.4 DP MST support<br />
3b08477e804e drm/i915/hdcp: Enable HDCP 1.4 stream encryption<br />
de0fc99eeb69 drm/i915/hdcp: HDCP stream encryption support<br />
2410d90472dd drm/i915/hdcp: Move HDCP enc status timeout to header<br />
9ebb17cb5dd1 drm/i915/hdcp: DP MST transcoder for link and stream<br />
e0378ed7d400 drm/i915/hdcp: No HDCP when encoder is't initialized<br />
a1399e34cc6b drm/i915/hotplug: Handle CP_IRQ for DP-MST<br />
cae9bce2e99c drm/i915/hdcp: Get conn while content_type changed<br />
fede738db387 drm/i915/hdcp: Update CP property in update_pipe</p>

</body>
</html>

--===============8650442901903084644==--

--===============2088635951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2088635951==--
