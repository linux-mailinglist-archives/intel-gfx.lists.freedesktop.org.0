Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD87302B72
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 20:22:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D339F6E0C1;
	Mon, 25 Jan 2021 19:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5F7B66E0C1;
 Mon, 25 Jan 2021 19:22:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5916AA0009;
 Mon, 25 Jan 2021 19:22:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 25 Jan 2021 19:22:24 -0000
Message-ID: <161160254433.3417.12502508622483014248@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1611589818.git.jani.nikula@intel.com>
In-Reply-To: <cover.1611589818.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/edp=3A_enable_MSO=2E=2E=2E_maybe?=
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
Content-Type: multipart/mixed; boundary="===============1359253754=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1359253754==
Content-Type: multipart/alternative;
 boundary="===============7333402269442028643=="

--===============7333402269442028643==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/edp: enable MSO... maybe
URL   : https://patchwork.freedesktop.org/series/86264/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9680 -> Patchwork_19490
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19490:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_psr@cursor_plane_move:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][1] +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html

  
Known issues
------------

  Here are the changes found in Patchwork_19490 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-glk-dsi:         [PASS][2] -> [DMESG-WARN][3] ([i915#2943])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2943]: https://gitlab.freedesktop.org/drm/intel/issues/2943
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (39 -> 36)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9680 -> Patchwork_19490

  CI-20190529: 20190529
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19490: bd3f4b5b85f2a3abb47628cb20fc3f78a175a744 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bd3f4b5b85f2 drm/i915/edp: enable eDP MSO during link training
71e3f6cc9bb0 drm/i915/edp: modify fixed and downclock modes for MSO
9dc3d6e92e32 drm/i915/mso: add state check
9d1a79172ddc drm/i915/mso: add state readout for platforms that support it
c029913bde03 drm/i915/reg: add stream splitter configuration definitions
c4c351191d45 drm/i915/edp: read sink MSO configuration for eDP 1.4+
bfa476b06b47 drm/i915/edp: always add fixed mode to probed modes in ->get_modes()
73683b3c4888 drm/i915/edp: reject modes with dimensions other than fixed mode
6414c2a8c228 drm/dp: add MSO related DPCD registers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/index.html

--===============7333402269442028643==
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
<tr><td><b>Series:</b></td><td>drm/i915/edp: enable MSO... maybe</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86264/">https://patchwork.freedesktop.org/series/86264/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680 -&gt; Patchwork_19490</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19490:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html">SKIP</a> +23 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19490 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-glk-dsi/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2943">i915#2943</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-tgl-y/igt@prime_self_import@basic-with_one_bo_two_files.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19490/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 36)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9680 -&gt; Patchwork_19490</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19490: bd3f4b5b85f2a3abb47628cb20fc3f78a175a744 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bd3f4b5b85f2 drm/i915/edp: enable eDP MSO during link training<br />
71e3f6cc9bb0 drm/i915/edp: modify fixed and downclock modes for MSO<br />
9dc3d6e92e32 drm/i915/mso: add state check<br />
9d1a79172ddc drm/i915/mso: add state readout for platforms that support it<br />
c029913bde03 drm/i915/reg: add stream splitter configuration definitions<br />
c4c351191d45 drm/i915/edp: read sink MSO configuration for eDP 1.4+<br />
bfa476b06b47 drm/i915/edp: always add fixed mode to probed modes in -&gt;get_modes()<br />
73683b3c4888 drm/i915/edp: reject modes with dimensions other than fixed mode<br />
6414c2a8c228 drm/dp: add MSO related DPCD registers</p>

</body>
</html>

--===============7333402269442028643==--

--===============1359253754==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1359253754==--
