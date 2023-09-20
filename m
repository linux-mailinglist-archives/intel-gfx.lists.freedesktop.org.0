Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2C07A8954
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 18:19:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D666C10E0D6;
	Wed, 20 Sep 2023 16:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6419910E0D6;
 Wed, 20 Sep 2023 16:19:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5EA99AADF3;
 Wed, 20 Sep 2023 16:19:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1757962309718611732=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Wed, 20 Sep 2023 16:19:33 -0000
Message-ID: <169522677336.6464.7077360842053541986@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230919192128.2045154-1-lucas.demarchi@intel.com>
In-Reply-To: <20230919192128.2045154-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C01/22=5D_drm/i915/xelpdp=3A_Add_XE=5F?=
 =?utf-8?q?LPDP=5FFEATURES_=28rev2=29?=
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

--===============1757962309718611732==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES (rev2)
URL   : https://patchwork.freedesktop.org/series/123938/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13656 -> Patchwork_123938v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123938v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123938v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/index.html

Participating hosts (40 -> 39)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): fi-hsw-4770 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123938v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@perf:
    - bat-jsl-3:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/bat-jsl-3/igt@i915_selftest@live@perf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/bat-jsl-3/igt@i915_selftest@live@perf.html

  
Known issues
------------

  Here are the changes found in Patchwork_123938v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4] ([i915#5334] / [i915#7872])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][5] -> [ABORT][6] ([i915#9262])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [PASS][7] -> [FAIL][8] ([IGT#3] / [i915#6121])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][9] ([fdo#109271]) +31 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][10] ([i915#5334]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][12] ([i915#8668]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262


Build changes
-------------

  * Linux: CI_DRM_13656 -> Patchwork_123938v2

  CI-20190529: 20190529
  CI_DRM_13656: c6b12d79c836cb83dc554bfefa0f5dc65e051197 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123938v2: c6b12d79c836cb83dc554bfefa0f5dc65e051197 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f209ae6b7635 drm/i915/lnl: Start using CDCLK through PLL
e0fa2cffd49a drm/i915/xe2lpd: Add DC state support
aee3da4bc8f2 drm/i915/xe2lpd: Add display power well
aa0b61451036 drm/i915/lnl: Add CDCLK table
04d4ce9e2e44 drm/i915/lnl: Add gmbus/ddc support
a37c88870bd1 drm/i915/xe2lpd: Extend Wa_15010685871
229557c85c62 drm/i915/xe2lpd: Add support for HPD
e526511bc419 drm/i915/xe2lpd: Enable odd size and panning for planar yuv
2e09958878c9 drm/i915/xe2lpd: Read pin assignment from IOM
aae8c80146a8 drm/i915/xe2lpd: Handle port AUX interrupts
4d4e706ca1d0 drm/i915/xe2lpd: Re-order DP AUX regs
ffc90fc1228d drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs
bcc7623dc490 drm/i915/display: Fix style and conventions for DP AUX regs
925f6e547809 drm/i915/xe2lpd: Register DE_RRMR has been removed
a9087ad35b3e drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST
2221ba654346 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation
bdaa05bb534f drm/i915/xe2lpd: Add fake PCH
4e308bc19a39 drm/i915: Re-order if/else ladder in intel_detect_pch()
4f1126a7f5ed drm/i915/display: Remove FBC capability from fused off pipes
42e1dffed0cc drm/i915/xe2lpd: FBC is now supported on all pipes
c4f6ef242ddd drm/i915/lnl: Add display definitions
be391cbd1fb1 drm/i915/xelpdp: Add XE_LPDP_FEATURES

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/index.html

--===============1757962309718611732==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,01/22] drm/i915/xelpdp: Add XE_LPDP_FEATURES (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123938/">https://patchwork.freedesktop.org/series/123938/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13656 -&gt; Patchwork_123938v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123938v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123938v2, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): fi-hsw-4770 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123938v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>bat-jsl-3:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/bat-jsl-3/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/bat-jsl-3/igt@i915_selftest@live@perf.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123938v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13656/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123938v2/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13656 -&gt; Patchwork_123938v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13656: c6b12d79c836cb83dc554bfefa0f5dc65e051197 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123938v2: c6b12d79c836cb83dc554bfefa0f5dc65e051197 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f209ae6b7635 drm/i915/lnl: Start using CDCLK through PLL<br />
e0fa2cffd49a drm/i915/xe2lpd: Add DC state support<br />
aee3da4bc8f2 drm/i915/xe2lpd: Add display power well<br />
aa0b61451036 drm/i915/lnl: Add CDCLK table<br />
04d4ce9e2e44 drm/i915/lnl: Add gmbus/ddc support<br />
a37c88870bd1 drm/i915/xe2lpd: Extend Wa_15010685871<br />
229557c85c62 drm/i915/xe2lpd: Add support for HPD<br />
e526511bc419 drm/i915/xe2lpd: Enable odd size and panning for planar yuv<br />
2e09958878c9 drm/i915/xe2lpd: Read pin assignment from IOM<br />
aae8c80146a8 drm/i915/xe2lpd: Handle port AUX interrupts<br />
4d4e706ca1d0 drm/i915/xe2lpd: Re-order DP AUX regs<br />
ffc90fc1228d drm/i915/display: Use _PICK_EVEN_2RANGES() in DP AUX regs<br />
bcc7623dc490 drm/i915/display: Fix style and conventions for DP AUX regs<br />
925f6e547809 drm/i915/xe2lpd: Register DE_RRMR has been removed<br />
a9087ad35b3e drm/i915/xe2lpd: Don't try to program PLANE_AUX_DIST<br />
2221ba654346 drm/i915/xe2lpd: Treat cursor plane as regular plane for DDB allocation<br />
bdaa05bb534f drm/i915/xe2lpd: Add fake PCH<br />
4e308bc19a39 drm/i915: Re-order if/else ladder in intel_detect_pch()<br />
4f1126a7f5ed drm/i915/display: Remove FBC capability from fused off pipes<br />
42e1dffed0cc drm/i915/xe2lpd: FBC is now supported on all pipes<br />
c4f6ef242ddd drm/i915/lnl: Add display definitions<br />
be391cbd1fb1 drm/i915/xelpdp: Add XE_LPDP_FEATURES</p>

</body>
</html>

--===============1757962309718611732==--
