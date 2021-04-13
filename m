Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A444435DF06
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Apr 2021 14:38:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F63589AEB;
	Tue, 13 Apr 2021 12:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82A2D89AEB;
 Tue, 13 Apr 2021 12:38:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 77DFEA0118;
 Tue, 13 Apr 2021 12:38:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 13 Apr 2021 12:38:31 -0000
Message-ID: <161831751145.8795.15584040511761304829@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210413094904.3736372-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/arm=3A_Don=27t_set_allow=5Ffb?=
 =?utf-8?q?=5Fmodifiers_explicitly?=
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
Content-Type: multipart/mixed; boundary="===============1262364922=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1262364922==
Content-Type: multipart/alternative;
 boundary="===============3778216691457333056=="

--===============3778216691457333056==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/12] drm/arm: Don't set allow_fb_modifiers explicitly
URL   : https://patchwork.freedesktop.org/series/88999/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9963 -> Patchwork_19922
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/index.html

Known issues
------------

  Here are the changes found in Patchwork_19922 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][2] -> [INCOMPLETE][3] ([i915#2782] / [i915#2940])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][4] -> [FAIL][5] ([i915#1372])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][6] ([i915#1436] / [i915#2722])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-soraka:      [DMESG-WARN][7] ([i915#1982] / [i915#262]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940


Participating hosts (47 -> 42)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9963 -> Patchwork_19922

  CI-20190529: 20190529
  CI_DRM_9963: f71c7917b4b6d6c093f1e65e62acd3360d96e63a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19922: 0fa454884dab0becb9ca4179dc809cf6952fb3cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0fa454884dab drm/modifiers: Enforce consistency between the cap an IN_FORMATS
cd7d120c5b56 drm/vc4: Don't set allow_fb_modifiers explicitly
d87b3d5a3254 drm/tegra: Don't set allow_fb_modifiers explicitly
e2b8b541e594 drm/stm: Don't set allow_fb_modifiers explicitly
cdfd52445cfa drm/nouveau: Don't set allow_fb_modifiers explicitly
afa911ded79d drm/msm/mdp4: Fix modifier support enabling
5136a63981d1 drm/msm/dpu1: Don't set allow_fb_modifiers explicitly
1bf4883a3d8f drm/imx: Don't set allow_fb_modifiers explicitly
9e2aecf3367a drm/i915: Don't set allow_fb_modifiers explicitly
0e8191b69ca9 drm/exynos: Don't set allow_fb_modifiers explicitly
5a0febe6beff drm/arm/malidp: Always list modifiers
95d1b78648fe drm/arm: Don't set allow_fb_modifiers explicitly

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/index.html

--===============3778216691457333056==
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
<tr><td><b>Series:</b></td><td>series starting with [01/12] drm/arm: Don&#39;t set allow_fb_modifiers explicitly</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/88999/">https://patchwork.freedesktop.org/series/88999/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9963 -&gt; Patchwork_19922</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19922 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-kbl-soraka/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9963/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19922/fi-kbl-soraka/igt@debugfs_test@read_all_entries.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (47 -&gt; 42)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9963 -&gt; Patchwork_19922</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9963: f71c7917b4b6d6c093f1e65e62acd3360d96e63a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6063: d3b7f74ce5df6fdea03e490b7c64f0c6bfe76f03 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19922: 0fa454884dab0becb9ca4179dc809cf6952fb3cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0fa454884dab drm/modifiers: Enforce consistency between the cap an IN_FORMATS<br />
cd7d120c5b56 drm/vc4: Don't set allow_fb_modifiers explicitly<br />
d87b3d5a3254 drm/tegra: Don't set allow_fb_modifiers explicitly<br />
e2b8b541e594 drm/stm: Don't set allow_fb_modifiers explicitly<br />
cdfd52445cfa drm/nouveau: Don't set allow_fb_modifiers explicitly<br />
afa911ded79d drm/msm/mdp4: Fix modifier support enabling<br />
5136a63981d1 drm/msm/dpu1: Don't set allow_fb_modifiers explicitly<br />
1bf4883a3d8f drm/imx: Don't set allow_fb_modifiers explicitly<br />
9e2aecf3367a drm/i915: Don't set allow_fb_modifiers explicitly<br />
0e8191b69ca9 drm/exynos: Don't set allow_fb_modifiers explicitly<br />
5a0febe6beff drm/arm/malidp: Always list modifiers<br />
95d1b78648fe drm/arm: Don't set allow_fb_modifiers explicitly</p>

</body>
</html>

--===============3778216691457333056==--

--===============1262364922==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1262364922==--
