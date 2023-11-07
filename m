Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2562F7E32A7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 02:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEDD10E4A5;
	Tue,  7 Nov 2023 01:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2223A10E06A;
 Tue,  7 Nov 2023 01:41:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1B927A0078;
 Tue,  7 Nov 2023 01:41:58 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5250488181667392112=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 07 Nov 2023 01:41:58 -0000
Message-ID: <169932131808.21167.182152736702271245@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231030155843.2251023-1-imre.deak@intel.com>
In-Reply-To: <20231030155843.2251023-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Improve_BW_management_on_MST_links_=28rev16=29?=
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

--===============5250488181667392112==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Improve BW management on MST links (rev16)
URL   : https://patchwork.freedesktop.org/series/125490/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13844 -> Patchwork_125490v16
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html

Participating hosts (33 -> 31)
------------------------------

  Missing    (2): bat-adlp-11 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_125490v16 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][1] ([i915#7978] / [i915#9631])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][2] -> [FAIL][3] ([IGT#3])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - fi-rkl-11600:       [FAIL][4] ([fdo#103375]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][6] ([i915#5334]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-1:         [INCOMPLETE][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#9631]: https://gitlab.freedesktop.org/drm/intel/issues/9631


Build changes
-------------

  * Linux: CI_DRM_13844 -> Patchwork_125490v16

  CI-20190529: 20190529
  CI_DRM_13844: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7574: 0485a4bf66f69aaf7244a3e689402b522f636780 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_125490v16: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

00ffe2cb401d drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info
07edaac2b3e8 drm/i915/dp_mst: Check BW limitations only after all streams are computed
ab0f11f7cbcb drm/i915/dp_mst: Improve BW sharing between MST streams
b2a102ea5143 drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it
95d629cb30f3 drm/i915: Factor out function to clear pipe update flags
766324a18ac2 drm/i915/dp_mst: Enable MST DSC decompression for all streams
a65145fe4476 drm/i915/dp_mst: Enable DSC passthrough
97346f74dfaa drm/i915/dp: Enable DSC via the connector decompression AUX
4a453f366092 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks
2c62b16c173e drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk
62a34f5076ea drm/i915/dp: Disable FEC ready flag in the sink
4ed6a9950148 drm/i915/dp: Wait for FEC detected status in the sink
bca078d9b963 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
ff9aac6d8dd5 drm/i915/dp_mst: Add missing DSC compression disabling
f27a60c9027b drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled
644a564e38cc drm/i915/dp_mst: Program the DSC PPS SDP for each stream
dfa14b3b77f9 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms
5b13209046aa drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation
f8ee10079f67 drm/i915/dp: Pass actual BW overhead to m_n calculation
acbf8cf8f789 drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder
8ab47a012cd9 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed
6a73b43d5a03 drm/dp: Add helpers to calculate the link BW overhead
3543c0ae6f14 drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs
2de99e537246 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags
d174b202711f drm/dp_mst: Allow DSC in any Synaptics last branch device
9aaae5e4bdf9 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations
e0d7271edaf6 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager
7e37e6bedf15 drm/dp_mst: Add helper to determine if an MST port is downstream of another port
c5e975c5cb2b drm/dp_mst: Fix fractional DSC bpp handling
5d58750803d2 drm/i915/dp_mst: Fix race between connector registration and setup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html

--===============5250488181667392112==
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
<tr><td><b>Series:</b></td><td>drm/i915: Improve BW management on MST links (rev16)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/125490/">https://patchwork.freedesktop.org/series/125490/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13844 -&gt; Patchwork_125490v16</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/index.html</p>
<h2>Participating hosts (33 -&gt; 31)</h2>
<p>Missing    (2): bat-adlp-11 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_125490v16 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9631">i915#9631</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/fi-rkl-11600/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13844/bat-rpls-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125490v16/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13844 -&gt; Patchwork_125490v16</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13844: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7574: 0485a4bf66f69aaf7244a3e689402b522f636780 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_125490v16: 98a039fc048898d9ecec16153267968fd18a5a52 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>00ffe2cb401d drm/i915: Query compressed bpp properly using correct DPCD and DP Spec info<br />
07edaac2b3e8 drm/i915/dp_mst: Check BW limitations only after all streams are computed<br />
ab0f11f7cbcb drm/i915/dp_mst: Improve BW sharing between MST streams<br />
b2a102ea5143 drm/i915/dp_mst: Force modeset CRTC if DSC toggling requires it<br />
95d629cb30f3 drm/i915: Factor out function to clear pipe update flags<br />
766324a18ac2 drm/i915/dp_mst: Enable MST DSC decompression for all streams<br />
a65145fe4476 drm/i915/dp_mst: Enable DSC passthrough<br />
97346f74dfaa drm/i915/dp: Enable DSC via the connector decompression AUX<br />
4a453f366092 drm/i915/dp_mst: Enable decompression in the sink from the MST encoder hooks<br />
2c62b16c173e drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk<br />
62a34f5076ea drm/i915/dp: Disable FEC ready flag in the sink<br />
4ed6a9950148 drm/i915/dp: Wait for FEC detected status in the sink<br />
bca078d9b963 drm/i915/dp: Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec()<br />
ff9aac6d8dd5 drm/i915/dp_mst: Add missing DSC compression disabling<br />
f27a60c9027b drm/i915/dp: Make sure the DSC PPS SDP is disabled whenever DSC is disabled<br />
644a564e38cc drm/i915/dp_mst: Program the DSC PPS SDP for each stream<br />
dfa14b3b77f9 drm/i915/dp_mst: Add atomic state for all streams on pre-tgl platforms<br />
5b13209046aa drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation<br />
f8ee10079f67 drm/i915/dp: Pass actual BW overhead to m_n calculation<br />
acbf8cf8f789 drm/i915/dp: Specify the FEC overhead as an increment vs. a remainder<br />
8ab47a012cd9 drm/i915/dp_mst: Enable FEC early once it's known DSC is needed<br />
6a73b43d5a03 drm/dp: Add helpers to calculate the link BW overhead<br />
3543c0ae6f14 drm/dp_mst: Add HBLANK expansion quirk for Synaptics MST hubs<br />
2de99e537246 drm/dp: Add DP_HBLANK_EXPANSION_CAPABLE and DSC_PASSTHROUGH_EN DPCD flags<br />
d174b202711f drm/dp_mst: Allow DSC in any Synaptics last branch device<br />
9aaae5e4bdf9 drm/dp_mst: Swap the order of checking root vs. non-root port BW limitations<br />
e0d7271edaf6 drm/dp_mst: Factor out a helper to check the atomic state of a topology manager<br />
7e37e6bedf15 drm/dp_mst: Add helper to determine if an MST port is downstream of another port<br />
c5e975c5cb2b drm/dp_mst: Fix fractional DSC bpp handling<br />
5d58750803d2 drm/i915/dp_mst: Fix race between connector registration and setup</p>

</body>
</html>

--===============5250488181667392112==--
