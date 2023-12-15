Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54809814189
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 06:50:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B123310E30B;
	Fri, 15 Dec 2023 05:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 82B7A10E30B;
 Fri, 15 Dec 2023 05:50:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 792F7A02F0;
 Fri, 15 Dec 2023 05:50:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8036906252583835183=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/hdcp=3A_Fail_Repea?=
 =?utf-8?q?ter_authentication_if_Type1_device_not_present_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Fri, 15 Dec 2023 05:50:48 -0000
Message-ID: <170261944846.27832.16823248468678576680@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231206093916.1733863-1-suraj.kandpal@intel.com>
In-Reply-To: <20231206093916.1733863-1-suraj.kandpal@intel.com>
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

--===============8036906252583835183==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev3)
URL   : https://patchwork.freedesktop.org/series/127414/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14024 -> Patchwork_127414v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_127414v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_127414v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v3/index.html

Participating hosts (38 -> 17)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_127414v3 prevented too many machines from booting.

  Missing    (21): fi-apl-guc fi-snb-2520m bat-adlp-6 bat-rpls-3 fi-pnv-d510 fi-blb-e6850 bat-rpls-2 fi-ilk-650 bat-adln-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 fi-bsw-nick fi-kbl-7567u bat-dg1-7 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-jsl-1 bat-mtlp-6 fi-cfl-8109u 


Changes
-------

  No changes found


Build changes
-------------

  * Linux: CI_DRM_14024 -> Patchwork_127414v3

  CI-20190529: 20190529
  CI_DRM_14024: 525c53d6256c9c65884a28385351097e8aba6057 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127414v3: 525c53d6256c9c65884a28385351097e8aba6057 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

15d0f2ecc770 drm/i915/hdcp: Fail Repeater authentication if Type1 device not present

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v3/index.html

--===============8036906252583835183==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Fail Repeater authentication if Type1 device not present (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127414/">https://patchwork.freedesktop.org/series/127414/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14024 -&gt; Patchwork_127414v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_127414v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_127414v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127414v3/index.html</p>
<h2>Participating hosts (38 -&gt; 17)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_127414v3 prevented too many machines from booting.</p>
<p>Missing    (21): fi-apl-guc fi-snb-2520m bat-adlp-6 bat-rpls-3 fi-pnv-d510 fi-blb-e6850 bat-rpls-2 fi-ilk-650 bat-adln-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 fi-bsw-nick fi-kbl-7567u bat-dg1-7 bat-adlp-9 fi-cfl-8700k fi-glk-j4005 bat-jsl-1 bat-mtlp-6 fi-cfl-8109u </p>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14024 -&gt; Patchwork_127414v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14024: 525c53d6256c9c65884a28385351097e8aba6057 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7643: ced22f8bf4263ff395dc852c86b682e62a7a1c1b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127414v3: 525c53d6256c9c65884a28385351097e8aba6057 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>15d0f2ecc770 drm/i915/hdcp: Fail Repeater authentication if Type1 device not present</p>

</body>
</html>

--===============8036906252583835183==--
