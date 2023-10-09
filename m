Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5F37BDAA7
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 14:05:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F40F110E266;
	Mon,  9 Oct 2023 12:05:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5DF610E266;
 Mon,  9 Oct 2023 12:05:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D09A8AADF2;
 Mon,  9 Oct 2023 12:05:34 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1655028902400003407=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Date: Mon, 09 Oct 2023 12:05:34 -0000
Message-ID: <169685313484.24833.16196164521258593863@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231006182051.1599923-1-jonathan.cavitt@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Define_and_use_GuC_and_CTB_TLB_invalidation_routines_?=
 =?utf-8?b?KHJldjMp?=
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

--===============1655028902400003407==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Define and use GuC and CTB TLB invalidation routines (rev3)
URL   : https://patchwork.freedesktop.org/series/124744/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13728 -> Patchwork_124744v3
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bsw-nick fi-snb-2520m fi-pnv-d510 

Known issues
------------

  Here are the changes found in Patchwork_124744v3 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - bat-mtlp-8:         [ABORT][1] ([i915#8213] / [i915#9262]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html
    - fi-blb-e6850:       [ABORT][3] -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][5] ([i915#5334]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_hdmi_inject@inject-audio:
    - fi-kbl-guc:         [FAIL][7] ([IGT#3]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html

  
  [IGT#3]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#9262]: https://gitlab.freedesktop.org/drm/intel/issues/9262


Build changes
-------------

  * Linux: CI_DRM_13728 -> Patchwork_124744v3

  CI-20190529: 20190529
  CI_DRM_13728: e642685fe494c1893ab2fd94e6dc7b6827303d90 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7520: 6435c8825e9269bdac515ca96cba4502b5b770f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_124744v3: e642685fe494c1893ab2fd94e6dc7b6827303d90 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

91e7ad1a7eb3 drm/i915: Enable GuC TLB invalidations for MTL
2c10f277e70f drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck
d003a77528e1 drm/i915: No TLB invalidation on wedged GT
619f08570c19 drm/i915: No TLB invalidation on suspended GT
180934d654ff drm/i915: Define and use GuC and CTB TLB invalidation routines
72a1d206a610 drm/i915/guc: Add CT size delay helper
f7cec4fecc6d drm/i915: Add GuC TLB Invalidation device info flags

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/index.html

--===============1655028902400003407==
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
<tr><td><b>Series:</b></td><td>drm/i915: Define and use GuC and CTB TLB invalidation routines (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/124744/">https://patchwork.freedesktop.org/series/124744/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13728 -&gt; Patchwork_124744v3</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bsw-nick fi-snb-2520m fi-pnv-d510 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_124744v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8213">i915#8213</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/9262">i915#9262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/bat-mtlp-8/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/fi-blb-e6850/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13728/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/3">IGT#3</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_124744v3/fi-kbl-guc/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13728 -&gt; Patchwork_124744v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13728: e642685fe494c1893ab2fd94e6dc7b6827303d90 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7520: 6435c8825e9269bdac515ca96cba4502b5b770f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_124744v3: e642685fe494c1893ab2fd94e6dc7b6827303d90 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>91e7ad1a7eb3 drm/i915: Enable GuC TLB invalidations for MTL<br />
2c10f277e70f drm/i915/gt: Increase sleep in gt_tlb selftest sanitycheck<br />
d003a77528e1 drm/i915: No TLB invalidation on wedged GT<br />
619f08570c19 drm/i915: No TLB invalidation on suspended GT<br />
180934d654ff drm/i915: Define and use GuC and CTB TLB invalidation routines<br />
72a1d206a610 drm/i915/guc: Add CT size delay helper<br />
f7cec4fecc6d drm/i915: Add GuC TLB Invalidation device info flags</p>

</body>
</html>

--===============1655028902400003407==--
