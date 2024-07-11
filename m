Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4242D92E317
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 11:06:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D928410E9B3;
	Thu, 11 Jul 2024 09:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8937010E9B3;
 Thu, 11 Jul 2024 09:06:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8086914127540781129=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_Ultrajoiner_basic_functiona?=
 =?utf-8?q?lity_series_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2024 09:06:40 -0000
Message-ID: <172068880055.124811.14487681056174970306@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20240711081441.17415-1-stanislav.lisovskiy@intel.com>
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

--===============8086914127540781129==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Ultrajoiner basic functionality series (rev5)
URL   : https://patchwork.freedesktop.org/series/133800/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15060 -> Patchwork_133800v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/index.html

Participating hosts (41 -> 37)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (5): fi-bsw-n3050 fi-snb-2520m fi-cfl-8109u bat-dg2-11 bat-mtlp-8 

Known issues
------------

  Here are the changes found in Patchwork_133800v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@parallel-random-engines:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] +19 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@objects:
    - bat-arlh-2:         [INCOMPLETE][2] ([i915#11378]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15060/bat-arlh-2/igt@i915_selftest@live@objects.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/bat-arlh-2/igt@i915_selftest@live@objects.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [DMESG-WARN][4] ([i915#7507]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15060/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507


Build changes
-------------

  * Linux: CI_DRM_15060 -> Patchwork_133800v5

  CI-20190529: 20190529
  CI_DRM_15060: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7922: 325d4f4efbf869f93d3b4479046713d0ce7220e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_133800v5: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/index.html

--===============8086914127540781129==
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
<tr><td><b>Series:</b></td><td>Ultrajoiner basic functionality series (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/133800/">https://patchwork.freedesktop.org/series/133800/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15060 -&gt; Patchwork_133800v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/index.html</p>
<h2>Participating hosts (41 -&gt; 37)</h2>
<p>Additional (1): fi-bsw-nick <br />
  Missing    (5): fi-bsw-n3050 fi-snb-2520m fi-cfl-8109u bat-dg2-11 bat-mtlp-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_133800v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@parallel-random-engines:<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15060/bat-arlh-2/igt@i915_selftest@live@objects.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/bat-arlh-2/igt@i915_selftest@live@objects.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15060/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133800v5/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15060 -&gt; Patchwork_133800v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15060: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7922: 325d4f4efbf869f93d3b4479046713d0ce7220e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_133800v5: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8086914127540781129==--
