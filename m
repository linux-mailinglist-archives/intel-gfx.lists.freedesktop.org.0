Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9D930D729
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 11:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B1536EA45;
	Wed,  3 Feb 2021 10:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0E0CD6EA41;
 Wed,  3 Feb 2021 10:14:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 06845A47E1;
 Wed,  3 Feb 2021 10:14:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 03 Feb 2021 10:14:33 -0000
Message-ID: <161234727302.944.4723662482064104907@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203083841.19735-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210203083841.19735-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Apply_VT-d_scanout_adjustment_to_the_VMA?=
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
Content-Type: multipart/mixed; boundary="===============0884488919=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0884488919==
Content-Type: multipart/alternative;
 boundary="===============0607006073963528733=="

--===============0607006073963528733==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Apply VT-d scanout adjustment to the VMA
URL   : https://patchwork.freedesktop.org/series/86625/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9721 -> Patchwork_19569
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html

Known issues
------------

  Here are the changes found in Patchwork_19569 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-WARN][2] ([i915#2605])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][5] -> [INCOMPLETE][6] ([i915#2940])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-kbl-x1275:       [PASS][7] -> [DMESG-WARN][8] ([i915#92])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-x1275/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-kbl-x1275/igt@kms_frontbuffer_tracking@basic.html

  * igt@runner@aborted:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][9] ([i915#1436])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-bsw-n3050/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_mmap_gtt@basic:
    - fi-tgl-y:           [DMESG-WARN][10] ([i915#402]) -> [PASS][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_mmap_gtt@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-tgl-y/igt@gem_mmap_gtt@basic.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [FAIL][12] ([i915#579]) -> [SKIP][13] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-byt-j1900 fi-jsl-1 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9721 -> Patchwork_19569

  CI-20190529: 20190529
  CI_DRM_9721: 2bd88ea627421f4c9179740592f21c2789e1afda @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19569: d876462b4feb8e38538b3787a5c90937ee66f35d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d876462b4feb drm/i915: Apply VT-d scanout adjustment to the VMA

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html

--===============0607006073963528733==
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
<tr><td><b>Series:</b></td><td>drm/i915: Apply VT-d scanout adjustment to the VMA</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86625/">https://patchwork.freedesktop.org/series/86625/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9721 -&gt; Patchwork_19569</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19569 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-x1275/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-kbl-x1275/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_mmap_gtt@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-tgl-y/igt@gem_mmap_gtt@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-tgl-y/igt@gem_mmap_gtt@basic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9721/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19569/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-byt-j1900 fi-jsl-1 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9721 -&gt; Patchwork_19569</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9721: 2bd88ea627421f4c9179740592f21c2789e1afda @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19569: d876462b4feb8e38538b3787a5c90937ee66f35d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d876462b4feb drm/i915: Apply VT-d scanout adjustment to the VMA</p>

</body>
</html>

--===============0607006073963528733==--

--===============0884488919==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0884488919==--
