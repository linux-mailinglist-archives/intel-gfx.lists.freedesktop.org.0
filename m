Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B59E5928EA
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 07:08:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DECBA8AF5;
	Mon, 15 Aug 2022 05:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 91672A8B08;
 Mon, 15 Aug 2022 05:08:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A7B0AADDA;
 Mon, 15 Aug 2022 05:08:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2555817286925210388=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Mon, 15 Aug 2022 05:08:14 -0000
Message-ID: <166054009446.13795.3504940386050352574@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220815043157.1506623-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220815043157.1506623-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv4=2C1/2=5D_drm/i915/selftests=3A_Use_corr?=
 =?utf-8?q?ect_selfest_calls_for_live_tests?=
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

--===============2555817286925210388==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4,1/2] drm/i915/selftests: Use correct selfest calls for live tests
URL   : https://patchwork.freedesktop.org/series/107259/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11986 -> Patchwork_107259v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107259v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107259v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/index.html

Participating hosts (38 -> 28)
------------------------------

  Missing    (10): bat-dg1-5 bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 fi-hsw-4770 bat-rplp-1 bat-rpls-1 bat-dg2-10 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107259v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-rkl-guc:         [PASS][1] -> [TIMEOUT][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/fi-rkl-guc/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/fi-rkl-guc/igt@core_auth@basic-auth.html
    - bat-dg1-6:          [PASS][3] -> [TIMEOUT][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-dg1-6/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-dg1-6/igt@core_auth@basic-auth.html
    - bat-adlp-4:         [PASS][5] -> [TIMEOUT][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-adlp-4/igt@core_auth@basic-auth.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-adlp-4/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - bat-adlp-4:         [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-adlp-4/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-adlp-4/igt@debugfs_test@read_all_entries.html
    - bat-dg1-6:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-dg1-6/igt@debugfs_test@read_all_entries.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-dg1-6/igt@debugfs_test@read_all_entries.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@debugfs_test@read_all_entries:
    - {bat-rpls-2}:       [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-rpls-2/igt@debugfs_test@read_all_entries.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-rpls-2/igt@debugfs_test@read_all_entries.html

  * igt@i915_module_load@load:
    - {bat-rpls-2}:       [PASS][13] -> [TIMEOUT][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-rpls-2/igt@i915_module_load@load.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-rpls-2/igt@i915_module_load@load.html

  
Known issues
------------

  Here are the changes found in Patchwork_107259v1 that come from known issues:

### IGT changes ###

  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153


Build changes
-------------

  * Linux: CI_DRM_11986 -> Patchwork_107259v1

  CI-20190529: 20190529
  CI_DRM_11986: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6623: c8edfca649da71b296d882bb0319181d94e619eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107259v1: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

8563a7912191 drm/i915/guc: Add delay to disable scheduling after pin count goes to zero
53f012bc3f6f drm/i915/selftests: Use correct selfest calls for live tests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/index.html

--===============2555817286925210388==
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
<tr><td><b>Series:</b></td><td>series starting with [v4,1/2] drm/i915/selftests: Use correct selfest calls for live tests</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107259/">https://patchwork.freedesktop.org/series/107259/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11986 -&gt; Patchwork_107259v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107259v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_107259v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/index.html</p>
<h2>Participating hosts (38 -&gt; 28)</h2>
<p>Missing    (10): bat-dg1-5 bat-dg2-8 bat-adlm-1 bat-dg2-9 bat-adlp-6 fi-hsw-4770 bat-rplp-1 bat-rpls-1 bat-dg2-10 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_107259v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/fi-rkl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/fi-rkl-guc/igt@core_auth@basic-auth.html">TIMEOUT</a> +4 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-dg1-6/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-dg1-6/igt@core_auth@basic-auth.html">TIMEOUT</a> +1 similar issue</p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-adlp-4/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-adlp-4/igt@core_auth@basic-auth.html">TIMEOUT</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-adlp-4/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-adlp-4/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-dg1-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-dg1-6/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-rpls-2/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-rpls-2/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11986/bat-rpls-2/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107259v1/bat-rpls-2/igt@i915_module_load@load.html">TIMEOUT</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107259v1 that come from known issues:</p>
<h3>IGT changes</h3>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11986 -&gt; Patchwork_107259v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11986: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6623: c8edfca649da71b296d882bb0319181d94e619eb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107259v1: 1cb5379e17f93685065d8ec54444f1baf9386ffe @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>8563a7912191 drm/i915/guc: Add delay to disable scheduling after pin count goes to zero<br />
53f012bc3f6f drm/i915/selftests: Use correct selfest calls for live tests</p>

</body>
</html>

--===============2555817286925210388==--
