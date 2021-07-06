Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA8FC3BDF6E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 00:39:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F5089444;
	Tue,  6 Jul 2021 22:39:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E4A99893AB;
 Tue,  6 Jul 2021 22:38:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D3E65A7DFC;
 Tue,  6 Jul 2021 22:38:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Tue, 06 Jul 2021 22:38:59 -0000
Message-ID: <162561113983.25117.2574866517854308768@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210706222010.101522-1-matthew.brost@intel.com>
In-Reply-To: <20210706222010.101522-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ1Qg?=
 =?utf-8?q?changes_required_for_GuC_submission_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1639282319=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1639282319==
Content-Type: multipart/alternative;
 boundary="===============7260544980179187427=="

--===============7260544980179187427==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: CT changes required for GuC submission (rev3)
URL   : https://patchwork.freedesktop.org/series/91943/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10307 -> Patchwork_20539
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20539 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20539, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20539:

### IGT changes ###

#### Possible regressions ####

  * igt@vgem_basic@unload:
    - fi-bwr-2160:        NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/fi-bwr-2160/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_20539 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bwr-2160:        [{ABORT}][2] -> [PASS][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10307/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bwr-2160:        [FAIL][4] ([i915#2505]) -> [FAIL][5] ([i915#2505] / [i915#2722])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10307/fi-bwr-2160/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/fi-bwr-2160/igt@runner@aborted.html

  
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722


Participating hosts (38 -> 36)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10307 -> Patchwork_20539

  CI-20190529: 20190529
  CI_DRM_10307: 5f62539f797eecbee492eb05bf574b3ea02ad9ff @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20539: 04ca74f95089481a5c31e2eb99c40ec4ff3ff430 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

04ca74f95089 drm/i915/guc: Module load failure test for CT buffer creation
ed6225a350bc drm/i915/guc: Optimize CTB writes and reads
020f0bee0513 drm/i915/guc: Add stall timer to non blocking CTB send function
7f796c01cba1 drm/i915/guc: Add non blocking CTB send function
48bbc2746b99 drm/i915/guc: Increase size of CTB buffers
5a166441c701 drm/i915/guc: Improve error message for unsolicited CT response
d6dbe98e9087 drm/i915/guc: Relax CTB response timeout

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/index.html

--===============7260544980179187427==
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
<tr><td><b>Series:</b></td><td>CT changes required for GuC submission (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/91943/">https://patchwork.freedesktop.org/series/91943/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10307 -&gt; Patchwork_20539</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20539 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20539, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20539:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@vgem_basic@unload:<ul>
<li>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/fi-bwr-2160/igt@vgem_basic@unload.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20539 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10307/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">{ABORT}</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/fi-bwr-2160/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10307/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20539/fi-bwr-2160/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2505">i915#2505</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10307 -&gt; Patchwork_20539</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10307: 5f62539f797eecbee492eb05bf574b3ea02ad9ff @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6129: 687589e76f787d26ee2b539e551a9be06bd41ce3 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20539: 04ca74f95089481a5c31e2eb99c40ec4ff3ff430 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>04ca74f95089 drm/i915/guc: Module load failure test for CT buffer creation<br />
ed6225a350bc drm/i915/guc: Optimize CTB writes and reads<br />
020f0bee0513 drm/i915/guc: Add stall timer to non blocking CTB send function<br />
7f796c01cba1 drm/i915/guc: Add non blocking CTB send function<br />
48bbc2746b99 drm/i915/guc: Increase size of CTB buffers<br />
5a166441c701 drm/i915/guc: Improve error message for unsolicited CT response<br />
d6dbe98e9087 drm/i915/guc: Relax CTB response timeout</p>

</body>
</html>

--===============7260544980179187427==--

--===============1639282319==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1639282319==--
