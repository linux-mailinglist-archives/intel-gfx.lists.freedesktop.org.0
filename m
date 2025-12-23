Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5BBCD9FBC
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Dec 2025 17:36:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A78A10E157;
	Tue, 23 Dec 2025 16:36:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8293310E0C3;
 Tue, 23 Dec 2025 16:36:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5111209307349298814=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/vdsc=3A_Account_?=
 =?utf-8?q?for_DSC_slice_overhead_in_intel=5Fvdsc=5Fmin=5Fcdclk=28=29_=28rev?=
 =?utf-8?q?2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Dec 2025 16:36:08 -0000
Message-ID: <176650776853.114937.14868889205563839215@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20251223150826.2591182-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251223150826.2591182-1-ankit.k.nautiyal@intel.com>
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

--===============5111209307349298814==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vdsc: Account for DSC slice overhead in intel_vdsc_min_cdclk() (rev2)
URL   : https://patchwork.freedesktop.org/series/159355/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17734 -> Patchwork_159355v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (1): fi-elk-e7500 
  Missing    (2): bat-dg2-13 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_159355v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_debugfs@read-all-entries:
    - bat-adlp-6:         [PASS][1] -> [DMESG-WARN][2] ([i915#13890])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17734/bat-adlp-6/igt@core_debugfs@read-all-entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/bat-adlp-6/igt@core_debugfs@read-all-entries.html

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [PASS][3] -> [INCOMPLETE][4] ([i915#15486]) +1 other test incomplete
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17734/fi-hsw-4770/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/fi-hsw-4770/igt@i915_selftest@live.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - fi-elk-e7500:       NOTRUN -> [SKIP][5] +26 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - bat-adlp-6:         [DMESG-WARN][6] ([i915#13890]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17734/bat-adlp-6/igt@core_auth@basic-auth.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/bat-adlp-6/igt@core_auth@basic-auth.html

  
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
  [i915#15486]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15486


Build changes
-------------

  * Linux: CI_DRM_17734 -> Patchwork_159355v2

  CI-20190529: 20190529
  CI_DRM_17734: 98fdf8a438c3a1d9de8d5804cdcda94e097d53a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8677: 8677
  Patchwork_159355v2: 98fdf8a438c3a1d9de8d5804cdcda94e097d53a0 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/index.html

--===============5111209307349298814==
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
<tr><td><b>Series:</b></td><td>drm/i915/vdsc: Account for DSC slice overhead in intel_vdsc_min_cdclk() (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/159355/">https://patchwork.freedesktop.org/series/159355/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17734 -&gt; Patchwork_159355v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (1): fi-elk-e7500 <br />
  Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_159355v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_debugfs@read-all-entries:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17734/bat-adlp-6/igt@core_debugfs@read-all-entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/bat-adlp-6/igt@core_debugfs@read-all-entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17734/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/fi-hsw-4770/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15486">i915#15486</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> +26 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_auth@basic-auth:<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17734/bat-adlp-6/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_159355v2/bat-adlp-6/igt@core_auth@basic-auth.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17734 -&gt; Patchwork_159355v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17734: 98fdf8a438c3a1d9de8d5804cdcda94e097d53a0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8677: 8677<br />
  Patchwork_159355v2: 98fdf8a438c3a1d9de8d5804cdcda94e097d53a0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5111209307349298814==--
