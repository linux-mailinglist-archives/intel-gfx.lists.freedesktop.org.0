Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE98497097
	for <lists+intel-gfx@lfdr.de>; Sun, 23 Jan 2022 09:37:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8798010EF39;
	Sun, 23 Jan 2022 08:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E42410EF33;
 Sun, 23 Jan 2022 08:37:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 79962A00CC;
 Sun, 23 Jan 2022 08:37:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4980128895126811603=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dhanavanthri, Swathi" <swathi.dhanavanthri@intel.com>
Date: Sun, 23 Jan 2022 08:37:53 -0000
Message-ID: <164292707346.8371.11915900757985454409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120234147.1200574-1-matthew.d.roper@intel.com>
In-Reply-To: <20220120234147.1200574-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_Wa=5F18018781329_=28rev5=29?=
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

--===============4980128895126811603==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Add Wa_18018781329 (rev5)
URL   : https://patchwork.freedesktop.org/series/99128/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11120 -> Patchwork_22069
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22069 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22069, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/index.html

Participating hosts (49 -> 41)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (9): fi-ilk-m540 shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 bat-jsl-2 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22069:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/fi-tgl-1115g4/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22069 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-pnv-d510:        NOTRUN -> [SKIP][2] ([fdo#109271]) +57 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][3] ([i915#4269]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269


Build changes
-------------

  * Linux: CI_DRM_11120 -> Patchwork_22069

  CI-20190529: 20190529
  CI_DRM_11120: d8e524ded1a6cb24bbd2da0785b04f199c03f1b9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22069: 0b7255177bf426bf4f2ce1774709d658151f55f9 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0b7255177bf4 drm/i915/dg2: Add Wa_18018781329

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/index.html

--===============4980128895126811603==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Add Wa_18018781329 (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/99128/">https://patchwork.freedesktop.org/series/99128/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11120 -&gt; Patchwork_22069</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22069 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22069, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/index.html</p>
<h2>Participating hosts (49 -&gt; 41)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (9): fi-ilk-m540 shard-tglu fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 shard-rkl shard-dg1 bat-jsl-2 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22069:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22069 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_huc_copy@huc-copy:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/fi-pnv-d510/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11120/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22069/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11120 -&gt; Patchwork_22069</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11120: d8e524ded1a6cb24bbd2da0785b04f199c03f1b9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6330: f73008bac9a8db0779264b170f630483e9165764 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22069: 0b7255177bf426bf4f2ce1774709d658151f55f9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0b7255177bf4 drm/i915/dg2: Add Wa_18018781329</p>

</body>
</html>

--===============4980128895126811603==--
