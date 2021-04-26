Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A693136B44E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 15:54:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9199E6E1EC;
	Mon, 26 Apr 2021 13:54:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8A5276E15F;
 Mon, 26 Apr 2021 13:54:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 80352A8830;
 Mon, 26 Apr 2021 13:54:31 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Mon, 26 Apr 2021 13:54:31 -0000
Message-ID: <161944527150.18667.10647596156621972672@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210426101821.42147-1-matthew.auld@intel.com>
In-Reply-To: <20210426101821.42147-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/7=5D_drm/i915/dg1=3A_Fix_mapping_type_fo?=
 =?utf-8?q?r_default_state_object?=
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
Content-Type: multipart/mixed; boundary="===============0485812285=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0485812285==
Content-Type: multipart/alternative;
 boundary="===============4358725011414425832=="

--===============4358725011414425832==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/7] drm/i915/dg1: Fix mapping type for default state object
URL   : https://patchwork.freedesktop.org/series/89484/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10008 -> Patchwork_19988
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/index.html

Known issues
------------

  Here are the changes found in Patchwork_19988 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][1] -> [INCOMPLETE][2] ([i915#2782])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782


Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10008 -> Patchwork_19988

  CI-20190529: 20190529
  CI_DRM_10008: c6443550caede08a08740ae6b02c78ef4b53e7d1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19988: 3c391da4748325fef609f8bb61a1bfeef3c5a79a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

3c391da47483 drm/i915: Return error value when bo not in LMEM for discrete
d5ceb645e58f drm/i915/lmem: Bypass aperture when lmem is available
5a13d9428dfd drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete
118ad8d86487 drm/i915/gtt/dgfx: place the PD in LMEM
c7217fe20683 drm/i915/gtt: map the PD up front
7eac22c6a6bc drm/i915: Update the helper to set correct mapping
5964f7549f43 drm/i915/dg1: Fix mapping type for default state object

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/index.html

--===============4358725011414425832==
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
<tr><td><b>Series:</b></td><td>series starting with [1/7] drm/i915/dg1: Fix mapping type for default state object</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89484/">https://patchwork.freedesktop.org/series/89484/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10008 -&gt; Patchwork_19988</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19988 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10008/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19988/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10008 -&gt; Patchwork_19988</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10008: c6443550caede08a08740ae6b02c78ef4b53e7d1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19988: 3c391da4748325fef609f8bb61a1bfeef3c5a79a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>3c391da47483 drm/i915: Return error value when bo not in LMEM for discrete<br />
d5ceb645e58f drm/i915/lmem: Bypass aperture when lmem is available<br />
5a13d9428dfd drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete<br />
118ad8d86487 drm/i915/gtt/dgfx: place the PD in LMEM<br />
c7217fe20683 drm/i915/gtt: map the PD up front<br />
7eac22c6a6bc drm/i915: Update the helper to set correct mapping<br />
5964f7549f43 drm/i915/dg1: Fix mapping type for default state object</p>

</body>
</html>

--===============4358725011414425832==--

--===============0485812285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0485812285==--
