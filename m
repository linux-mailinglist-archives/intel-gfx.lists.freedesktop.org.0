Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209C39C3CAE
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 12:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 774DE10E27F;
	Mon, 11 Nov 2024 11:08:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA0A10E27F;
 Mon, 11 Nov 2024 11:08:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0900914232842997158=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Guarantee_a_?=
 =?utf-8?q?minimum_HBlank_time_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2024 11:08:33 -0000
Message-ID: <173132331396.2561525.8850949112352731193@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241111092608.129410-1-arun.r.murthy@intel.com>
In-Reply-To: <20241111092608.129410-1-arun.r.murthy@intel.com>
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

--===============0900914232842997158==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Guarantee a minimum HBlank time (rev4)
URL   : https://patchwork.freedesktop.org/series/139267/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15671 -> Patchwork_139267v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/index.html

Participating hosts (46 -> 45)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_139267v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-twl-1:          [PASS][1] -> [INCOMPLETE][2] ([i915#9413]) +1 other test incomplete
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-twl-1/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/bat-twl-1/igt@i915_selftest@live@workarounds.html

  
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413


Build changes
-------------

  * Linux: CI_DRM_15671 -> Patchwork_139267v4

  CI-20190529: 20190529
  CI_DRM_15671: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8102: a05b40911bfb79c9bdf6ff7e8ab1a68948afbbf6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139267v4: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/index.html

--===============0900914232842997158==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Guarantee a minimum HBlank time (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139267/">https://patchwork.freedesktop.org/series/139267/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15671 -&gt; Patchwork_139267v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/index.html</p>
<h2>Participating hosts (46 -&gt; 45)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139267v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-twl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15671/bat-twl-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139267v4/bat-twl-1/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15671 -&gt; Patchwork_139267v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15671: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8102: a05b40911bfb79c9bdf6ff7e8ab1a68948afbbf6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139267v4: 3f866f737f2b5b35056783cd2b8bce2c1b00ab47 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0900914232842997158==--
