Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 657DD7A1CDA
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 12:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D756610E61A;
	Fri, 15 Sep 2023 10:56:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D3E910E619;
 Fri, 15 Sep 2023 10:56:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3856DAADD7;
 Fri, 15 Sep 2023 10:56:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4965462340339469790=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Fri, 15 Sep 2023 10:56:52 -0000
Message-ID: <169477541219.32042.1528380910931032965@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230915083412.4572-1-nirmoy.das@intel.com>
In-Reply-To: <20230915083412.4572-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXBk?=
 =?utf-8?q?ate_GGTT_with_MI=5FUPDATE=5FGTT_on_MTL_=28rev5=29?=
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

--===============4965462340339469790==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Update GGTT with MI_UPDATE_GTT on MTL (rev5)
URL   : https://patchwork.freedesktop.org/series/123329/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13636 -> Patchwork_123329v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/index.html

Participating hosts (38 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): fi-kbl-8809g bat-adlp-6 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_123329v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg1-5:          [PASS][1] -> [ABORT][2] ([i915#4983])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-dg1-5/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-dg1-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-hsw-4770:        NOTRUN -> [SKIP][3] ([fdo#109271]) +12 other tests skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][4] ([i915#1845]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:
    - fi-hsw-4770:        NOTRUN -> [DMESG-WARN][5] ([i915#8841]) +6 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +31 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#1072]) +3 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - bat-mtlp-8:         [DMESG-WARN][8] ([i915#1982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-mtlp-8/igt@i915_module_load@reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-mtlp-8/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [TIMEOUT][10] ([i915#6794] / [i915#7392]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-rpls-1/igt@i915_selftest@live@mman.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [WARN][12] ([i915#8747]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][14] ([IGT#3] / [i915#6121]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841


Build changes
-------------

  * IGT: IGT_7489 -> IGTPW_9792
  * Linux: CI_DRM_13636 -> Patchwork_123329v5

  CI-20190529: 20190529
  CI_DRM_13636: 371f885605df83e5fd5680580b5bda86a10e7f7c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_9792: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_9792/index.html
  IGT_7489: c31111635650e76263faee031292290b1a393f2a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123329v5: 371f885605df83e5fd5680580b5bda86a10e7f7c @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

51d129f1e0f3 drm/i915: Enable GGTT updates with binder in MTL
58aa8d4df781 drm/i915: Toggle binder context ready status
74f093686f30 drm/i915: Implement GGTT update method with MI_UPDATE_GTT
9d0930286601 drm/i915: Parameterize binder context creation
545a6a2efe42 drm/i915: Implement for_each_sgt_daddr_next
046adf7faa0d drm/i915: Create a kernel context for GGTT updates
03119b219f67 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/index.html

--===============4965462340339469790==
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
<tr><td><b>Series:</b></td><td>Update GGTT with MI_UPDATE_GTT on MTL (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123329/">https://patchwork.freedesktop.org/series/123329/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13636 -&gt; Patchwork_123329v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): fi-kbl-8809g bat-adlp-6 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123329v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-dg1-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-dg1-5/igt@i915_selftest@live@workarounds.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-hsw-4770/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-hsw-4770/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-vga-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +6 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-mtlp-8/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-mtlp-8/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13636/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123329v5/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7489 -&gt; IGTPW_9792</li>
<li>Linux: CI_DRM_13636 -&gt; Patchwork_123329v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13636: 371f885605df83e5fd5680580b5bda86a10e7f7c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_9792: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_9792/index.html<br />
  IGT_7489: c31111635650e76263faee031292290b1a393f2a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123329v5: 371f885605df83e5fd5680580b5bda86a10e7f7c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>51d129f1e0f3 drm/i915: Enable GGTT updates with binder in MTL<br />
58aa8d4df781 drm/i915: Toggle binder context ready status<br />
74f093686f30 drm/i915: Implement GGTT update method with MI_UPDATE_GTT<br />
9d0930286601 drm/i915: Parameterize binder context creation<br />
545a6a2efe42 drm/i915: Implement for_each_sgt_daddr_next<br />
046adf7faa0d drm/i915: Create a kernel context for GGTT updates<br />
03119b219f67 drm/i915: Lift runtime-pm acquire callbacks out of intel_wakeref.mutex</p>

</body>
</html>

--===============4965462340339469790==--
