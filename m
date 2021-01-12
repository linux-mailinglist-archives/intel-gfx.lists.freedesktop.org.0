Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96C7C2F26AA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 04:27:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7930E89F2D;
	Tue, 12 Jan 2021 03:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE52389F01;
 Tue, 12 Jan 2021 03:27:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9515BA8831;
 Tue, 12 Jan 2021 03:27:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 12 Jan 2021 03:27:11 -0000
Message-ID: <161042203158.1918.14227731015850213478@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210112015000.16108-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210112015000.16108-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Remove_stolen_node_before_releasing_the_region?=
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
Content-Type: multipart/mixed; boundary="===============0071744427=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0071744427==
Content-Type: multipart/alternative;
 boundary="===============7608207809803725960=="

--===============7608207809803725960==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Remove stolen node before releasing the region
URL   : https://patchwork.freedesktop.org/series/85727/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9585 -> Patchwork_19320
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/index.html

Known issues
------------

  Here are the changes found in Patchwork_19320 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-snb-2600:        [PASS][1] -> [DMESG-WARN][2] ([i915#2772])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-FAIL][4] ([i915#165])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][7] ([i915#698])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-snb-2600/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [FAIL][8] ([i915#1888]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@active:
    - fi-kbl-soraka:      [DMESG-FAIL][10] ([i915#2291] / [i915#666]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-kbl-soraka/igt@i915_selftest@live@active.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-kbl-soraka/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][12] ([i915#2291] / [i915#541]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [DMESG-WARN][14] ([i915#402]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2772]: https://gitlab.freedesktop.org/drm/intel/issues/2772
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9585 -> Patchwork_19320

  CI-20190529: 20190529
  CI_DRM_9585: ce8ee6513f0f9d00ea44e1c4b7aff8b4883cda13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5954: 2763c0977004bed596ee876c755b0768187ea9ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19320: 23d74dcb08250cfbf057c9c11023a9a33152d597 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

23d74dcb0825 drm/i915/gem: Remove stolen node before releasing the region

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/index.html

--===============7608207809803725960==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Remove stolen node before releasing the region</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85727/">https://patchwork.freedesktop.org/series/85727/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9585 -&gt; Patchwork_19320</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19320 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2772">i915#2772</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-kbl-soraka/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/666">i915#666</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-kbl-soraka/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9585/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19320/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9585 -&gt; Patchwork_19320</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9585: ce8ee6513f0f9d00ea44e1c4b7aff8b4883cda13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5954: 2763c0977004bed596ee876c755b0768187ea9ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19320: 23d74dcb08250cfbf057c9c11023a9a33152d597 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>23d74dcb0825 drm/i915/gem: Remove stolen node before releasing the region</p>

</body>
</html>

--===============7608207809803725960==--

--===============0071744427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0071744427==--
