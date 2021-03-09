Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E31331EC0
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Mar 2021 06:44:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFCFB6E47B;
	Tue,  9 Mar 2021 05:44:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 356AF6E471;
 Tue,  9 Mar 2021 05:44:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2654FA41FB;
 Tue,  9 Mar 2021 05:44:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Tue, 09 Mar 2021 05:44:33 -0000
Message-ID: <161526867312.8983.8362020531844889920@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210309043915.1921-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20210309043915.1921-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSERN?=
 =?utf-8?q?I2=2E1_PCON_Misc_Fixes_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1923573623=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1923573623==
Content-Type: multipart/alternative;
 boundary="===============8490264567339757814=="

--===============8490264567339757814==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: HDMI2.1 PCON Misc Fixes (rev3)
URL   : https://patchwork.freedesktop.org/series/86677/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9841 -> Patchwork_19769
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/index.html

Known issues
------------

  Here are the changes found in Patchwork_19769 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][1] -> [TIMEOUT][2] ([i915#3145])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-soraka:      [PASS][3] -> [INCOMPLETE][4] ([i915#155])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][5] ([i915#1602] / [i915#2029] / [i915#2369])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-rkl-11500t}:    [SKIP][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@module-reload:
    - fi-glk-dsi:         [DMESG-WARN][8] ([i915#1982] / [i915#3143]) -> [DMESG-WARN][9] ([i915#3143])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#3143]: https://gitlab.freedesktop.org/drm/intel/issues/3143
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-bdw-5557u 
  Missing    (5): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9841 -> Patchwork_19769

  CI-20190529: 20190529
  CI_DRM_9841: 443e92e6d6c39f7a3e658d98eec6422b0d6547ba @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6026: 8b8bbecf2f32298544c2f193753a0153f39e7326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19769: 8237da36a99af388964ee2556f872dcd6bba5d46 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8237da36a99a drm/i915/display: Configure HDMI2.1 Pcon for FRL only if Src-Ctl mode is available
1cc3b98548db drm/i915/display: Remove FRL related code from disable DP sequence for older platforms
3814cc7c4593 drm/dp_helper: Define options for FRL training for HDMI2.1 PCON

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/index.html

--===============8490264567339757814==
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
<tr><td><b>Series:</b></td><td>HDMI2.1 PCON Misc Fixes (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86677/">https://patchwork.freedesktop.org/series/86677/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9841 -&gt; Patchwork_19769</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19769 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-kbl-soraka/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-rkl-11500t/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9841/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19769/fi-glk-dsi/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3143">i915#3143</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-bdw-5557u <br />
  Missing    (5): fi-ilk-m540 fi-tgl-dsi fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9841 -&gt; Patchwork_19769</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9841: 443e92e6d6c39f7a3e658d98eec6422b0d6547ba @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6026: 8b8bbecf2f32298544c2f193753a0153f39e7326 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19769: 8237da36a99af388964ee2556f872dcd6bba5d46 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8237da36a99a drm/i915/display: Configure HDMI2.1 Pcon for FRL only if Src-Ctl mode is available<br />
1cc3b98548db drm/i915/display: Remove FRL related code from disable DP sequence for older platforms<br />
3814cc7c4593 drm/dp_helper: Define options for FRL training for HDMI2.1 PCON</p>

</body>
</html>

--===============8490264567339757814==--

--===============1923573623==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1923573623==--
