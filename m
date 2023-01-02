Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAB665B34E
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 15:24:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D56D810E349;
	Mon,  2 Jan 2023 14:24:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3B69710E349;
 Mon,  2 Jan 2023 14:24:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3256EAADE6;
 Mon,  2 Jan 2023 14:24:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5477603103166739356=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 02 Jan 2023 14:24:14 -0000
Message-ID: <167266945416.12726.16586317938111324867@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230102132306.9663-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_timeslots_argument_for_DP_DSC_SST_case?=
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

--===============5477603103166739356==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix timeslots argument for DP DSC SST case
URL   : https://patchwork.freedesktop.org/series/112349/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12536 -> Patchwork_112349v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/index.html

Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-kbl-soraka fi-bsw-kefka bat-atsm-1 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112349v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@migrate:
    - bat-adlp-4:         [PASS][1] -> [DMESG-FAIL][2] ([i915#7699])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-adlp-4/igt@i915_selftest@live@migrate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/bat-adlp-4/igt@i915_selftest@live@migrate.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][3] ([i915#5334]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][5] ([i915#6367]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - {bat-adlp-9}:       [FAIL][7] ([i915#4289]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4137]: https://gitlab.freedesktop.org/drm/intel/issues/4137
  [i915#4289]: https://gitlab.freedesktop.org/drm/intel/issues/4289
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7336]: https://gitlab.freedesktop.org/drm/intel/issues/7336
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699


Build changes
-------------

  * Linux: CI_DRM_12536 -> Patchwork_112349v1

  CI-20190529: 20190529
  CI_DRM_12536: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7105: 305e8d105abf033cb850d1fb118e5cbfb6c9cd40 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112349v1: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7ee0789c9b7a drm/i915: Fix timeslots argument for DP DSC SST case

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/index.html

--===============5477603103166739356==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix timeslots argument for DP DSC SST case</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112349/">https://patchwork.freedesktop.org/series/112349/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12536 -&gt; Patchwork_112349v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/index.html</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-kbl-soraka fi-bsw-kefka bat-atsm-1 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112349v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-adlp-4/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/bat-adlp-4/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112349v1/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12536 -&gt; Patchwork_112349v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12536: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7105: 305e8d105abf033cb850d1fb118e5cbfb6c9cd40 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112349v1: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7ee0789c9b7a drm/i915: Fix timeslots argument for DP DSC SST case</p>

</body>
</html>

--===============5477603103166739356==--
