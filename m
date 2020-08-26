Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DE4325396E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900266EB0E;
	Wed, 26 Aug 2020 20:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339D46EB08;
 Wed, 26 Aug 2020 20:56:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2DF62A3ECB;
 Wed, 26 Aug 2020 20:56:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 26 Aug 2020 20:56:32 -0000
Message-ID: <159847539216.21254.10784633716035222069@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200826190657.18283-1-manasi.d.navare@intel.com>
In-Reply-To: <20200826190657.18283-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915/display/dp=3A_Attach_?=
 =?utf-8?q?and_set_drm_connector_VRR_property_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0919304645=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0919304645==
Content-Type: multipart/alternative;
 boundary="===============9126823658897523752=="

--===============9126823658897523752==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/4] drm/i915/display/dp: Attach and set drm connector VRR property (rev2)
URL   : https://patchwork.freedesktop.org/series/81081/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8930 -> Patchwork_18413
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/index.html

Known issues
------------

  Here are the changes found in Patchwork_18413 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html

  
#### Possible fixes ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-x1275:       [INCOMPLETE][3] ([i915#794]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-x1275/igt@gem_exec_parallel@engines@fds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-x1275/igt@gem_exec_parallel@engines@fds.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [TIMEOUT][5] ([i915#1418]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-tgl-u2/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-u2:          [SKIP][7] ([i915#579]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-tgl-u2:          [INCOMPLETE][9] ([i915#2045]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - {fi-kbl-7560u}:     [WARN][11] ([i915#2100]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-7560u/igt@kms_setmode@basic-clone-single-crtc.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-7560u/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92]) -> [DMESG-WARN][14] ([i915#62] / [i915#92] / [i915#95]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][16] ([i915#62] / [i915#92])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1418]: https://gitlab.freedesktop.org/drm/intel/issues/1418
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2045]: https://gitlab.freedesktop.org/drm/intel/issues/2045
  [i915#2100]: https://gitlab.freedesktop.org/drm/intel/issues/2100
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8930 -> Patchwork_18413

  CI-20190529: 20190529
  CI_DRM_8930: 7e191fed58953c4ed05181997ead358f58b69cf8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5772: 53dfd92f87ecf44251948025533c88f6b889ffeb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18413: d1fbd676554027417452bf196de463c9d26d0390 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d1fbd6765540 drm/i915/display/dp: Do not enable PSR if VRR is enabled
b585409ae795 drm/i915/display/dp: Compute VRR state in atomic_check
e85e5c392c7f drm/i915/display/dp: Add VRR crtc state variables
293d5e059cb3 drm/i915/display/dp: Attach and set drm connector VRR property

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/index.html

--===============9126823658897523752==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/4] drm/i915/display/dp: Attach and set drm connector VRR property (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81081/">https://patchwork.freedesktop.org/series/81081/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8930 -&gt; Patchwork_18413</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18413 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-x1275/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-x1275/igt@gem_exec_parallel@engines@fds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-tgl-u2/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1418">i915#1418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2045">i915#2045</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-tgl-u2/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-7560u/igt@kms_setmode@basic-clone-single-crtc.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2100">i915#2100</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-7560u/igt@kms_setmode@basic-clone-single-crtc.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-x1275/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8930/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18413/fi-kbl-x1275/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8930 -&gt; Patchwork_18413</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8930: 7e191fed58953c4ed05181997ead358f58b69cf8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5772: 53dfd92f87ecf44251948025533c88f6b889ffeb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18413: d1fbd676554027417452bf196de463c9d26d0390 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d1fbd6765540 drm/i915/display/dp: Do not enable PSR if VRR is enabled<br />
b585409ae795 drm/i915/display/dp: Compute VRR state in atomic_check<br />
e85e5c392c7f drm/i915/display/dp: Add VRR crtc state variables<br />
293d5e059cb3 drm/i915/display/dp: Attach and set drm connector VRR property</p>

</body>
</html>

--===============9126823658897523752==--

--===============0919304645==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0919304645==--
