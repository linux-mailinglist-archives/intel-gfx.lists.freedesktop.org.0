Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D86F6E178F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 00:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4D410E188;
	Thu, 13 Apr 2023 22:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EC88710E0D2;
 Thu, 13 Apr 2023 22:36:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3E4BAADEB;
 Thu, 13 Apr 2023 22:36:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1798936022386762964=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lucas De Marchi" <lucas.demarchi@intel.com>
Date: Thu, 13 Apr 2023 22:36:51 -0000
Message-ID: <168142541188.3696.17785320154686071800@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230413200349.3492571-1-lucas.demarchi@intel.com>
In-Reply-To: <20230413200349.3492571-1-lucas.demarchi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Avoid_out-of-bounds_access_when_loading_HuC?=
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

--===============1798936022386762964==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Avoid out-of-bounds access when loading HuC
URL   : https://patchwork.freedesktop.org/series/116460/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13004 -> Patchwork_116460v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/index.html

Participating hosts (35 -> 34)
------------------------------

  Additional (1): bat-rpls-2 
  Missing    (2): bat-mtlp-8 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_116460v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - bat-rpls-2:         NOTRUN -> [SKIP][1] ([i915#7456])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html

  * igt@fbdev@read:
    - bat-rpls-2:         NOTRUN -> [SKIP][2] ([i915#2582]) +4 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_lmem_swapping@verify-random:
    - bat-rpls-2:         NOTRUN -> [SKIP][3] ([i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][4] ([i915#3282])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-rpls-2:         NOTRUN -> [SKIP][5] ([i915#7561])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@slpc:
    - bat-adln-1:         NOTRUN -> [DMESG-FAIL][6] ([i915#6997])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-rpls-2:         NOTRUN -> [INCOMPLETE][7] ([i915#4983] / [i915#7913])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][8] ([i915#1845]) +14 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_busy@basic.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - bat-rpls-2:         NOTRUN -> [SKIP][9] ([i915#7828]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-adln-1:         NOTRUN -> [SKIP][10] ([i915#7828])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - fi-bsw-n3050:       NOTRUN -> [SKIP][11] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/fi-bsw-n3050/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
    - bat-rpls-1:         NOTRUN -> [SKIP][12] ([i915#7828])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-rpls-2:         NOTRUN -> [SKIP][13] ([i915#3637]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-rpls-2:         NOTRUN -> [SKIP][14] ([fdo#109285])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-rpls-2:         NOTRUN -> [SKIP][15] ([i915#1849])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:
    - bat-dg2-8:          [PASS][16] -> [FAIL][17] ([i915#7932])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][18] ([i915#1845])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@sprite_plane_onoff:
    - bat-rpls-2:         NOTRUN -> [SKIP][19] ([i915#1072]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rpls-2:         NOTRUN -> [SKIP][20] ([i915#3555] / [i915#4579])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-rpls-2:         NOTRUN -> [SKIP][21] ([fdo#109295] / [i915#1845] / [i915#3708])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - bat-rpls-2:         NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#3708]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@prime_vgem@basic-fence-read.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-rpls-1:         [ABORT][23] ([i915#6687] / [i915#7978]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [FAIL][25] ([i915#8308]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][27] ([i915#7911] / [i915#7913]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [INCOMPLETE][29] ([i915#4983] / [i915#7609]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][31] ([i915#6367]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-kbl-7567u:       [ABORT][33] ([i915#8059]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/fi-kbl-7567u/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/fi-kbl-7567u/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
    - bat-dg2-8:          [FAIL][35] ([i915#7932]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8059]: https://gitlab.freedesktop.org/drm/intel/issues/8059
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_13004 -> Patchwork_116460v1

  CI-20190529: 20190529
  CI_DRM_13004: 293fce331f7e09efa3b9d2046699f3e6af8a4ac9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7254: 7fab01340a3f360abacd7914015be1ad485363d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116460v1: 293fce331f7e09efa3b9d2046699f3e6af8a4ac9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

06fd5c43b010 drm/i915/gt: Avoid out-of-bounds access when loading HuC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/index.html

--===============1798936022386762964==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Avoid out-of-bounds access when loading HuC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116460/">https://patchwork.freedesktop.org/series/116460/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13004 -&gt; Patchwork_116460v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/index.html</p>
<h2>Participating hosts (35 -&gt; 34)</h2>
<p>Additional (1): bat-rpls-2 <br />
  Missing    (2): bat-mtlp-8 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116460v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@debugfs_test@basic-hwmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7456">i915#7456</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>
<p>bat-adln-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/fi-bsw-n3050/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-rpls-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-2/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/fi-kbl-7567u/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8059">i915#8059</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/fi-kbl-7567u/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13004/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116460v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13004 -&gt; Patchwork_116460v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13004: 293fce331f7e09efa3b9d2046699f3e6af8a4ac9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7254: 7fab01340a3f360abacd7914015be1ad485363d7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116460v1: 293fce331f7e09efa3b9d2046699f3e6af8a4ac9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>06fd5c43b010 drm/i915/gt: Avoid out-of-bounds access when loading HuC</p>

</body>
</html>

--===============1798936022386762964==--
