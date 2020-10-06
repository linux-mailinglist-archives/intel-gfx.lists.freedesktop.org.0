Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E1C28506B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 19:03:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23566E4C9;
	Tue,  6 Oct 2020 17:03:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D54AD6E4C9;
 Tue,  6 Oct 2020 17:03:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CD16CA47E2;
 Tue,  6 Oct 2020 17:03:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Tue, 06 Oct 2020 17:03:31 -0000
Message-ID: <160200381180.18760.10158229968318286818@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201006161722.500256-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20201006161722.500256-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQUxT?=
 =?utf-8?q?A=3A_hda/i915_-_fix_list_corruption_with_concurrent_probes?=
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
Content-Type: multipart/mixed; boundary="===============1634115775=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1634115775==
Content-Type: multipart/alternative;
 boundary="===============1572812455254274968=="

--===============1572812455254274968==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALSA: hda/i915 - fix list corruption with concurrent probes
URL   : https://patchwork.freedesktop.org/series/82414/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9104 -> Patchwork_18639
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/index.html

Known issues
------------

  Here are the changes found in Patchwork_18639 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-bsw-n3050:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][7] ([i915#1982]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@vgem_basic@unload:
    - fi-kbl-x1275:       [DMESG-WARN][9] ([i915#62] / [i915#92] / [i915#95]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@vgem_basic@unload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@vgem_basic@unload.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][11] ([i915#62] / [i915#95]) -> [DMESG-FAIL][12] ([i915#62])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - fi-kbl-x1275:       [DMESG-WARN][13] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][14] ([i915#62] / [i915#92]) +6 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-kbl-x1275:       [DMESG-WARN][15] ([i915#62] / [i915#92]) -> [DMESG-WARN][16] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (45 -> 39)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_9104 -> Patchwork_18639

  CI-20190529: 20190529
  CI_DRM_9104: 9cca7a33b0ebfaa5e0e86098b38eb7508097936a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5802: 0e4fbc60ca5ad6585e642d2ddf8313f3c738426e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18639: b523489332e3ff04e07e8ee8de87a7e0a9d3f4df @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b523489332e3 ALSA: hda/i915 - fix list corruption with concurrent probes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/index.html

--===============1572812455254274968==
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
<tr><td><b>Series:</b></td><td>ALSA: hda/i915 - fix list corruption with concurrent probes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82414/">https://patchwork.freedesktop.org/series/82414/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9104 -&gt; Patchwork_18639</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18639 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-bsw-n3050/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@vgem_basic@unload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@vgem_basic@unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@kms_force_connector_basic@prune-stale-modes.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9104/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18639/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 39)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9104 -&gt; Patchwork_18639</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9104: 9cca7a33b0ebfaa5e0e86098b38eb7508097936a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5802: 0e4fbc60ca5ad6585e642d2ddf8313f3c738426e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18639: b523489332e3ff04e07e8ee8de87a7e0a9d3f4df @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b523489332e3 ALSA: hda/i915 - fix list corruption with concurrent probes</p>

</body>
</html>

--===============1572812455254274968==--

--===============1634115775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1634115775==--
