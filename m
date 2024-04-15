Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D198A5CBA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 23:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A8710E9C4;
	Mon, 15 Apr 2024 21:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E76C610E9C4;
 Mon, 15 Apr 2024 21:14:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1506498085085773800=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Enable_display_support_for_?=
 =?utf-8?q?Battlemage?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Balasubramani Vivekanandan" <balasubramani.vivekanandan@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 15 Apr 2024 21:14:06 -0000
Message-ID: <171321564694.1424052.14250735692566243865@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
In-Reply-To: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
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

--===============1506498085085773800==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Enable display support for Battlemage
URL   : https://patchwork.freedesktop.org/series/132429/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14581 -> Patchwork_132429v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/index.html

Participating hosts (40 -> 35)
------------------------------

  Additional (1): fi-kbl-8809g 
  Missing    (6): fi-kbl-7567u bat-kbl-2 fi-snb-2520m bat-atsm-1 fi-cfl-8109u bat-dg2-11 

Known issues
------------

  Here are the changes found in Patchwork_132429v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][1] ([i915#10462])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@info:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][2] ([i915#1849])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@fbdev@info.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html

  * igt@kms_addfb_basic@bad-pitch-65536:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][5] ([i915#10457]) +1 other test fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html

  * igt@kms_addfb_basic@too-high:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][6] ([i915#10455])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html

  * igt@kms_force_connector_basic@force-edid:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-FAIL][7] ([i915#10454])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-8809g:       NOTRUN -> [DMESG-WARN][8] ([i915#10454]) +1 other test dmesg-warn
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-8809g:       NOTRUN -> [FAIL][9] ([IGT#3])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
    - fi-kbl-8809g:       NOTRUN -> [SKIP][10] +58 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#10454]: https://gitlab.freedesktop.org/drm/intel/issues/10454
  [i915#10455]: https://gitlab.freedesktop.org/drm/intel/issues/10455
  [i915#10457]: https://gitlab.freedesktop.org/drm/intel/issues/10457
  [i915#10462]: https://gitlab.freedesktop.org/drm/intel/issues/10462
  [i915#10698]: https://gitlab.freedesktop.org/drm/intel/issues/10698
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613


Build changes
-------------

  * Linux: CI_DRM_14581 -> Patchwork_132429v1

  CI-20190529: 20190529
  CI_DRM_14581: 1bfe3965a846936d93b6e69385e53f1bd1c3b889 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_132429v1: 1bfe3965a846936d93b6e69385e53f1bd1c3b889 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a9a74fd0d3db drm/xe/bmg: Enable the display support
f6aedec08694 drm/i915/display: perform transient flush
38fe9c18ce21 drm/xe/device: implement transient flush
ed4af6e3fbb3 drm/xe/gt_print: add xe_gt_err_once()
b1ba13fed013 drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
ebd0d96dbd78 Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"
2d7604adfcdb drm/i915/bmg: BMG should re-use MTL's south display logic
6045c39d3217 drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits
081828c17080 drm/i915/xe2hpd: Add max memory bandwidth algorithm
6d11baa59a68 drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before enabling planes
5e3db73be1db drm/i915/xe2hpd: Add display info
b4594af28b45 drm/i915/xe2hpd: update pll values in sync with Bspec
5f63e2074985 drm/i915/xe2hpd: Add support for eDP PLL configuration
e366fb899ef9 drm/i915/xe2hpd: Add new C20 PHY SRAM address
23401c7a8eb2 drm/i915/xe2hpd: Properly disable power in port A
32381c24b73b drm/i915/bmg: Extend DG2 tc check to future
8db752b0d565 drm/i915/xe2hpd: Initial cdclk table
dd8aa865d0df drm/i915/xe2hpd: Skip CCS modifiers
22fb2d0ede3e drm/i915/bmg: Define IS_BATTLEMAGE macro
790f17a1c672 drm/i915/display: Enable RM timeout detection
eef40a14cbd5 drm/xe/display: Lane reversal requires writes to both context lanes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/index.html

--===============1506498085085773800==
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
<tr><td><b>Series:</b></td><td>Enable display support for Battlemage</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132429/">https://patchwork.freedesktop.org/series/132429/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14581 -&gt; Patchwork_132429v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Additional (1): fi-kbl-8809g <br />
  Missing    (6): fi-kbl-7567u bat-kbl-2 fi-snb-2520m bat-atsm-1 fi-cfl-8109u bat-dg2-11 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132429v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10462">i915#10462</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@fbdev@info.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_addfb_basic@bad-pitch-65536.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10457">i915#10457</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_addfb_basic@too-high.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10455">i915#10455</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_force_connector_basic@force-edid.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10454">i915#10454</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10454">i915#10454</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:</p>
<ul>
<li>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132429v1/fi-kbl-8809g/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html">SKIP</a> +58 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14581 -&gt; Patchwork_132429v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14581: 1bfe3965a846936d93b6e69385e53f1bd1c3b889 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7806: 849cd963ce7e8222dcf17cc872d355181fd2c2a2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_132429v1: 1bfe3965a846936d93b6e69385e53f1bd1c3b889 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a9a74fd0d3db drm/xe/bmg: Enable the display support<br />
f6aedec08694 drm/i915/display: perform transient flush<br />
38fe9c18ce21 drm/xe/device: implement transient flush<br />
ed4af6e3fbb3 drm/xe/gt_print: add xe_gt_err_once()<br />
b1ba13fed013 drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5<br />
ebd0d96dbd78 Revert "drm/i915/dgfx: DGFX uses direct VBT pin mapping"<br />
2d7604adfcdb drm/i915/bmg: BMG should re-use MTL's south display logic<br />
6045c39d3217 drm/i915/xe2hpd: Do not program MBUS_DBOX BW credits<br />
081828c17080 drm/i915/xe2hpd: Add max memory bandwidth algorithm<br />
6d11baa59a68 drm/i915/xe2hpd: Configure CHICKEN_MISC_2 before enabling planes<br />
5e3db73be1db drm/i915/xe2hpd: Add display info<br />
b4594af28b45 drm/i915/xe2hpd: update pll values in sync with Bspec<br />
5f63e2074985 drm/i915/xe2hpd: Add support for eDP PLL configuration<br />
e366fb899ef9 drm/i915/xe2hpd: Add new C20 PHY SRAM address<br />
23401c7a8eb2 drm/i915/xe2hpd: Properly disable power in port A<br />
32381c24b73b drm/i915/bmg: Extend DG2 tc check to future<br />
8db752b0d565 drm/i915/xe2hpd: Initial cdclk table<br />
dd8aa865d0df drm/i915/xe2hpd: Skip CCS modifiers<br />
22fb2d0ede3e drm/i915/bmg: Define IS_BATTLEMAGE macro<br />
790f17a1c672 drm/i915/display: Enable RM timeout detection<br />
eef40a14cbd5 drm/xe/display: Lane reversal requires writes to both context lanes</p>

</body>
</html>

--===============1506498085085773800==--
