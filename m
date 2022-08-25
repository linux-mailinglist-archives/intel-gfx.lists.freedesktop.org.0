Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5B65A17FF
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 19:32:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC0F10E431;
	Thu, 25 Aug 2022 17:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A508010E1B0;
 Thu, 25 Aug 2022 17:32:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C7F5AADD6;
 Thu, 25 Aug 2022 17:32:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6791491836522872455=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Thu, 25 Aug 2022 17:32:29 -0000
Message-ID: <166144874960.24642.10193485022282518129@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220825154239.52343-1-andrzej.hajda@intel.com>
In-Reply-To: <20220825154239.52343-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_allow_misaligned=5Fpin_test_work_with_unmapp?=
 =?utf-8?q?able_memory?=
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

--===============6791491836522872455==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: allow misaligned_pin test work with unmappable memory
URL   : https://patchwork.freedesktop.org/series/107760/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12025 -> Patchwork_107760v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/index.html

Participating hosts (38 -> 35)
------------------------------

  Missing    (3): fi-hsw-4770 bat-rpls-2 fi-rkl-11600 

Known issues
------------

  Here are the changes found in Patchwork_107760v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][1] -> [INCOMPLETE][2] ([i915#5847])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-pnv-d510:        NOTRUN -> [INCOMPLETE][3] ([i915#6598] / [i915#6601])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html

  * igt@runner@aborted:
    - fi-bsw-nick:        NOTRUN -> [FAIL][4] ([fdo#109271] / [i915#4312])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-bsw-nick/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-ivb-3770:        [FAIL][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - {bat-rplp-1}:       [DMESG-WARN][7] ([i915#2867]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@requests:
    - {bat-rpls-1}:       [INCOMPLETE][9] ([i915#6257] / [i915#6380]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-rpls-1/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/bat-rpls-1/igt@i915_selftest@live@requests.html
    - fi-pnv-d510:        [DMESG-FAIL][11] ([i915#4528]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-pnv-d510/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-pnv-d510/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][13] ([i915#6298]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-hsw-g3258:       [INCOMPLETE][15] ([i915#6598]) -> [INCOMPLETE][16] ([i915#4817] / [i915#6598])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#5847]: https://gitlab.freedesktop.org/drm/intel/issues/5847
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6380]: https://gitlab.freedesktop.org/drm/intel/issues/6380
  [i915#6530]: https://gitlab.freedesktop.org/drm/intel/issues/6530
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6637]: https://gitlab.freedesktop.org/drm/intel/issues/6637


Build changes
-------------

  * Linux: CI_DRM_12025 -> Patchwork_107760v1

  CI-20190529: 20190529
  CI_DRM_12025: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107760v1: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3ac9c705957d drm/i915/selftests: allow misaligned_pin test work with unmappable memory

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/index.html

--===============6791491836522872455==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: allow misaligned_pin test work with unmappable memory</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107760/">https://patchwork.freedesktop.org/series/107760/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12025 -&gt; Patchwork_107760v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Missing    (3): fi-hsw-4770 bat-rpls-2 fi-rkl-11600 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107760v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5847">i915#5847</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-pnv-d510/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-ivb-3770/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/bat-rplp-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/bat-rpls-1/igt@i915_selftest@live@requests.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6257">i915#6257</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6380">i915#6380</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-pnv-d510/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-pnv-d510/igt@i915_selftest@live@requests.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12025/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107760v1/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12025 -&gt; Patchwork_107760v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12025: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6636: 1298b5f0e1b3e010657ffba41d2e775fab028e08 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107760v1: a510fb9e9cb6f9ee56eae0ea0d4f3f9c0757a042 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3ac9c705957d drm/i915/selftests: allow misaligned_pin test work with unmappable memory</p>

</body>
</html>

--===============6791491836522872455==--
