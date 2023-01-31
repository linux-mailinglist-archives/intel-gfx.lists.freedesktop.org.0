Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9434D683200
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 16:59:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE04410E03D;
	Tue, 31 Jan 2023 15:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8BC7710E03D;
 Tue, 31 Jan 2023 15:59:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84BF1AA01E;
 Tue, 31 Jan 2023 15:59:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6482465764763536483=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 31 Jan 2023 15:59:10 -0000
Message-ID: <167518075050.5941.10342924078194730343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230131150548.1614458-1-imre.deak@intel.com>
In-Reply-To: <20230131150548.1614458-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_drm/i915/dp=5Fmst=3A_Fix_MST_payload_removal_during_ou?=
 =?utf-8?q?tput_disabling?=
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

--===============6482465764763536483==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: drm/i915/dp_mst: Fix MST payload removal during output disabling
URL   : https://patchwork.freedesktop.org/series/113527/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12674 -> Patchwork_113527v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/index.html

Participating hosts (27 -> 26)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (2): bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113527v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@write:
    - fi-blb-e6850:       [PASS][1] -> [SKIP][2] ([fdo#109271]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-blb-e6850/igt@fbdev@write.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-blb-e6850/igt@fbdev@write.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#4613]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][5] -> [ABORT][6] ([i915#7911])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][7] ([i915#7156])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][8] -> [DMESG-FAIL][9] ([i915#5334])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][11] ([fdo#109271]) +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-n3050:       [FAIL][12] ([i915#6298]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#7156]: https://gitlab.freedesktop.org/drm/intel/issues/7156
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981


Build changes
-------------

  * Linux: CI_DRM_12674 -> Patchwork_113527v1

  CI-20190529: 20190529
  CI_DRM_12674: abcd161e6541aaf1e5c23e16019d02905c0e50fd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113527v1: abcd161e6541aaf1e5c23e16019d02905c0e50fd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

98e5868f0bb7 drm/i915/dp_mst: Verify the HW state of MST encoders
0dab6f2988c0 drm/i915/dp_mst: Add workaround for a DELL P2715Q payload allocation problem
2e410267390f drm/dp: Add a quirk for a DELL P2715Q MST payload allocation problem
577a8e99d46b drm/display/dp_mst: Factor out a helper to reset the payload table
16de7503f040 drm/display/dp_mst: Export the DP_PAYLOAD_TABLE_SIZE definition
c26bc2b0de20 drm/display/dp_mst: Add helpers to query payload allocation properties
a688dcdcd843 drm/display/dp_mst: Add helpers to query for payload allocation errors
8af23a142499 drm/i915/dp_mst: Verify the MST state of modesetted outputs
4fd19b257f37 drm/display/dp_mst: Add a helper to verify the MST payload state
590369e9490a drm/i915/dp_mst: Move getting the MST topology state earlier to connector check
ba6495e464c8 drm/i915: Factor out helpers for modesetting CRTCs and connectors
02ccfd9bb6c6 drm/display/dp_mst: Sanitize payload iteration in drm_dp_mst_dump_topology()
f521b1f6ecbc drm/display/dp_mst: Fix the payload VCPI check in drm_dp_mst_dump_topology()
68a51d80a5af drm/i915/dp_mst: Fix payload removal during output disabling
657019fab279 drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()
ec6d47d72b4c drm/display/dp_mst: Handle old/new payload states in drm_dp_remove_payload()
453d8bee9691 drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/index.html

--===============6482465764763536483==
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
<tr><td><b>Series:</b></td><td>drm/i915: drm/i915/dp_mst: Fix MST payload removal during output disabling</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113527/">https://patchwork.freedesktop.org/series/113527/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12674 -&gt; Patchwork_113527v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/index.html</p>
<h2>Participating hosts (27 -&gt; 26)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (2): bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113527v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-blb-e6850/igt@fbdev@write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-blb-e6850/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7156">i915#7156</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +15 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12674/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113527v1/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12674 -&gt; Patchwork_113527v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12674: abcd161e6541aaf1e5c23e16019d02905c0e50fd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113527v1: abcd161e6541aaf1e5c23e16019d02905c0e50fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>98e5868f0bb7 drm/i915/dp_mst: Verify the HW state of MST encoders<br />
0dab6f2988c0 drm/i915/dp_mst: Add workaround for a DELL P2715Q payload allocation problem<br />
2e410267390f drm/dp: Add a quirk for a DELL P2715Q MST payload allocation problem<br />
577a8e99d46b drm/display/dp_mst: Factor out a helper to reset the payload table<br />
16de7503f040 drm/display/dp_mst: Export the DP_PAYLOAD_TABLE_SIZE definition<br />
c26bc2b0de20 drm/display/dp_mst: Add helpers to query payload allocation properties<br />
a688dcdcd843 drm/display/dp_mst: Add helpers to query for payload allocation errors<br />
8af23a142499 drm/i915/dp_mst: Verify the MST state of modesetted outputs<br />
4fd19b257f37 drm/display/dp_mst: Add a helper to verify the MST payload state<br />
590369e9490a drm/i915/dp_mst: Move getting the MST topology state earlier to connector check<br />
ba6495e464c8 drm/i915: Factor out helpers for modesetting CRTCs and connectors<br />
02ccfd9bb6c6 drm/display/dp_mst: Sanitize payload iteration in drm_dp_mst_dump_topology()<br />
f521b1f6ecbc drm/display/dp_mst: Fix the payload VCPI check in drm_dp_mst_dump_topology()<br />
68a51d80a5af drm/i915/dp_mst: Fix payload removal during output disabling<br />
657019fab279 drm/display/dp_mst: Add drm_atomic_get_old_mst_topology_state()<br />
ec6d47d72b4c drm/display/dp_mst: Handle old/new payload states in drm_dp_remove_payload()<br />
453d8bee9691 drm/i915/dp_mst: Add the MST topology state for modesetted CRTCs</p>

</body>
</html>

--===============6482465764763536483==--
