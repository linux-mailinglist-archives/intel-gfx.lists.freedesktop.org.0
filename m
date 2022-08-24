Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A435A59F498
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 09:54:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96A790817;
	Wed, 24 Aug 2022 07:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D6E2A907E5;
 Wed, 24 Aug 2022 07:54:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CE15BA66C9;
 Wed, 24 Aug 2022 07:54:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6029152600634444718=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 24 Aug 2022 07:54:21 -0000
Message-ID: <166132766180.9870.11547668987295722265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915=3A_Move_display_pcode_requ?=
 =?utf-8?q?ests_to_intel=5Fde_=28rev2=29?=
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

--===============6029152600634444718==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/4] drm/i915: Move display pcode requests to intel_de (rev2)
URL   : https://patchwork.freedesktop.org/series/107610/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12018 -> Patchwork_107610v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/index.html

Participating hosts (38 -> 34)
------------------------------

  Missing    (4): bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_107610v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy:
    - bat-dg1-6:          NOTRUN -> [FAIL][1] ([i915#6011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/bat-dg1-6/igt@gem_busy@busy.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-hsw-g3258:       NOTRUN -> [INCOMPLETE][2] ([i915#6598])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {bat-dg2-10}:       [DMESG-WARN][3] ([i915#6530]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/bat-dg2-10/igt@i915_module_load@reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/bat-dg2-10/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@gt_lrc:
    - {bat-dg2-8}:        [INCOMPLETE][5] ([i915#6670]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [INCOMPLETE][7] ([i915#3303] / [i915#4785]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][9] ([i915#6298]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  
#### Warnings ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-elk-e7500:       [INCOMPLETE][11] ([i915#6598] / [i915#6648]) -> [INCOMPLETE][12] ([i915#6598] / [i915#6601] / [i915#6648])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6530]: https://gitlab.freedesktop.org/drm/intel/issues/6530
  [i915#6565]: https://gitlab.freedesktop.org/drm/intel/issues/6565
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6601]: https://gitlab.freedesktop.org/drm/intel/issues/6601
  [i915#6642]: https://gitlab.freedesktop.org/drm/intel/issues/6642
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6648]: https://gitlab.freedesktop.org/drm/intel/issues/6648
  [i915#6670]: https://gitlab.freedesktop.org/drm/intel/issues/6670


Build changes
-------------

  * Linux: CI_DRM_12018 -> Patchwork_107610v2

  CI-20190529: 20190529
  CI_DRM_12018: b50fa415e25e27958bf55e048d44dad0b2f6a03f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6634: e01fe99f00692864b709253638c809231d1fb333 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107610v2: b50fa415e25e27958bf55e048d44dad0b2f6a03f @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a16038aeb786 drm/i915: Replace remaining display uncore references to use intel_de
a12425b21b2a drm/i915: Remove uncore from intel_bios.c
58e2428b8cf7 drm/i915: Remove uncore from intel_tc.c
5f318771d6c8 drm/i915: Move display pcode requests to intel_de

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/index.html

--===============6029152600634444718==
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
<tr><td><b>Series:</b></td><td>series starting with [1/4] drm/i915: Move display pcode requests to intel_de (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/107610/">https://patchwork.freedesktop.org/series/107610/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12018 -&gt; Patchwork_107610v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/index.html</p>
<h2>Participating hosts (38 -&gt; 34)</h2>
<p>Missing    (4): bat-rplp-1 bat-rpls-1 bat-rpls-2 bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107610v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_busy@busy:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/bat-dg1-6/igt@gem_busy@busy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-hsw-g3258/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/bat-dg2-10/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6530">i915#6530</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/bat-dg2-10/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6670">i915#6670</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/bat-dg2-8/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12018/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107610v2/fi-elk-e7500/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6598">i915#6598</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6601">i915#6601</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6648">i915#6648</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12018 -&gt; Patchwork_107610v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12018: b50fa415e25e27958bf55e048d44dad0b2f6a03f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6634: e01fe99f00692864b709253638c809231d1fb333 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107610v2: b50fa415e25e27958bf55e048d44dad0b2f6a03f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a16038aeb786 drm/i915: Replace remaining display uncore references to use intel_de<br />
a12425b21b2a drm/i915: Remove uncore from intel_bios.c<br />
58e2428b8cf7 drm/i915: Remove uncore from intel_tc.c<br />
5f318771d6c8 drm/i915: Move display pcode requests to intel_de</p>

</body>
</html>

--===============6029152600634444718==--
