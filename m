Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7803630D677
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 10:40:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E706EA36;
	Wed,  3 Feb 2021 09:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 085636EA1F;
 Wed,  3 Feb 2021 09:40:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E3420A47E9;
 Wed,  3 Feb 2021 09:40:12 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 09:40:12 -0000
Message-ID: <161234521289.946.3007899194927176718@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203065350.24476-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203065350.24476-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Move_engine_set?=
 =?utf-8?q?up_out_of_set=5Fdefault=5Fsubmission_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1110559688=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1110559688==
Content-Type: multipart/alternative;
 boundary="===============2332241824076089964=="

--===============2332241824076089964==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/gt: Move engine setup out of set_default_submission (rev2)
URL   : https://patchwork.freedesktop.org/series/86603/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9721 -> Patchwork_19568
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/index.html

Known issues
------------

  Here are the changes found in Patchwork_19568 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [PASS][1] -> [INCOMPLETE][2] ([i915#142] / [i915#2405])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-byt-j1900:       NOTRUN -> [FAIL][5] ([i915#1814] / [i915#2505])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-byt-j1900/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][6] ([i915#402]) -> [PASS][7] +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][8] ([i915#579]) -> [SKIP][9] ([fdo#109271])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#142]: https://gitlab.freedesktop.org/drm/intel/issues/142
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-jsl-1 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9721 -> Patchwork_19568

  CI-20190529: 20190529
  CI_DRM_9721: 2bd88ea627421f4c9179740592f21c2789e1afda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19568: c9c271b4630aa3a04aa4e1e9fb42ce499dac1612 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c9c271b4630a drm/i915/gt: Move CS interrupt handler to the backend
2857d50bc7e3 drm/i915/gt: Move submission_method into intel_gt
1a1e64e24b3b drm/i915/gt: Move engine setup out of set_default_submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/index.html

--===============2332241824076089964==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/gt: Move engine setup out of set_default_submission (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86603/">https://patchwork.freedesktop.org/series/86603/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9721 -&gt; Patchwork_19568</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19568 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/142">i915#142</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2405">i915#2405</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-byt-j1900:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-byt-j1900/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19568/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-jsl-1 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9721 -&gt; Patchwork_19568</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9721: 2bd88ea627421f4c9179740592f21c2789e1afda @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19568: c9c271b4630aa3a04aa4e1e9fb42ce499dac1612 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c9c271b4630a drm/i915/gt: Move CS interrupt handler to the backend<br />
2857d50bc7e3 drm/i915/gt: Move submission_method into intel_gt<br />
1a1e64e24b3b drm/i915/gt: Move engine setup out of set_default_submission</p>

</body>
</html>

--===============2332241824076089964==--

--===============1110559688==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1110559688==--
