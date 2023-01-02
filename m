Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1765B2DE
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jan 2023 14:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEE3110E33E;
	Mon,  2 Jan 2023 13:47:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 39FAC10E33E;
 Mon,  2 Jan 2023 13:47:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31880AADE2;
 Mon,  2 Jan 2023 13:47:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8904736282279147953=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Stanislav Lisovskiy" <stanislav.lisovskiy@intel.com>
Date: Mon, 02 Jan 2023 13:47:37 -0000
Message-ID: <167266725716.12726.2642472107018822014@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230102113937.9263-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230102113937.9263-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Implement_workaround_for_DP2_UHBR_bandwidth_check?=
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

--===============8904736282279147953==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Implement workaround for DP2 UHBR bandwidth check
URL   : https://patchwork.freedesktop.org/series/112345/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12536 -> Patchwork_112345v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112345v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112345v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/index.html

Participating hosts (45 -> 43)
------------------------------

  Missing    (2): fi-snb-2520m fi-pnv-d510 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112345v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@slpc:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-kbl-soraka/igt@i915_selftest@live@slpc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-kbl-soraka/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_112345v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][3] ([i915#6687]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_module_load@load:
    - fi-kbl-soraka:      [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-kbl-soraka/igt@i915_module_load@load.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-kbl-soraka/igt@i915_module_load@load.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][7] ([i915#5334]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
    - fi-kbl-soraka:      [DMESG-FAIL][9] ([i915#5334]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - {bat-adlp-9}:       [FAIL][11] ([i915#4289]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4289]: https://gitlab.freedesktop.org/drm/intel/issues/4289
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7554]: https://gitlab.freedesktop.org/drm/intel/issues/7554


Build changes
-------------

  * Linux: CI_DRM_12536 -> Patchwork_112345v1

  CI-20190529: 20190529
  CI_DRM_12536: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7105: 305e8d105abf033cb850d1fb118e5cbfb6c9cd40 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112345v1: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

aa51e97eae11 drm/i915: Implement workaround for DP2 UHBR bandwidth check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/index.html

--===============8904736282279147953==
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
<tr><td><b>Series:</b></td><td>drm/i915: Implement workaround for DP2 UHBR bandwidth check</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112345/">https://patchwork.freedesktop.org/series/112345/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12536 -&gt; Patchwork_112345v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112345v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112345v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/index.html</p>
<h2>Participating hosts (45 -&gt; 43)</h2>
<p>Missing    (2): fi-snb-2520m fi-pnv-d510 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112345v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-kbl-soraka/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-kbl-soraka/igt@i915_selftest@live@slpc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112345v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-kbl-soraka/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-kbl-soraka/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12536/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112345v1/bat-adlp-9/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12536 -&gt; Patchwork_112345v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12536: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7105: 305e8d105abf033cb850d1fb118e5cbfb6c9cd40 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112345v1: 4c18d8b1c2a1f11e99f865f60fbce9fedd3376fc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>aa51e97eae11 drm/i915: Implement workaround for DP2 UHBR bandwidth check</p>

</body>
</html>

--===============8904736282279147953==--
