Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAA8A87DE9
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 12:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A47010E0CB;
	Mon, 14 Apr 2025 10:46:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b68e5b3b99e1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7122B10E0CB;
 Mon, 14 Apr 2025 10:46:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2963583219131677565=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_Macro_for_3_DSC_engines_p?=
 =?utf-8?q?er_pipe_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Apr 2025 10:46:34 -0000
Message-ID: <174462759445.800.17496929864029741710@b68e5b3b99e1>
X-Patchwork-Hint: ignore
References: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20250414024256.2782702-1-ankit.k.nautiyal@intel.com>
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

--===============2963583219131677565==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Macro for 3 DSC engines per pipe (rev2)
URL   : https://patchwork.freedesktop.org/series/147643/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16412 -> Patchwork_147643v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_147643v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-apl-1:          NOTRUN -> [SKIP][1] +3 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/bat-apl-1/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - bat-apl-1:          [ABORT][2] ([i915#14097]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16412/bat-apl-1/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/bat-apl-1/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [DMESG-WARN][4] ([i915#13494]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16412/bat-mtlp-9/igt@i915_module_load@load.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/bat-mtlp-9/igt@i915_module_load@load.html

  
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#14097]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14097


Build changes
-------------

  * Linux: CI_DRM_16412 -> Patchwork_147643v2

  CI-20190529: 20190529
  CI_DRM_16412: 8d0b26a073a34e4eeef766fb53b62e7ec19f9456 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8317: 8317
  Patchwork_147643v2: 8d0b26a073a34e4eeef766fb53b62e7ec19f9456 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/index.html

--===============2963583219131677565==
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
<tr><td><b>Series:</b></td><td>Macro for 3 DSC engines per pipe (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/147643/">https://patchwork.freedesktop.org/series/147643/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16412 -&gt; Patchwork_147643v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_147643v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@parallel-random-engines:<ul>
<li>bat-apl-1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/bat-apl-1/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16412/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14097">i915#14097</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/bat-apl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16412/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147643v2/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16412 -&gt; Patchwork_147643v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16412: 8d0b26a073a34e4eeef766fb53b62e7ec19f9456 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8317: 8317<br />
  Patchwork_147643v2: 8d0b26a073a34e4eeef766fb53b62e7ec19f9456 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============2963583219131677565==--
