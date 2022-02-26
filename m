Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B0F4C53B0
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 05:21:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CFE10E12B;
	Sat, 26 Feb 2022 04:20:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D355510E12B;
 Sat, 26 Feb 2022 04:20:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CF2EDA00FD;
 Sat, 26 Feb 2022 04:20:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3268033217118349543=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Sat, 26 Feb 2022 04:20:56 -0000
Message-ID: <164584925682.9639.12290452784574144027@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220226015049.1379347-1-fei.yang@intel.com>
In-Reply-To: <20220226015049.1379347-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv?=
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

--===============3268033217118349543==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: avoid concurrent writes to aux_inv
URL   : https://patchwork.freedesktop.org/series/100772/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11290 -> Patchwork_22423
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22423 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22423, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/index.html

Participating hosts (41 -> 17)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_22423 prevented too many machines from booting.

  Missing    (24): fi-kbl-soraka fi-bdw-gvtdvm fi-apl-guc fi-skl-6600u fi-bxt-dsi fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 bat-jsl-2 bat-jsl-1 fi-jsl-1 fi-bsw-cyan fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka 

Known issues
------------

  Here are the changes found in Patchwork_22423 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_busy@basic@flip:
    - {bat-adlp-6}:       [DMESG-WARN][1] ([i915#3576]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11290/bat-adlp-6/igt@kms_busy@basic@flip.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/bat-adlp-6/igt@kms_busy@basic@flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1759]: https://gitlab.freedesktop.org/drm/intel/issues/1759
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576


Build changes
-------------

  * Linux: CI_DRM_11290 -> Patchwork_22423

  CI-20190529: 20190529
  CI_DRM_11290: e4658cb77436a0a406de83fef483b52f84e17208 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22423: 2d74b0515d735ff44ad36fc6849a32a38893b649 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2d74b0515d73 drm/i915: avoid concurrent writes to aux_inv

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/index.html

--===============3268033217118349543==
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
<tr><td><b>Series:</b></td><td>drm/i915: avoid concurrent writes to aux_inv</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100772/">https://patchwork.freedesktop.org/series/100772/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11290 -&gt; Patchwork_22423</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22423 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22423, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/index.html</p>
<h2>Participating hosts (41 -&gt; 17)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_22423 prevented too many machines from booting.</p>
<p>Missing    (24): fi-kbl-soraka fi-bdw-gvtdvm fi-apl-guc fi-skl-6600u fi-bxt-dsi fi-bsw-n3050 fi-glk-dsi fi-kbl-7500u fi-bsw-nick fi-skl-6700k2 fi-kbl-7567u fi-skl-guc fi-cfl-8700k fi-glk-j4005 fi-ehl-2 bat-jsl-2 bat-jsl-1 fi-jsl-1 fi-bsw-cyan fi-cfl-guc fi-kbl-x1275 fi-cfl-8109u fi-kbl-8809g fi-bsw-kefka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22423 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_busy@basic@flip:<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11290/bat-adlp-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22423/bat-adlp-6/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11290 -&gt; Patchwork_22423</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11290: e4658cb77436a0a406de83fef483b52f84e17208 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6359: 57049558c452272b27eeb099fac07e55a924bbf9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22423: 2d74b0515d735ff44ad36fc6849a32a38893b649 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2d74b0515d73 drm/i915: avoid concurrent writes to aux_inv</p>

</body>
</html>

--===============3268033217118349543==--
