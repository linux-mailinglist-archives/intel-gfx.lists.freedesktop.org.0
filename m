Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B4BC8CF2
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 13:29:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB51E10E9C2;
	Thu,  9 Oct 2025 11:29:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6aec98b87f92 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 699A910E9C1;
 Thu,  9 Oct 2025 11:29:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6158022217433004870=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_User_readable_error_codes?=
 =?utf-8?q?_on_atomic=5Fioctl_failure_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 09 Oct 2025 11:29:07 -0000
Message-ID: <176000934742.22985.14220882184762019528@6aec98b87f92>
X-Patchwork-Hint: ignore
References: <20251009-atomic-v6-0-d209709cc3ba@intel.com>
In-Reply-To: <20251009-atomic-v6-0-d209709cc3ba@intel.com>
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

--===============6158022217433004870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: User readable error codes on atomic_ioctl failure (rev5)
URL   : https://patchwork.freedesktop.org/series/152275/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17329 -> Patchwork_152275v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_152275v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-6:         [PASS][1] -> [ABORT][2] ([i915#14365]) +1 other test abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-adlp-6/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_pm:
    - bat-jsl-1:          [PASS][3] -> [DMESG-FAIL][4] ([i915#13774])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-jsl-1/igt@i915_selftest@live@gt_pm.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-jsl-1/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-dg2-9/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [PASS][7] -> [DMESG-FAIL][8] ([i915#12061]) +1 other test dmesg-fail
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-arls-6/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - bat-jsl-1:          [DMESG-FAIL][9] ([i915#14808]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-jsl-1/igt@i915_selftest@live@active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-jsl-1/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@client:
    - bat-dg2-11:         [INCOMPLETE][11] ([i915#14201]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-dg2-11/igt@i915_selftest@live@client.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-dg2-11/igt@i915_selftest@live@client.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [DMESG-FAIL][13] ([i915#14808]) -> [DMESG-FAIL][14] ([i915#13774])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-jsl-1/igt@i915_selftest@live.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-jsl-1/igt@i915_selftest@live.html
    - bat-dg2-11:         [INCOMPLETE][15] ([i915#12061] / [i915#14818]) -> [DMESG-FAIL][16] ([i915#12061])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-dg2-11/igt@i915_selftest@live.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-dg2-11/igt@i915_selftest@live.html
    - bat-atsm-1:         [DMESG-FAIL][17] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][18] ([i915#12061] / [i915#13929])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-atsm-1/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-atsm-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [DMESG-FAIL][19] ([i915#14204]) -> [DMESG-FAIL][20] ([i915#13929])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-atsm-1/igt@i915_selftest@live@mman.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-atsm-1/igt@i915_selftest@live@mman.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
  [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
  [i915#14201]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#14365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365
  [i915#14808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808
  [i915#14818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818


Build changes
-------------

  * Linux: CI_DRM_17329 -> Patchwork_152275v5

  CI-20190529: 20190529
  CI_DRM_17329: e4621fd776939016f32f5585b188429d68e5ae5b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8580: 8580
  Patchwork_152275v5: e4621fd776939016f32f5585b188429d68e5ae5b @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/index.html

--===============6158022217433004870==
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
<tr><td><b>Series:</b></td><td>User readable error codes on atomic_ioctl failure (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/152275/">https://patchwork.freedesktop.org/series/152275/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17329 -&gt; Patchwork_152275v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_152275v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-adlp-6/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14365">i915#14365</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-jsl-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774">i915#13774</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-jsl-1/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-jsl-1/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-dg2-11/igt@i915_selftest@live@client.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14201">i915#14201</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-dg2-11/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774">i915#13774</a>)</li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-dg2-11/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14818">i915#14818</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-dg2-11/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17329/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_152275v5/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929">i915#13929</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17329 -&gt; Patchwork_152275v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17329: e4621fd776939016f32f5585b188429d68e5ae5b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8580: 8580<br />
  Patchwork_152275v5: e4621fd776939016f32f5585b188429d68e5ae5b @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6158022217433004870==--
