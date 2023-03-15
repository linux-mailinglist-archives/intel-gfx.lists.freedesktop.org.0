Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B196BB574
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Mar 2023 15:02:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB65E10E1CA;
	Wed, 15 Mar 2023 14:02:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id AF4E410E1CA;
 Wed, 15 Mar 2023 14:02:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A622CAADE3;
 Wed, 15 Mar 2023 14:02:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5939276184836134280=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Wed, 15 Mar 2023 14:02:50 -0000
Message-ID: <167888897064.19838.12785284250003117896@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230308232826.1542846-1-fei.yang@intel.com>
In-Reply-To: <20230308232826.1542846-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_keep_same_cache_settings_as_timeline?=
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

--===============5939276184836134280==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: keep same cache settings as timeline
URL   : https://patchwork.freedesktop.org/series/114879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12829 -> Patchwork_114879v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114879v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114879v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/index.html

Participating hosts (36 -> 33)
------------------------------

  Missing    (3): fi-kbl-soraka bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114879v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-adlm-1:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-adlm-1/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-adlm-1/igt@i915_selftest@live@gt_mocs.html

  
Known issues
------------

  Here are the changes found in Patchwork_114879v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_lrc:
    - bat-adln-1:         [PASS][3] -> [INCOMPLETE][4] ([i915#7609])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-adln-1/igt@i915_selftest@live@gt_lrc.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [PASS][5] -> [ABORT][6] ([i915#4983])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-rpls-1/igt@i915_selftest@live@reset.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-rpls-1/igt@i915_selftest@live@reset.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][7] ([i915#5354]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3:
    - bat-dg2-11:         [PASS][8] -> [INCOMPLETE][9] ([i915#7908])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3.html

  
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#7609]: https://gitlab.freedesktop.org/drm/intel/issues/7609
  [i915#7908]: https://gitlab.freedesktop.org/drm/intel/issues/7908


Build changes
-------------

  * Linux: CI_DRM_12829 -> Patchwork_114879v1

  CI-20190529: 20190529
  CI_DRM_12829: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7185: 6707461ddb214bb8a75c5fcf2747941c9d9b11ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114879v1: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

cbae2647cd44 drm/i915/selftests: keep same cache settings as timeline

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/index.html

--===============5939276184836134280==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: keep same cache settings as timeline</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114879/">https://patchwork.freedesktop.org/series/114879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12829 -&gt; Patchwork_114879v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114879v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114879v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/index.html</p>
<h2>Participating hosts (36 -&gt; 33)</h2>
<p>Missing    (3): fi-kbl-soraka bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114879v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-adlm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-adlm-1/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-adlm-1/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114879v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-adln-1/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7609">i915#7609</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12829/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114879v1/bat-dg2-11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-d-hdmi-a-3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7908">i915#7908</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12829 -&gt; Patchwork_114879v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12829: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7185: 6707461ddb214bb8a75c5fcf2747941c9d9b11ae @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114879v1: d947159409deea43f404f35cc758740c714c8888 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>cbae2647cd44 drm/i915/selftests: keep same cache settings as timeline</p>

</body>
</html>

--===============5939276184836134280==--
