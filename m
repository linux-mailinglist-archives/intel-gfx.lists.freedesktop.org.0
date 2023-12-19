Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFBF819106
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 20:46:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F16610E1CB;
	Tue, 19 Dec 2023 19:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9CAE510E51E;
 Tue, 19 Dec 2023 19:46:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 982F3AADEB;
 Tue, 19 Dec 2023 19:46:41 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3630428413262507115=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/mtl=3A_Add_fake_PC?=
 =?utf-8?q?H_for_Meteor_Lake_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Haridhar Kalvala" <haridhar.kalvala@intel.com>
Date: Tue, 19 Dec 2023 19:46:41 -0000
Message-ID: <170301520159.17581.9260450184654715214@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
In-Reply-To: <20231219185233.1469675-1-haridhar.kalvala@intel.com>
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

--===============3630428413262507115==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Add fake PCH for Meteor Lake (rev2)
URL   : https://patchwork.freedesktop.org/series/127963/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14045 -> Patchwork_127963v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html

Participating hosts (38 -> 37)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (2): bat-rpls-2 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_127963v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-pnv-d510:        NOTRUN -> [SKIP][1] ([fdo#109271]) +28 other tests skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271


Build changes
-------------

  * Linux: CI_DRM_14045 -> Patchwork_127963v2

  CI-20190529: 20190529
  CI_DRM_14045: e786d8c6347b8b304e82c6bcebc0d38401792b16 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7648: 5c7b44f13c9c5bc15af0cb2b6a5ea10a8a468ac0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127963v2: e786d8c6347b8b304e82c6bcebc0d38401792b16 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

22a222ed2423 drm/i915/mtl: Add fake PCH for Meteor Lake

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html

--===============3630428413262507115==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Add fake PCH for Meteor Lake (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127963/">https://patchwork.freedesktop.org/series/127963/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14045 -&gt; Patchwork_127963v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127963v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@gem_lmem_swapping@basic:<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127963v2/fi-pnv-d510/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +28 other tests skip</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14045 -&gt; Patchwork_127963v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14045: e786d8c6347b8b304e82c6bcebc0d38401792b16 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7648: 5c7b44f13c9c5bc15af0cb2b6a5ea10a8a468ac0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127963v2: e786d8c6347b8b304e82c6bcebc0d38401792b16 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>22a222ed2423 drm/i915/mtl: Add fake PCH for Meteor Lake</p>

</body>
</html>

--===============3630428413262507115==--
