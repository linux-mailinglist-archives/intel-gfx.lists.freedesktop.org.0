Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F347FAAC9DE
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 17:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 899C410E6EB;
	Tue,  6 May 2025 15:48:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CD3810E355;
 Tue,  6 May 2025 15:48:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7256842338767776171=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_ALPM_rework_and_fixes_=28?=
 =?utf-8?q?rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 06 May 2025 15:48:22 -0000
Message-ID: <174654650230.51804.14556049902858919553@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250506144912.1848606-1-jouni.hogander@intel.com>
In-Reply-To: <20250506144912.1848606-1-jouni.hogander@intel.com>
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

--===============7256842338767776171==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: ALPM rework and fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/148620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16507 -> Patchwork_148620v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): bat-rpls-4 

Known issues
------------

  Here are the changes found in Patchwork_148620v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][1] -> [DMESG-FAIL][2] ([i915#12061]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-mtlp-8/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@slpc:
    - bat-arlh-2:         NOTRUN -> [INCOMPLETE][3] ([i915#14065])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-2/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][4] -> [DMESG-FAIL][5] ([i915#12061]) +1 other test dmesg-fail
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-twl-1:          [DMESG-WARN][6] ([i915#13736]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-twl-1/igt@i915_module_load@load.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-twl-1/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gem:
    - bat-arlh-2:         [ABORT][8] ([i915#13723]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arlh-2/igt@i915_selftest@live@gem.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-2/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-6:         [DMESG-FAIL][10] ([i915#12061]) -> [PASS][11] +1 other test pass
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [ABORT][12] ([i915#13723]) -> [INCOMPLETE][13] ([i915#14046])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arlh-2/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-2/igt@i915_selftest@live.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
  [i915#13736]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#14065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14065


Build changes
-------------

  * Linux: CI_DRM_16507 -> Patchwork_148620v2

  CI-20190529: 20190529
  CI_DRM_16507: 9f365ea4cf81b0d81ad82903e5605894ca4aba98 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8354: 59f7153426484367f58edfafb6567ce4e6a9e499 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_148620v2: 9f365ea4cf81b0d81ad82903e5605894ca4aba98 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/index.html

--===============7256842338767776171==
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
<tr><td><b>Series:</b></td><td>ALPM rework and fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/148620/">https://patchwork.freedesktop.org/series/148620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16507 -&gt; Patchwork_148620v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): bat-rpls-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_148620v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-2/igt@i915_selftest@live@slpc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14065">i915#14065</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-twl-1/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13736">i915#13736</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-twl-1/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arlh-2/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-2/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16507/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148620v2/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16507 -&gt; Patchwork_148620v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16507: 9f365ea4cf81b0d81ad82903e5605894ca4aba98 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8354: 59f7153426484367f58edfafb6567ce4e6a9e499 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_148620v2: 9f365ea4cf81b0d81ad82903e5605894ca4aba98 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7256842338767776171==--
