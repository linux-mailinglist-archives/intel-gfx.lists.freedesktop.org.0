Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3F54BEE62
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 01:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6ED5F10E581;
	Tue, 22 Feb 2022 00:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1710810E573;
 Tue, 22 Feb 2022 00:02:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 13FE1AADD3;
 Tue, 22 Feb 2022 00:02:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5145238366416001551=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andrzej Hajda" <andrzej.hajda@intel.com>
Date: Tue, 22 Feb 2022 00:02:08 -0000
Message-ID: <164548812804.23041.15700329698185285640@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220221232542.1481315-1-andrzej.hajda@intel.com>
In-Reply-To: <20220221232542.1481315-1-andrzej.hajda@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_use_ref=5Ftracker_library_for_tracking_wakerefs_=28rev?=
 =?utf-8?q?3=29?=
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

--===============5145238366416001551==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: use ref_tracker library for tracking wakerefs (rev3)
URL   : https://patchwork.freedesktop.org/series/100327/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11264 -> Patchwork_22346
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22346 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22346, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/index.html

Participating hosts (44 -> 43)
------------------------------

  Additional (3): fi-bdw-5557u bat-adls-5 fi-pnv-d510 
  Missing    (4): fi-bsw-cyan shard-rkl shard-dg1 shard-tglu 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22346:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-snb-2600:        NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-snb-2600/igt@runner@aborted.html
    - fi-ilk-650:         NOTRUN -> [FAIL][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-ilk-650/igt@runner@aborted.html
    - fi-kbl-x1275:       NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-x1275/igt@runner@aborted.html
    - fi-bsw-kefka:       NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bsw-kefka/igt@runner@aborted.html
    - fi-bdw-gvtdvm:      NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bdw-gvtdvm/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cfl-8700k/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cfl-8109u/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-dg1-5/igt@runner@aborted.html
    - fi-bsw-nick:        NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       NOTRUN -> [FAIL][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-8809g/igt@runner@aborted.html
    - fi-snb-2520m:       NOTRUN -> [FAIL][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-snb-2520m/igt@runner@aborted.html
    - fi-bdw-5557u:       NOTRUN -> [FAIL][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bdw-5557u/igt@runner@aborted.html
    - fi-bwr-2160:        NOTRUN -> [FAIL][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bwr-2160/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       NOTRUN -> [FAIL][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-7500u/igt@runner@aborted.html
    - fi-kbl-guc:         NOTRUN -> [FAIL][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          NOTRUN -> [FAIL][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cml-u2/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-rkl-guc/igt@runner@aborted.html
    - fi-ivb-3770:        NOTRUN -> [FAIL][19]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-ivb-3770/igt@runner@aborted.html
    - fi-tgl-1115g4:      NOTRUN -> [FAIL][20]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-tgl-1115g4/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][21]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-dg1-6/igt@runner@aborted.html
    - fi-elk-e7500:       NOTRUN -> [FAIL][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-elk-e7500/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-skl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       NOTRUN -> [FAIL][26]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bsw-n3050/igt@runner@aborted.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][27] ([i915#4312]) -> [FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-skl-6600u/igt@runner@aborted.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-skl-6600u/igt@runner@aborted.html
    - fi-apl-guc:         [FAIL][29] ([i915#2426] / [i915#4312]) -> [FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-apl-guc/igt@runner@aborted.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-apl-guc/igt@runner@aborted.html
    - fi-hsw-4770:        [FAIL][31] ([fdo#109271] / [i915#1436] / [i915#4312]) -> [FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-hsw-4770/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-hsw-4770/igt@runner@aborted.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {fi-rkl-11600}:     NOTRUN -> [FAIL][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-rkl-11600/igt@runner@aborted.html
    - {bat-adls-5}:       NOTRUN -> [FAIL][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-adls-5/igt@runner@aborted.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-tgl-dsi/igt@runner@aborted.html
    - {bat-adlp-6}:       NOTRUN -> [FAIL][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-adlp-6/igt@runner@aborted.html
    - {fi-jsl-1}:         NOTRUN -> [FAIL][37]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-jsl-1/igt@runner@aborted.html
    - {bat-jsl-1}:        NOTRUN -> [FAIL][38]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-jsl-1/igt@runner@aborted.html
    - {fi-ehl-2}:         NOTRUN -> [FAIL][39]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-ehl-2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_22346 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-kbl-7567u:       [PASS][40] -> [DMESG-WARN][41] ([i915#262])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][42] ([i915#2403])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-pnv-d510/igt@runner@aborted.html
    - fi-glk-dsi:         NOTRUN -> [FAIL][43] ([k.org#202321])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-glk-dsi/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][44] ([k.org#202321])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-glk-j4005/igt@runner@aborted.html
    - fi-kbl-7567u:       NOTRUN -> [FAIL][45] ([i915#1814] / [i915#4312])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-7567u/igt@runner@aborted.html
    - fi-blb-e6850:       NOTRUN -> [FAIL][46] ([i915#2403])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4897]: https://gitlab.freedesktop.org/drm/intel/issues/4897
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11264 -> Patchwork_22346

  CI-20190529: 20190529
  CI_DRM_11264: 3b562232559bd940e63f977619548e5cc70da985 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22346: 79bf0307dd7d1dfb9ec6180a79c7c9f0af0af9d2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

79bf0307dd7d drm/i915: replace Intel internal tracker with kernel core ref_tracker
fdce0e9f8058 drm/i915: Correct type of wakeref variable
29a2d4b63b37 drm/i915: Track leaked gt->wakerefs
e1a8bc8a2d3a drm/i915: Separate wakeref tracking
359c7ae0d260 lib/ref_tracker: remove warnings in case of allocation failure
bd88fd5cf435 lib/ref_tracker: add printing to memory buffer
36bd9e9d6260 lib/ref_tracker: __ref_tracker_dir_print improve printing
5a389d9482be lib/ref_tracker: add unlocked leak print helper
414f58d98e73 ref_tracker: remove filter_irq_stacks() call
e7636c41be32 ref_tracker: add a count of untracked references
eec39ef01f2c ref_tracker: implement use-after-free detection

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/index.html

--===============5145238366416001551==
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
<tr><td><b>Series:</b></td><td>drm/i915: use ref_tracker library for tracking wakerefs (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100327/">https://patchwork.freedesktop.org/series/100327/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11264 -&gt; Patchwork_22346</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22346 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22346, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/index.html</p>
<h2>Participating hosts (44 -&gt; 43)</h2>
<p>Additional (3): fi-bdw-5557u bat-adls-5 fi-pnv-d510 <br />
  Missing    (4): fi-bsw-cyan shard-rkl shard-dg1 shard-tglu </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22346:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-snb-2600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-ilk-650/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bdw-gvtdvm/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-dg1-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bsw-nick/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-snb-2520m/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bwr-2160:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bwr-2160/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cml-u2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-rkl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-ivb-3770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-ivb-3770/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-tgl-1115g4/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-dg1-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-elk-e7500/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-cfl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-skl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-skl-6600u/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-apl-guc/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-hsw-4770/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-hsw-4770/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>{fi-rkl-11600}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-rkl-11600/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adls-5}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-adls-5/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-adlp-6/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{bat-jsl-1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/bat-jsl-1/igt@runner@aborted.html">FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-ehl-2/igt@runner@aborted.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22346 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11264/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-7567u/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22346/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11264 -&gt; Patchwork_22346</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11264: 3b562232559bd940e63f977619548e5cc70da985 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6349: 0513032006f385f34fcd094c810b93f31cbed09d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22346: 79bf0307dd7d1dfb9ec6180a79c7c9f0af0af9d2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>79bf0307dd7d drm/i915: replace Intel internal tracker with kernel core ref_tracker<br />
fdce0e9f8058 drm/i915: Correct type of wakeref variable<br />
29a2d4b63b37 drm/i915: Track leaked gt-&gt;wakerefs<br />
e1a8bc8a2d3a drm/i915: Separate wakeref tracking<br />
359c7ae0d260 lib/ref_tracker: remove warnings in case of allocation failure<br />
bd88fd5cf435 lib/ref_tracker: add printing to memory buffer<br />
36bd9e9d6260 lib/ref_tracker: __ref_tracker_dir_print improve printing<br />
5a389d9482be lib/ref_tracker: add unlocked leak print helper<br />
414f58d98e73 ref_tracker: remove filter_irq_stacks() call<br />
e7636c41be32 ref_tracker: add a count of untracked references<br />
eec39ef01f2c ref_tracker: implement use-after-free detection</p>

</body>
</html>

--===============5145238366416001551==--
