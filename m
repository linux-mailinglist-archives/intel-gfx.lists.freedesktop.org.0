Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F57B3F0CF6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 22:49:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B706E8C9;
	Wed, 18 Aug 2021 20:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 219C56E8C7;
 Wed, 18 Aug 2021 20:49:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 16FA9A47E1;
 Wed, 18 Aug 2021 20:49:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1628057648701076292=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 20:49:54 -0000
Message-ID: <162931979406.16675.11975572222917616578@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1629310010.git.jani.nikula@intel.com>
In-Reply-To: <cover.1629310010.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_dp_2=2E0_enabling_prep_work?=
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

--===============1628057648701076292==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: dp 2.0 enabling prep work
URL   : https://patchwork.freedesktop.org/series/93800/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10497 -> Patchwork_20850
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/index.html

Known issues
------------

  Here are the changes found in Patchwork_20850 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271]) +6 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][3] ([i915#1602] / [i915#2029])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [DMESG-WARN][4] ([i915#3925]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10497/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][6] ([i915#579]) -> [SKIP][7] ([fdo#109271])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10497/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (34 -> 33)
------------------------------

  Missing    (1): fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_10497 -> Patchwork_20850

  CI-20190529: 20190529
  CI_DRM_10497: c50a8ea72915f1e3972d011690a423bafbee7a58 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20850: f619e6bfa217e2f33dfb31e0da1262cae8c9209f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f619e6bfa217 drm/i915/dg2: update link training for 128b/132b
44526b8ce97b drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH, LOW} for 128b/132b
73b7a835f7b3 drm/i915/dg2: use 128b/132b transcoder DDI mode
753442fe1e74 drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0
76465b4d3708 drm/i915/dp: select 128b/132b channel encoding for UHBR rates
7d3f86063b7b drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates
9cf6be09b318 drm/i915/dp: add max data rate calculation for UHBR rates
310bd160b5df drm/i915/dg2: add DG2 UHBR source rates
09dd0b1c53f5 drm/i915/dg2: add TRANS_DP2_VFREQHIGH and TRANS_DP2_VFREQLOW
2ae1f5cd9112 drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode
bd393efa3f8d drm/i915/dg2: add TRANS_DP2_CTL register definition
4d03932add3c drm/i915/dp: read sink UHBR rates
2c801bbdc46b drm/i915/dp: use actual link rate values in struct link_config_limits
348fff506827 drm/dp: add helper for extracting adjust 128b/132b TX FFE preset
176cd12c2a2e drm/dp: add LTTPR DP 2.0 DPCD addresses
15972d4824f6 drm/dp: use more of the extended receiver cap
098494421cf3 drm/dp: add DP 2.0 UHBR link rate and bw code conversions

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/index.html

--===============1628057648701076292==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: dp 2.0 enabling prep work</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93800/">https://patchwork.freedesktop.org/series/93800/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10497 -&gt; Patchwork_20850</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20850 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-kbl-soraka/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10497/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3925">i915#3925</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10497/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20850/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (34 -&gt; 33)</h2>
<p>Missing    (1): fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10497 -&gt; Patchwork_20850</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10497: c50a8ea72915f1e3972d011690a423bafbee7a58 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6178: 146260200f9a6d4536e48a195e2ab49a07d4f0c1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20850: f619e6bfa217e2f33dfb31e0da1262cae8c9209f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f619e6bfa217 drm/i915/dg2: update link training for 128b/132b<br />
44526b8ce97b drm/i915/dg2: configure TRANS_DP2_VFREQ{HIGH, LOW} for 128b/132b<br />
73b7a835f7b3 drm/i915/dg2: use 128b/132b transcoder DDI mode<br />
753442fe1e74 drm/i915/dg2: configure TRANS_DP2_CTL for DP 2.0<br />
76465b4d3708 drm/i915/dp: select 128b/132b channel encoding for UHBR rates<br />
7d3f86063b7b drm/i915/dp: use 128b/132b TPS2 for UHBR+ link rates<br />
9cf6be09b318 drm/i915/dp: add max data rate calculation for UHBR rates<br />
310bd160b5df drm/i915/dg2: add DG2 UHBR source rates<br />
09dd0b1c53f5 drm/i915/dg2: add TRANS_DP2_VFREQHIGH and TRANS_DP2_VFREQLOW<br />
2ae1f5cd9112 drm/i915/dg2: add DG2+ TRANS_DDI_FUNC_CTL DP 2.0 128b/132b mode<br />
bd393efa3f8d drm/i915/dg2: add TRANS_DP2_CTL register definition<br />
4d03932add3c drm/i915/dp: read sink UHBR rates<br />
2c801bbdc46b drm/i915/dp: use actual link rate values in struct link_config_limits<br />
348fff506827 drm/dp: add helper for extracting adjust 128b/132b TX FFE preset<br />
176cd12c2a2e drm/dp: add LTTPR DP 2.0 DPCD addresses<br />
15972d4824f6 drm/dp: use more of the extended receiver cap<br />
098494421cf3 drm/dp: add DP 2.0 UHBR link rate and bw code conversions</p>

</body>
</html>

--===============1628057648701076292==--
