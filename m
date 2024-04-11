Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B260D8A0880
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 08:32:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2065310EE89;
	Thu, 11 Apr 2024 06:32:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1D910EE89;
 Thu, 11 Apr 2024 06:32:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3571548953129205416=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_iommu/vt-d=3A_Fix_WARN=5FON?=
 =?utf-8?q?_in_iommu_probe_path?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Apr 2024 06:32:11 -0000
Message-ID: <171281713130.1340052.17724380577999491035@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240409093645.456004-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240409093645.456004-1-vinod.govindapillai@intel.com>
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

--===============3571548953129205416==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: iommu/vt-d: Fix WARN_ON in iommu probe path
URL   : https://patchwork.freedesktop.org/series/132199/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14548 -> Patchwork_132199v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/index.html

Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-blb-e6850 fi-glk-j4005 bat-dg1-7 fi-apl-guc 

Known issues
------------

  Here are the changes found in Patchwork_132199v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-2:         [PASS][1] -> [ABORT][2] ([i915#10797])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-arls-2/igt@i915_selftest@live@gt_timelines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/bat-arls-2/igt@i915_selftest@live@gt_timelines.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - bat-dg2-9:          [ABORT][3] ([i915#10366]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-dg2-9/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/bat-dg2-9/igt@i915_selftest@live@perf.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#10797]: https://gitlab.freedesktop.org/drm/intel/issues/10797


Build changes
-------------

  * Linux: CI_DRM_14548 -> Patchwork_132199v1

  CI-20190529: 20190529
  CI_DRM_14548: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7802: 7802
  Patchwork_132199v1: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9aa4557bf2e3 iommu/vt-d: Fix WARN_ON in iommu probe path

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/index.html

--===============3571548953129205416==
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
<tr><td><b>Series:</b></td><td>iommu/vt-d: Fix WARN_ON in iommu probe path</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132199/">https://patchwork.freedesktop.org/series/132199/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14548 -&gt; Patchwork_132199v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-blb-e6850 fi-glk-j4005 bat-dg1-7 fi-apl-guc </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132199v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/bat-arls-2/igt@i915_selftest@live@gt_timelines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10797">i915#10797</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@perf:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14548/bat-dg2-9/igt@i915_selftest@live@perf.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132199v1/bat-dg2-9/igt@i915_selftest@live@perf.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14548 -&gt; Patchwork_132199v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14548: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7802: 7802<br />
  Patchwork_132199v1: d2e6568486674a4a3a4455df449d80a038f11e10 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9aa4557bf2e3 iommu/vt-d: Fix WARN_ON in iommu probe path</p>

</body>
</html>

--===============3571548953129205416==--
