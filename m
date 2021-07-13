Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F09D3C758B
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 19:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 951C06E101;
	Tue, 13 Jul 2021 17:09:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5B5126E101;
 Tue, 13 Jul 2021 17:09:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 542A7A008A;
 Tue, 13 Jul 2021 17:09:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Tue, 13 Jul 2021 17:09:47 -0000
Message-ID: <162619618733.713.7466442371998579276@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713135922.1384264-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210713135922.1384264-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/fb-helper=3A_Try_to_protect_cleanup_against_delayed_setup?=
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
Content-Type: multipart/mixed; boundary="===============1115556428=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1115556428==
Content-Type: multipart/alternative;
 boundary="===============7461407555337676084=="

--===============7461407555337676084==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/fb-helper: Try to protect cleanup against delayed setup
URL   : https://patchwork.freedesktop.org/series/92478/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10341 -> Patchwork_20587
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/index.html

Known issues
------------

  Here are the changes found in Patchwork_20587 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8109u:       [PASS][2] -> [DMESG-WARN][3] ([i915#203]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10341/fi-cfl-8109u/igt@i915_selftest@live@execlists.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/fi-cfl-8109u/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][4] ([i915#1602] / [i915#2029])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/fi-bdw-5557u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10341 -> Patchwork_20587

  CI-20190529: 20190529
  CI_DRM_10341: 72a4e94d9585ff89a8c85bd1436fb05b60dad2f8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20587: b0ba74e0d5e3af9a36ca12804924a802b41617de @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b0ba74e0d5e3 drm/fb-helper: Try to protect cleanup against delayed setup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/index.html

--===============7461407555337676084==
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
<tr><td><b>Series:</b></td><td>drm/fb-helper: Try to protect cleanup against delayed setup</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92478/">https://patchwork.freedesktop.org/series/92478/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10341 -&gt; Patchwork_20587</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20587 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10341/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/fi-cfl-8109u/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20587/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10341 -&gt; Patchwork_20587</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10341: 72a4e94d9585ff89a8c85bd1436fb05b60dad2f8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6137: 2fee489255f7a8cd6a584373c30e3d44a07a78ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20587: b0ba74e0d5e3af9a36ca12804924a802b41617de @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b0ba74e0d5e3 drm/fb-helper: Try to protect cleanup against delayed setup</p>

</body>
</html>

--===============7461407555337676084==--

--===============1115556428==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1115556428==--
