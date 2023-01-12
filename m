Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A86266687F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 02:39:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EE810E008;
	Thu, 12 Jan 2023 01:39:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A7E1110E008;
 Thu, 12 Jan 2023 01:39:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A5A3DAADDA;
 Thu, 12 Jan 2023 01:39:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4348478796892518676=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 12 Jan 2023 01:39:25 -0000
Message-ID: <167348756567.2072.16544035883479014416@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230112003706.950931-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230112003706.950931-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_missing_cleanup_steps_for_PXP_global-teardown?=
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

--===============4348478796892518676==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add missing cleanup steps for PXP global-teardown
URL   : https://patchwork.freedesktop.org/series/112704/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12574 -> Patchwork_112704v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/index.html

Participating hosts (35 -> 33)
------------------------------

  Missing    (2): fi-bsw-kefka fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112704v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - bat-dg1-5:          [SKIP][1] -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/bat-dg1-5/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html

  


Build changes
-------------

  * Linux: CI_DRM_12574 -> Patchwork_112704v1

  CI-20190529: 20190529
  CI_DRM_12574: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112704v1: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7e462680cadc drm/i915/pxp: Pxp hw init should be in resume_complete
346c8e86046a drm/i915/pxp: Trigger the global teardown for before suspending
1a20b32177dc drm/i915/pxp: Invalidate all PXP fw sessions during teardown
cf3e6afaf4b7 mei: clean pending read with vtag on bus
fcc41bb6264f drm/i915/pxp: add device link between i915 and mei_pxp
d32aca4b9d05 mei: mei-me: resume device in prepare

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/index.html

--===============4348478796892518676==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add missing cleanup steps for PXP global-teardown</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112704/">https://patchwork.freedesktop.org/series/112704/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12574 -&gt; Patchwork_112704v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): fi-bsw-kefka fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112704v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12574/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112704v1/bat-dg1-5/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12574 -&gt; Patchwork_112704v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12574: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7116: 79eb8984acd309108be713a8831e60667db67e21 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112704v1: bf7f7c53ac622a3f6d6738d062e59dd21ce28bd7 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7e462680cadc drm/i915/pxp: Pxp hw init should be in resume_complete<br />
346c8e86046a drm/i915/pxp: Trigger the global teardown for before suspending<br />
1a20b32177dc drm/i915/pxp: Invalidate all PXP fw sessions during teardown<br />
cf3e6afaf4b7 mei: clean pending read with vtag on bus<br />
fcc41bb6264f drm/i915/pxp: add device link between i915 and mei_pxp<br />
d32aca4b9d05 mei: mei-me: resume device in prepare</p>

</body>
</html>

--===============4348478796892518676==--
