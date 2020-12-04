Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91292CEA83
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Dec 2020 10:12:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3808F6E145;
	Fri,  4 Dec 2020 09:12:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 506786E139;
 Fri,  4 Dec 2020 09:12:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1CF6CA363B;
 Fri,  4 Dec 2020 09:12:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Fri, 04 Dec 2020 09:12:14 -0000
Message-ID: <160707313408.27541.3585592279728606940@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201204081845.26528-1-anshuman.gupta@intel.com>
In-Reply-To: <20201204081845.26528-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgRGlz?=
 =?utf-8?q?play_glitches_fixes_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============0334334189=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0334334189==
Content-Type: multipart/alternative;
 boundary="===============5243141066986882124=="

--===============5243141066986882124==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Display glitches fixes (rev2)
URL   : https://patchwork.freedesktop.org/series/84394/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9441 -> Patchwork_19056
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19056/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9441 and Patchwork_19056:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 37 pass(s)
    - Exec time: [0.0] s

  


Changes
-------

  No changes found


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9441 -> Patchwork_19056

  CI-20190529: 20190529
  CI_DRM_9441: 6e992bb7585d1bee238776d8fe0512a70a22a1a0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5880: d67bad61dc9a7515f94a7eecadd3bcd6b4f9d49e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19056: 8da72c4348fd85d565c8e83b497b6c8f5233a3fa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8da72c4348fd drm/i915/dp: optimize pps_lock wherever required

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19056/index.html

--===============5243141066986882124==
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
<tr><td><b>Series:</b></td><td>Display glitches fixes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84394/">https://patchwork.freedesktop.org/series/84394/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19056/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19056/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9441 -&gt; Patchwork_19056</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19056/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9441 and Patchwork_19056:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 37 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9441 -&gt; Patchwork_19056</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9441: 6e992bb7585d1bee238776d8fe0512a70a22a1a0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5880: d67bad61dc9a7515f94a7eecadd3bcd6b4f9d49e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19056: 8da72c4348fd85d565c8e83b497b6c8f5233a3fa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8da72c4348fd drm/i915/dp: optimize pps_lock wherever required</p>

</body>
</html>

--===============5243141066986882124==--

--===============0334334189==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0334334189==--
