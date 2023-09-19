Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA667A6EDF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 00:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C00110E417;
	Tue, 19 Sep 2023 22:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEDEF10E417;
 Tue, 19 Sep 2023 22:55:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2FBEA00CC;
 Tue, 19 Sep 2023 22:55:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4274270300014655157=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Tue, 19 Sep 2023 22:55:20 -0000
Message-ID: <169516412079.3669.5785809221528675909@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/22=5D_drm/i915/xelpdp=3A_Add_XE=5F?=
 =?utf-8?q?LPDP=5FFEATURES?=
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

--===============4274270300014655157==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES
URL   : https://patchwork.freedesktop.org/series/123938/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13652 -> Patchwork_123938v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/index.html

Participating hosts (39 -> 36)
------------------------------

  Missing    (3): bat-dg2-8 fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_123938v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][1] -> [ABORT][2] ([i915#7911] / [i915#7913])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][3] -> [FAIL][4] ([IGT#3] / [i915#6121])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][5] ([i915#3546]) +2 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:
    - bat-mtlp-8:         [DMESG-WARN][6] ([i915#1982]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/bat-mtlp-8/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/bat-mtlp-8/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][8] ([i915#8668]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13652 -> Patchwork_123938v1

  CI-20190529: 20190529
  CI_DRM_13652: 7d06607b560622af65f7c9f433bbe269751befd2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123938v1: 7d06607b560622af65f7c9f433bbe269751befd2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a9301ac099e5 drm/i915/lnl: Start using CDCLK through PLL
dc6932310cd2 drm/i915/xe2lpd: Add DC state support
6245bc87a513 drm/i915/xe2lpd: Add display power well
a0e0ac33c8b7 drm/i915/lnl: Add CDCLK table
c85955f170d6 drm/i915/lnl: Add gmbus/ddc support
b5dd34328564 drm/i915/xe2lpd: Extend Wa_15010685871
060bcd4c0d50 drm/i915/xe2lpd: Add support for HPD
8068eaf30ac9 drm/i915/xe2lpd: Enable odd size and panning for planar yuv
6f4efcabe798 drm/i915/xe2lpd: Read pin assignment from IOM
9664c39e6ebc drm/i915/xe2lpd: Handle port AUX interrupts
a98524269aac drm/i915/xe2lpd: Re-order DP AUX regs
698019560b6d drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
5b41f8b753be drm/i915/display: Fix style and conventions for DP AUX regs
dda6a3ae6695 drm/i915/xe2lpd: Register DE_RRMR has been removed
807f79d228e6 drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
efb4e62897e6 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
487f9839f161 drm/i915/xe2lpd: Add fake PCH
81f6397e9a02 drm/i915: Re-order if/else ladder in intel_detect_pch()
94d5b983d831 drm/i915/display: Remove FBC capability from fused off pipes
90942a03cc88 drm/i915/xe2lpd: FBC is now supported on all pipes
0c3645f8e74b drm/i915/lnl: Add display definitions
6ed07748433c drm/i915/xelpdp: Add XE_LPDP_FEATURES

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/index.html

--===============4274270300014655157==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123938/">https://patchwork.freedesktop.org/series/123938/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13652 -&gt; Patchwork_123938v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/index.html</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Missing    (3): bat-dg2-8 fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123938v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/bat-adlp-9/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +2 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/bat-mtlp-8/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/bat-mtlp-8/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13652 -&gt; Patchwork_123938v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13652: 7d06607b560622af65f7c9f433bbe269751befd2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123938v1: 7d06607b560622af65f7c9f433bbe269751befd2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a9301ac099e5 drm/i915/lnl: Start using CDCLK through PLL<br />
dc6932310cd2 drm/i915/xe2lpd: Add DC state support<br />
6245bc87a513 drm/i915/xe2lpd: Add display power well<br />
a0e0ac33c8b7 drm/i915/lnl: Add CDCLK table<br />
c85955f170d6 drm/i915/lnl: Add gmbus/ddc support<br />
b5dd34328564 drm/i915/xe2lpd: Extend Wa_15010685871<br />
060bcd4c0d50 drm/i915/xe2lpd: Add support for HPD<br />
8068eaf30ac9 drm/i915/xe2lpd: Enable odd size and panning for planar yuv<br />
6f4efcabe798 drm/i915/xe2lpd: Read pin assignment from IOM<br />
9664c39e6ebc drm/i915/xe2lpd: Handle port AUX interrupts<br />
a98524269aac drm/i915/xe2lpd: Re-order DP AUX regs<br />
698019560b6d drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs<br />
5b41f8b753be drm/i915/display: Fix style and conventions for DP AUX regs<br />
dda6a3ae6695 drm/i915/xe2lpd: Register DE_RRMR has been removed<br />
807f79d228e6 drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST<br />
efb4e62897e6 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation<br />
487f9839f161 drm/i915/xe2lpd: Add fake PCH<br />
81f6397e9a02 drm/i915: Re-order if/else ladder in intel_detect_pch()<br />
94d5b983d831 drm/i915/display: Remove FBC capability from fused off pipes<br />
90942a03cc88 drm/i915/xe2lpd: FBC is now supported on all pipes<br />
0c3645f8e74b drm/i915/lnl: Add display definitions<br />
6ed07748433c drm/i915/xelpdp: Add XE_LPDP_FEATURES</p>

</body>
</html>

--===============4274270300014655157==--
