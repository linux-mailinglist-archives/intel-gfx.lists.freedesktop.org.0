Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9403959339D
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 18:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48DEBEB85;
	Mon, 15 Aug 2022 16:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A5B229739E;
 Mon, 15 Aug 2022 16:55:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9C75DAA917;
 Mon, 15 Aug 2022 16:55:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3779182316867237063=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Mon, 15 Aug 2022 16:55:57 -0000
Message-ID: <166058255763.13798.16147802001757686061@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20220815160134.1527085-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgRGVs?=
 =?utf-8?q?ay_disabling_scheduling_on_a_context_=28rev4=29?=
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

--===============3779182316867237063==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Delay disabling scheduling on a context (rev4)
URL   : https://patchwork.freedesktop.org/series/96167/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11989 -> Patchwork_96167v4
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_96167v4 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_96167v4, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/index.html

Participating hosts (29 -> 29)
------------------------------

  Additional (1): fi-kbl-soraka 
  Missing    (1): bat-rpls-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_96167v4:

### IGT changes ###

#### Possible regressions ####

  * igt@core_auth@basic-auth:
    - fi-rkl-guc:         [PASS][1] -> [TIMEOUT][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-rkl-guc/igt@core_auth@basic-auth.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-rkl-guc/igt@core_auth@basic-auth.html
    - bat-dg1-6:          [PASS][3] -> [TIMEOUT][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/bat-dg1-6/igt@core_auth@basic-auth.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/bat-dg1-6/igt@core_auth@basic-auth.html

  * igt@debugfs_test@read_all_entries:
    - bat-dg1-6:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/bat-dg1-6/igt@debugfs_test@read_all_entries.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/bat-dg1-6/igt@debugfs_test@read_all_entries.html

  
Known issues
------------

  Here are the changes found in Patchwork_96167v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html

  * igt@gem_huc_copy@huc-copy:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#2190])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613]) +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][11] ([i915#4817])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][12] ([fdo#109271] / [fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][13] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html
    - fi-apl-guc:         NOTRUN -> [SKIP][14] ([fdo#109271] / [fdo#111827])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       NOTRUN -> [FAIL][16] ([i915#4312])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bdw-5557u/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bdw-gvtdvm:      [INCOMPLETE][17] ([i915#2940]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html
    - fi-bsw-kefka:       [INCOMPLETE][19] ([i915#2940]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-bsw-kefka/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bsw-kefka/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - {fi-ehl-2}:         [INCOMPLETE][21] ([i915#6106]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-ehl-2/igt@i915_selftest@live@hangcheck.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-ehl-2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][23] ([i915#4528]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [INCOMPLETE][25] -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-apl-guc/igt@i915_selftest@live@reset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-apl-guc/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#6106]: https://gitlab.freedesktop.org/drm/intel/issues/6106


Build changes
-------------

  * Linux: CI_DRM_11989 -> Patchwork_96167v4

  CI-20190529: 20190529
  CI_DRM_11989: 8953e41fa70d4507c6f5508e030347f7eda3ba8a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6625: d47beef9b01595f721c584070940c95be1cf11e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_96167v4: 8953e41fa70d4507c6f5508e030347f7eda3ba8a @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

edebdf6a1a62 drm/i915/guc: Add delay to disable scheduling after pin count goes to zero
2f3ba4dfcc08 drm/i915/selftests: Use correct selfest calls for live tests

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/index.html

--===============3779182316867237063==
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
<tr><td><b>Series:</b></td><td>Delay disabling scheduling on a context (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96167/">https://patchwork.freedesktop.org/series/96167/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11989 -&gt; Patchwork_96167v4</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_96167v4 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_96167v4, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/index.html</p>
<h2>Participating hosts (29 -&gt; 29)</h2>
<p>Additional (1): fi-kbl-soraka <br />
  Missing    (1): bat-rpls-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_96167v4:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-rkl-guc/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-rkl-guc/igt@core_auth@basic-auth.html">TIMEOUT</a> +4 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/bat-dg1-6/igt@core_auth@basic-auth.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/bat-dg1-6/igt@core_auth@basic-auth.html">TIMEOUT</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/bat-dg1-6/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/bat-dg1-6/igt@debugfs_test@read_all_entries.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_96167v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bdw-gvtdvm/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bsw-kefka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-blb-e6850/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-bdw-gvtdvm:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bdw-gvtdvm/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-bsw-kefka/igt@i915_selftest@live@execlists.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6106">i915#6106</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-ehl-2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11989/fi-apl-guc/igt@i915_selftest@live@reset.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_96167v4/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11989 -&gt; Patchwork_96167v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11989: 8953e41fa70d4507c6f5508e030347f7eda3ba8a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6625: d47beef9b01595f721c584070940c95be1cf11e8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_96167v4: 8953e41fa70d4507c6f5508e030347f7eda3ba8a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>edebdf6a1a62 drm/i915/guc: Add delay to disable scheduling after pin count goes to zero<br />
2f3ba4dfcc08 drm/i915/selftests: Use correct selfest calls for live tests</p>

</body>
</html>

--===============3779182316867237063==--
