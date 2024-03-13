Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 626D987B252
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 20:54:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0B910E436;
	Wed, 13 Mar 2024 19:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E591810E436;
 Wed, 13 Mar 2024 19:54:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4061790449881579555=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Use_drm=5Fprint?=
 =?utf-8?q?er_more_=28rev8=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Mar 2024 19:54:24 -0000
Message-ID: <171035966493.732671.17347445646102994906@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
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

--===============4061790449881579555==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use drm_printer more (rev8)
URL   : https://patchwork.freedesktop.org/series/129956/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14427 -> Patchwork_129956v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/index.html

Participating hosts (36 -> 32)
------------------------------

  Missing    (4): bat-mtlp-8 bat-arls-2 bat-jsl-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_129956v8 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [DMESG-WARN][1] ([i915#5591]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14427/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591


Build changes
-------------

  * Linux: CI_DRM_14427 -> Patchwork_129956v8

  CI-20190529: 20190529
  CI_DRM_14427: ca050304d54e3a0f96bf148053f738d6b62de43a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7759: 7759
  Patchwork_129956v8: ca050304d54e3a0f96bf148053f738d6b62de43a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

35d08f7b3483 drm/i915: Create the printer only once in intel_pipe_config_compare()
05191b28fdd9 drm/i915: Reuse pipe_config_mismatch() more
389867c7eb98 drm/i915: Relocate pipe_config_mismatch()
c90afbf4b258 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled
8128cf631a38 drm/i915: Convert the remaining state dump to drm_printer
75f1edd1522c drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()
95e75ee74125 drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer
b1b3a569e4a1 drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer
01ff1c63d3b1 drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer
2d81de99c774 drm/i915: Include CRTC info in VSC SDP mismatch prints
7d86f357df10 drm/i915: Include CRTC info in infoframe mismatch prints
b73f4d008ef2 drm/i915: Indicate which pipe failed the fastset check overall

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/index.html

--===============4061790449881579555==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use drm_printer more (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129956/">https://patchwork.freedesktop.org/series/129956/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14427 -&gt; Patchwork_129956v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/index.html</p>
<h2>Participating hosts (36 -&gt; 32)</h2>
<p>Missing    (4): bat-mtlp-8 bat-arls-2 bat-jsl-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129956v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14427/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129956v8/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14427 -&gt; Patchwork_129956v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14427: ca050304d54e3a0f96bf148053f738d6b62de43a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7759: 7759<br />
  Patchwork_129956v8: ca050304d54e3a0f96bf148053f738d6b62de43a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>35d08f7b3483 drm/i915: Create the printer only once in intel_pipe_config_compare()<br />
05191b28fdd9 drm/i915: Reuse pipe_config_mismatch() more<br />
389867c7eb98 drm/i915: Relocate pipe_config_mismatch()<br />
c90afbf4b258 drm/i915: Skip intel_crtc_state_dump() if debugs aren't enabled<br />
8128cf631a38 drm/i915: Convert the remaining state dump to drm_printer<br />
75f1edd1522c drm/i915: Use drm_printer more extensively in intel_crtc_state_dump()<br />
95e75ee74125 drm/i915: Convert intel_dpll_dump_hw_state() to drm_printer<br />
b1b3a569e4a1 drm/i915: Convert pipe_config_buffer_mismatch() to drm_printer<br />
01ff1c63d3b1 drm/i915: Convert pipe_config_infoframe_mismatch() to drm_printer<br />
2d81de99c774 drm/i915: Include CRTC info in VSC SDP mismatch prints<br />
7d86f357df10 drm/i915: Include CRTC info in infoframe mismatch prints<br />
b73f4d008ef2 drm/i915: Indicate which pipe failed the fastset check overall</p>

</body>
</html>

--===============4061790449881579555==--
