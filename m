Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF83A67AD2C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:03:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6763F10E744;
	Wed, 25 Jan 2023 09:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E20610E744;
 Wed, 25 Jan 2023 09:03:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 46344A77A5;
 Wed, 25 Jan 2023 09:03:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6923506987122706124=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 25 Jan 2023 09:03:01 -0000
Message-ID: <167463738125.5514.7715243193994748059@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125080651.100223-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230125080651.100223-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_MTL_PXP_Support_=28rev3=29?=
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

--===============6923506987122706124==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add MTL PXP Support (rev3)
URL   : https://patchwork.freedesktop.org/series/112647/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12631 -> Patchwork_112647v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-kbl-soraka 

Known issues
------------

  Here are the changes found in Patchwork_112647v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@load:
    - fi-ctg-p8600:       [PASS][1] -> [DMESG-WARN][2] ([i915#6020])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-ctg-p8600/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/fi-ctg-p8600/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6600u:       [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][5] ([i915#7229]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6020]: https://gitlab.freedesktop.org/drm/intel/issues/6020
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#7625]: https://gitlab.freedesktop.org/drm/intel/issues/7625
  [i915#7852]: https://gitlab.freedesktop.org/drm/intel/issues/7852


Build changes
-------------

  * Linux: CI_DRM_12631 -> Patchwork_112647v3

  CI-20190529: 20190529
  CI_DRM_12631: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112647v3: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

0b8e630de913 drm/i915/pxp: Enable PXP with MTL-GSC-CS
1c27f1a98519 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component
f85809e60855 drm/i915/pxp: MTL-KCR interrupt ctrl's are in GT-0
465bd531e4f5 drm/i915/pxp: Add ARB session creation with new PXP API Ver4.3
fdf37a947f0b drm/i915/pxp: Add GSC-CS backend to send GSC fw messages
042fd769ed89 drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC
4b5ae5807380 drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation
39202a8241cd drm/i915/pxp: Add GSC-CS back-end resource init and cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/index.html

--===============6923506987122706124==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add MTL PXP Support (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112647/">https://patchwork.freedesktop.org/series/112647/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12631 -&gt; Patchwork_112647v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-kbl-soraka </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112647v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-ctg-p8600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-ctg-p8600/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/fi-ctg-p8600/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6020">i915#6020</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/fi-skl-6600u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12631/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v3/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12631 -&gt; Patchwork_112647v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12631: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7136: 31b6af91747ad8c705399c9006cdb81cb1864146 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112647v3: 6bcfacd291ed6ff1ff50a295f970c98d54eabe05 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>0b8e630de913 drm/i915/pxp: Enable PXP with MTL-GSC-CS<br />
1c27f1a98519 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component<br />
f85809e60855 drm/i915/pxp: MTL-KCR interrupt ctrl's are in GT-0<br />
465bd531e4f5 drm/i915/pxp: Add ARB session creation with new PXP API Ver4.3<br />
fdf37a947f0b drm/i915/pxp: Add GSC-CS backend to send GSC fw messages<br />
042fd769ed89 drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC<br />
4b5ae5807380 drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation<br />
39202a8241cd drm/i915/pxp: Add GSC-CS back-end resource init and cleanup</p>

</body>
</html>

--===============6923506987122706124==--
