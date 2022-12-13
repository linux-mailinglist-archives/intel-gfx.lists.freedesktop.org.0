Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E6964B694
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 14:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AACEB10E318;
	Tue, 13 Dec 2022 13:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2ED5610E312;
 Tue, 13 Dec 2022 13:46:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id ED3F3AADDD;
 Tue, 13 Dec 2022 13:46:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1874179967551320954=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Tue, 13 Dec 2022 13:46:42 -0000
Message-ID: <167093920296.25539.14677294301068790741@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221213123917.4066375-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20221213123917.4066375-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_fix_TLB_invalidation_fo?=
 =?utf-8?q?r_Gen12=2E50_video_and_compute_engines?=
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

--===============1874179967551320954==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: fix TLB invalidation for Gen12.50 video and compute engines
URL   : https://patchwork.freedesktop.org/series/111895/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12501 -> Patchwork_111895v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/index.html

Participating hosts (38 -> 19)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (20): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bwr-2160 bat-adln-1 bat-atsm-1 bat-jsl-3 bat-rplp-1 bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-adlp-4 

New tests
---------

  New tests have been introduced between CI_DRM_12501 and Patchwork_111895v1:

### New IGT tests (5) ###

  * igt@fbdev@eof:
    - Statuses : 17 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@fbdev@nullptr:
    - Statuses : 17 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@fbdev@read:
    - Statuses : 17 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@fbdev@write:
    - Statuses : 17 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_suspend@basic-s0:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_111895v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#4613]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][2] -> [INCOMPLETE][3] ([i915#4817])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][6] ([i915#7229]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12501 -> Patchwork_111895v1

  CI-20190529: 20190529
  CI_DRM_12501: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111895v1: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

7f444672992b drm/i915: Consolidate TLB invalidation flow
2efdc15febdd drm/i915: fix TLB invalidation for Gen12.50 video and compute engines

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/index.html

--===============1874179967551320954==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: fix TLB invalidation for Gen12.50 video and compute engines</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111895/">https://patchwork.freedesktop.org/series/111895/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12501 -&gt; Patchwork_111895v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/index.html</p>
<h2>Participating hosts (38 -&gt; 19)</h2>
<p>Additional (1): fi-skl-guc <br />
  Missing    (20): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bwr-2160 bat-adln-1 bat-atsm-1 bat-jsl-3 bat-rplp-1 bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-adlp-4 </p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_12501 and Patchwork_111895v1:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>Statuses : 17 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>Statuses : 17 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>Statuses : 17 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>Statuses : 17 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111895v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111895v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12501 -&gt; Patchwork_111895v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12501: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111895v1: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>7f444672992b drm/i915: Consolidate TLB invalidation flow<br />
2efdc15febdd drm/i915: fix TLB invalidation for Gen12.50 video and compute engines</p>

</body>
</html>

--===============1874179967551320954==--
