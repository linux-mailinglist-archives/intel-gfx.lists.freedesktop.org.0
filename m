Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1828681AF2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 20:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E5110E12B;
	Mon, 30 Jan 2023 19:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E743610E12B;
 Mon, 30 Jan 2023 19:58:46 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF74FAA3D8;
 Mon, 30 Jan 2023 19:58:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0137604385572282773=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Mon, 30 Jan 2023 19:58:46 -0000
Message-ID: <167510872688.3670.6008970986313584338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230130165058.1647414-1-andrzej.hajda@intel.com>
In-Reply-To: <20230130165058.1647414-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_selftests_for_TLB_invalidation_=28rev7=29?=
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

--===============0137604385572282773==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Add selftests for TLB invalidation (rev7)
URL   : https://patchwork.freedesktop.org/series/112894/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12667 -> Patchwork_112894v7
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v7/index.html

Participating hosts (26 -> 24)
------------------------------

  Missing    (2): fi-kbl-soraka fi-snb-2520m 

New tests
---------

  New tests have been introduced between CI_DRM_12667 and Patchwork_112894v7:

### New IGT tests (1) ###

  * igt@i915_selftest@live@gt_tlb:
    - Statuses : 24 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_112894v7 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367


Build changes
-------------

  * Linux: CI_DRM_12667 -> Patchwork_112894v7

  CI-20190529: 20190529
  CI_DRM_12667: c30c24a1b2ef039980198dcfd7c3328fd61f404d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112894v7: c30c24a1b2ef039980198dcfd7c3328fd61f404d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f5a491df3085 drm/i915/gt: Add selftests for TLB invalidation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v7/index.html

--===============0137604385572282773==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Add selftests for TLB invalidation (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112894/">https://patchwork.freedesktop.org/series/112894/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12667 -&gt; Patchwork_112894v7</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112894v7/index.html</p>
<h2>Participating hosts (26 -&gt; 24)</h2>
<p>Missing    (2): fi-kbl-soraka fi-snb-2520m </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12667 and Patchwork_112894v7:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@gt_tlb:<ul>
<li>Statuses : 24 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112894v7 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12667 -&gt; Patchwork_112894v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12667: c30c24a1b2ef039980198dcfd7c3328fd61f404d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112894v7: c30c24a1b2ef039980198dcfd7c3328fd61f404d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f5a491df3085 drm/i915/gt: Add selftests for TLB invalidation</p>

</body>
</html>

--===============0137604385572282773==--
