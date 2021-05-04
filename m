Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 459A9372F07
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 19:38:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53BD26EB3F;
	Tue,  4 May 2021 17:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 07B816EB3D;
 Tue,  4 May 2021 17:38:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3251A008A;
 Tue,  4 May 2021 17:38:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 04 May 2021 17:38:50 -0000
Message-ID: <162014993096.3296.9557340490276964648@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210504164136.96456-1-matthew.auld@intel.com>
In-Reply-To: <20210504164136.96456-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_drop_the_=5F=5Fi915=5Factive=5Fcall_pointer_packing?=
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
Content-Type: multipart/mixed; boundary="===============2019465423=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2019465423==
Content-Type: multipart/alternative;
 boundary="===============5540609651753365614=="

--===============5540609651753365614==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: drop the __i915_active_call pointer packing
URL   : https://patchwork.freedesktop.org/series/89783/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10045 -> Patchwork_20063
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20063 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20063, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20063:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-nick:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-bsw-nick/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-bsw-nick/igt@gem_exec_suspend@basic-s3.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-kbl-guc:         [SKIP][3] ([fdo#109271]) -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  
Known issues
------------

  Here are the changes found in Patchwork_20063 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_pm:
    - fi-tgl-y:           NOTRUN -> [DMESG-FAIL][5] ([i915#1759])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-tgl-y/igt@i915_selftest@live@gt_pm.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][6] ([i915#1602])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [DMESG-FAIL][7] ([i915#165]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_lrc:
    - fi-tgl-y:           [INCOMPLETE][9] ([i915#750]) -> [DMESG-FAIL][10] ([i915#2373])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#2373]: https://gitlab.freedesktop.org/drm/intel/issues/2373
  [i915#750]: https://gitlab.freedesktop.org/drm/intel/issues/750


Participating hosts (46 -> 41)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10045 -> Patchwork_20063

  CI-20190529: 20190529
  CI_DRM_10045: 8b9076c39b4c5ba95ae5c31ef339947315e9f33b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20063: 332fdd12146316a349d5e148ea39562d1f8b3a5f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

332fdd121463 drm/i915: drop the __i915_active_call pointer packing

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/index.html

--===============5540609651753365614==
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
<tr><td><b>Series:</b></td><td>drm/i915: drop the __i915_active_call pointer packing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89783/">https://patchwork.freedesktop.org/series/89783/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10045 -&gt; Patchwork_20063</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20063 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20063, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20063:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-bsw-nick/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-bsw-nick/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-pci-d3-state:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-kbl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20063 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-tgl-y/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1759">i915#1759</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/750">i915#750</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20063/fi-tgl-y/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2373">i915#2373</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 41)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10045 -&gt; Patchwork_20063</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10045: 8b9076c39b4c5ba95ae5c31ef339947315e9f33b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20063: 332fdd12146316a349d5e148ea39562d1f8b3a5f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>332fdd121463 drm/i915: drop the __i915_active_call pointer packing</p>

</body>
</html>

--===============5540609651753365614==--

--===============2019465423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2019465423==--
