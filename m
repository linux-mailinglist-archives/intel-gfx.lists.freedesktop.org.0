Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD31FB40EE1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 22:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B31B210E839;
	Tue,  2 Sep 2025 20:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B013910E0A6;
 Tue,  2 Sep 2025 20:51:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============9091446997481553198=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/=7Bi915=2C_xe=7D/pani?=
 =?utf-8?q?c=3A_refactor_framebuffer_allocation_etc=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Sep 2025 20:51:40 -0000
Message-ID: <175684630071.295641.10577033541109280555@1538d3639d33>
X-Patchwork-Hint: ignore
References: <cover.1756835342.git.jani.nikula@intel.com>
In-Reply-To: <cover.1756835342.git.jani.nikula@intel.com>
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

--===============9091446997481553198==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/{i915, xe}/panic: refactor framebuffer allocation etc.
URL   : https://patchwork.freedesktop.org/series/153904/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17118 -> Patchwork_153904v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_153904v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_parallel@engines:
    - bat-rpls-4:         [DMESG-WARN][1] ([i915#13400]) -> [PASS][2] +1 other test pass
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17118/bat-rpls-4/igt@gem_exec_parallel@engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/bat-rpls-4/igt@gem_exec_parallel@engines.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-14:         [DMESG-FAIL][3] ([i915#12061]) -> [PASS][4] +1 other test pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17118/bat-dg2-14/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html
    - bat-mtlp-9:         [DMESG-FAIL][5] ([i915#12061]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17118/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400


Build changes
-------------

  * Linux: CI_DRM_17118 -> Patchwork_153904v1

  CI-20190529: 20190529
  CI_DRM_17118: 2a3d82ded21222e81ffad9a9b4c3144e45ecadf8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8519: 8519
  Patchwork_153904v1: 2a3d82ded21222e81ffad9a9b4c3144e45ecadf8 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/index.html

--===============9091446997481553198==
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
<tr><td><b>Series:</b></td><td>drm/{i915, xe}/panic: refactor framebuffer allocation etc.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/153904/">https://patchwork.freedesktop.org/series/153904/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17118 -&gt; Patchwork_153904v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_153904v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17118/bat-rpls-4/igt@gem_exec_parallel@engines.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/bat-rpls-4/igt@gem_exec_parallel@engines.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17118/bat-dg2-14/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17118/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153904v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17118 -&gt; Patchwork_153904v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17118: 2a3d82ded21222e81ffad9a9b4c3144e45ecadf8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8519: 8519<br />
  Patchwork_153904v1: 2a3d82ded21222e81ffad9a9b4c3144e45ecadf8 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============9091446997481553198==--
