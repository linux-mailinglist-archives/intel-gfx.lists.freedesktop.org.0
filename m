Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4B469526A
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Feb 2023 21:57:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A18AA10E299;
	Mon, 13 Feb 2023 20:57:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F09810E299;
 Mon, 13 Feb 2023 20:57:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 67021AA917;
 Mon, 13 Feb 2023 20:57:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5011832481750803787=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 13 Feb 2023 20:57:10 -0000
Message-ID: <167632183041.20213.10097682471515937247@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1676317696.git.jani.nikula@intel.com>
In-Reply-To: <cover.1676317696.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/wm=3A_legacy_watermark_code_shuffling_=28rev2=29?=
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

--===============5011832481750803787==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/wm: legacy watermark code shuffling (rev2)
URL   : https://patchwork.freedesktop.org/series/113775/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12733 -> Patchwork_113775v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/index.html

Participating hosts (38 -> 37)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113775v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/bat-rpls-2/igt@i915_selftest@live@reset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/bat-rpls-2/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_113775v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-adlm-1}:       [DMESG-WARN][5] ([i915#2867]) -> [PASS][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-skl-guc:         [DMESG-WARN][7] ([i915#8073]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/fi-skl-guc/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/fi-skl-guc/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8073]: https://gitlab.freedesktop.org/drm/intel/issues/8073


Build changes
-------------

  * Linux: CI_DRM_12733 -> Patchwork_113775v2

  CI-20190529: 20190529
  CI_DRM_12733: e6aa8599c967748cfd3f9e5393ff45c31049e20f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113775v2: e6aa8599c967748cfd3f9e5393ff45c31049e20f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

b99a0fb0d460 drm/i915: rename intel_pm_types.h -> display/intel_wm_types.h
0746cc464f1c drm/i915/wm: move watermark debugfs to intel_wm.c
a45dac5af611 drm/i915/wm: move watermark sanitization to intel_wm.[ch]
179ff91f5d72 drm/i915/wm: add .get_hw_state to watermark funcs
f6e6573873ca drm/i915/wm: move functions to call watermark hooks to intel_wm.[ch]
a56ec15a8068 drm/i915/wm: move remaining watermark code out of intel_pm.c
0a2bd3e016eb drm/i915: move memory frequency detection to intel_dram.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/index.html

--===============5011832481750803787==
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
<tr><td><b>Series:</b></td><td>drm/i915/wm: legacy watermark code shuffling (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113775/">https://patchwork.freedesktop.org/series/113775/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12733 -&gt; Patchwork_113775v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/index.html</p>
<h2>Participating hosts (38 -&gt; 37)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113775v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/bat-rpls-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113775v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_heartbeat:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/bat-adlm-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12733/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8073">i915#8073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113775v2/fi-skl-guc/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12733 -&gt; Patchwork_113775v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12733: e6aa8599c967748cfd3f9e5393ff45c31049e20f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7160: 45da871dd2684227e93a2fc002b87dfc58bd5fd9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113775v2: e6aa8599c967748cfd3f9e5393ff45c31049e20f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>b99a0fb0d460 drm/i915: rename intel_pm_types.h -&gt; display/intel_wm_types.h<br />
0746cc464f1c drm/i915/wm: move watermark debugfs to intel_wm.c<br />
a45dac5af611 drm/i915/wm: move watermark sanitization to intel_wm.[ch]<br />
179ff91f5d72 drm/i915/wm: add .get_hw_state to watermark funcs<br />
f6e6573873ca drm/i915/wm: move functions to call watermark hooks to intel_wm.[ch]<br />
a56ec15a8068 drm/i915/wm: move remaining watermark code out of intel_pm.c<br />
0a2bd3e016eb drm/i915: move memory frequency detection to intel_dram.c</p>

</body>
</html>

--===============5011832481750803787==--
