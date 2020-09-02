Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 874A625AE14
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Sep 2020 16:59:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1F3D6E922;
	Wed,  2 Sep 2020 14:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0C27E6E922;
 Wed,  2 Sep 2020 14:59:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05040A47E2;
 Wed,  2 Sep 2020 14:59:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 02 Sep 2020 14:59:00 -0000
Message-ID: <159905874001.24288.13274074534241939575@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1599056955.git.jani.nikula@intel.com>
In-Reply-To: <cover.1599056955.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_modeset_probe_cleanup?=
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
Content-Type: multipart/mixed; boundary="===============1479766152=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1479766152==
Content-Type: multipart/alternative;
 boundary="===============1043235754211256799=="

--===============1043235754211256799==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: modeset probe cleanup
URL   : https://patchwork.freedesktop.org/series/81267/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8955 -> Patchwork_18435
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html

Known issues
------------

  Here are the changes found in Patchwork_18435 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@contexts:
    - fi-cfl-8109u:       [PASS][1] -> [INCOMPLETE][2] ([i915#2398])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-bxt-dsi:         [DMESG-WARN][5] ([i915#1635] / [i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-bxt-dsi/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-bxt-dsi/igt@i915_module_load@reload.html
    - fi-tgl-u2:          [TIMEOUT][7] ([i915#1418]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-tgl-u2/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-byt-j1900:       [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html
    - fi-bsw-kefka:       [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-u2:          [SKIP][13] ([i915#579]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [INCOMPLETE][15] ([i915#2276]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-icl-y/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-icl-y/igt@i915_selftest@live@execlists.html

  
  [i915#1418]: https://gitlab.freedesktop.org/drm/intel/issues/1418
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2276]: https://gitlab.freedesktop.org/drm/intel/issues/2276
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (38 -> 33)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8955 -> Patchwork_18435

  CI-20190529: 20190529
  CI_DRM_8955: 744c2c7c60ac2fbe7fae0c25c01a451d41d207b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5776: 46e4315096bcaa2465c82c547274627365b1a69e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18435: 0ff068b7cefd2ce745f26f578b6a46bfada75358 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0ff068b7cefd drm/i915: remove the extra modeset init layer
7cd1162fcd5f drm/i915: split out intel_modeset_driver_remove_nogem() and simplify
c08fc8f7c7ed drm/i915: move more display related probe to intel_modeset_init_noirq()
af603150eba7 drm/i915: split intel_modeset_init() pre/post gem init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html

--===============1043235754211256799==
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
<tr><td><b>Series:</b></td><td>drm/i915: modeset probe cleanup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81267/">https://patchwork.freedesktop.org/series/81267/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8955 -&gt; Patchwork_18435</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18435 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-bxt-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-bxt-dsi/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-tgl-u2/igt@i915_module_load@reload.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1418">i915#1418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-byt-j1900/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8955/fi-icl-y/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2276">i915#2276</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18435/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8955 -&gt; Patchwork_18435</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8955: 744c2c7c60ac2fbe7fae0c25c01a451d41d207b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5776: 46e4315096bcaa2465c82c547274627365b1a69e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18435: 0ff068b7cefd2ce745f26f578b6a46bfada75358 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0ff068b7cefd drm/i915: remove the extra modeset init layer<br />
7cd1162fcd5f drm/i915: split out intel_modeset_driver_remove_nogem() and simplify<br />
c08fc8f7c7ed drm/i915: move more display related probe to intel_modeset_init_noirq()<br />
af603150eba7 drm/i915: split intel_modeset_init() pre/post gem init</p>

</body>
</html>

--===============1043235754211256799==--

--===============1479766152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1479766152==--
