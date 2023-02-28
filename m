Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 471AA6A51AF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 04:12:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7C3910E471;
	Tue, 28 Feb 2023 03:12:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87E4810E471;
 Tue, 28 Feb 2023 03:12:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7059FA03D2;
 Tue, 28 Feb 2023 03:12:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2653461433387044017=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Tue, 28 Feb 2023 03:12:51 -0000
Message-ID: <167755397145.15136.734145540088380670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230228022150.1657843-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230228022150.1657843-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_MTL_PXP_Support_=28rev6=29?=
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

--===============2653461433387044017==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add MTL PXP Support (rev6)
URL   : https://patchwork.freedesktop.org/series/112647/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12789 -> Patchwork_112647v6
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v6/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_12789 -> Patchwork_112647v6

  CI-20190529: 20190529
  CI_DRM_12789: 8589fd9227ca62484e8599cbd62216230c2c9a64 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7174: 55642b7805d6fc5b987b396c2bbfa46db654db4f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112647v6: 8589fd9227ca62484e8599cbd62216230c2c9a64 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

f564e0d0d0cf drm/i915/pxp: Enable PXP with MTL-GSC-CS
c97e82a4a5e8 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component
bf542f18a9a8 drm/i915/pxp: MTL-KCR interrupt ctrl's are in GT-0
731dbaef9cdf drm/i915/pxp: Add ARB session creation and cleanup
eb13058b2943 drm/i915/pxp: Add GSC-CS backend to send GSC fw messages
36550cd9936b drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC
d052146d347c drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation
a7356c3fad2c drm/i915/pxp: Add GSC-CS back-end resource init and cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v6/index.html

--===============2653461433387044017==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add MTL PXP Support (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112647/">https://patchwork.freedesktop.org/series/112647/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12789 -&gt; Patchwork_112647v6</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v6/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12789 -&gt; Patchwork_112647v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12789: 8589fd9227ca62484e8599cbd62216230c2c9a64 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7174: 55642b7805d6fc5b987b396c2bbfa46db654db4f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112647v6: 8589fd9227ca62484e8599cbd62216230c2c9a64 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>f564e0d0d0cf drm/i915/pxp: Enable PXP with MTL-GSC-CS<br />
c97e82a4a5e8 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component<br />
bf542f18a9a8 drm/i915/pxp: MTL-KCR interrupt ctrl's are in GT-0<br />
731dbaef9cdf drm/i915/pxp: Add ARB session creation and cleanup<br />
eb13058b2943 drm/i915/pxp: Add GSC-CS backend to send GSC fw messages<br />
36550cd9936b drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC<br />
d052146d347c drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation<br />
a7356c3fad2c drm/i915/pxp: Add GSC-CS back-end resource init and cleanup</p>

</body>
</html>

--===============2653461433387044017==--
