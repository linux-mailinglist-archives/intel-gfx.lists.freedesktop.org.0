Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC1A92E1DD
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 10:17:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B09D710E99D;
	Thu, 11 Jul 2024 08:17:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77AFF10E99D;
 Thu, 11 Jul 2024 08:17:15 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0713558412602340219=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/gt=3A_Do_not_consi?=
 =?utf-8?q?der_preemption_during_execlists=5Fdequeue_for_gen8_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nitin Gote" <nitin.r.gote@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2024 08:17:15 -0000
Message-ID: <172068583548.124810.10772256528850275620@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240711051215.1143127-1-nitin.r.gote@intel.com>
In-Reply-To: <20240711051215.1143127-1-nitin.r.gote@intel.com>
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

--===============0713558412602340219==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Do not consider preemption during execlists_dequeue for gen8 (rev3)
URL   : https://patchwork.freedesktop.org/series/135901/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15060 -> Patchwork_135901v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/index.html

Participating hosts (41 -> 31)
------------------------------

  Missing    (10): bat-kbl-2 bat-adlp-9 fi-bsw-n3050 bat-adlp-6 fi-snb-2520m fi-elk-e7500 bat-dg2-14 bat-dg2-11 bat-arlh-2 bat-mtlp-6 

Known issues
------------

  Here are the changes found in Patchwork_135901v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@evict:
    - bat-arls-5:         [PASS][1] -> [INCOMPLETE][2] ([i915#11378])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15060/bat-arls-5/igt@i915_selftest@live@evict.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/bat-arls-5/igt@i915_selftest@live@evict.html

  
  [i915#11378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378


Build changes
-------------

  * Linux: CI_DRM_15060 -> Patchwork_135901v3

  CI-20190529: 20190529
  CI_DRM_15060: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7922: 325d4f4efbf869f93d3b4479046713d0ce7220e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135901v3: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/index.html

--===============0713558412602340219==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Do not consider preemption during execlists_dequeue for gen8 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135901/">https://patchwork.freedesktop.org/series/135901/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15060 -&gt; Patchwork_135901v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/index.html</p>
<h2>Participating hosts (41 -&gt; 31)</h2>
<p>Missing    (10): bat-kbl-2 bat-adlp-9 fi-bsw-n3050 bat-adlp-6 fi-snb-2520m fi-elk-e7500 bat-dg2-14 bat-dg2-11 bat-arlh-2 bat-mtlp-6 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135901v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@evict:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15060/bat-arls-5/igt@i915_selftest@live@evict.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135901v3/bat-arls-5/igt@i915_selftest@live@evict.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11378">i915#11378</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15060 -&gt; Patchwork_135901v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15060: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7922: 325d4f4efbf869f93d3b4479046713d0ce7220e5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135901v3: 36e90f69c967f4cbcdd02c40c9ef25694ffb1a13 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0713558412602340219==--
