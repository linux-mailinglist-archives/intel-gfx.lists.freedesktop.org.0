Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E6A6C6D44
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 17:20:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A52610E494;
	Thu, 23 Mar 2023 16:20:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D16210E494;
 Thu, 23 Mar 2023 16:20:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 68875AA917;
 Thu, 23 Mar 2023 16:20:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7634968155571554679=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 23 Mar 2023 16:20:06 -0000
Message-ID: <167958840642.6627.8401154191410983160@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230323142035.1432621-1-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Align_the_ADLP_TypeC_sequences_with_bspec?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7634968155571554679==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Align the ADLP TypeC sequences with bspec
URL   : https://patchwork.freedesktop.org/series/115556/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12905 -> Patchwork_115556v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_115556v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#5334])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][3] -> [ABORT][4] ([i915#7911])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/bat-rpls-1/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-FAIL][7] ([i915#6997] / [i915#7913]) -> [DMESG-FAIL][8] ([i915#6367] / [i915#7913] / [i915#7996])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/bat-rpls-2/igt@i915_selftest@live@slpc.html

  
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12905 -> Patchwork_115556v1

  CI-20190529: 20190529
  CI_DRM_12905: 3a266f994a6b752953eb974ab7bf1dc382a2d1b8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7211: c0cc1de7b2f4041ca68960362aa55f881d416bac @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115556v1: 3a266f994a6b752953eb974ab7bf1dc382a2d1b8 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eacb3f20579c drm/i915: Remove the encoder update_prepare()/complete() hooks
c8a755423ba4 drm/i915: Remove TC PHY disconnect workaround
8953b94f744d drm/i915: Disable DPLLs before disconnecting the TC PHY
a31485fd5235 drm/i915: Move shared DPLL disabling into CRTC disable hook
a6f821a3e5c2 drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec
fc9377aaa0ab drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()
ef101363e765 drm/i915/tc: Get power ref for reading the HPD live status register
ba700337d218 drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection
c2e2b015e2e4 drm/i915/tc: Add TC PHY hook to init the PHY
782e1f88fc75 drm/i915/tc: Add asserts in TC PHY hooks that the required power is on
07a6ccb9873c drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain
2093be8d1e71 drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter
7d333d02799d drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()
20215aab0c94 drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks
c52180943cea drm/i915/tc: Check TC mode instead of the VBT legacy flag
902536fbcc24 drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode
e92c6edf73a2 drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY
90848d33f675 drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()
fd64967db134 drm/i915/tc: Add generic TC PHY connect/disconnect handlers
caf5d74cefb4 drm/i915/tc: Add TC PHY hook to read out the PHY HW state
07b2f0b9762c drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state
3ad47bfe8a83 drm/i915/tc: Add TC PHY hook to get the PHY HPD live status
0114b48c0cc1 drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c
25f5ce3954fb drm/i915/tc: Check for TC PHY explicitly in intel_tc_port_fia_max_lane_count()
4b423900f9e6 drm/i915/tc: Move TC port fields to a new intel_tc_port struct
89eccb3efa96 drm/i915/tc: Use the tc_phy prefix for all TC PHY functions
790a351f1457 drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()
773eeb4fba3e drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions
35d186692393 drm/i915/tc: Group the TC PHY setup/query functions per platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/index.html

--===============7634968155571554679==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Align the ADLP TypeC sequences with bspec</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115556/">https://patchwork.freedesktop.org/series/115556/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12905 -&gt; Patchwork_115556v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115556v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12905/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v1/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12905 -&gt; Patchwork_115556v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12905: 3a266f994a6b752953eb974ab7bf1dc382a2d1b8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7211: c0cc1de7b2f4041ca68960362aa55f881d416bac @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115556v1: 3a266f994a6b752953eb974ab7bf1dc382a2d1b8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eacb3f20579c drm/i915: Remove the encoder update_prepare()/complete() hooks<br />
c8a755423ba4 drm/i915: Remove TC PHY disconnect workaround<br />
8953b94f744d drm/i915: Disable DPLLs before disconnecting the TC PHY<br />
a31485fd5235 drm/i915: Move shared DPLL disabling into CRTC disable hook<br />
a6f821a3e5c2 drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec<br />
fc9377aaa0ab drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()<br />
ef101363e765 drm/i915/tc: Get power ref for reading the HPD live status register<br />
ba700337d218 drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection<br />
c2e2b015e2e4 drm/i915/tc: Add TC PHY hook to init the PHY<br />
782e1f88fc75 drm/i915/tc: Add asserts in TC PHY hooks that the required power is on<br />
07a6ccb9873c drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain<br />
2093be8d1e71 drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter<br />
7d333d02799d drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()<br />
20215aab0c94 drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks<br />
c52180943cea drm/i915/tc: Check TC mode instead of the VBT legacy flag<br />
902536fbcc24 drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode<br />
e92c6edf73a2 drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY<br />
90848d33f675 drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()<br />
fd64967db134 drm/i915/tc: Add generic TC PHY connect/disconnect handlers<br />
caf5d74cefb4 drm/i915/tc: Add TC PHY hook to read out the PHY HW state<br />
07b2f0b9762c drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state<br />
3ad47bfe8a83 drm/i915/tc: Add TC PHY hook to get the PHY HPD live status<br />
0114b48c0cc1 drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c<br />
25f5ce3954fb drm/i915/tc: Check for TC PHY explicitly in intel_tc_port_fia_max_lane_count()<br />
4b423900f9e6 drm/i915/tc: Move TC port fields to a new intel_tc_port struct<br />
89eccb3efa96 drm/i915/tc: Use the tc_phy prefix for all TC PHY functions<br />
790a351f1457 drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()<br />
773eeb4fba3e drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions<br />
35d186692393 drm/i915/tc: Group the TC PHY setup/query functions per platform</p>

</body>
</html>

--===============7634968155571554679==--
