Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C5D61898B
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 21:27:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4AF10E064;
	Thu,  3 Nov 2022 20:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7863E10E03C;
 Thu,  3 Nov 2022 20:27:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FA7BAADD7;
 Thu,  3 Nov 2022 20:27:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1956702252582734415=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 03 Nov 2022 20:27:27 -0000
Message-ID: <166750724741.9191.2917770313579566358@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221103151446.2638-1-tzimmermann@suse.de>
In-Reply-To: <20221103151446.2638-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/fb-helper=3A_Untangle_fbdev_emulation_and_helpers_=28rev3=29?=
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

--===============1956702252582734415==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/fb-helper: Untangle fbdev emulation and helpers (rev3)
URL   : https://patchwork.freedesktop.org/series/109942/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12339 -> Patchwork_109942v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/index.html

Participating hosts (40 -> 28)
------------------------------

  Missing    (12): fi-hsw-4200u bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_109942v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][1] -> [INCOMPLETE][2] ([i915#3303] / [i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-bdw-5557u:       [PASS][3] -> [INCOMPLETE][4] ([i915#146])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#4312] / [i915#4991])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][6] ([i915#7229]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][8] ([i915#6298]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12339 -> Patchwork_109942v3

  CI-20190529: 20190529
  CI_DRM_12339: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7041: 40ea6325f69eb56653171c21b5d4977982a92d0a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109942v3: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ae46bcb0b7d0 drm/fb-helper: Clarify use of last_close and output_poll_changed
daf61100bb1f drm/fb-helper: Remove unnecessary include statements
5bc7dbd5e53a drm/fb-helper: Move generic fbdev emulation into separate source file
7adb21f8df4e drm/fb-helper: Set flag in struct drm_fb_helper for leaking physical addresses
c77ca859192a drm/fb-helper: Always initialize generic fbdev emulation
5fd001aac38a drm/fb_helper: Minimize damage-helper overhead
d85e46a760ab drm/fb-helper: Perform all fbdev I/O with the same implementation
a52ac23e9ed6 drm/fb-helper: Call fb_sync in I/O functions
63b548e3ddf9 drm/fb-helper: Disconnect damage worker from update logic
ee2185c8cab6 drm/fb-helper: Rename drm_fb_helper_unregister_fbi() to use _info postfix
8f19ec616ef7 drm/fb-helper: Rename drm_fb_helper_alloc_fbi() to use _info postfix
63f4182c1ebf drm/fb_helper: Rename field fbdev to info in struct drm_fb_helper
dcd1217f9fc0 drm/fb-helper: Cleanup include statements in header file
577decb7032c drm/tve200: Include <linux/of.h>
b1d8471f3017 drm/panel-ili9341: Include <linux/backlight.h>
3d612badf8e8 drm/rockchip: Don't set struct drm_driver.output_poll_changed
9b541df21a0a drm/logicvc: Don't set struct drm_driver.output_poll_changed
35c0a7c68afa drm/ingenic: Don't set struct drm_driver.output_poll_changed
57e4181a8146 drm/imx/dcss: Don't set struct drm_driver.output_poll_changed
8d2723af52d2 drm/amdgpu: Don't set struct drm_driver.output_poll_changed
ced2dc2948dd drm/vboxvideo: Don't set struct drm_driver.lastclose
56a29addd3dc drm/mcde: Don't set struct drm_driver.lastclose
340b451a8497 drm/komeda: Don't set struct drm_driver.lastclose

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/index.html

--===============1956702252582734415==
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
<tr><td><b>Series:</b></td><td>drm/fb-helper: Untangle fbdev emulation and helpers (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109942/">https://patchwork.freedesktop.org/series/109942/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12339 -&gt; Patchwork_109942v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/index.html</p>
<h2>Participating hosts (40 -&gt; 28)</h2>
<p>Missing    (12): fi-hsw-4200u bat-dg2-8 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-ctg-p8600 bat-adln-1 bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-dg2-11 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109942v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-bdw-5557u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12339/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109942v3/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12339 -&gt; Patchwork_109942v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12339: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7041: 40ea6325f69eb56653171c21b5d4977982a92d0a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109942v3: fafe2d945b3d76b8a7e32102311d8d0495724a3e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ae46bcb0b7d0 drm/fb-helper: Clarify use of last_close and output_poll_changed<br />
daf61100bb1f drm/fb-helper: Remove unnecessary include statements<br />
5bc7dbd5e53a drm/fb-helper: Move generic fbdev emulation into separate source file<br />
7adb21f8df4e drm/fb-helper: Set flag in struct drm_fb_helper for leaking physical addresses<br />
c77ca859192a drm/fb-helper: Always initialize generic fbdev emulation<br />
5fd001aac38a drm/fb_helper: Minimize damage-helper overhead<br />
d85e46a760ab drm/fb-helper: Perform all fbdev I/O with the same implementation<br />
a52ac23e9ed6 drm/fb-helper: Call fb_sync in I/O functions<br />
63b548e3ddf9 drm/fb-helper: Disconnect damage worker from update logic<br />
ee2185c8cab6 drm/fb-helper: Rename drm_fb_helper_unregister_fbi() to use _info postfix<br />
8f19ec616ef7 drm/fb-helper: Rename drm_fb_helper_alloc_fbi() to use _info postfix<br />
63f4182c1ebf drm/fb_helper: Rename field fbdev to info in struct drm_fb_helper<br />
dcd1217f9fc0 drm/fb-helper: Cleanup include statements in header file<br />
577decb7032c drm/tve200: Include <linux/of.h><br />
b1d8471f3017 drm/panel-ili9341: Include <linux/backlight.h><br />
3d612badf8e8 drm/rockchip: Don't set struct drm_driver.output_poll_changed<br />
9b541df21a0a drm/logicvc: Don't set struct drm_driver.output_poll_changed<br />
35c0a7c68afa drm/ingenic: Don't set struct drm_driver.output_poll_changed<br />
57e4181a8146 drm/imx/dcss: Don't set struct drm_driver.output_poll_changed<br />
8d2723af52d2 drm/amdgpu: Don't set struct drm_driver.output_poll_changed<br />
ced2dc2948dd drm/vboxvideo: Don't set struct drm_driver.lastclose<br />
56a29addd3dc drm/mcde: Don't set struct drm_driver.lastclose<br />
340b451a8497 drm/komeda: Don't set struct drm_driver.lastclose</p>

</body>
</html>

--===============1956702252582734415==--
