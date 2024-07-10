Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 270B692D4A7
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 17:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA7810E811;
	Wed, 10 Jul 2024 15:05:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D2FF10E812;
 Wed, 10 Jul 2024 15:05:48 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3585284399940079086=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Explicitly_cast?=
 =?utf-8?q?_divisor_to_fix_Coccinelle_warning?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thorsten Blum" <thorsten.blum@toblux.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2024 15:05:48 -0000
Message-ID: <172062394824.106000.16674618719010369372@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240710074650.419902-2-thorsten.blum@toblux.com>
In-Reply-To: <20240710074650.419902-2-thorsten.blum@toblux.com>
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

--===============3585284399940079086==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Explicitly cast divisor to fix Coccinelle warning
URL   : https://patchwork.freedesktop.org/series/135942/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15058 -> Patchwork_135942v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_135942v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_135942v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/index.html

Participating hosts (36 -> 34)
------------------------------

  Missing    (2): fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_135942v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@migrate:
    - bat-dg2-8:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15058/bat-dg2-8/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/bat-dg2-8/igt@i915_selftest@live@migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_135942v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [DMESG-WARN][3] ([i915#7507]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15058/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507


Build changes
-------------

  * Linux: CI_DRM_15058 -> Patchwork_135942v1

  CI-20190529: 20190529
  CI_DRM_15058: 28c3b18581a110660a7c42bb988a12a3b1f6d402 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7921: f547de980dca43c6630ced36e98af7f2a9c70ae7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135942v1: 28c3b18581a110660a7c42bb988a12a3b1f6d402 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/index.html

--===============3585284399940079086==
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
<tr><td><b>Series:</b></td><td>drm/i915: Explicitly cast divisor to fix Coccinelle warning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135942/">https://patchwork.freedesktop.org/series/135942/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15058 -&gt; Patchwork_135942v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_135942v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_135942v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/index.html</p>
<h2>Participating hosts (36 -&gt; 34)</h2>
<p>Missing    (2): fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_135942v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15058/bat-dg2-8/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/bat-dg2-8/igt@i915_selftest@live@migrate.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135942v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15058/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135942v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15058 -&gt; Patchwork_135942v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15058: 28c3b18581a110660a7c42bb988a12a3b1f6d402 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7921: f547de980dca43c6630ced36e98af7f2a9c70ae7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135942v1: 28c3b18581a110660a7c42bb988a12a3b1f6d402 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3585284399940079086==--
