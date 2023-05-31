Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75153717849
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 09:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E24FA10E48F;
	Wed, 31 May 2023 07:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 955E910E48F;
 Wed, 31 May 2023 07:31:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8C341A00CC;
 Wed, 31 May 2023 07:31:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8886809613332568443=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Date: Wed, 31 May 2023 07:31:52 -0000
Message-ID: <168551831256.17618.15349059929561023882@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230530150253.22758-1-tzimmermann@suse.de>
In-Reply-To: <20230530150253.22758-1-tzimmermann@suse.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv5=2C01/13=5D_fbdev=3A_Add_Kconfig_options?=
 =?utf-8?q?_to_select_different_fb=5Fops_helpers?=
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

--===============8886809613332568443==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v5,01/13] fbdev: Add Kconfig options to select different fb_ops helpers
URL   : https://patchwork.freedesktop.org/series/118574/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13204 -> Patchwork_118574v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/index.html

Participating hosts (36 -> 36)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_118574v1 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-kbl-8809g:       [PASS][1] -> [FAIL][2] ([i915#8293] / [i915#8298])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-kbl-8809g/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-kbl-8809g/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-hsw-4770:        [PASS][3] -> [SKIP][4] ([fdo#109271])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-hsw-4770:        [PASS][5] -> [FAIL][6] ([i915#7364])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [PASS][7] -> [DMESG-WARN][8] ([i915#8073])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
    - bat-dg2-11:         [PASS][9] -> [ABORT][10] ([i915#7913] / [i915#7979])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/bat-dg2-11/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][11] -> [ABORT][12] ([i915#4983] / [i915#7911] / [i915#7920])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/bat-rpls-1/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][13] ([i915#3546]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7364]: https://gitlab.freedesktop.org/drm/intel/issues/7364
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7979]: https://gitlab.freedesktop.org/drm/intel/issues/7979
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#8298]: https://gitlab.freedesktop.org/drm/intel/issues/8298


Build changes
-------------

  * Linux: CI_DRM_13204 -> Patchwork_118574v1

  CI-20190529: 20190529
  CI_DRM_13204: 83a048e62ecf7838b583389e60c1defa530a5668 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7311: c031030f39aff973330668a5a2f1593408da78ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118574v1: 83a048e62ecf7838b583389e60c1defa530a5668 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

637bfcec83cc drm/i915: Implement dedicated fbdev I/O helpers
d171961dcec1 drm/fbdev-generic: Implement dedicated fbdev I/O helpers
587d6084e619 drm/msm: Use regular fbdev I/O helpers
23a2dde4e89b drm/fb-helper: Export helpers for marking damage areas
e8dca382c462 drm/tegra: Use regular fbdev I/O helpers
4e438b46c55c drm/omapdrm: Use regular fbdev I/O helpers
979f18306e03 drm/fbdev-dma: Use regular fbdev I/O helpers
c3ff7af4d343 drm/radeon: Use regular fbdev I/O helpers
670992894865 drm/gma500: Use regular fbdev I/O helpers
36497010d91d drm/exynos: Use regular fbdev I/O helpers
d6b0f3aaaa9f drm/armada: Use regular fbdev I/O helpers
0c9ddc4b50bc fbdev: Add initializer macros for struct fb_ops
beb2cac64a62 fbdev: Add Kconfig options to select different fb_ops helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/index.html

--===============8886809613332568443==
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
<tr><td><b>Series:</b></td><td>series starting with [v5,01/13] fbdev: Add Kconfig options to select different fb_ops helpers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118574/">https://patchwork.freedesktop.org/series/118574/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13204 -&gt; Patchwork_118574v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/index.html</p>
<h2>Participating hosts (36 -&gt; 36)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118574v1 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-kbl-8809g/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-kbl-8809g/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8298">i915#8298</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-hsw-4770/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-hsw-4770/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7364">i915#7364</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>)</p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/bat-dg2-11/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7979">i915#7979</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13204/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118574v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13204 -&gt; Patchwork_118574v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13204: 83a048e62ecf7838b583389e60c1defa530a5668 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7311: c031030f39aff973330668a5a2f1593408da78ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118574v1: 83a048e62ecf7838b583389e60c1defa530a5668 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>637bfcec83cc drm/i915: Implement dedicated fbdev I/O helpers<br />
d171961dcec1 drm/fbdev-generic: Implement dedicated fbdev I/O helpers<br />
587d6084e619 drm/msm: Use regular fbdev I/O helpers<br />
23a2dde4e89b drm/fb-helper: Export helpers for marking damage areas<br />
e8dca382c462 drm/tegra: Use regular fbdev I/O helpers<br />
4e438b46c55c drm/omapdrm: Use regular fbdev I/O helpers<br />
979f18306e03 drm/fbdev-dma: Use regular fbdev I/O helpers<br />
c3ff7af4d343 drm/radeon: Use regular fbdev I/O helpers<br />
670992894865 drm/gma500: Use regular fbdev I/O helpers<br />
36497010d91d drm/exynos: Use regular fbdev I/O helpers<br />
d6b0f3aaaa9f drm/armada: Use regular fbdev I/O helpers<br />
0c9ddc4b50bc fbdev: Add initializer macros for struct fb_ops<br />
beb2cac64a62 fbdev: Add Kconfig options to select different fb_ops helpers</p>

</body>
</html>

--===============8886809613332568443==--
