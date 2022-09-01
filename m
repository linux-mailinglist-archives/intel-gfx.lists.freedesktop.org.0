Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5606F5AA0D4
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 22:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD74B10E213;
	Thu,  1 Sep 2022 20:22:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F11E810E213;
 Thu,  1 Sep 2022 20:21:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CBED0A00A0;
 Thu,  1 Sep 2022 20:21:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6527105859541939329=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Thu, 01 Sep 2022 20:21:54 -0000
Message-ID: <166206371482.11921.7653387594135253393@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220901193228.255098-1-rodrigo.vivi@intel.com>
In-Reply-To: <20220901193228.255098-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Move_some_of_the_reques?=
 =?utf-8?q?t_decisions_out_of_rps=5Fboost_function=2E?=
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

--===============6527105859541939329==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Move some of the request decisions out of rps_boost function.
URL   : https://patchwork.freedesktop.org/series/108048/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12062 -> Patchwork_108048v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/index.html

Participating hosts (35 -> 23)
------------------------------

  Missing    (12): bat-dg1-5 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-hsw-4770 bat-adln-1 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-dg2-11 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_108048v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][1] -> [INCOMPLETE][2] ([i915#5982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12062/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [PASS][3] -> [FAIL][4] ([i915#6298])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12062/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298


Build changes
-------------

  * Linux: CI_DRM_12062 -> Patchwork_108048v1

  CI-20190529: 20190529
  CI_DRM_12062: e70359a9edd28a204e57bde4d17dd8c5fa9eb712 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6641: 391ac3a06323aa8b681f9faffd74459caa14498f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108048v1: e70359a9edd28a204e57bde4d17dd8c5fa9eb712 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

bcad0544732c drm/i915: Don't try to disable host RPS when this was never enabled.
e15746adc62a drm/i915: Move some of the request decisions out of rps_boost function.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/index.html

--===============6527105859541939329==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Move some of the request decisions out of rps_boost function.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/108048/">https://patchwork.freedesktop.org/series/108048/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12062 -&gt; Patchwork_108048v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/index.html</p>
<h2>Participating hosts (35 -&gt; 23)</h2>
<p>Missing    (12): bat-dg1-5 bat-adlm-1 bat-dg2-9 bat-adlp-6 bat-adlp-4 fi-hsw-4770 bat-adln-1 bat-jsl-3 bat-rplp-1 bat-rpls-1 bat-dg2-11 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108048v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12062/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12062/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108048v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12062 -&gt; Patchwork_108048v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12062: e70359a9edd28a204e57bde4d17dd8c5fa9eb712 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6641: 391ac3a06323aa8b681f9faffd74459caa14498f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108048v1: e70359a9edd28a204e57bde4d17dd8c5fa9eb712 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>bcad0544732c drm/i915: Don't try to disable host RPS when this was never enabled.<br />
e15746adc62a drm/i915: Move some of the request decisions out of rps_boost function.</p>

</body>
</html>

--===============6527105859541939329==--
