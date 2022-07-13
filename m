Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF92573DCD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Jul 2022 22:27:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 027F699682;
	Wed, 13 Jul 2022 20:27:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C02959967E;
 Wed, 13 Jul 2022 20:27:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9746A0078;
 Wed, 13 Jul 2022 20:27:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4658180480319173089=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Wed, 13 Jul 2022 20:27:22 -0000
Message-ID: <165774404272.738.934833498077649753@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220712233136.1044951-1-John.C.Harrison@Intel.com>
In-Reply-To: <20220712233136.1044951-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmFu?=
 =?utf-8?q?dom_assortment_of_=28mostly=29_GuC_related_patches_=28rev2=29?=
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

--===============4658180480319173089==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Random assortment of (mostly) GuC related patches (rev2)
URL   : https://patchwork.freedesktop.org/series/106272/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11877 -> Patchwork_106272v2
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/index.html

Participating hosts (39 -> 39)
------------------------------

  Additional (5): bat-adlm-1 bat-dg2-9 bat-adlp-4 bat-jsl-3 bat-rpls-1 
  Missing    (5): fi-kbl-soraka fi-bxt-dsi fi-rkl-11600 bat-dg1-5 bat-adln-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106272v2:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - {bat-adlm-1}:       NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11877 and Patchwork_106272v2:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc_hang:
    - Statuses : 1 dmesg-warn(s) 31 pass(s)
    - Exec time: [0.42, 4.13] s

  

Known issues
------------

  Here are the changes found in Patchwork_106272v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@verify-random:
    - bat-adlp-4:         NOTRUN -> [SKIP][2] ([i915#4613]) +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_tiled_pread_basic:
    - bat-adlp-4:         NOTRUN -> [SKIP][3] ([i915#3282])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@gem_tiled_pread_basic.html

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][4] ([i915#4528])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * {igt@i915_selftest@live@guc_hang} (NEW):
    - {bat-dg2-8}:        NOTRUN -> [DMESG-WARN][5] ([i915#5763])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-dg2-8/igt@i915_selftest@live@guc_hang.html

  * igt@i915_selftest@live@hangcheck:
    - fi-hsw-g3258:       [PASS][6] -> [INCOMPLETE][7] ([i915#3303] / [i915#4785])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html
    - fi-snb-2600:        [PASS][8] -> [INCOMPLETE][9] ([i915#3921])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adlp-4:         NOTRUN -> [SKIP][10] ([i915#5903])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         NOTRUN -> [SKIP][11] ([fdo#111827]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor:
    - bat-adlp-4:         NOTRUN -> [SKIP][12] ([i915#4103])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - bat-adlp-4:         NOTRUN -> [SKIP][13] ([i915#4093]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-adlp-4:         NOTRUN -> [SKIP][14] ([i915#3555] / [i915#4579])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-userptr:
    - bat-adlp-4:         NOTRUN -> [SKIP][15] ([fdo#109295] / [i915#3301] / [i915#3708])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@prime_vgem@basic-userptr.html

  * igt@prime_vgem@basic-write:
    - bat-adlp-4:         NOTRUN -> [SKIP][16] ([fdo#109295] / [i915#3291] / [i915#3708]) +2 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@prime_vgem@basic-write.html

  * igt@runner@aborted:
    - fi-hsw-g3258:       NOTRUN -> [FAIL][17] ([fdo#109271] / [i915#4312] / [i915#6246])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-hsw-g3258/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_module_load@load:
    - {fi-tgl-dsi}:       [DMESG-WARN][18] ([i915#1982]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-tgl-dsi/igt@i915_module_load@load.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-tgl-dsi/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][20] ([i915#4528]) -> [PASS][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-blb-e6850/igt@i915_selftest@live@requests.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4093]: https://gitlab.freedesktop.org/drm/intel/issues/4093
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4785]: https://gitlab.freedesktop.org/drm/intel/issues/4785
  [i915#4873]: https://gitlab.freedesktop.org/drm/intel/issues/4873
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5174]: https://gitlab.freedesktop.org/drm/intel/issues/5174
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5763]: https://gitlab.freedesktop.org/drm/intel/issues/5763
  [i915#5903]: https://gitlab.freedesktop.org/drm/intel/issues/5903
  [i915#6246]: https://gitlab.freedesktop.org/drm/intel/issues/6246
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257


Build changes
-------------

  * Linux: CI_DRM_11877 -> Patchwork_106272v2

  CI-20190529: 20190529
  CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106272v2: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

9c3e17340f17 drm/i915/guc: Add a helper for log buffer size
9bb603f61427 drm/i915/guc: Don't abort on CTB_UNUSED status
e14a4c8dfb25 drm/i915/guc: Support larger contexts on newer hardware
4fb50ad3371f drm/i915/selftest: Cope with not having an RCS engine
9c6033853797 drm/i915/guc: Add selftest for a hung GuC
3e480d3a6e92 drm/i915/guc: Route semaphores to GuC for Gen12+
2e8931889eae drm/i915/guc: Use streaming loads to speed up dumping the guc log
ebe673745559 drm/i915/guc: Record CTB info in error logs
61bb2a4d4080 drm/i915/guc: Add GuC <-> kernel time stamp translation information
bef91fb07ac7 drm/i915/guc: Fix issues with live_preempt_cancel
95d709e73336 drm/i915/guc: Don't call ring_is_idle in GuC submission
73532cc967d9 drm/i915: Remove bogus GEM_BUG_ON in unpark

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/index.html

--===============4658180480319173089==
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
<tr><td><b>Series:</b></td><td>Random assortment of (mostly) GuC related patches (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106272/">https://patchwork.freedesktop.org/series/106272/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11877 -&gt; Patchwork_106272v2</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/index.html</p>
<h2>Participating hosts (39 -&gt; 39)</h2>
<p>Additional (5): bat-adlm-1 bat-dg2-9 bat-adlp-4 bat-jsl-3 bat-rpls-1 <br />
  Missing    (5): fi-kbl-soraka fi-bxt-dsi fi-rkl-11600 bat-dg1-5 bat-adln-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106272v2:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc:<ul>
<li>{bat-adlm-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlm-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11877 and Patchwork_106272v2:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc_hang:<ul>
<li>Statuses : 1 dmesg-warn(s) 31 pass(s)</li>
<li>Exec time: [0.42, 4.13] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106272v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@gem_tiled_pread_basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>{igt@i915_selftest@live@guc_hang} (NEW):</p>
<ul>
<li>{bat-dg2-8}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-dg2-8/igt@i915_selftest@live@guc_hang.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5763">i915#5763</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>fi-hsw-g3258:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-hsw-g3258/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4785">i915#4785</a>)</p>
</li>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@i915_suspend@basic-s3-without-i915.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5903">i915#5903</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4093">i915#4093</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/bat-adlp-4/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-hsw-g3258:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-hsw-g3258/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6246">i915#6246</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-tgl-dsi/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-tgl-dsi/igt@i915_module_load@load.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11877/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106272v2/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11877 -&gt; Patchwork_106272v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11877: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6578: 7d289d89131ec37c1145bcdb86149914587d7406 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106272v2: e55cefc370de5a38ee848aa96082d9d9f4cacdb9 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>9c3e17340f17 drm/i915/guc: Add a helper for log buffer size<br />
9bb603f61427 drm/i915/guc: Don't abort on CTB_UNUSED status<br />
e14a4c8dfb25 drm/i915/guc: Support larger contexts on newer hardware<br />
4fb50ad3371f drm/i915/selftest: Cope with not having an RCS engine<br />
9c6033853797 drm/i915/guc: Add selftest for a hung GuC<br />
3e480d3a6e92 drm/i915/guc: Route semaphores to GuC for Gen12+<br />
2e8931889eae drm/i915/guc: Use streaming loads to speed up dumping the guc log<br />
ebe673745559 drm/i915/guc: Record CTB info in error logs<br />
61bb2a4d4080 drm/i915/guc: Add GuC &lt;-&gt; kernel time stamp translation information<br />
bef91fb07ac7 drm/i915/guc: Fix issues with live_preempt_cancel<br />
95d709e73336 drm/i915/guc: Don't call ring_is_idle in GuC submission<br />
73532cc967d9 drm/i915: Remove bogus GEM_BUG_ON in unpark</p>

</body>
</html>

--===============4658180480319173089==--
