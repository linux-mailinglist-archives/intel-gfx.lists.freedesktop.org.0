Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 126C130C91A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 19:11:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D3C6E0AD;
	Tue,  2 Feb 2021 18:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 06F7F6E09F;
 Tue,  2 Feb 2021 18:11:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 00CB5A73C7;
 Tue,  2 Feb 2021 18:11:35 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 02 Feb 2021 18:11:35 -0000
Message-ID: <161228949597.19548.12871584008655756194@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210202152957.9834-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210202152957.9834-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_notion_of_GEM_from_i915=5Fgem=5Fshrinker=5Ftain?=
 =?utf-8?q?ts=5Fmutex?=
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
Content-Type: multipart/mixed; boundary="===============0732157578=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0732157578==
Content-Type: multipart/alternative;
 boundary="===============0399717206485872977=="

--===============0399717206485872977==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex
URL   : https://patchwork.freedesktop.org/series/86586/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9718 -> Patchwork_19560
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/index.html

Known issues
------------

  Here are the changes found in Patchwork_19560 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_render_tiled_blits@basic:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@gem_render_tiled_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/fi-tgl-y/igt@gem_render_tiled_blits@basic.html

  
#### Possible fixes ####

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [DMESG-WARN][3] ([i915#402]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/fi-tgl-y/igt@gem_linear_blits@basic.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-jsl-1 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9718 -> Patchwork_19560

  CI-20190529: 20190529
  CI_DRM_9718: e123813e002aaa9a6a9d81b0294c93dd1edf9b4f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19560: 140989719221be8e72305c0020f8c3c18c8fc8cb @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

140989719221 drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/index.html

--===============0399717206485872977==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86586/">https://patchwork.freedesktop.org/series/86586/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9718 -&gt; Patchwork_19560</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19560 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_render_tiled_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/fi-tgl-y/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_linear_blits@basic:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9718/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19560/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-jsl-1 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9718 -&gt; Patchwork_19560</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9718: e123813e002aaa9a6a9d81b0294c93dd1edf9b4f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5988: 4581082c706498cc3afe20e89fc4836a3fc69105 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19560: 140989719221be8e72305c0020f8c3c18c8fc8cb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>140989719221 drm/i915: Remove notion of GEM from i915_gem_shrinker_taints_mutex</p>

</body>
</html>

--===============0399717206485872977==--

--===============0732157578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0732157578==--
