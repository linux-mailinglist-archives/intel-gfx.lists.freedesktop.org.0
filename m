Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ACA561ECED
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 09:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD6410E05D;
	Mon,  7 Nov 2022 08:31:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3F28310E05D;
 Mon,  7 Nov 2022 08:31:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CC12A0003;
 Mon,  7 Nov 2022 08:31:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7245079070345090433=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Mon, 07 Nov 2022 08:31:28 -0000
Message-ID: <166780988824.17762.17290401084583971321@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20221107072045.628895-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_HDMI2=2E1_FRL?=
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

--===============7245079070345090433==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for HDMI2.1 FRL
URL   : https://patchwork.freedesktop.org/series/110577/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12347 -> Patchwork_110577v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/index.html

Participating hosts (38 -> 28)
------------------------------

  Additional (1): fi-tgl-dsi 
  Missing    (11): bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110577v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@execlists:
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-tgl-dsi/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_110577v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][2] -> [FAIL][3] ([i915#7229])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-ivb-3770:        NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - {fi-tgl-mst}:       [DMESG-WARN][6] ([i915#6434]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-tgl-mst/igt@gem_ctx_create@basic-files.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-tgl-mst/igt@gem_ctx_create@basic-files.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [INCOMPLETE][8] ([i915#2940]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-ivb-3770:        [INCOMPLETE][10] ([i915#3303] / [i915#7122]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#7122]: https://gitlab.freedesktop.org/drm/intel/issues/7122
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456


Build changes
-------------

  * Linux: CI_DRM_12347 -> Patchwork_110577v1

  CI-20190529: 20190529
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110577v1: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1f8a77dadcbc drm/i915/display/mtl: Add functions for FRL trainining state machine
3cc54afb6495 drm/i915/hdmi21/mtl: Add support for sending uevent to user for FRL training failure
a9aea0888e5d drm/i915/hdmi21/mtl: Enable Scrambling only for FRL mode
d759863e9d5a drm/i915/display/mtl: Reset FRL Transcoder config while disabling HDMI
9935c4246d5a drm/i915/display/mtl: Update Transcoder/DDI registers with the frl bits
6869d527b361 drm/i915/display/mtl: Add new members in crtc_state for FRL configuration
ee4c6e3d452a drm/i915/mtl: Add port_data/data width for TRANS_DDI_FUNC and DDI_BUF_CTL
2623ba9decb8 drm/i915/mtl: Add HDMI2.1 bits in PORT_BUF_CTL_1
6af6e41d4107 drm/i915/mtl: Add registers for FRL Link Training
1829bfea90d6 drm/drm_scdc_helper: Add SCDC helper funcs for HDMI2.1
0f5f4ed509b3 drm/i915/hdmi21/mtl: Add new data members for FRL configuration
3345f79cbfc0 drm/i915/hdmi21/mtl: Parse frl max link rate from vbt
383836159254 drm/i915/mtl: Create separate reg file for PICA registers
57420224761d drm/i915/dp: Use the drm helpers for getting max FRL rate
09892add2911 drm/edid: Add helper to get max FRL rate for an HDMI sink

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/index.html

--===============7245079070345090433==
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
<tr><td><b>Series:</b></td><td>Add support for HDMI2.1 FRL</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110577/">https://patchwork.freedesktop.org/series/110577/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12347 -&gt; Patchwork_110577v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/index.html</p>
<h2>Participating hosts (38 -&gt; 28)</h2>
<p>Additional (1): fi-tgl-dsi <br />
  Missing    (11): bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110577v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-tgl-dsi/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110577v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-ivb-3770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-tgl-mst/igt@gem_ctx_create@basic-files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-tgl-mst/igt@gem_ctx_create@basic-files.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12347/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7122">i915#7122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110577v1/fi-ivb-3770/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12347 -&gt; Patchwork_110577v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12347: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7044: dbeb6f92720292f8303182a0e649284cea5b11a6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110577v1: 3aa97a74d622aa26fe79cf4bd819b6a4fd176e90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1f8a77dadcbc drm/i915/display/mtl: Add functions for FRL trainining state machine<br />
3cc54afb6495 drm/i915/hdmi21/mtl: Add support for sending uevent to user for FRL training failure<br />
a9aea0888e5d drm/i915/hdmi21/mtl: Enable Scrambling only for FRL mode<br />
d759863e9d5a drm/i915/display/mtl: Reset FRL Transcoder config while disabling HDMI<br />
9935c4246d5a drm/i915/display/mtl: Update Transcoder/DDI registers with the frl bits<br />
6869d527b361 drm/i915/display/mtl: Add new members in crtc_state for FRL configuration<br />
ee4c6e3d452a drm/i915/mtl: Add port_data/data width for TRANS_DDI_FUNC and DDI_BUF_CTL<br />
2623ba9decb8 drm/i915/mtl: Add HDMI2.1 bits in PORT_BUF_CTL_1<br />
6af6e41d4107 drm/i915/mtl: Add registers for FRL Link Training<br />
1829bfea90d6 drm/drm_scdc_helper: Add SCDC helper funcs for HDMI2.1<br />
0f5f4ed509b3 drm/i915/hdmi21/mtl: Add new data members for FRL configuration<br />
3345f79cbfc0 drm/i915/hdmi21/mtl: Parse frl max link rate from vbt<br />
383836159254 drm/i915/mtl: Create separate reg file for PICA registers<br />
57420224761d drm/i915/dp: Use the drm helpers for getting max FRL rate<br />
09892add2911 drm/edid: Add helper to get max FRL rate for an HDMI sink</p>

</body>
</html>

--===============7245079070345090433==--
