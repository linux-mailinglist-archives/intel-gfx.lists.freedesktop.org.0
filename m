Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE762D521F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 04:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1293F6E808;
	Thu, 10 Dec 2020 03:55:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 21ACD6E7FA;
 Thu, 10 Dec 2020 03:55:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 03592A7DFB;
 Thu, 10 Dec 2020 03:55:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 10 Dec 2020 03:55:27 -0000
Message-ID: <160757252798.19116.13719728137626427675@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210011720.26649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201210011720.26649-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Split_logical_ring_contexts_from_execlist_submissio?=
 =?utf-8?q?n?=
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
Content-Type: multipart/mixed; boundary="===============1015822351=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1015822351==
Content-Type: multipart/alternative;
 boundary="===============5831965672980538055=="

--===============5831965672980538055==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Split logical ring contexts from execlist submission
URL   : https://patchwork.freedesktop.org/series/84752/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9467 -> Patchwork_19102
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19102 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19102, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19102:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-snb-2600:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html

  
Known issues
------------

  Here are the changes found in Patchwork_19102 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-x1275:       [PASS][3] -> [DMESG-FAIL][4] ([i915#2291] / [i915#541])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][5] ([i915#698])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/fi-snb-2600/igt@runner@aborted.html

  
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#698]: https://gitlab.freedesktop.org/drm/intel/issues/698


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-tgl-y fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9467 -> Patchwork_19102

  CI-20190529: 20190529
  CI_DRM_9467: 97bdde324e46e276a88de5d2d0c759b4309173c6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5886: c65fd1fbc26e9f65756d130d33b0ed56bc8faec7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19102: fe020da17c4c93b9dab7fb4c9f665e6d41cb685b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fe020da17c4c drm/i915/gt: Split logical ring contexts from execlist submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/index.html

--===============5831965672980538055==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Split logical ring contexts from execlist submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84752/">https://patchwork.freedesktop.org/series/84752/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9467 -&gt; Patchwork_19102</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19102 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19102, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19102:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19102 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9467/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/fi-kbl-x1275/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19102/fi-snb-2600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/698">i915#698</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-tgl-y fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9467 -&gt; Patchwork_19102</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9467: 97bdde324e46e276a88de5d2d0c759b4309173c6 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5886: c65fd1fbc26e9f65756d130d33b0ed56bc8faec7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19102: fe020da17c4c93b9dab7fb4c9f665e6d41cb685b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fe020da17c4c drm/i915/gt: Split logical ring contexts from execlist submission</p>

</body>
</html>

--===============5831965672980538055==--

--===============1015822351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1015822351==--
