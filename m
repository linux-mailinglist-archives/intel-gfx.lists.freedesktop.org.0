Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9F7B1A58D
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 17:11:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 772E410E36D;
	Mon,  4 Aug 2025 15:11:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E422610E36D;
 Mon,  4 Aug 2025 15:11:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7348141335737476894=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_fix_CONFIG=5FDRM=5FUSE=5F?=
 =?utf-8?q?DYNAMIC=5FDEBUG=3Dy_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jim Cromie" <jim.cromie@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 04 Aug 2025 15:11:09 -0000
Message-ID: <175432026992.211108.4292874659524234212@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250803035816.603405-1-jim.cromie@gmail.com>
In-Reply-To: <20250803035816.603405-1-jim.cromie@gmail.com>
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

--===============7348141335737476894==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fix CONFIG_DRM_USE_DYNAMIC_DEBUG=y (rev5)
URL   : https://patchwork.freedesktop.org/series/135705/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16955 -> Patchwork_135705v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/index.html

Participating hosts (45 -> 44)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_135705v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [PASS][1] -> [ABORT][2] ([i915#12904]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-apl-1/igt@dmabuf@all-tests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [PASS][3] -> [ABORT][4] ([i915#13494])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-mtlp-9/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-mtlp-9/igt@i915_module_load@load.html

  * igt@i915_module_load@reload:
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-WARN][6] ([i915#13735] / [i915#13890]) +2 other tests dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@i915_module_load@reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@too-high:
    - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] ([i915#13735]) +47 other tests dmesg-warn
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html

  
#### Possible fixes ####

  * igt@core_auth@basic-auth:
    - fi-cfl-8109u:       [DMESG-WARN][13] ([i915#13890]) -> [PASS][14] +1 other test pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@core_auth@basic-auth.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@core_auth@basic-auth.html

  * igt@i915_selftest@live:
    - bat-jsl-1:          [DMESG-FAIL][15] ([i915#13774]) -> [PASS][16] +1 other test pass
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-jsl-1/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-jsl-1/igt@i915_selftest@live.html

  
#### Warnings ####

  * igt@kms_pipe_crc_basic@read-crc:
    - fi-cfl-8109u:       [DMESG-WARN][17] ([i915#13890]) -> [DMESG-WARN][18] ([i915#13735] / [i915#13890]) +46 other tests dmesg-warn
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
  [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
  [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
  [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890


Build changes
-------------

  * Linux: CI_DRM_16955 -> Patchwork_135705v5

  CI-20190529: 20190529
  CI_DRM_16955: 8ef111c44cc83f182055c33c552523ac3f3f7a97 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8483: 8483
  Patchwork_135705v5: 8ef111c44cc83f182055c33c552523ac3f3f7a97 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/index.html

--===============7348141335737476894==
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
<tr><td><b>Series:</b></td><td>fix CONFIG_DRM_USE_DYNAMIC_DEBUG=y (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135705/">https://patchwork.freedesktop.org/series/135705/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16955 -&gt; Patchwork_135705v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/index.html</p>
<h2>Participating hosts (45 -&gt; 44)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135705v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-apl-1/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-mtlp-9/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@kms_addfb_basic@too-high.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a>) +47 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@core_auth@basic-auth.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@core_auth@basic-auth.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774">i915#13774</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc:<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16955/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135705v5/fi-cfl-8109u/igt@kms_pipe_crc_basic@read-crc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735">i915#13735</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890">i915#13890</a>) +46 other tests dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16955 -&gt; Patchwork_135705v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16955: 8ef111c44cc83f182055c33c552523ac3f3f7a97 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8483: 8483<br />
  Patchwork_135705v5: 8ef111c44cc83f182055c33c552523ac3f3f7a97 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7348141335737476894==--
