Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92708686DCC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Feb 2023 19:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A8AA10E43C;
	Wed,  1 Feb 2023 18:20:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F06A110E43C;
 Wed,  1 Feb 2023 18:20:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E86E8A882E;
 Wed,  1 Feb 2023 18:20:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5704580590470015221=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Wed, 01 Feb 2023 18:20:25 -0000
Message-ID: <167527562592.25551.2984347092237211990@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230201165146.4056691-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230201165146.4056691-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Consolidate_TLB_invalidation_flow?=
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

--===============5704580590470015221==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Consolidate TLB invalidation flow
URL   : https://patchwork.freedesktop.org/series/113563/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12680 -> Patchwork_113563v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/index.html

Participating hosts (26 -> 25)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_113563v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_selftest@live@gt_tlb}:
    - fi-kbl-7567u:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/fi-kbl-7567u/igt@i915_selftest@live@gt_tlb.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/fi-kbl-7567u/igt@i915_selftest@live@gt_tlb.html
    - {bat-kbl-2}:        [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/bat-kbl-2/igt@i915_selftest@live@gt_tlb.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/bat-kbl-2/igt@i915_selftest@live@gt_tlb.html
    - fi-cfl-8109u:       [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/fi-cfl-8109u/igt@i915_selftest@live@gt_tlb.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/fi-cfl-8109u/igt@i915_selftest@live@gt_tlb.html

  * igt@i915_selftest@live@slpc:
    - {bat-rpls-1}:       [DMESG-FAIL][7] ([i915#7996]) -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_113563v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - {bat-dg2-11}:       [DMESG-WARN][9] ([i915#7699]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/bat-dg2-11/igt@i915_selftest@live@migrate.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996


Build changes
-------------

  * Linux: CI_DRM_12680 -> Patchwork_113563v1

  CI-20190529: 20190529
  CI_DRM_12680: 06086656e6f03cbcbb4b99273734a7943e923fc9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_113563v1: 06086656e6f03cbcbb4b99273734a7943e923fc9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eee9e2013646 drm/i915: Consolidate TLB invalidation flow

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/index.html

--===============5704580590470015221==
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
<tr><td><b>Series:</b></td><td>drm/i915: Consolidate TLB invalidation flow</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/113563/">https://patchwork.freedesktop.org/series/113563/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12680 -&gt; Patchwork_113563v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/index.html</p>
<h2>Participating hosts (26 -&gt; 25)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_113563v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@i915_selftest@live@gt_tlb}:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/fi-kbl-7567u/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/fi-kbl-7567u/igt@i915_selftest@live@gt_tlb.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/bat-kbl-2/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/bat-kbl-2/igt@i915_selftest@live@gt_tlb.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/fi-cfl-8109u/igt@i915_selftest@live@gt_tlb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/fi-cfl-8109u/igt@i915_selftest@live@gt_tlb.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7996">i915#7996</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_113563v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12680/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_113563v1/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12680 -&gt; Patchwork_113563v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12680: 06086656e6f03cbcbb4b99273734a7943e923fc9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7143: c7b12dcc460fc2348e1fa7f4dcb791bb82e29e44 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_113563v1: 06086656e6f03cbcbb4b99273734a7943e923fc9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eee9e2013646 drm/i915: Consolidate TLB invalidation flow</p>

</body>
</html>

--===============5704580590470015221==--
