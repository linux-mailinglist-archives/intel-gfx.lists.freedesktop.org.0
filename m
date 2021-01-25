Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A243302C10
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 20:56:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32DDE89D2E;
	Mon, 25 Jan 2021 19:56:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6ECE689D2E;
 Mon, 25 Jan 2021 19:56:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F556A00E6;
 Mon, 25 Jan 2021 19:56:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 25 Jan 2021 19:56:32 -0000
Message-ID: <161160459235.3418.17634960292677408994@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125173636.1733812-1-imre.deak@intel.com>
In-Reply-To: <20210125173636.1733812-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/dp/mst=3A_Export_drm=5Fdp=5Fget?=
 =?utf-8?b?X3ZjX3BheWxvYWRfYncoKQ==?=
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
Content-Type: multipart/mixed; boundary="===============0765571213=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0765571213==
Content-Type: multipart/alternative;
 boundary="===============5023494030256675261=="

--===============5023494030256675261==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/dp/mst: Export drm_dp_get_vc_payload_bw()
URL   : https://patchwork.freedesktop.org/series/86267/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9680 -> Patchwork_19491
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19491:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_psr@cursor_plane_move:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][1] +23 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html

  
Known issues
------------

  Here are the changes found in Patchwork_19491 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#402]) +2 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip:
    - fi-tgl-y:           [DMESG-WARN][4] ([i915#402]) -> [PASS][5] +1 similar issue
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (39 -> 35)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-ctg-p8600 


Build changes
-------------

  * Linux: CI_DRM_9680 -> Patchwork_19491

  CI-20190529: 20190529
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19491: 54fe7ced0a5a0e8ed185012fd4f43e1d3c0f466a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

54fe7ced0a5a drm/i915: Fix the MST PBN divider calculation
b6d4c956f6d4 drm/dp/mst: Export drm_dp_get_vc_payload_bw()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html

--===============5023494030256675261==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/dp/mst: Export drm_dp_get_vc_payload_bw()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86267/">https://patchwork.freedesktop.org/series/86267/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680 -&gt; Patchwork_19491</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19491:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_psr@cursor_plane_move:<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html">SKIP</a> +23 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19491 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-tgl-u2 fi-ctg-p8600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9680 -&gt; Patchwork_19491</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19491: 54fe7ced0a5a0e8ed185012fd4f43e1d3c0f466a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>54fe7ced0a5a drm/i915: Fix the MST PBN divider calculation<br />
b6d4c956f6d4 drm/dp/mst: Export drm_dp_get_vc_payload_bw()</p>

</body>
</html>

--===============5023494030256675261==--

--===============0765571213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0765571213==--
