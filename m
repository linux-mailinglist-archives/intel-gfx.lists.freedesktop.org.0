Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D58F95F2F7
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 15:33:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC41210E135;
	Mon, 26 Aug 2024 13:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A02A10E135;
 Mon, 26 Aug 2024 13:33:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1497690835386801446=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/xe=3A_Align_all_VRAM_sc?=
 =?utf-8?q?anout_buffers_to_64k_physical_pages_when_needed=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 26 Aug 2024 13:33:36 -0000
Message-ID: <172467921629.784489.7734504916637621117@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240826095041.75416-1-maarten.lankhorst@linux.intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1497690835386801446==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe: Align all VRAM scanout buffers to 64k physical pages when needed.
URL   : https://patchwork.freedesktop.org/series/137785/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15291 -> Patchwork_137785v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/index.html

Participating hosts (37 -> 33)
------------------------------

  Missing    (4): bat-dg1-7 bat-arlh-2 bat-jsl-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_137785v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-2:         [PASS][1] -> [DMESG-WARN][2] ([i915#11349])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15291/bat-arls-2/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html
    - bat-arls-1:         [PASS][3] -> [DMESG-WARN][4] ([i915#11349])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15291/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@bcs0:
    - bat-twl-2:          [FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15291/bat-twl-2/igt@gem_exec_fence@basic-await@bcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/bat-twl-2/igt@gem_exec_fence@basic-await@bcs0.html

  
  [i915#11349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349


Build changes
-------------

  * Linux: CI_DRM_15291 -> Patchwork_137785v1

  CI-20190529: 20190529
  CI_DRM_15291: 3180bea570dadc713d6f1cc50662818d684cfb4a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7991: e5cbe548dbd6ee44200a83745a605643a1a4c714 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137785v1: 3180bea570dadc713d6f1cc50662818d684cfb4a @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/index.html

--===============1497690835386801446==
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
<tr><td><b>Series:</b></td><td>drm/xe: Align all VRAM scanout buffers to 64k physical pages when needed.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137785/">https://patchwork.freedesktop.org/series/137785/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15291 -&gt; Patchwork_137785v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/index.html</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): bat-dg1-7 bat-arlh-2 bat-jsl-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137785v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15291/bat-arls-2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/bat-arls-2/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15291/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/bat-arls-1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11349">i915#11349</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_fence@basic-await@bcs0:<ul>
<li>bat-twl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15291/bat-twl-2/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137785v1/bat-twl-2/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15291 -&gt; Patchwork_137785v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15291: 3180bea570dadc713d6f1cc50662818d684cfb4a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7991: e5cbe548dbd6ee44200a83745a605643a1a4c714 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137785v1: 3180bea570dadc713d6f1cc50662818d684cfb4a @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1497690835386801446==--
