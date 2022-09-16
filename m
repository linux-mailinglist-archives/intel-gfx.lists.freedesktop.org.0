Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A48905BAB94
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 12:46:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3F110E340;
	Fri, 16 Sep 2022 10:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3FDC10E340;
 Fri, 16 Sep 2022 10:46:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBADAAADD4;
 Fri, 16 Sep 2022 10:46:24 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3971569964040462786=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Fri, 16 Sep 2022 10:46:24 -0000
Message-ID: <166332518487.18047.8937382598604587376@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220916092403.201355-1-janusz.krzysztofik@linux.intel.com>
In-Reply-To: <20220916092403.201355-1-janusz.krzysztofik@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Really_move_i915=5Fgem=5Fcontext=2Elink_under_ref_?=
 =?utf-8?q?protection_=28rev4=29?=
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

--===============3971569964040462786==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Really move i915_gem_context.link under ref protection (rev4)
URL   : https://patchwork.freedesktop.org/series/105975/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12145 -> Patchwork_105975v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/index.html

Participating hosts (44 -> 40)
------------------------------

  Additional (2): fi-apl-guc bat-dg1-5 
  Missing    (6): fi-rkl-11600 fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 bat-dg2-11 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_105975v4:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@gt_pm:
    - {bat-adln-1}:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/bat-adln-1/igt@i915_selftest@live@gt_pm.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-adln-1/igt@i915_selftest@live@gt_pm.html

  
Known issues
------------

  Here are the changes found in Patchwork_105975v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@nullptr:
    - bat-dg1-5:          NOTRUN -> [SKIP][3] ([i915#2582]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@fbdev@nullptr.html

  * igt@gem_mmap@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][4] ([i915#4083])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@gem_mmap@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][5] ([i915#4077]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][6] ([i915#4079]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@gem_tiled_pread_basic.html

  * igt@i915_pm_backlight@basic-brightness:
    - bat-dg1-5:          NOTRUN -> [SKIP][7] ([i915#1155])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-5:          NOTRUN -> [SKIP][8] ([i915#6621])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@i915_pm_rps@basic-api.html

  * igt@kms_addfb_basic@basic-x-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][9] ([i915#4212]) +7 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-5:          NOTRUN -> [SKIP][10] ([i915#4215])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_busy@basic:
    - bat-dg1-5:          NOTRUN -> [SKIP][11] ([i915#1845] / [i915#4303])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_busy@basic.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-nick:        NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][13] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-dg1-5:          NOTRUN -> [SKIP][14] ([fdo#111827]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-5:          NOTRUN -> [SKIP][15] ([fdo#109285])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@nonblocking-crc:
    - bat-dg1-5:          NOTRUN -> [SKIP][16] ([i915#4078]) +14 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - fi-bsw-nick:        NOTRUN -> [SKIP][17] ([fdo#109271])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_psr@primary_page_flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][18] ([i915#1072] / [i915#4078]) +3 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_psr@primary_page_flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-5:          NOTRUN -> [SKIP][19] ([i915#3555])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - bat-dg1-5:          NOTRUN -> [SKIP][20] ([i915#1845] / [i915#3708])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-5:          NOTRUN -> [SKIP][21] ([i915#3708]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-gtt:
    - bat-dg1-5:          NOTRUN -> [SKIP][22] ([i915#3708] / [i915#4077]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-userptr:
    - bat-dg1-5:          NOTRUN -> [SKIP][23] ([i915#3708] / [i915#4873])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][24] ([i915#6599])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-apl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@fbdev@read:
    - {fi-tgl-mst}:       [FAIL][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/fi-tgl-mst/igt@fbdev@read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-tgl-mst/igt@fbdev@read.html

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       [DMESG-FAIL][27] ([i915#4528]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/fi-blb-e6850/igt@i915_selftest@live@gem.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-1}:       [DMESG-WARN][29] ([i915#5278]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/bat-rpls-1/igt@i915_selftest@live@hugepages.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-rpls-1/igt@i915_selftest@live@hugepages.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-bsw-nick:        [DMESG-FAIL][31] ([i915#3428] / [i915#6217]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/intel/issues/4303
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621


Build changes
-------------

  * Linux: CI_DRM_12145 -> Patchwork_105975v4

  CI-20190529: 20190529
  CI_DRM_12145: 2dc9ea03abff1bfc8c8ebe0f7ef056edf77cc29e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_105975v4: 2dc9ea03abff1bfc8c8ebe0f7ef056edf77cc29e @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3065a4acda88 drm/i915/gem: Really move i915_gem_context.link under ref protection
47ab59706af2 drm/i915/gem: Flush contexts on driver release

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/index.html

--===============3971569964040462786==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Really move i915_gem_context.link under ref protection (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/105975/">https://patchwork.freedesktop.org/series/105975/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12145 -&gt; Patchwork_105975v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/index.html</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Additional (2): fi-apl-guc bat-dg1-5 <br />
  Missing    (6): fi-rkl-11600 fi-hsw-4200u fi-icl-u2 fi-ctg-p8600 bat-dg2-11 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_105975v4:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/bat-adln-1/igt@i915_selftest@live@gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-adln-1/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_105975v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@fbdev@nullptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1155">i915#1155</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-x-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_addfb_basic@basic-x-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4212">i915#4212</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-bsw-nick/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_pipe_crc_basic@nonblocking-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-bsw-nick/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4078">i915#4078</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-dg1-5/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4873">i915#4873</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{fi-tgl-mst}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/fi-tgl-mst/igt@fbdev@read.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-tgl-mst/igt@fbdev@read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-blb-e6850/igt@i915_selftest@live@gem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/bat-rpls-1/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/bat-rpls-1/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12145/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_105975v4/fi-bsw-nick/igt@i915_selftest@live@late_gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12145 -&gt; Patchwork_105975v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12145: 2dc9ea03abff1bfc8c8ebe0f7ef056edf77cc29e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_105975v4: 2dc9ea03abff1bfc8c8ebe0f7ef056edf77cc29e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3065a4acda88 drm/i915/gem: Really move i915_gem_context.link under ref protection<br />
47ab59706af2 drm/i915/gem: Flush contexts on driver release</p>

</body>
</html>

--===============3971569964040462786==--
