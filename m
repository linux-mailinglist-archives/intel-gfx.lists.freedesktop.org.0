Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E98BBB424CA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Sep 2025 17:16:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619C510E157;
	Wed,  3 Sep 2025 15:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B04B910E157;
 Wed,  3 Sep 2025 15:16:53 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5623547450581776588=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Add_n?=
 =?utf-8?q?o=5Fpsr=5Freason_to_PSR_debugfs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Sep 2025 15:16:53 -0000
Message-ID: <175691261371.298800.11304684852217710959@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250903103152.2440348-1-michal.grzelak@intel.com>
In-Reply-To: <20250903103152.2440348-1-michal.grzelak@intel.com>
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

--===============5623547450581776588==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Add no_psr_reason to PSR debugfs
URL   : https://patchwork.freedesktop.org/series/153943/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_17123 -> Patchwork_153943v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/index.html

Participating hosts (44 -> 43)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_153943v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-jsl-1:          [PASS][1] -> [DMESG-FAIL][2] ([i915#13774]) +1 other test dmesg-fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-jsl-1/igt@i915_selftest@live.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-jsl-1/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
    - bat-arls-6:         [PASS][5] -> [DMESG-FAIL][6] ([i915#12061]) +1 other test dmesg-fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arls-6/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-arls-6/igt@i915_selftest@live@workarounds.html

  * igt@kms_psr@psr-cursor-plane-move@edp-1:
    - bat-jsl-1:          [PASS][7] -> [SKIP][8] ([i915#9688]) +7 other tests skip
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-jsl-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-jsl-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests:
    - bat-apl-1:          [ABORT][9] ([i915#12904]) -> [PASS][10] +1 other test pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-apl-1/igt@dmabuf@all-tests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-apl-1/igt@dmabuf@all-tests.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][11] ([i915#12061]) -> [PASS][12] +1 other test pass
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
  [i915#13774]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688


Build changes
-------------

  * IGT: IGT_8520 -> IGTPW_13653
  * Linux: CI_DRM_17123 -> Patchwork_153943v1

  CI-20190529: 20190529
  CI_DRM_17123: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_13653: 13653
  IGT_8520: 8520
  Patchwork_153943v1: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/index.html

--===============5623547450581776588==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Add no_psr_reason to PSR debugfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/153943/">https://patchwork.freedesktop.org/series/153943/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17123 -&gt; Patchwork_153943v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_153943v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-jsl-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-jsl-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774">i915#13774</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-arls-6/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-arls-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move@edp-1:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-jsl-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-jsl-1/igt@kms_psr@psr-cursor-plane-move@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +7 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-apl-1/igt@dmabuf@all-tests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904">i915#12904</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-apl-1/igt@dmabuf@all-tests.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17123/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_153943v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_8520 -&gt; IGTPW_13653</li>
<li>Linux: CI_DRM_17123 -&gt; Patchwork_153943v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17123: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_13653: 13653<br />
  IGT_8520: 8520<br />
  Patchwork_153943v1: 09933716bb37eda75f5b3562a76e58a17c447647 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============5623547450581776588==--
