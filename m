Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 706E44635CA
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 14:49:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50CE86E046;
	Tue, 30 Nov 2021 13:48:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDDE96E046;
 Tue, 30 Nov 2021 13:48:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E735CAA914;
 Tue, 30 Nov 2021 13:48:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1394355115664912954=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Tue, 30 Nov 2021 13:48:56 -0000
Message-ID: <163828013694.20413.1773515373210647746@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20211130121936.586031-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQXR0?=
 =?utf-8?q?empt_to_avoid_dma-fence-=5Bchain=7Carray=5D_lockdep_splats?=
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

--===============1394355115664912954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Attempt to avoid dma-fence-[chain|array] lockdep splats
URL   : https://patchwork.freedesktop.org/series/97410/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10943 -> Patchwork_21700
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/index.html

Participating hosts (38 -> 33)
------------------------------

  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21700 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][1] -> [INCOMPLETE][2] ([i915#4433])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#4269])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-rkl-guc:         [FAIL][5] ([i915#3928] / [i915#4312]) -> [FAIL][6] ([i915#2426] / [i915#3928] / [i915#4312])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-rkl-guc/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4433]: https://gitlab.freedesktop.org/drm/intel/issues/4433


Build changes
-------------

  * Linux: CI_DRM_10943 -> Patchwork_21700

  CI-20190529: 20190529
  CI_DRM_10943: f506b61984977c7785a54b8860720bfb5334aa08 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6295: 2d7f671b872ed856a97957051098974be2380019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21700: 185999e31f8f0463e2ad850652473fc03f82b17b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

185999e31f8f dma-fence: Avoid excessive recursive fence locking from enable_signaling() callbacks
641529efe715 dma-fence: Avoid establishing a locking order between fence classes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/index.html

--===============1394355115664912954==
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
<tr><td><b>Series:</b></td><td>Attempt to avoid dma-fence-[chain|array] lockdep splats</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97410/">https://patchwork.freedesktop.org/series/97410/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10943 -&gt; Patchwork_21700</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/index.html</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21700 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4433">i915#4433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21700/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10943 -&gt; Patchwork_21700</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10943: f506b61984977c7785a54b8860720bfb5334aa08 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6295: 2d7f671b872ed856a97957051098974be2380019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21700: 185999e31f8f0463e2ad850652473fc03f82b17b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>185999e31f8f dma-fence: Avoid excessive recursive fence locking from enable_signaling() callbacks<br />
641529efe715 dma-fence: Avoid establishing a locking order between fence classes</p>

</body>
</html>

--===============1394355115664912954==--
