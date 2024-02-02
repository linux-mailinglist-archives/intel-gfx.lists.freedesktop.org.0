Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F1184678C
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 06:49:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E69110E1B5;
	Fri,  2 Feb 2024 05:49:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0B3010E110;
 Fri,  2 Feb 2024 05:49:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8208159602629858039=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_fdinfo_shared_stats_=28rev2?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alex Deucher" <alexander.deucher@amd.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 02 Feb 2024 05:49:03 -0000
Message-ID: <170685294392.935547.14301644141078420564@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240130161235.3237122-1-alexander.deucher@amd.com>
In-Reply-To: <20240130161235.3237122-1-alexander.deucher@amd.com>
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

--===============8208159602629858039==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: fdinfo shared stats (rev2)
URL   : https://patchwork.freedesktop.org/series/129320/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14210 -> Patchwork_129320v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/index.html

Participating hosts (39 -> 37)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_129320v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_tlb:
    - {bat-arls-2}:       [DMESG-WARN][1] ([i915#10194]) -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-arls-2/igt@i915_selftest@live@gt_tlb.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/bat-arls-2/igt@i915_selftest@live@gt_tlb.html

  
Known issues
------------

  Here are the changes found in Patchwork_129320v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-mtlp-6:         [DMESG-WARN][3] ([i915#10217]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html
    - bat-adlp-9:         [ABORT][5] ([i915#10021]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-9/igt@i915_selftest@live@hangcheck.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/bat-adlp-9/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10021]: https://gitlab.freedesktop.org/drm/intel/issues/10021
  [i915#10194]: https://gitlab.freedesktop.org/drm/intel/issues/10194
  [i915#10217]: https://gitlab.freedesktop.org/drm/intel/issues/10217


Build changes
-------------

  * Linux: CI_DRM_14210 -> Patchwork_129320v2

  CI-20190529: 20190529
  CI_DRM_14210: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7701: 7701
  Patchwork_129320v2: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ee2bb09b0f75 drm/xe: Update shared stats to use the new gem helper
c96464be72e9 drm/i915: Update shared stats to use the new gem helper
a7a5c7ce71cf drm/amdgpu: add shared fdinfo stats
86c1578916f2 drm: update drm_show_memory_stats() for dma-bufs
177b59b8436c drm: add drm_gem_object_is_shared_for_memory_stats() helper
e1fed847e61a Documentation/gpu: Update documentation on drm-shared-*

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/index.html

--===============8208159602629858039==
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
<tr><td><b>Series:</b></td><td>fdinfo shared stats (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/129320/">https://patchwork.freedesktop.org/series/129320/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14210 -&gt; Patchwork_129320v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_129320v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_tlb:<ul>
<li>{bat-arls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-arls-2/igt@i915_selftest@live@gt_tlb.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10194">i915#10194</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/bat-arls-2/igt@i915_selftest@live@gt_tlb.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_129320v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10217">i915#10217</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/bat-mtlp-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14210/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10021">i915#10021</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129320v2/bat-adlp-9/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14210 -&gt; Patchwork_129320v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14210: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7701: 7701<br />
  Patchwork_129320v2: 18a9fefd9e05291cbe792d358bbdc04dc6d21adb @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ee2bb09b0f75 drm/xe: Update shared stats to use the new gem helper<br />
c96464be72e9 drm/i915: Update shared stats to use the new gem helper<br />
a7a5c7ce71cf drm/amdgpu: add shared fdinfo stats<br />
86c1578916f2 drm: update drm_show_memory_stats() for dma-bufs<br />
177b59b8436c drm: add drm_gem_object_is_shared_for_memory_stats() helper<br />
e1fed847e61a Documentation/gpu: Update documentation on drm-shared-*</p>

</body>
</html>

--===============8208159602629858039==--
