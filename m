Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5593D8B2E7E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 03:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1133411A974;
	Fri, 26 Apr 2024 01:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B78AB11A974;
 Fri, 26 Apr 2024 01:57:07 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8808336369614422047=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Automate_CCS?=
 =?utf-8?q?_Mode_setting_during_engine_resets_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 26 Apr 2024 01:57:07 -0000
Message-ID: <171409662774.1669066.16195793086418655940@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240426000723.229296-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240426000723.229296-1-andi.shyti@linux.intel.com>
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

--===============8808336369614422047==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Automate CCS Mode setting during engine resets (rev2)
URL   : https://patchwork.freedesktop.org/series/132932/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14658 -> Patchwork_132932v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_132932v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_132932v2, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): bat-dg2-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_132932v2:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@workarounds:
    - bat-arls-2:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14658/bat-arls-2/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/bat-arls-2/igt@i915_selftest@live@workarounds.html

  


Build changes
-------------

  * Linux: CI_DRM_14658 -> Patchwork_132932v2

  CI-20190529: 20190529
  CI_DRM_14658: 586a94ef1fce3cb20ca3d34602da19ba9e60bf63 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7824: 7824
  Patchwork_132932v2: 586a94ef1fce3cb20ca3d34602da19ba9e60bf63 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/index.html

--===============8808336369614422047==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Automate CCS Mode setting during engine resets (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132932/">https://patchwork.freedesktop.org/series/132932/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14658 -&gt; Patchwork_132932v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_132932v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_132932v2, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): bat-dg2-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_132932v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14658/bat-arls-2/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132932v2/bat-arls-2/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14658 -&gt; Patchwork_132932v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14658: 586a94ef1fce3cb20ca3d34602da19ba9e60bf63 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7824: 7824<br />
  Patchwork_132932v2: 586a94ef1fce3cb20ca3d34602da19ba9e60bf63 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8808336369614422047==--
