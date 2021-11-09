Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D7944AEB9
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 14:27:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D22496E894;
	Tue,  9 Nov 2021 13:27:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0CB446E894;
 Tue,  9 Nov 2021 13:27:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 05A4DA8169;
 Tue,  9 Nov 2021 13:27:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7165020532667370441=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
Date: Tue, 09 Nov 2021 13:27:46 -0000
Message-ID: <163646446698.25766.16364393337810784272@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211109120428.15211-1-vandita.kulkarni@intel.com>
In-Reply-To: <20211109120428.15211-1-vandita.kulkarni@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/tgl/dsi=3A_Gate_the_ddi_clocks_after_pll_mappin?=
 =?utf-8?q?g=22?=
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

--===============7165020532667370441==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping"
URL   : https://patchwork.freedesktop.org/series/96714/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10857 -> Patchwork_21545
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/index.html

Participating hosts (35 -> 32)
------------------------------

  Missing    (3): fi-ctg-p8600 bat-dg1-6 bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_21545 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10857/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
#### Possible fixes ####

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
    - fi-cfl-8109u:       [DMESG-WARN][3] ([i915#295]) -> [PASS][4] +12 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10857/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Build changes
-------------

  * Linux: CI_DRM_10857 -> Patchwork_21545

  CI-20190529: 20190529
  CI_DRM_10857: 2f005a829cd05b317c5b497a6941b88d981d22e6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6275: 6d172a5cf51ffff5f2780e2837860d613db5067f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21545: 03e24bc33e15df4ddb98d5c1114d24b0298bcca1 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

03e24bc33e15 Revert "drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/index.html

--===============7165020532667370441==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96714/">https://patchwork.freedesktop.org/series/96714/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10857 -&gt; Patchwork_21545</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/index.html</p>
<h2>Participating hosts (35 -&gt; 32)</h2>
<p>Missing    (3): fi-ctg-p8600 bat-dg1-6 bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21545 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10857/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10857/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/295">i915#295</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21545/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html">PASS</a> +12 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10857 -&gt; Patchwork_21545</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10857: 2f005a829cd05b317c5b497a6941b88d981d22e6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6275: 6d172a5cf51ffff5f2780e2837860d613db5067f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21545: 03e24bc33e15df4ddb98d5c1114d24b0298bcca1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>03e24bc33e15 Revert "drm/i915/tgl/dsi: Gate the ddi clocks after pll mapping"</p>

</body>
</html>

--===============7165020532667370441==--
