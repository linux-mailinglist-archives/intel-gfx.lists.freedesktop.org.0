Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A2AA61962
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 19:29:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B732910E363;
	Fri, 14 Mar 2025 18:29:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6023F10E363;
 Fri, 14 Mar 2025 18:29:47 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7443395046544949947=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/selftest=3A_allo?=
 =?utf-8?q?w_larger_memory_allocation?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mikolaj Wasiak" <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Mar 2025 18:29:47 -0000
Message-ID: <174197698738.36567.10181333832217628950@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
In-Reply-To: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
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

--===============7443395046544949947==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest: allow larger memory allocation
URL   : https://patchwork.freedesktop.org/series/146321/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_16291 -> Patchwork_146321v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_146321v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_146321v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_146321v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_engines:
    - bat-arls-6:         [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16291/bat-arls-6/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/bat-arls-6/igt@i915_selftest@live@gt_engines.html

  
Known issues
------------

  Here are the changes found in Patchwork_146321v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_module_load@load:
    - bat-mtlp-9:         [DMESG-WARN][3] ([i915#13494]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16291/bat-mtlp-9/igt@i915_module_load@load.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/bat-mtlp-9/igt@i915_module_load@load.html

  
  [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494


Build changes
-------------

  * Linux: CI_DRM_16291 -> Patchwork_146321v1

  CI-20190529: 20190529
  CI_DRM_16291: 0a19064f3975b11fccae60205b61783707418c0f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8274: 8274
  Patchwork_146321v1: 0a19064f3975b11fccae60205b61783707418c0f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/index.html

--===============7443395046544949947==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest: allow larger memory allocation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/146321/">https://patchwork.freedesktop.org/series/146321/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16291 -&gt; Patchwork_146321v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_146321v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_146321v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_146321v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16291/bat-arls-6/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/bat-arls-6/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +1 other test dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_146321v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-mtlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16291/bat-mtlp-9/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494">i915#13494</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_146321v1/bat-mtlp-9/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16291 -&gt; Patchwork_146321v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16291: 0a19064f3975b11fccae60205b61783707418c0f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8274: 8274<br />
  Patchwork_146321v1: 0a19064f3975b11fccae60205b61783707418c0f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7443395046544949947==--
