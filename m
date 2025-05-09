Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E23AB1D41
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 21:26:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2F7C10EAC5;
	Fri,  9 May 2025 19:26:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from c664b1dc75d1 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A9310EAC5;
 Fri,  9 May 2025 19:26:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6342420428421424632=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/dp=5Fmst=3A_Add_?=
 =?utf-8?q?support_for_fractional_link_bpps_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 09 May 2025 19:26:09 -0000
Message-ID: <174681876900.65647.1343231861827878256@c664b1dc75d1>
X-Patchwork-Hint: ignore
References: <20250509180340.554867-1-imre.deak@intel.com>
In-Reply-To: <20250509180340.554867-1-imre.deak@intel.com>
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

--===============6342420428421424632==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp_mst: Add support for fractional link bpps (rev4)
URL   : https://patchwork.freedesktop.org/series/147435/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16525 -> Patchwork_147435v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/index.html

Participating hosts (44 -> 44)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_147435v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem:
    - bat-arlh-2:         NOTRUN -> [ABORT][1] ([i915#13723])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-arlh-2/igt@i915_selftest@live@gem.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-arlh-2:         [INCOMPLETE][2] ([i915#14046]) -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-2/igt@i915_selftest@live@gt_pm.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-arlh-2/igt@i915_selftest@live@gt_pm.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arlh-2:         [INCOMPLETE][4] ([i915#14046]) -> [ABORT][5] ([i915#13723])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-2/igt@i915_selftest@live.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-arlh-2/igt@i915_selftest@live.html
    - bat-atsm-1:         [DMESG-FAIL][6] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][7] ([i915#12061] / [i915#13929])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-atsm-1/igt@i915_selftest@live.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][8] ([i915#14204]) -> [DMESG-FAIL][9] ([i915#13929])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-atsm-1/igt@i915_selftest@live@mman.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204


Build changes
-------------

  * Linux: CI_DRM_16525 -> Patchwork_147435v4

  CI-20190529: 20190529
  CI_DRM_16525: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8359: 807f0cbcc771d1d0bb0d27a78231a5f92dc02126 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_147435v4: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/index.html

--===============6342420428421424632==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp_mst: Add support for fractional link bpps (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/147435/">https://patchwork.freedesktop.org/series/147435/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16525 -&gt; Patchwork_147435v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/index.html</p>
<h2>Participating hosts (44 -&gt; 44)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_147435v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>bat-arlh-2:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-arlh-2/igt@i915_selftest@live@gem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-arlh-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-arlh-2/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046">i915#14046</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-arlh-2/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13723">i915#13723</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16525/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147435v4/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16525 -&gt; Patchwork_147435v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16525: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8359: 807f0cbcc771d1d0bb0d27a78231a5f92dc02126 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_147435v4: b0db97d4270c697ade930cfefdb7aaef12cd80c9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6342420428421424632==--
