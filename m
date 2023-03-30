Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E446D1358
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 01:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D339E10F0AF;
	Thu, 30 Mar 2023 23:33:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1BDAA10F0AF;
 Thu, 30 Mar 2023 23:33:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F175DA7DFF;
 Thu, 30 Mar 2023 23:33:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5661142766155578878=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Thu, 30 Mar 2023 23:33:25 -0000
Message-ID: <168021920594.18826.15970590083991065696@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230323142035.1432621-1-imre.deak@intel.com>
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Align_the_ADLP_TypeC_sequences_with_bspec_=28rev2?=
 =?utf-8?q?=29?=
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

--===============5661142766155578878==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tc: Align the ADLP TypeC sequences with bspec (rev2)
URL   : https://patchwork.freedesktop.org/series/115556/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12946 -> Patchwork_115556v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_115556v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#6687] / [i915#7978])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [PASS][2] -> [FAIL][3] ([i915#8308])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12946/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][4] ([i915#6367] / [i915#7996])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][5] -> [FAIL][6] ([i915#7932])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12946/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-1:         [INCOMPLETE][7] ([i915#4983]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12946/bat-rpls-1/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-rpls-1/igt@i915_selftest@live@hangcheck.html

  
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_12946 -> Patchwork_115556v2

  CI-20190529: 20190529
  CI_DRM_12946: 1a734c75a7bbe1169d90a9fb2b24b0345926a769 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7230: f0485204004305dd3ee8f8bbbb9c552e53a4e050 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_115556v2: 1a734c75a7bbe1169d90a9fb2b24b0345926a769 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3c93475626c2 drm/i915: Remove the encoder update_prepare()/complete() hooks
ca15a7e7a9d4 drm/i915: Remove TC PHY disconnect workaround
4185ab0e6892 drm/i915: Disable DPLLs before disconnecting the TC PHY
fae8d0b1cf92 drm/i915: Move shared DPLL disabling into CRTC disable hook
79a45db7e9dd drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec
78c0f45572dd drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()
9926c7d714e5 drm/i915/tc: Get power ref for reading the HPD live status register
a7d86cff6b3e drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection
99081eed7b64 drm/i915/tc: Add TC PHY hook to init the PHY
b44cdebf0cc8 drm/i915/tc: Add asserts in TC PHY hooks that the required power is on
ac10099cf980 drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain
4075b8b916fc drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter
4e0ab7beec0b drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()
503915b10ebc drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks
c77b67394815 drm/i915/tc: Check TC mode instead of the VBT legacy flag
046e8c6d8418 drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode
7e61d39c4bf1 drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY
83233c38655d drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()
0fcdaddf498c drm/i915/tc: Add generic TC PHY connect/disconnect handlers
997fd5dc34d8 drm/i915/tc: Add TC PHY hook to read out the PHY HW state
8727d89e3eaa drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state
1de8737356b0 drm/i915/tc: Add TC PHY hook to get the PHY HPD live status
b2d9b3e64cd3 drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c
f1e7687a8914 drm/i915/tc: Check for TC PHY explicitly in intel_tc_port_fia_max_lane_count()
80b8c0a77baf drm/i915/tc: Move TC port fields to a new intel_tc_port struct
7ead8c41fc10 drm/i915/tc: Use the tc_phy prefix for all TC PHY functions
c69a8f2d2505 drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()
e3969075f318 drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions
c765afd259da drm/i915/tc: Group the TC PHY setup/query functions per platform

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/index.html

--===============5661142766155578878==
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
<tr><td><b>Series:</b></td><td>drm/i915/tc: Align the ADLP TypeC sequences with bspec (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/115556/">https://patchwork.freedesktop.org/series/115556/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12946 -&gt; Patchwork_115556v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_115556v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12946/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12946/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12946/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115556v2/bat-rpls-1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12946 -&gt; Patchwork_115556v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12946: 1a734c75a7bbe1169d90a9fb2b24b0345926a769 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7230: f0485204004305dd3ee8f8bbbb9c552e53a4e050 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_115556v2: 1a734c75a7bbe1169d90a9fb2b24b0345926a769 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3c93475626c2 drm/i915: Remove the encoder update_prepare()/complete() hooks<br />
ca15a7e7a9d4 drm/i915: Remove TC PHY disconnect workaround<br />
4185ab0e6892 drm/i915: Disable DPLLs before disconnecting the TC PHY<br />
fae8d0b1cf92 drm/i915: Move shared DPLL disabling into CRTC disable hook<br />
79a45db7e9dd drm/i915/adlp/tc: Align the connect/disconnect PHY sequence with bspec<br />
78c0f45572dd drm/i915/tc: Don't connect the PHY in intel_tc_port_connected()<br />
9926c7d714e5 drm/i915/tc: Get power ref for reading the HPD live status register<br />
a7d86cff6b3e drm/i915/adlp/tc: Use the DE HPD ISR register for hotplug detection<br />
99081eed7b64 drm/i915/tc: Add TC PHY hook to init the PHY<br />
b44cdebf0cc8 drm/i915/tc: Add asserts in TC PHY hooks that the required power is on<br />
ac10099cf980 drm/i915/tc: Add TC PHY hook to get the TC-cold blocking power domain<br />
4075b8b916fc drm/i915/tc: Drop tc_cold_block()/unblock()'s power domain parameter<br />
4e0ab7beec0b drm/i915/tc: Remove redundant wakeref=0 check from unblock_tc_cold()<br />
503915b10ebc drm/i915/tc: Block/unblock TC-cold in the PHY connect/disconnect hooks<br />
c77b67394815 drm/i915/tc: Check TC mode instead of the VBT legacy flag<br />
046e8c6d8418 drm/i915/tc: Fix up the legacy VBT flag only in disconnected mode<br />
7e61d39c4bf1 drm/i915/tc: Add TC PHY hooks to connect/disconnect the PHY<br />
83233c38655d drm/i915/tc: Factor out tc_phy_verify_legacy_or_dp_alt_mode()<br />
0fcdaddf498c drm/i915/tc: Add generic TC PHY connect/disconnect handlers<br />
997fd5dc34d8 drm/i915/tc: Add TC PHY hook to read out the PHY HW state<br />
8727d89e3eaa drm/i915/tc: Add TC PHY hooks to get the PHY ready/owned state<br />
1de8737356b0 drm/i915/tc: Add TC PHY hook to get the PHY HPD live status<br />
b2d9b3e64cd3 drm/i915/tc: Move the intel_tc_port struct declaration to intel_tc.c<br />
f1e7687a8914 drm/i915/tc: Check for TC PHY explicitly in intel_tc_port_fia_max_lane_count()<br />
80b8c0a77baf drm/i915/tc: Move TC port fields to a new intel_tc_port struct<br />
7ead8c41fc10 drm/i915/tc: Use the tc_phy prefix for all TC PHY functions<br />
c69a8f2d2505 drm/i915/tc: Rename tc_phy_status_complete() to tc_phy_is_ready()<br />
e3969075f318 drm/i915/tc: Use the adlp prefix for ADLP TC PHY functions<br />
c765afd259da drm/i915/tc: Group the TC PHY setup/query functions per platform</p>

</body>
</html>

--===============5661142766155578878==--
