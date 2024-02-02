Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9163C8469AF
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 08:39:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 824A910ECA2;
	Fri,  2 Feb 2024 07:39:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5CF10EC68;
 Fri,  2 Feb 2024 07:39:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5043422299587789502=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_HDCP_Type1_MST_fixes?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 07:39:45 -0000
Message-ID: <170685958511.936066.3466328025517926367@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240202063852.1076862-1-suraj.kandpal@intel.com>
In-Reply-To: <20240202063852.1076862-1-suraj.kandpal@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5043422299587789502==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDCP Type1 MST fixes
URL   : https://patchwork.freedesktop.org/series/129452/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14210 -> Patchwork_129452v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129452v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129452v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): bat-kbl-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129452v1:

### IGT changes ###

#### Possible regressions ####

  * igt@debugfs_test@read_all_entries:
    - fi-cfl-8109u:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html
    - fi-kbl-7567u:       [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
    - bat-dg2-8:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-dg2-8/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html
    - fi-apl-guc:         [PASS][7] -> [ABORT][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-apl-guc/igt@debugfs_test@read_all_entries.html
    - bat-adlp-9:         [PASS][9] -> [ABORT][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-9/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html
    - bat-adlp-6:         [PASS][11] -> [ABORT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-6/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-adlp-6/igt@debugfs_test@read_all_entries.html
    - bat-dg2-9:          [PASS][13] -> [ABORT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-dg2-9/igt@debugfs_test@read_all_entries.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-adls-6}:       [PASS][15] -> [ABORT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adls-6/igt@debugfs_test@read_all_entries.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-adls-6/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_129452v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-dg2-11:         NOTRUN -> [SKIP][17] ([i915#9197])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html

  
#### Warnings ####

  * igt@kms_busy@basic:
    - fi-tgl-1115g4:      [SKIP][18] ([i915#4303]) -> [SKIP][19] ([i915#10158] / [i915#4303])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-tgl-1115g4/igt@kms_busy@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-tgl-1115g4/igt@kms_busy@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-1115g4:      [SKIP][20] ([fdo#109295]) -> [SKIP][21] ([fdo#109295] / [i915#10158])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#10158]: https://gitlab.freedesktop.org/drm/intel/issues/10158
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#9197]: https://gitlab.freedesktop.org/drm/intel/issues/9197


Build changes
-------------

  * Linux: CI_DRM_14210 -> Patchwork_129452v1

  CI-20190529: 20190529
  CI_DRM_14210: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7701: 7701
  Patchwork_129452v1: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

74b5d7710308 drm/i915/hdcp: Read Rxcaps for robustibility
3ebd573d6618 drm/i915/hdcp: Allocate stream id after HDCP AKE stage
31414cb2505f drm/i915/hdcp: Save acquire_ctx in intel_hdcp
fbbd10a894d6 drm/i915/hdcp: Extract hdcp structure from correct connector
517b55304512 drm/i915/hdcp: Remove additional timing for reading mst hdcp message
e99c7ff4ff9b drm/i915/hdcp: HDCP Capability for the downstream device
516ccdf64dac drm/i915/hdcp: Add new remote capability check shim function
33352257caa3 drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function
65411c1510b7 drm/i915/hdcp: Refactor intel_dp_hdcp2_capable
d53d919e9f89 drm/i915/hdcp: Move source hdcp2 checks into its own function
6e658ed71bee drm/i915/hdcp: Move to direct reads for HDCP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/index.html

--===============5043422299587789502==
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
<tr><td><b>Series:</b></td><td>HDCP Type1 MST fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129452/">https://patchwork.freedesktop.org/series/129452/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14210 -&gt; Patchwork_129452v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129452v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129452v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): bat-kbl-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129452v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-cfl-8109u/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-dg2-8/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-dg2-8/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-apl-guc/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-adlp-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-adlp-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-dg2-9/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-dg2-9/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>{bat-adls-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adls-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-adls-6/igt@debugfs_test@read_all_entries.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129452v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@nonblocking-crc:<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9197">i915#9197</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-tgl-1115g4/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-tgl-1115g4/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10158">i915#10158</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129452v1/fi-tgl-1115g4/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10158">i915#10158</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14210 -&gt; Patchwork_129452v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14210: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7701: 7701<br />
  Patchwork_129452v1: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>74b5d7710308 drm/i915/hdcp: Read Rxcaps for robustibility<br />
3ebd573d6618 drm/i915/hdcp: Allocate stream id after HDCP AKE stage<br />
31414cb2505f drm/i915/hdcp: Save acquire_ctx in intel_hdcp<br />
fbbd10a894d6 drm/i915/hdcp: Extract hdcp structure from correct connector<br />
517b55304512 drm/i915/hdcp: Remove additional timing for reading mst hdcp message<br />
e99c7ff4ff9b drm/i915/hdcp: HDCP Capability for the downstream device<br />
516ccdf64dac drm/i915/hdcp: Add new remote capability check shim function<br />
33352257caa3 drm/i915/hdcp: Pass drm_dp_aux to read_bcaps function<br />
65411c1510b7 drm/i915/hdcp: Refactor intel_dp_hdcp2_capable<br />
d53d919e9f89 drm/i915/hdcp: Move source hdcp2 checks into its own function<br />
6e658ed71bee drm/i915/hdcp: Move to direct reads for HDCP</p>

</body>
</html>

--===============5043422299587789502==--
