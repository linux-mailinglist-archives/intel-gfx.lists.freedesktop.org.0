Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAD98685A8
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 02:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8850510F07E;
	Tue, 27 Feb 2024 01:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2DC910F07E;
 Tue, 27 Feb 2024 01:18:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4572042966830612119=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Add_Display_Por?=
 =?utf-8?q?t_tunnel_BW_allocation_support_=28rev6=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Feb 2024 01:18:36 -0000
Message-ID: <170899671666.299097.2832582019289991895@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240220211841.448846-1-imre.deak@intel.com>
In-Reply-To: <20240220211841.448846-1-imre.deak@intel.com>
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

--===============4572042966830612119==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add Display Port tunnel BW allocation support (rev6)
URL   : https://patchwork.freedesktop.org/series/129082/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14345 -> Patchwork_129082v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_129082v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_129082v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129082v6:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1:
    - bat-arls-2:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-2/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-arls-2/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_129082v6 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-cfl-8109u:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-cfl-8109u/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/fi-cfl-8109u/boot.html

  

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - bat-atsm-1:         [INCOMPLETE][5] ([i915#10094] / [i915#10137]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@hangcheck:
    - {bat-rpls-3}:       [DMESG-WARN][7] ([i915#5591]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10094]: https://gitlab.freedesktop.org/drm/intel/issues/10094
  [i915#10137]: https://gitlab.freedesktop.org/drm/intel/issues/10137
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14345 -> Patchwork_129082v6

  CI-20190529: 20190529
  CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129082v6: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6f0303321631 drm/i915/dp: Enable DP tunnel BW allocation mode
8b160bd78946 drm/i915/dp: Read DPRX for all long HPD pulses
84f928739de0 drm/i915/dp: Suspend/resume DP tunnels
232a81c3545b drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders
d6e68e72eeea drm/i915/dp: Handle DP tunnel IRQs
77a316a5547c drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks
904f8ff4847c drm/i915/dp: Compute DP tunnel BW during encoder state computation
e30c2b294042 drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()
cfe003896226 drm/i915/dp: Add DP tunnel atomic state and check BW limit
e845d3e65f57 drm/i915/dp: Add support for DP tunnel BW allocation
1e491673dd40 drm/i915/dp: Sync instead of try-sync commits when getting active pipes
f9a23c72455c drm/i915/dp: Add intel_dp_max_link_data_rate()
d02f06d5e00c drm/i915/dp: Factor out intel_dp_read_dprx_caps()
95a664a77474 drm/i915/dp: Factor out intel_dp_update_sink_caps()
e587647c4a35 drm/i915/dp: Export intel_dp_max_common_rate/lane_count()
cc6689daacbe drm/i915/dp: Factor out intel_dp_config_required_rate()
e76c8cac43f0 drm/i915/dp: Use drm_dp_max_dprx_data_rate()
8fea4c43fb32 drm/i915/dp: Add support to notify MST connectors to retry modesets
a50d19596539 drm/i915: Fix display bpp limit computation during system resume
cfae6a8751d6 drm/dp: Add support for DP tunneling
5bed9d5b20dc drm/dp: Add drm_dp_max_dprx_data_rate()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html

--===============4572042966830612119==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add Display Port tunnel BW allocation support (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129082/">https://patchwork.freedesktop.org/series/129082/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14345 -&gt; Patchwork_129082v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_129082v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_129082v6, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129082v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-arls-2/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-arls-2/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-edp-1.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129082v6 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/fi-cfl-8109u/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/fi-cfl-8109u/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10094">i915#10094</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/10137">i915#10137</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-atsm-1/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14345/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v6/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14345 -&gt; Patchwork_129082v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14345: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7731: 17f897a81868fb35c6a7033a8b07256659742248 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129082v6: b3552bf1e79de200a6ca49c518ead46a1256618c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6f0303321631 drm/i915/dp: Enable DP tunnel BW allocation mode<br />
8b160bd78946 drm/i915/dp: Read DPRX for all long HPD pulses<br />
84f928739de0 drm/i915/dp: Suspend/resume DP tunnels<br />
232a81c3545b drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders<br />
d6e68e72eeea drm/i915/dp: Handle DP tunnel IRQs<br />
77a316a5547c drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks<br />
904f8ff4847c drm/i915/dp: Compute DP tunnel BW during encoder state computation<br />
e30c2b294042 drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()<br />
cfe003896226 drm/i915/dp: Add DP tunnel atomic state and check BW limit<br />
e845d3e65f57 drm/i915/dp: Add support for DP tunnel BW allocation<br />
1e491673dd40 drm/i915/dp: Sync instead of try-sync commits when getting active pipes<br />
f9a23c72455c drm/i915/dp: Add intel_dp_max_link_data_rate()<br />
d02f06d5e00c drm/i915/dp: Factor out intel_dp_read_dprx_caps()<br />
95a664a77474 drm/i915/dp: Factor out intel_dp_update_sink_caps()<br />
e587647c4a35 drm/i915/dp: Export intel_dp_max_common_rate/lane_count()<br />
cc6689daacbe drm/i915/dp: Factor out intel_dp_config_required_rate()<br />
e76c8cac43f0 drm/i915/dp: Use drm_dp_max_dprx_data_rate()<br />
8fea4c43fb32 drm/i915/dp: Add support to notify MST connectors to retry modesets<br />
a50d19596539 drm/i915: Fix display bpp limit computation during system resume<br />
cfae6a8751d6 drm/dp: Add support for DP tunneling<br />
5bed9d5b20dc drm/dp: Add drm_dp_max_dprx_data_rate()</p>

</body>
</html>

--===============4572042966830612119==--
