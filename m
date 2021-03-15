Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52C033C433
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Mar 2021 18:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D08B8999E;
	Mon, 15 Mar 2021 17:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7CE288970E;
 Mon, 15 Mar 2021 17:32:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 75B4CA41FB;
 Mon, 15 Mar 2021 17:32:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Mon, 15 Mar 2021 17:32:39 -0000
Message-ID: <161582955945.30953.100324603722470143@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1611258840.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1611258840.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_pread/pwrite_ioctl=27s_for_IGT_testing_=28rev3?=
 =?utf-8?q?=29?=
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
Content-Type: multipart/mixed; boundary="===============0300340330=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0300340330==
Content-Type: multipart/alternative;
 boundary="===============7244612154618384500=="

--===============7244612154618384500==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Disable pread/pwrite ioctl's for IGT testing (rev3)
URL   : https://patchwork.freedesktop.org/series/86155/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9857 -> Patchwork_19791
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19791 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19791, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19791:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_pread_basic:
    - fi-icl-u2:          [PASS][1] -> [SKIP][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-icl-u2/igt@gem_tiled_pread_basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-icl-u2/igt@gem_tiled_pread_basic.html

  * igt@prime_vgem@basic-write:
    - fi-tgl-u2:          [PASS][3] -> [SKIP][4] +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-tgl-u2/igt@prime_vgem@basic-write.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-tgl-u2/igt@prime_vgem@basic-write.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_parallel@engines@userptr:
    - {fi-tgl-dsi}:       [PASS][5] -> [SKIP][6] +4 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html

  * igt@gem_tiled_pread_basic:
    - {fi-jsl-1}:         [PASS][7] -> [SKIP][8] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-jsl-1/igt@gem_tiled_pread_basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-jsl-1/igt@gem_tiled_pread_basic.html

  * igt@prime_vgem@basic-read:
    - {fi-rkl-11500t}:    [PASS][9] -> [SKIP][10] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-rkl-11500t/igt@prime_vgem@basic-read.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-rkl-11500t/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - {fi-ehl-1}:         [PASS][11] -> [SKIP][12] +4 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-ehl-1/igt@prime_vgem@basic-write.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-ehl-1/igt@prime_vgem@basic-write.html
    - {fi-ehl-2}:         [PASS][13] -> [SKIP][14] +4 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-ehl-2/igt@prime_vgem@basic-write.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-ehl-2/igt@prime_vgem@basic-write.html

  
Known issues
------------

  Here are the changes found in Patchwork_19791 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-kbl-8809g:       [PASS][15] -> [TIMEOUT][16] ([i915#2502] / [i915#3145]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-kbl-8809g/igt@gem_linear_blits@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-kbl-8809g/igt@gem_linear_blits@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [TIMEOUT][17] ([i915#3145]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [DMESG-FAIL][19] ([i915#3047]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-glk-dsi/igt@i915_selftest@live@client.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-glk-dsi/igt@i915_selftest@live@client.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][21] ([i915#3143]) -> [DMESG-WARN][22] ([i915#1982] / [i915#3143])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2502]: https://gitlab.freedesktop.org/drm/intel/issues/2502
  [i915#3047]: https://gitlab.freedesktop.org/drm/intel/issues/3047
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_6032 -> IGTPW_5600
  * Linux: CI_DRM_9857 -> Patchwork_19791

  CI-20190529: 20190529
  CI_DRM_9857: 0f9254e98a162e962fa4b9517645c4be44367e27 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5600: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5600/index.html
  IGT_6032: f3fd2cc23455929d0ef276e05e02416b86a6db91 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19791: e3884dcf01a35a367e44e27e83acdd2d1b0ae70e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e3884dcf01a3 drm/i915: Disable pread/pwrite ioctl's for IGT testing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/index.html

--===============7244612154618384500==
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
<tr><td><b>Series:</b></td><td>drm/i915: Disable pread/pwrite ioctl&#39;s for IGT testing (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86155/">https://patchwork.freedesktop.org/series/86155/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9857 -&gt; Patchwork_19791</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19791 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19791, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19791:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-icl-u2/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-icl-u2/igt@gem_tiled_pread_basic.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-tgl-u2/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-tgl-u2/igt@prime_vgem@basic-write.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@userptr:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-tgl-dsi/igt@gem_exec_parallel@engines@userptr.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-jsl-1/igt@gem_tiled_pread_basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-jsl-1/igt@gem_tiled_pread_basic.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-rkl-11500t/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>
<p>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-ehl-1/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-ehl-1/igt@prime_vgem@basic-write.html">SKIP</a> +4 similar issues</p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-ehl-2/igt@prime_vgem@basic-write.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-ehl-2/igt@prime_vgem@basic-write.html">SKIP</a> +4 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19791 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_linear_blits@basic:<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-kbl-8809g/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-kbl-8809g/igt@gem_linear_blits@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2502">i915#2502</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-glk-dsi/igt@i915_selftest@live@client.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3047">i915#3047</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9857/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19791/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6032 -&gt; IGTPW_5600</li>
<li>Linux: CI_DRM_9857 -&gt; Patchwork_19791</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9857: 0f9254e98a162e962fa4b9517645c4be44367e27 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5600: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5600/index.html<br />
  IGT_6032: f3fd2cc23455929d0ef276e05e02416b86a6db91 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19791: e3884dcf01a35a367e44e27e83acdd2d1b0ae70e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e3884dcf01a3 drm/i915: Disable pread/pwrite ioctl's for IGT testing</p>

</body>
</html>

--===============7244612154618384500==--

--===============0300340330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0300340330==--
