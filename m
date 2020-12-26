Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A242E2C9C
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Dec 2020 01:06:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539868999A;
	Sat, 26 Dec 2020 00:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5D7A78999C;
 Sat, 26 Dec 2020 00:06:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 571C4AA0EA;
 Sat, 26 Dec 2020 00:06:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 26 Dec 2020 00:06:36 -0000
Message-ID: <160894119632.24395.8571298437875591705@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201225204938.20248-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201225204938.20248-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/3=5D_drm/i915/gt=3A_Cancel_submitted_req?=
 =?utf-8?q?uests_upon_context_reset_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1296048743=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1296048743==
Content-Type: multipart/alternative;
 boundary="===============3739821209204106738=="

--===============3739821209204106738==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/3] drm/i915/gt: Cancel submitted requests upon context reset (rev2)
URL   : https://patchwork.freedesktop.org/series/85238/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9527 -> Patchwork_19217
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19217 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19217, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19217:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_19217 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-7500u:       [PASS][3] -> [DMESG-FAIL][4] ([i915#165])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][5] ([i915#2029])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-bdw-5557u/igt@runner@aborted.html

  * igt@vgem_basic@setversion:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#402]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-tgl-y/igt@vgem_basic@setversion.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-tgl-y/igt@vgem_basic@setversion.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#2411] / [i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@vgem_basic@create:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-tgl-y/igt@vgem_basic@create.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-tgl-y/igt@vgem_basic@create.html

  
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (40 -> 38)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9527 -> Patchwork_19217

  CI-20190529: 20190529
  CI_DRM_9527: 5f4ab60f910567453058c32e806ed10cc72cd8d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5922: 334f0c326bb2812e7a2764dc63ff83c83b6daf58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19217: 4b5df9a7f3a9ad5b2f4454ccc19e86aa4c8a8595 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

4b5df9a7f3a9 drm/i915/gem: Peek at the inflight context
bb38680d5740 drm/i915/gt: Pull context closure check from request submit to schedule-in
7828a509e7de drm/i915/gt: Cancel submitted requests upon context reset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/index.html

--===============3739821209204106738==
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
<tr><td><b>Series:</b></td><td>series starting with [1/3] drm/i915/gt: Cancel submitted requests upon context reset (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85238/">https://patchwork.freedesktop.org/series/85238/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9527 -&gt; Patchwork_19217</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19217 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19217, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19217:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@hdmi-crc-fast:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19217 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-tgl-y/igt@vgem_basic@setversion.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-tgl-y/igt@vgem_basic@setversion.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9527/fi-tgl-y/igt@vgem_basic@create.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19217/fi-tgl-y/igt@vgem_basic@create.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9527 -&gt; Patchwork_19217</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9527: 5f4ab60f910567453058c32e806ed10cc72cd8d7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5922: 334f0c326bb2812e7a2764dc63ff83c83b6daf58 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19217: 4b5df9a7f3a9ad5b2f4454ccc19e86aa4c8a8595 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>4b5df9a7f3a9 drm/i915/gem: Peek at the inflight context<br />
bb38680d5740 drm/i915/gt: Pull context closure check from request submit to schedule-in<br />
7828a509e7de drm/i915/gt: Cancel submitted requests upon context reset</p>

</body>
</html>

--===============3739821209204106738==--

--===============1296048743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1296048743==--
