Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700853D3182
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jul 2021 04:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FE786F5D1;
	Fri, 23 Jul 2021 02:05:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 641806F5D1;
 Fri, 23 Jul 2021 02:05:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5C849A47E1;
 Fri, 23 Jul 2021 02:05:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Fri, 23 Jul 2021 02:05:01 -0000
Message-ID: <162700590134.3042.6226212974351361338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210722235426.31831-1-matthew.brost@intel.com>
In-Reply-To: <20210722235426.31831-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmVt?=
 =?utf-8?q?aining_patches_for_basic_GuC_submission?=
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
Content-Type: multipart/mixed; boundary="===============1421069239=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1421069239==
Content-Type: multipart/alternative;
 boundary="===============7855190966238079066=="

--===============7855190966238079066==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Remaining patches for basic GuC submission
URL   : https://patchwork.freedesktop.org/series/92912/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10374 -> Patchwork_20686
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/index.html

Known issues
------------

  Here are the changes found in Patchwork_20686 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-kbl-7500u:       [PASS][1] -> [DMESG-FAIL][2] ([i915#165])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10374/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717


Participating hosts (37 -> 34)
------------------------------

  Additional (1): fi-dg1-1 
  Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10374 -> Patchwork_20686

  CI-20190529: 20190529
  CI_DRM_10374: 7609fea592fdf67a08716be3cb992e6e07ec81f5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20686: 222b8f5f4ed1ea60fd41f6b131dfee955d950612 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

222b8f5f4ed1 drm/i915/guc: Unblock GuC submission on Gen11+
37ae6f386bc5 drm/i915/guc: Implement GuC priority management
600cd57aa349 drm/i915/selftest: Bump selftest timeouts for hangcheck
e9554ae57a96 drm/i915/selftest: Fix hangcheck self test for GuC submission
5f655534ddb9 drm/i915/selftest: Increase some timeouts in live_requests
d60575e53546 drm/i915/selftest: Fix MOCS selftest for GuC submission
d95ac126a5a4 drm/i915/selftest: Fix workarounds selftest for GuC submission
77466a3adca9 drm/i915/selftest: Better error reporting from hangcheck selftest
e2274e0cf772 drm/i915/guc: Support request cancellation
5901f74f1b1c drm/i915/guc: Implement banned contexts for GuC submission
e1639b04b6cc drm/i915/guc: Add golden context to GuC ADS
bce9b2362ee8 drm/i915/guc: Include scheduling policies in the debugfs state dump
078bbab61932 drm/i915/guc: Connect reset modparam updates to GuC policy flags
43ba142e24f9 drm/i915/guc: Hook GuC scheduling policies up
b4ed2cab4b35 drm/i915/guc: Fix for error capture after full GPU reset with GuC
3a6d2423e625 drm/i915/guc: Capture error state on context reset
ee7a77ae81e6 drm/i915/guc: Enable GuC engine reset
5e642e904723 drm/i915/guc: Don't complain about reset races
6642efd29a52 drm/i915/guc: Provide mmio list to be saved/restored on engine reset
39fc22487a99 drm/i915/guc: Enable the timer expired interrupt for GuC
a6a5b8bd25ca drm/i915/guc: Handle engine reset failure notification
93fcd3d3f15f drm/i915/guc: Handle context reset notification
2d8442c0bcb5 drm/i915/guc: Suspend/resume implementation for new interface
8bc28306ef3c drm/i915/guc: Add disable interrupts to guc sanitize
7cfdea9a7cca drm/i915: Reset GPU immediately if submission is disabled
2fe085686ac0 drm/i915/guc: Reset implementation for new GuC interface
96e05d821dc0 drm/i915: Move active request tracking to a vfunc
e7bbc081df3c drm/i915: Add i915_sched_engine destroy vfunc
9b220ffb651e drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs
095ca97f853a drm/i915/guc: Disable bonding extension with GuC submission
abe5c9520ece drm/i915: Hold reference to intel_context over life of i915_request
ed2ce8f94165 drm/i915/guc: Make hangcheck work with GuC virtual engines
c4c2a95bc42c drm/i915/guc: GuC virtual engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/index.html

--===============7855190966238079066==
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
<tr><td><b>Series:</b></td><td>Remaining patches for basic GuC submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92912/">https://patchwork.freedesktop.org/series/92912/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10374 -&gt; Patchwork_20686</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20686 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10374/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20686/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Additional (1): fi-dg1-1 <br />
  Missing    (4): fi-kbl-soraka fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10374 -&gt; Patchwork_20686</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10374: 7609fea592fdf67a08716be3cb992e6e07ec81f5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6147: f3994c2cd99a1acfe991a8cc838a387dcb36598a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20686: 222b8f5f4ed1ea60fd41f6b131dfee955d950612 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>222b8f5f4ed1 drm/i915/guc: Unblock GuC submission on Gen11+<br />
37ae6f386bc5 drm/i915/guc: Implement GuC priority management<br />
600cd57aa349 drm/i915/selftest: Bump selftest timeouts for hangcheck<br />
e9554ae57a96 drm/i915/selftest: Fix hangcheck self test for GuC submission<br />
5f655534ddb9 drm/i915/selftest: Increase some timeouts in live_requests<br />
d60575e53546 drm/i915/selftest: Fix MOCS selftest for GuC submission<br />
d95ac126a5a4 drm/i915/selftest: Fix workarounds selftest for GuC submission<br />
77466a3adca9 drm/i915/selftest: Better error reporting from hangcheck selftest<br />
e2274e0cf772 drm/i915/guc: Support request cancellation<br />
5901f74f1b1c drm/i915/guc: Implement banned contexts for GuC submission<br />
e1639b04b6cc drm/i915/guc: Add golden context to GuC ADS<br />
bce9b2362ee8 drm/i915/guc: Include scheduling policies in the debugfs state dump<br />
078bbab61932 drm/i915/guc: Connect reset modparam updates to GuC policy flags<br />
43ba142e24f9 drm/i915/guc: Hook GuC scheduling policies up<br />
b4ed2cab4b35 drm/i915/guc: Fix for error capture after full GPU reset with GuC<br />
3a6d2423e625 drm/i915/guc: Capture error state on context reset<br />
ee7a77ae81e6 drm/i915/guc: Enable GuC engine reset<br />
5e642e904723 drm/i915/guc: Don't complain about reset races<br />
6642efd29a52 drm/i915/guc: Provide mmio list to be saved/restored on engine reset<br />
39fc22487a99 drm/i915/guc: Enable the timer expired interrupt for GuC<br />
a6a5b8bd25ca drm/i915/guc: Handle engine reset failure notification<br />
93fcd3d3f15f drm/i915/guc: Handle context reset notification<br />
2d8442c0bcb5 drm/i915/guc: Suspend/resume implementation for new interface<br />
8bc28306ef3c drm/i915/guc: Add disable interrupts to guc sanitize<br />
7cfdea9a7cca drm/i915: Reset GPU immediately if submission is disabled<br />
2fe085686ac0 drm/i915/guc: Reset implementation for new GuC interface<br />
96e05d821dc0 drm/i915: Move active request tracking to a vfunc<br />
e7bbc081df3c drm/i915: Add i915_sched_engine destroy vfunc<br />
9b220ffb651e drm/i915/guc: Direct all breadcrumbs for a class to single breadcrumbs<br />
095ca97f853a drm/i915/guc: Disable bonding extension with GuC submission<br />
abe5c9520ece drm/i915: Hold reference to intel_context over life of i915_request<br />
ed2ce8f94165 drm/i915/guc: Make hangcheck work with GuC virtual engines<br />
c4c2a95bc42c drm/i915/guc: GuC virtual engines</p>

</body>
</html>

--===============7855190966238079066==--

--===============1421069239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1421069239==--
