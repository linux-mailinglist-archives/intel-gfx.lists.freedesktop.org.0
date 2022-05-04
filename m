Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04736519B2E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 11:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306F610EE8D;
	Wed,  4 May 2022 09:08:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF54010FCE4;
 Wed,  4 May 2022 09:08:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ADB09AADD6;
 Wed,  4 May 2022 09:08:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3951712714549388951=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 04 May 2022 09:08:21 -0000
Message-ID: <165165530168.680.12544314113606432682@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220429100414.647857-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20220429100414.647857-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Enable_THP_on_Icelake_a?=
 =?utf-8?q?nd_beyond_=28rev2=29?=
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

--===============3951712714549388951==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Enable THP on Icelake and beyond (rev2)
URL   : https://patchwork.freedesktop.org/series/103330/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11594_full -> Patchwork_103330v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_103330v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_103330v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 3)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_103330v2_full prevented too many machines from booting.

  Missing    (10): shard-skl shard-tglu shard-tglb shard-iclb shard-apl shard-glk shard-kbl shard-snb shard-rkl shard-dg1 


Changes
-------

  No changes found


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_6464 -> None
  * Linux: CI_DRM_11594 -> Patchwork_103330v2

  CI-20190529: 20190529
  CI_DRM_11594: 66be687e9dfa7723518e1b1e7081cd8c5a863eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_103330v2: 66be687e9dfa7723518e1b1e7081cd8c5a863eb7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103330v2/index.html

--===============3951712714549388951==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Enable THP on Icelake and beyond (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/103330/">https://patchwork.freedesktop.org/series/103330/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103330v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103330v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11594_full -&gt; Patchwork_103330v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_103330v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_103330v2_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (13 -&gt; 3)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_103330v2_full prevented too many machines from booting.</p>
<p>Missing    (10): shard-skl shard-tglu shard-tglb shard-iclb shard-apl shard-glk shard-kbl shard-snb shard-rkl shard-dg1 </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>CI: CI-20190529 -&gt; None</li>
<li>IGT: IGT_6464 -&gt; None</li>
<li>Linux: CI_DRM_11594 -&gt; Patchwork_103330v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11594: 66be687e9dfa7723518e1b1e7081cd8c5a863eb7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6464: eddc67c5c85b8ee6eb4d13752ca43da5073dc985 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_103330v2: 66be687e9dfa7723518e1b1e7081cd8c5a863eb7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3951712714549388951==--
