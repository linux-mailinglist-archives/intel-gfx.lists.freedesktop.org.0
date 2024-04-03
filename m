Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB02A89746C
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 17:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67582112BE0;
	Wed,  3 Apr 2024 15:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67030112748;
 Wed,  3 Apr 2024 15:49:59 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8171457729171396848=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/xe/display=3A_check_for?=
 =?utf-8?q?_error_on_drmm=5Fmutex=5Finit_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Apr 2024 15:49:59 -0000
Message-ID: <171215939941.1172471.4562557821546935000@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240403140105.1306622-1-arun.r.murthy@intel.com>
In-Reply-To: <20240403140105.1306622-1-arun.r.murthy@intel.com>
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

--===============8171457729171396848==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/display: check for error on drmm_mutex_init (rev4)
URL   : https://patchwork.freedesktop.org/series/131301/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14521 -> Patchwork_131301v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131301v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131301v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/index.html

Participating hosts (35 -> 31)
------------------------------

  Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-bsw-nick fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131301v4:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - bat-arls-1:         [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14521/bat-arls-1/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/bat-arls-1/igt@i915_selftest@live@hangcheck.html

  


Build changes
-------------

  * Linux: CI_DRM_14521 -> Patchwork_131301v4

  CI-20190529: 20190529
  CI_DRM_14521: c8dc2a19ae7157e065d5f0c78bc4d3f83165fdef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7797: e88ebc17ec12b503aab380b08c1213af9cc7a97c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_131301v4: c8dc2a19ae7157e065d5f0c78bc4d3f83165fdef @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d1643168a57e drm/xe/display: check for error on drmm_mutex_init

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/index.html

--===============8171457729171396848==
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
<tr><td><b>Series:</b></td><td>drm/xe/display: check for error on drmm_mutex_init (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131301/">https://patchwork.freedesktop.org/series/131301/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14521 -&gt; Patchwork_131301v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131301v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131301v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/index.html</p>
<h2>Participating hosts (35 -&gt; 31)</h2>
<p>Missing    (4): fi-glk-j4005 fi-cfl-8109u fi-bsw-nick fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131301v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14521/bat-arls-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131301v4/bat-arls-1/igt@i915_selftest@live@hangcheck.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14521 -&gt; Patchwork_131301v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14521: c8dc2a19ae7157e065d5f0c78bc4d3f83165fdef @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7797: e88ebc17ec12b503aab380b08c1213af9cc7a97c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_131301v4: c8dc2a19ae7157e065d5f0c78bc4d3f83165fdef @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d1643168a57e drm/xe/display: check for error on drmm_mutex_init</p>

</body>
</html>

--===============8171457729171396848==--
