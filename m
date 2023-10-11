Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE5F7C4899
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 05:49:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A83D10E421;
	Wed, 11 Oct 2023 03:49:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C96410E421;
 Wed, 11 Oct 2023 03:49:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91425AADF2;
 Wed, 11 Oct 2023 03:49:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5976061595402390336=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Wed, 11 Oct 2023 03:49:29 -0000
Message-ID: <169699616958.26514.10816584056823400060@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231010183101.704439-1-suraj.kandpal@intel.com>
In-Reply-To: <20231010183101.704439-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVXNl?=
 =?utf-8?q?_intel=5Fcrtc=5Fdestroy_state?=
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

--===============5976061595402390336==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Use intel_crtc_destroy state
URL   : https://patchwork.freedesktop.org/series/124919/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13737 -> Patchwork_124919v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): bat-dg2-9 

Known issues
------------

  Here are the changes found in Patchwork_124919v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-11:         [PASS][1] -> [INCOMPLETE][2] ([i915#9253])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][3] -> [ABORT][4] ([i915#9414])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
  [i915#9253]: https://gitlab.freedesktop.org/drm/intel/issues/9253
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13737 -> Patchwork_124919v1

  CI-20190529: 20190529
  CI_DRM_13737: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124919v1: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3631e060174a drm/i915/display: Use correct method to free crtc_state
2b1fad8fd49c drm/i915/display: Use intel_crtc_destroy_state instead kfree

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/index.html

--===============5976061595402390336==
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
<tr><td><b>Series:</b></td><td>Use intel_crtc_destroy state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124919/">https://patchwork.freedesktop.org/series/124919/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13737 -&gt; Patchwork_124919v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): bat-dg2-9 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124919v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9253">i915#9253</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124919v1/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13737 -&gt; Patchwork_124919v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13737: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124919v1: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3631e060174a drm/i915/display: Use correct method to free crtc_state<br />
2b1fad8fd49c drm/i915/display: Use intel_crtc_destroy_state instead kfree</p>

</body>
</html>

--===============5976061595402390336==--
