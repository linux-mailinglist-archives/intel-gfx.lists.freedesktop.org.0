Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4327C653CCD
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 09:12:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9101D10E513;
	Thu, 22 Dec 2022 08:12:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9FB810E512;
 Thu, 22 Dec 2022 08:12:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 90195AA0ED;
 Thu, 22 Dec 2022 08:12:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5990493910746247407=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Thu, 22 Dec 2022 08:12:02 -0000
Message-ID: <167169672255.14835.12345802470793651136@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221219160516.23436-1-tzimmermann@suse.de>
In-Reply-To: <20221219160516.23436-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=2C_fbdev=3A_Remove_apertures_structure_and_FBINFO=5FMISC=5FFIR?=
 =?utf-8?q?MWARE_=28rev2=29?=
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

--===============5990493910746247407==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm, fbdev: Remove apertures structure and FBINFO_MISC_FIRMWARE (rev2)
URL   : https://patchwork.freedesktop.org/series/112069/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12521 -> Patchwork_112069v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): bat-atsm-1 

Known issues
------------

  Here are the changes found in Patchwork_112069v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [PASS][1] -> [INCOMPLETE][2] ([i915#4785])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - bat-dg1-5:          [PASS][3] -> [INCOMPLETE][4] ([i915#4983])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html

  * igt@runner@aborted:
    - fi-hsw-4770:        NOTRUN -> [FAIL][5] ([fdo#109271] / [i915#4312] / [i915#5594])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/fi-hsw-4770/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][6] ([i915#4312])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/bat-dg1-5/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594


Build changes
-------------

  * Linux: CI_DRM_12521 -> Patchwork_112069v2

  CI-20190529: 20190529
  CI_DRM_12521: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112069v2: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

19b034976333 drm/fbdev: Remove aperture handling and FBINFO_MISC_FIRMWARE
60f2bde3dbcf fbdev/vga16fb: Do not use struct fb_info.apertures
499844d92d56 fbdev/vesafb: Do not use struct fb_info.apertures
d8c2620aa2a2 fbdev/vesafb: Remove trailing whitespaces
2d23f20a288b fbdev/simplefb: Do not use struct fb_info.apertures
560addfbec2f fbdev/offb: Do not use struct fb_info.apertures
c89260bbd67a fbdev/offb: Allocate struct offb_par with framebuffer_alloc()
1c1e130fd479 fbdev/efifb: Do not use struct fb_info.apertures
473e7f788067 fbdev/efifb: Add struct efifb_par for driver data
1dfa46e3cdfa vfio-mdev/mdpy-fb: Do not set struct fb_info.apertures
fc3ca744e6f9 fbdev/hyperv-fb: Do not set struct fb_info.apertures
aa63d07f6438 fbdev/clps711x-fb: Do not set struct fb_info.apertures
2af5a9cf4381 drm/fb-helper: Do not allocate unused apertures structure
a5d752dfe3d5 drm/radeon: Do not set struct fb_info.apertures
b8fa763fb622 drm/i915: Do not set struct fb_info.apertures
dd9c39b9598c drm/gma500: Do not set struct fb_info.apertures
744e4af1e98c Revert "fbcon: don't lose the console font across generic->chip driver switch"
635a3b51d2ba fbcon: Remove trailing whitespaces

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/index.html

--===============5990493910746247407==
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
<tr><td><b>Series:</b></td><td>drm, fbdev: Remove apertures structure and FBINFO_MISC_FIRMWARE (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112069/">https://patchwork.freedesktop.org/series/112069/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12521 -&gt; Patchwork_112069v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): bat-atsm-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112069v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12521/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/bat-dg1-5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5594">i915#5594</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112069v2/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12521 -&gt; Patchwork_112069v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12521: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7101: bd33b4c060eb6b2e24c5784b2aa817ae5840f84f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112069v2: 584eb294ab7b1273c5ef505a33f2a5d89c877fcd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>19b034976333 drm/fbdev: Remove aperture handling and FBINFO_MISC_FIRMWARE<br />
60f2bde3dbcf fbdev/vga16fb: Do not use struct fb_info.apertures<br />
499844d92d56 fbdev/vesafb: Do not use struct fb_info.apertures<br />
d8c2620aa2a2 fbdev/vesafb: Remove trailing whitespaces<br />
2d23f20a288b fbdev/simplefb: Do not use struct fb_info.apertures<br />
560addfbec2f fbdev/offb: Do not use struct fb_info.apertures<br />
c89260bbd67a fbdev/offb: Allocate struct offb_par with framebuffer_alloc()<br />
1c1e130fd479 fbdev/efifb: Do not use struct fb_info.apertures<br />
473e7f788067 fbdev/efifb: Add struct efifb_par for driver data<br />
1dfa46e3cdfa vfio-mdev/mdpy-fb: Do not set struct fb_info.apertures<br />
fc3ca744e6f9 fbdev/hyperv-fb: Do not set struct fb_info.apertures<br />
aa63d07f6438 fbdev/clps711x-fb: Do not set struct fb_info.apertures<br />
2af5a9cf4381 drm/fb-helper: Do not allocate unused apertures structure<br />
a5d752dfe3d5 drm/radeon: Do not set struct fb_info.apertures<br />
b8fa763fb622 drm/i915: Do not set struct fb_info.apertures<br />
dd9c39b9598c drm/gma500: Do not set struct fb_info.apertures<br />
744e4af1e98c Revert "fbcon: don't lose the console font across generic-&gt;chip driver switch"<br />
635a3b51d2ba fbcon: Remove trailing whitespaces</p>

</body>
</html>

--===============5990493910746247407==--
