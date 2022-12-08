Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 301AB64757F
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 19:26:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D35110E15E;
	Thu,  8 Dec 2022 18:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C30D010E15E;
 Thu,  8 Dec 2022 18:26:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BCEF8A0BCB;
 Thu,  8 Dec 2022 18:26:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2955264208354642165=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kai Vehmanen" <kai.vehmanen@linux.intel.com>
Date: Thu, 08 Dec 2022 18:26:05 -0000
Message-ID: <167052396573.27413.2640534984800376399@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20221208154358.3848764-1-kai.vehmanen@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQUxT?=
 =?utf-8?q?A=3A_hda/hdmi=3A_i915_keepalive_fixes?=
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

--===============2955264208354642165==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALSA: hda/hdmi: i915 keepalive fixes
URL   : https://patchwork.freedesktop.org/series/111781/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12484 -> Patchwork_111781v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/index.html

Participating hosts (26 -> 26)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_111781v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [PASS][1] -> [FAIL][2] ([i915#6298])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][3] ([i915#2582]) -> [PASS][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/bat-rpls-2/igt@fbdev@read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][5] ([i915#7229]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@i915_module_load@reload:
    - {bat-rpls-2}:       [DMESG-WARN][7] ([i915#6434]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/bat-rpls-2/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/bat-rpls-2/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12484 -> Patchwork_111781v1

  CI-20190529: 20190529
  CI_DRM_12484: 77e03ccd7fc350435bb8b82cb5d5126bea437113 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111781v1: 77e03ccd7fc350435bb8b82cb5d5126bea437113 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

43e74c47eb1b ALSA: hda/hdmi: fix stream-id config keep-alive for rt suspend
8146c5bf0fbd ALSA: hda/hdmi: set default audio parameters for KAE silent-stream
a589063a9cd7 ALSA: hda/hdmi: fix i915 silent stream programming flow

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/index.html

--===============2955264208354642165==
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
<tr><td><b>Series:</b></td><td>ALSA: hda/hdmi: i915 keepalive fixes</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111781/">https://patchwork.freedesktop.org/series/111781/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12484 -&gt; Patchwork_111781v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/index.html</p>
<h2>Participating hosts (26 -&gt; 26)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111781v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12484/bat-rpls-2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6434">i915#6434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111781v1/bat-rpls-2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12484 -&gt; Patchwork_111781v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12484: 77e03ccd7fc350435bb8b82cb5d5126bea437113 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7085: 11af20de3877b23a244b816453bfc41d83591a15 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111781v1: 77e03ccd7fc350435bb8b82cb5d5126bea437113 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>43e74c47eb1b ALSA: hda/hdmi: fix stream-id config keep-alive for rt suspend<br />
8146c5bf0fbd ALSA: hda/hdmi: set default audio parameters for KAE silent-stream<br />
a589063a9cd7 ALSA: hda/hdmi: fix i915 silent stream programming flow</p>

</body>
</html>

--===============2955264208354642165==--
