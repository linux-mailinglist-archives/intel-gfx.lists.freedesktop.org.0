Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A302268CF33
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 06:58:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CD010E2E2;
	Tue,  7 Feb 2023 05:58:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF41910E2E2;
 Tue,  7 Feb 2023 05:58:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A6E5CAADDC;
 Tue,  7 Feb 2023 05:58:51 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6720619240888818754=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 07 Feb 2023 05:58:51 -0000
Message-ID: <167574953164.13139.4318874946399376640@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230207050717.1833718-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230207050717.1833718-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgTW9y?=
 =?utf-8?q?e_drm=5Fdbg_to_guc=5Fdbg_changes_=28rev2=29?=
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

--===============6720619240888818754==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: More drm_dbg to guc_dbg changes (rev2)
URL   : https://patchwork.freedesktop.org/series/113624/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12707 -> Patchwork_113624v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/index.html

Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-kbl-soraka bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_113624v2 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-11}:       [INCOMPLETE][1] ([i915#7609] / [i915#7913]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12707/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982


Build changes
-------------

  * Linux: CI_DRM_12707 -> Patchwork_113624v2

  CI-20190529: 20190529
  CI_DRM_12707: 4553eb97820406ff3cbc51a3348ffabfe3b3110e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113624v2: 4553eb97820406ff3cbc51a3348ffabfe3b3110e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

d462a41ecae2 drm/i915/guc: More debug print updates - GuC logging
91c4d02dce7c drm/i915/guc: More debug print updates - GuC SLPC
336c66228bf9 drm/i915/guc: More debug print updates - GuC selftests
64bebe805074 drm/i915/guc: More debug print updates - GuC reg capture
91c3c7c8bb8d drm/i915/guc: More debug print updates - GSC firmware
5d3c51740897 drm/i915/guc: More debug print updates - UC firmware

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/index.html

--===============6720619240888818754==
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
<tr><td><b>Series:</b></td><td>More drm_dbg to guc_dbg changes (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113624/">https://patchwork.freedesktop.org/series/113624/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12707 -&gt; Patchwork_113624v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/index.html</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-kbl-soraka bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113624v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_lrc:<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12707/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113624v2/bat-dg2-11/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12707 -&gt; Patchwork_113624v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12707: 4553eb97820406ff3cbc51a3348ffabfe3b3110e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7152: 790b81207a0a6705213ec5ea645bc5e223b2ce1d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113624v2: 4553eb97820406ff3cbc51a3348ffabfe3b3110e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>d462a41ecae2 drm/i915/guc: More debug print updates - GuC logging<br />
91c4d02dce7c drm/i915/guc: More debug print updates - GuC SLPC<br />
336c66228bf9 drm/i915/guc: More debug print updates - GuC selftests<br />
64bebe805074 drm/i915/guc: More debug print updates - GuC reg capture<br />
91c3c7c8bb8d drm/i915/guc: More debug print updates - GSC firmware<br />
5d3c51740897 drm/i915/guc: More debug print updates - UC firmware</p>

</body>
</html>

--===============6720619240888818754==--
