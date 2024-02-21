Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E25A585CDB9
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 03:08:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D8C10E38B;
	Wed, 21 Feb 2024 02:08:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3347B10E38B;
 Wed, 21 Feb 2024 02:08:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9155263586348528301=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Add_Display_Por?=
 =?utf-8?q?t_tunnel_BW_allocation_support_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Feb 2024 02:08:09 -0000
Message-ID: <170848128920.132386.7779434982366745175@8e613ede5ea5>
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

--===============9155263586348528301==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add Display Port tunnel BW allocation support (rev2)
URL   : https://patchwork.freedesktop.org/series/129082/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14305 -> Patchwork_129082v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129082v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_softpin@safe-alignment:
    - {bat-arls-2}:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@gem_softpin@safe-alignment.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/bat-arls-2/igt@gem_softpin@safe-alignment.html

  
Known issues
------------

  Here are the changes found in Patchwork_129082v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][3] -> [FAIL][4] ([i915#8293])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-bsw-n3050/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [ABORT][6] ([i915#7911])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14305 -> Patchwork_129082v2

  CI-20190529: 20190529
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_129082v2: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ac3d933462e0 drm/i915/dp: Enable DP tunnel BW allocation mode
8a3130d98ca2 drm/i915/dp: Read DPRX for all long HPD pulses
9e26545ff64e drm/i915/dp: Suspend/resume DP tunnels
4a6ed7708e66 drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders
633260352fcf drm/i915/dp: Handle DP tunnel IRQs
e655a8dad126 drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks
861868fa5b1f drm/i915/dp: Compute DP tunnel BW during encoder state computation
e6e8be41fc8e drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()
fdc02281f1ae drm/i915/dp: Add DP tunnel atomic state and check BW limit
f65489307c55 drm/i915/dp: Add support for DP tunnel BW allocation
389f06304a2f drm/i915/dp: Add way to get active pipes with syncing commits
2ca5a931db6d drm/i915/dp: Add intel_dp_max_link_data_rate()
348ef611b934 drm/i915/dp: Factor out intel_dp_read_dprx_caps()
0d0ce61a14da drm/i915/dp: Factor out intel_dp_update_sink_caps()
696cdaf32b54 drm/i915/dp: Export intel_dp_max_common_rate/lane_count()
06addb22b256 drm/i915/dp: Factor out intel_dp_config_required_rate()
b6c0fee143a2 drm/i915/dp: Use drm_dp_max_dprx_data_rate()
6f16dda74ee5 drm/i915/dp: Add support to notify MST connectors to retry modesets
6461ebe4ef9e drm/i915: Fix display bpp limit computation during system resume
e34814cf0972 drm/dp: Add support for DP tunneling
4bf7a633951f drm/dp: Add drm_dp_max_dprx_data_rate()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/index.html

--===============9155263586348528301==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add Display Port tunnel BW allocation support (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129082/">https://patchwork.freedesktop.org/series/129082/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14305 -&gt; Patchwork_129082v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129082v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_softpin@safe-alignment:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/bat-arls-2/igt@gem_softpin@safe-alignment.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/bat-arls-2/igt@gem_softpin@safe-alignment.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129082v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14305/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129082v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14305 -&gt; Patchwork_129082v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14305: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7718: 40e8b9122853f455c84afcfa56469a6bc9a0d564 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_129082v2: 4b8a238dee9c18201f3652695414587cd2ef6d8f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ac3d933462e0 drm/i915/dp: Enable DP tunnel BW allocation mode<br />
8a3130d98ca2 drm/i915/dp: Read DPRX for all long HPD pulses<br />
9e26545ff64e drm/i915/dp: Suspend/resume DP tunnels<br />
4a6ed7708e66 drm/i915/dp: Call intel_dp_sync_state() always for DDI DP encoders<br />
633260352fcf drm/i915/dp: Handle DP tunnel IRQs<br />
e655a8dad126 drm/i915/dp: Allocate/free DP tunnel BW in the encoder enable/disable hooks<br />
861868fa5b1f drm/i915/dp: Compute DP tunnel BW during encoder state computation<br />
e6e8be41fc8e drm/i915/dp: Account for tunnel BW limit in intel_dp_max_link_data_rate()<br />
fdc02281f1ae drm/i915/dp: Add DP tunnel atomic state and check BW limit<br />
f65489307c55 drm/i915/dp: Add support for DP tunnel BW allocation<br />
389f06304a2f drm/i915/dp: Add way to get active pipes with syncing commits<br />
2ca5a931db6d drm/i915/dp: Add intel_dp_max_link_data_rate()<br />
348ef611b934 drm/i915/dp: Factor out intel_dp_read_dprx_caps()<br />
0d0ce61a14da drm/i915/dp: Factor out intel_dp_update_sink_caps()<br />
696cdaf32b54 drm/i915/dp: Export intel_dp_max_common_rate/lane_count()<br />
06addb22b256 drm/i915/dp: Factor out intel_dp_config_required_rate()<br />
b6c0fee143a2 drm/i915/dp: Use drm_dp_max_dprx_data_rate()<br />
6f16dda74ee5 drm/i915/dp: Add support to notify MST connectors to retry modesets<br />
6461ebe4ef9e drm/i915: Fix display bpp limit computation during system resume<br />
e34814cf0972 drm/dp: Add support for DP tunneling<br />
4bf7a633951f drm/dp: Add drm_dp_max_dprx_data_rate()</p>

</body>
</html>

--===============9155263586348528301==--
