Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B550AADED0A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 14:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582A110E15C;
	Wed, 18 Jun 2025 12:52:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D65F510E15C;
 Wed, 18 Jun 2025 12:52:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7683133163217045378=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EBAT=3A_success_for_drm/xe/display=3A_read_PC?=
 =?utf-8?q?ON_capability_only_when_present?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chaitanya Kumar Borah" <chaitanya.kumar.borah@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Jun 2025 12:52:51 -0000
Message-ID: <175025117187.90962.13287135806056090526@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250618114553.3974479-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250618114553.3974479-1-chaitanya.kumar.borah@intel.com>
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

--===============7683133163217045378==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/xe/display: read PCON capability only when present
URL   : https://patchwork.freedesktop.org/series/150451/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_16723 -> Patchwork_150451v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/index.html

Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-glk-j4005 bat-arlh-2 fi-snb-2520m bat-jsl-4 

Known issues
------------

  Here are the changes found in Patchwork_150451v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_fence@basic-wait:
    - bat-rpls-4:         [DMESG-WARN][1] ([i915#13400]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16723/bat-rpls-4/igt@gem_exec_fence@basic-wait.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/bat-rpls-4/igt@gem_exec_fence@basic-wait.html

  * igt@i915_selftest@live:
    - bat-arlh-3:         [DMESG-FAIL][3] ([i915#14243]) -> [PASS][4] +1 other test pass
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16723/bat-arlh-3/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/bat-arlh-3/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-mtlp-6:         [DMESG-FAIL][5] ([i915#12061]) -> [PASS][6] +1 other test pass
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16723/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
  [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243


Build changes
-------------

  * Linux: CI_DRM_16723 -> Patchwork_150451v1

  CI-20190529: 20190529
  CI_DRM_16723: 55cbd02fa784e94b4f658c1e547371ac804c62a9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8415: bd8a24cf051c1efb81c76cf58a56151990a4a8ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_150451v1: 55cbd02fa784e94b4f658c1e547371ac804c62a9 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/index.html

--===============7683133163217045378==
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
<tr><td><b>Series:</b></td><td>drm/xe/display: read PCON capability only when present</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/150451/">https://patchwork.freedesktop.org/series/150451/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_16723 -&gt; Patchwork_150451v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/index.html</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-glk-j4005 bat-arlh-2 fi-snb-2520m bat-jsl-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_150451v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-wait:</p>
<ul>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16723/bat-rpls-4/igt@gem_exec_fence@basic-wait.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400">i915#13400</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/bat-rpls-4/igt@gem_exec_fence@basic-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16723/bat-arlh-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243">i915#14243</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/bat-arlh-3/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16723/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_150451v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_16723 -&gt; Patchwork_150451v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_16723: 55cbd02fa784e94b4f658c1e547371ac804c62a9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8415: bd8a24cf051c1efb81c76cf58a56151990a4a8ea @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_150451v1: 55cbd02fa784e94b4f658c1e547371ac804c62a9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============7683133163217045378==--
