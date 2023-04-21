Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B876EAB5B
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 15:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DFDB10E1DF;
	Fri, 21 Apr 2023 13:16:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 018CE10E1DF;
 Fri, 21 Apr 2023 13:16:13 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBCA9AADE0;
 Fri, 21 Apr 2023 13:16:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5626966814136875310=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Fri, 21 Apr 2023 13:16:12 -0000
Message-ID: <168208297286.5825.9280338620470567278@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230224-track_gt-v7-0-11f08358c1ec@intel.com>
In-Reply-To: <20230224-track_gt-v7-0-11f08358c1ec@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs_=28rev?=
 =?utf-8?q?8=29?=
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

--===============5626966814136875310==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev8)
URL   : https://patchwork.freedesktop.org/series/100327/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13040 -> Patchwork_100327v8
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/index.html

Participating hosts (37 -> 37)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_100327v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#2190])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][3] ([i915#1886])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [PASS][4] -> [ABORT][5] ([i915#7911])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13040/bat-rpls-1/igt@i915_selftest@live@requests.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][6] ([fdo#109271]) +16 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911


Build changes
-------------

  * Linux: CI_DRM_13040 -> Patchwork_100327v8

  CI-20190529: 20190529
  CI_DRM_13040: 2fa55999c4fbcf76cdb68aed479db6f23de337e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_100327v8: 2fa55999c4fbcf76cdb68aed479db6f23de337e2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4f438d8cfbe8 drm/i915: track gt pm wakerefs
04993907b0c0 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library
3b4315870aa5 drm/i915: Correct type of wakeref variable
59ed93b1ae42 lib/ref_tracker: remove warnings in case of allocation failure
44b8654738ef lib/ref_tracker: add printing to memory buffer
5e1bd2d613b7 lib/ref_tracker: improve printing stats
f31ed637e771 lib/ref_tracker: add unlocked leak print helper

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/index.html

--===============5626966814136875310==
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
<tr><td><b>Series:</b></td><td>drm/i915: use ref_tracker library for tracking wakerefs (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100327/">https://patchwork.freedesktop.org/series/100327/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13040 -&gt; Patchwork_100327v8</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/index.html</p>
<h2>Participating hosts (37 -&gt; 37)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_100327v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13040/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_100327v8/fi-kbl-soraka/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +16 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13040 -&gt; Patchwork_100327v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13040: 2fa55999c4fbcf76cdb68aed479db6f23de337e2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7264: 2f0a07378e58e5c7d7b589b39ace7e3a2317f6b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_100327v8: 2fa55999c4fbcf76cdb68aed479db6f23de337e2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4f438d8cfbe8 drm/i915: track gt pm wakerefs<br />
04993907b0c0 drm/i915: Replace custom intel runtime_pm tracker with ref_tracker library<br />
3b4315870aa5 drm/i915: Correct type of wakeref variable<br />
59ed93b1ae42 lib/ref_tracker: remove warnings in case of allocation failure<br />
44b8654738ef lib/ref_tracker: add printing to memory buffer<br />
5e1bd2d613b7 lib/ref_tracker: improve printing stats<br />
f31ed637e771 lib/ref_tracker: add unlocked leak print helper</p>

</body>
</html>

--===============5626966814136875310==--
