Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 276AB4F4E4A
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 03:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6928010E391;
	Wed,  6 Apr 2022 01:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 398F410E391;
 Wed,  6 Apr 2022 01:45:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25B08A01BB;
 Wed,  6 Apr 2022 01:45:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5083914204104645196=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Wed, 06 Apr 2022 01:45:04 -0000
Message-ID: <164920950414.5450.7176283993737761747@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20220405210335.3434130-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZmJj?=
 =?utf-8?q?on_cleanups?=
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

--===============5083914204104645196==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fbcon cleanups
URL   : https://patchwork.freedesktop.org/series/102223/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11459 -> Patchwork_22791
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/index.html

Participating hosts (35 -> 33)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_22791 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#2373] / [i915#4983])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#5341])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][6] ([fdo#109271]) +57 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@kms_flip@basic-flip-vs-dpms@a-edp1:
    - fi-tgl-u2:          [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341


Build changes
-------------

  * Linux: CI_DRM_11459 -> Patchwork_22791

  CI-20190529: 20190529
  CI_DRM_11459: b9b1e96b1d762651d6a2e60b26ddf058e9789942 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6411: 987678ecf2d6930981af93f719e4575c91886959 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22791: f1e4af1a8fabce77d34cc6251771f8cd5d0fa321 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f1e4af1a8fab fbcon: Maintain a private array of fb_info
dacecd8d6968 fbcon: untangle fbcon_exit
16f2edb46f32 fbcon: Move more code into fbcon_release
5637778fde24 fbcon: Move console_lock for register/unlink/unregister
c1ac96227f4e fbcon: Consistently protect deferred_takeover with console_lock()
7cb2d0470518 fbcon: use lock_fb_info in fbcon_open/release
a3b1ce9ac765 fbcon: move more common code into fb_open()
cb066ee6b08c fbcon: Ditch error handling for con2fb_release_oldinfo
d251e9f07617 fbcon: Extract fbcon_open/release helpers
941ec083d94c fb: Delete fb_info->queue
25853882a8c5 fbcon: Replace FBCON_FLAGS_INIT with a boolean
6f8455180e38 fbcon: Use delayed work for cursor
dba10a484a39 fbdev/sysfs: Fix locking
e6031facb28e fbcon: delete delayed loading code
6de39807b693 fbcon: Introduce wrapper for console->fb_info lookup
d499915380db fbcon: Move fbcon_bmove(_rec) functions
dfa32370def4 fbcon: delete a few unneeded forward decl

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/index.html

--===============5083914204104645196==
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
<tr><td><b>Series:</b></td><td>fbcon cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/102223/">https://patchwork.freedesktop.org/series/102223/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11459 -&gt; Patchwork_22791</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (3): fi-kbl-soraka fi-bsw-cyan fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22791 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-rkl-guc/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-pnv-d510/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_flip@basic-flip-vs-dpms@a-edp1:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11459/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22791/fi-tgl-u2/igt@kms_flip@basic-flip-vs-dpms@a-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11459 -&gt; Patchwork_22791</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11459: b9b1e96b1d762651d6a2e60b26ddf058e9789942 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6411: 987678ecf2d6930981af93f719e4575c91886959 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22791: f1e4af1a8fabce77d34cc6251771f8cd5d0fa321 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f1e4af1a8fab fbcon: Maintain a private array of fb_info<br />
dacecd8d6968 fbcon: untangle fbcon_exit<br />
16f2edb46f32 fbcon: Move more code into fbcon_release<br />
5637778fde24 fbcon: Move console_lock for register/unlink/unregister<br />
c1ac96227f4e fbcon: Consistently protect deferred_takeover with console_lock()<br />
7cb2d0470518 fbcon: use lock_fb_info in fbcon_open/release<br />
a3b1ce9ac765 fbcon: move more common code into fb_open()<br />
cb066ee6b08c fbcon: Ditch error handling for con2fb_release_oldinfo<br />
d251e9f07617 fbcon: Extract fbcon_open/release helpers<br />
941ec083d94c fb: Delete fb_info-&gt;queue<br />
25853882a8c5 fbcon: Replace FBCON_FLAGS_INIT with a boolean<br />
6f8455180e38 fbcon: Use delayed work for cursor<br />
dba10a484a39 fbdev/sysfs: Fix locking<br />
e6031facb28e fbcon: delete delayed loading code<br />
6de39807b693 fbcon: Introduce wrapper for console-&gt;fb_info lookup<br />
d499915380db fbcon: Move fbcon_bmove(_rec) functions<br />
dfa32370def4 fbcon: delete a few unneeded forward decl</p>

</body>
</html>

--===============5083914204104645196==--
