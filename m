Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2261926737
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 19:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C6AF10E965;
	Wed,  3 Jul 2024 17:32:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E4EB10E975;
 Wed,  3 Jul 2024 17:32:28 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8756104171441780914=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/dp=3A_Fix_LTTPR_de?=
 =?utf-8?q?tection?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Jul 2024 17:32:28 -0000
Message-ID: <172002794818.26992.18282233044619734235@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240703155937.1674856-1-imre.deak@intel.com>
In-Reply-To: <20240703155937.1674856-1-imre.deak@intel.com>
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

--===============8756104171441780914==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Fix LTTPR detection
URL   : https://patchwork.freedesktop.org/series/135711/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15026 -> Patchwork_135711v1
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_135711v1 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_135711v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_135711v1:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - bat-arls-1:         [DMESG-WARN][1] ([i915#11570]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15026/bat-arls-1/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/bat-arls-1/igt@i915_selftest@live@execlists.html

  
Known issues
------------

  Here are the changes found in Patchwork_135711v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][3] -> [FAIL][4] ([i915#11359])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15026/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html

  
#### Possible fixes ####

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [DMESG-WARN][5] ([i915#7507]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15026/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
  [i915#11359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359
  [i915#11570]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11570
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507


Build changes
-------------

  * Linux: CI_DRM_15026 -> Patchwork_135711v1

  CI-20190529: 20190529
  CI_DRM_15026: f9bae9be5922368e36324928b898ff4de5280e30 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7911: d0d71f374c95a89a3bdcd104c7d8c2043f79e37a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135711v1: f9bae9be5922368e36324928b898ff4de5280e30 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/index.html

--===============8756104171441780914==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Fix LTTPR detection</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135711/">https://patchwork.freedesktop.org/series/135711/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15026 -&gt; Patchwork_135711v1</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_135711v1 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_135711v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_135711v1:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15026/bat-arls-1/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11570">i915#11570</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/bat-arls-1/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135711v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15026/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359">i915#11359</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15026/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135711v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15026 -&gt; Patchwork_135711v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15026: f9bae9be5922368e36324928b898ff4de5280e30 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7911: d0d71f374c95a89a3bdcd104c7d8c2043f79e37a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135711v1: f9bae9be5922368e36324928b898ff4de5280e30 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8756104171441780914==--
