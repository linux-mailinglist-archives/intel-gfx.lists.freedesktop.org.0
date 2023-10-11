Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D46777C4838
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 05:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6515610E3EB;
	Wed, 11 Oct 2023 03:14:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FA1B10E3E7;
 Wed, 11 Oct 2023 03:14:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B837A3ECB;
 Wed, 11 Oct 2023 03:14:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6431346228261646309=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Wed, 11 Oct 2023 03:14:31 -0000
Message-ID: <169699407140.26514.3761827536519600214@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230913225714.877627-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/1=5D_drm/i915/pxp=3A_Add_drm=5Fdbgs?=
 =?utf-8?q?_for_critical_PXP_events=2E_=28rev2=29?=
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

--===============6431346228261646309==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/1] drm/i915/pxp: Add drm_dbgs for critical PXP events. (rev2)
URL   : https://patchwork.freedesktop.org/series/123656/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13737 -> Patchwork_123656v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/index.html

Participating hosts (37 -> 36)
------------------------------

  Missing    (1): fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_123656v2 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - fi-bsw-n3050:       [PASS][1] -> [FAIL][2] ([i915#8293])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/fi-bsw-n3050/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/fi-bsw-n3050/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][5] -> [ABORT][6] ([i915#9414])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - bat-dg2-9:          [INCOMPLETE][7] ([i915#9275]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html

  
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293
  [i915#9275]: https://gitlab.freedesktop.org/drm/intel/issues/9275
  [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414


Build changes
-------------

  * Linux: CI_DRM_13737 -> Patchwork_123656v2

  CI-20190529: 20190529
  CI_DRM_13737: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_123656v2: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3fb92abb05cf drm/i915/pxp: Add drm_dbgs for critical PXP events.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/index.html

--===============6431346228261646309==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/1] drm/i915/pxp: Add drm_dbgs for critical PXP events. (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123656/">https://patchwork.freedesktop.org/series/123656/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13737 -&gt; Patchwork_123656v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/index.html</p>
<h2>Participating hosts (37 -&gt; 36)</h2>
<p>Missing    (1): fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123656v2 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/fi-bsw-n3050/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/fi-bsw-n3050/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9414">i915#9414</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s0@lmem0:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13737/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9275">i915#9275</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123656v2/bat-dg2-9/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13737 -&gt; Patchwork_123656v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13737: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7527: 46f98a3041f73a1d6ee7ec3ace6eba79b15369c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_123656v2: c768959add20d28639e5bfa4cea2544aab51879e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3fb92abb05cf drm/i915/pxp: Add drm_dbgs for critical PXP events.</p>

</body>
</html>

--===============6431346228261646309==--
