Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F52A9590AB
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126C010E538;
	Tue, 20 Aug 2024 22:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F32C110E538;
 Tue, 20 Aug 2024 22:50:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6527149739329589893=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Do_not_attempt_?=
 =?utf-8?q?to_load_the_GSC_multiple_times?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniele Ceraolo Spurio" <daniele.ceraolospurio@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 20 Aug 2024 22:50:08 -0000
Message-ID: <172419420898.716831.12709728761943196855@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240820215952.2290807-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20240820215952.2290807-1-daniele.ceraolospurio@intel.com>
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

--===============6527149739329589893==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Do not attempt to load the GSC multiple times
URL   : https://patchwork.freedesktop.org/series/137540/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15267 -> Patchwork_137540v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/index.html

Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-arls-1 

Known issues
------------

  Here are the changes found in Patchwork_137540v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [PASS][1] -> [DMESG-FAIL][2] ([i915#9500])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15267/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15267 -> Patchwork_137540v1

  CI-20190529: 20190529
  CI_DRM_15267: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7981: f4e2ada1adec484cf506b5ec7e9acb3ae62228f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_137540v1: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/index.html

--===============6527149739329589893==
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
<tr><td><b>Series:</b></td><td>drm/i915: Do not attempt to load the GSC multiple times</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/137540/">https://patchwork.freedesktop.org/series/137540/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15267 -&gt; Patchwork_137540v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/index.html</p>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-bsw-n3050 fi-snb-2520m fi-glk-j4005 fi-kbl-8809g bat-arls-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_137540v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15267/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137540v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15267 -&gt; Patchwork_137540v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15267: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7981: f4e2ada1adec484cf506b5ec7e9acb3ae62228f1 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_137540v1: 0729ba6a553ae595a4092ceb27300ea218c2efae @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6527149739329589893==--
