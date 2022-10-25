Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED8160D4E4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 21:44:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DF310E106;
	Tue, 25 Oct 2022 19:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E76D910E106;
 Tue, 25 Oct 2022 19:44:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DF86FA7DFB;
 Tue, 25 Oct 2022 19:44:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6819007652861316606=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinay Belgaumkar" <vinay.belgaumkar@intel.com>
Date: Tue, 25 Oct 2022 19:44:27 -0000
Message-ID: <166672706791.15483.14747800504867554587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221024171108.14373-1-vinay.belgaumkar@intel.com>
In-Reply-To: <20221024171108.14373-1-vinay.belgaumkar@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/slpc=3A_Optmize_waitboost_for_SLPC_=28rev6=29?=
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

--===============6819007652861316606==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/slpc: Optmize waitboost for SLPC (rev6)
URL   : https://patchwork.freedesktop.org/series/109840/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12294 -> Patchwork_109840v6
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109840v6 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109840v6, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/index.html

Participating hosts (40 -> 39)
------------------------------

  Additional (1): fi-skl-guc 
  Missing    (2): fi-ctg-p8600 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109840v6:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-kbl-7567u:       [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@reset:
    - {bat-rpls-2}:       [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-rpls-2/igt@i915_selftest@live@reset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-rpls-2/igt@i915_selftest@live@reset.html

  
Known issues
------------

  Here are the changes found in Patchwork_109840v6 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#4613]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-skl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@random-engines:
    - fi-icl-u2:          NOTRUN -> [SKIP][6] ([i915#4613]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html

  * igt@i915_selftest@live@guc_multi_lrc:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#5904] / [i915#7174]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#5904]) +32 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][11] -> [DMESG-WARN][12] ([i915#5904] / [i915#62]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-hsw-g3258:       NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-hsw-4770:        NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-icl-u2:          NOTRUN -> [SKIP][15] ([fdo#111827])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-icl-u2:          NOTRUN -> [SKIP][17] ([fdo#109285])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][18] -> [DMESG-WARN][19] ([i915#165] / [i915#62]) +14 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-skl-guc:         NOTRUN -> [SKIP][20] ([fdo#109271]) +10 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-skl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-icl-u2:          NOTRUN -> [SKIP][21] ([i915#3555])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - fi-icl-u2:          NOTRUN -> [SKIP][22] ([fdo#109295] / [i915#3301])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][23] ([i915#2582]) -> [PASS][24] +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-rpls-2/igt@fbdev@read.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-rpls-2/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][25] ([i915#6687]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-4770:        [INCOMPLETE][27] ([i915#4785]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html
    - fi-hsw-g3258:       [INCOMPLETE][29] ([i915#3303] / [i915#4785]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@slpc:
    - {bat-adln-1}:       [DMESG-FAIL][31] ([i915#6997]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-adln-1/igt@i915_selftest@live@slpc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-adln-1/igt@i915_selftest@live@slpc.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:
    - fi-bsw-kefka:       [FAIL][33] ([i915#6298]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - fi-icl-u2:          [DMESG-WARN][35] ([i915#4890]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6298]: https://gitlab.freedesktop.org/drm/intel/issues/6298
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7174]: https://gitlab.freedesktop.org/drm/intel/issues/7174


Build changes
-------------

  * Linux: CI_DRM_12294 -> Patchwork_109840v6

  CI-20190529: 20190529
  CI_DRM_12294: fca30d6149441ff19df784c0554b8c20a29c7f53 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109840v6: fca30d6149441ff19df784c0554b8c20a29c7f53 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a5205b29f031 drm/i915/slpc: Optmize waitboost for SLPC

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/index.html

--===============6819007652861316606==
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
<tr><td><b>Series:</b></td><td>drm/i915/slpc: Optmize waitboost for SLPC (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/109840/">https://patchwork.freedesktop.org/series/109840/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12294 -&gt; Patchwork_109840v6</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109840v6 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_109840v6, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Additional (1): fi-skl-guc <br />
  Missing    (2): fi-ctg-p8600 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_109840v6:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-kbl-7567u/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-rpls-2/igt@i915_selftest@live@reset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-rpls-2/igt@i915_selftest@live@reset.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109840v6 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@gem_lmem_swapping@random-engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@i915_selftest@live@guc_multi_lrc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7174">i915#7174</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-g3258/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-4770/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-skl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-4770/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/bat-adln-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/bat-adln-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6298">i915#6298</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12294/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109840v6/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12294 -&gt; Patchwork_109840v6</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12294: fca30d6149441ff19df784c0554b8c20a29c7f53 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7026: ce0f97e7e0aa54c40049a8365b3d61773c92e588 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109840v6: fca30d6149441ff19df784c0554b8c20a29c7f53 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a5205b29f031 drm/i915/slpc: Optmize waitboost for SLPC</p>

</body>
</html>

--===============6819007652861316606==--
