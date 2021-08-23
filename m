Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC043F5008
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 20:03:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C6C89A5E;
	Mon, 23 Aug 2021 18:03:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 34C1889A59;
 Mon, 23 Aug 2021 18:03:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2ED5DA882E;
 Mon, 23 Aug 2021 18:03:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6269927650641430428=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Aug 2021 18:03:19 -0000
Message-ID: <162974179916.1911.6401029062274839244@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210823163137.19770-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20210823163137.19770-1-daniele.ceraolospurio@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_drop_guc=5Fcommunication=5Fenabled?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6269927650641430428==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: drop guc_communication_enabled
URL   : https://patchwork.freedesktop.org/series/93936/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10508 -> Patchwork_20876
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/index.html

Known issues
------------

  Here are the changes found in Patchwork_20876 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-rkl-guc:         NOTRUN -> [SKIP][2] ([i915#3012])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-kefka:       [PASS][3] -> [INCOMPLETE][4] ([i915#2940])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([i915#1372])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-rkl-guc:         NOTRUN -> [SKIP][7] ([fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-rkl-guc:         NOTRUN -> [SKIP][8] ([fdo#109285])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-rkl-guc:         NOTRUN -> [SKIP][9] ([i915#533])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-rkl-guc:         NOTRUN -> [SKIP][10] ([i915#1072]) +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-rkl-guc:         NOTRUN -> [SKIP][11] ([i915#1845])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-userptr:
    - fi-rkl-guc:         NOTRUN -> [SKIP][12] ([i915#3301])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - fi-rkl-guc:         NOTRUN -> [SKIP][13] ([i915#3291]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][14] ([fdo#109271] / [i915#1436])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-bsw-kefka/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_wait@busy@all:
    - fi-rkl-guc:         [INCOMPLETE][15] -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-rkl-guc/igt@gem_wait@busy@all.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@gem_wait@busy@all.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (39 -> 33)
------------------------------

  Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10508 -> Patchwork_20876

  CI-20190529: 20190529
  CI_DRM_10508: 00400e0b1213556376e556de6561f117909dcab9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6183: c75ffa39b2f8b3b991deba834a3828e102c909e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20876: 787f4f988df539ec96356e1d5b1ce1db67a526c5 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

787f4f988df5 drm/i915/guc: drop guc_communication_enabled

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/index.html

--===============6269927650641430428==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: drop guc_communication_enabled</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93936/">https://patchwork.freedesktop.org/series/93936/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10508 -&gt; Patchwork_20876</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20876 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_wait@busy@all:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10508/fi-rkl-guc/igt@gem_wait@busy@all.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20876/fi-rkl-guc/igt@gem_wait@busy@all.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 33)</h2>
<p>Missing    (6): fi-ilk-m540 bat-adls-5 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10508 -&gt; Patchwork_20876</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10508: 00400e0b1213556376e556de6561f117909dcab9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6183: c75ffa39b2f8b3b991deba834a3828e102c909e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20876: 787f4f988df539ec96356e1d5b1ce1db67a526c5 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>787f4f988df5 drm/i915/guc: drop guc_communication_enabled</p>

</body>
</html>

--===============6269927650641430428==--
