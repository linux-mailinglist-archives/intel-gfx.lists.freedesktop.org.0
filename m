Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 722D66222B5
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 04:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C88C10E048;
	Wed,  9 Nov 2022 03:42:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BF6710E048;
 Wed,  9 Nov 2022 03:42:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 243DDAADDD;
 Wed,  9 Nov 2022 03:42:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8194506028559221966=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ashutosh Dixit" <ashutosh.dixit@intel.com>
Date: Wed, 09 Nov 2022 03:42:25 -0000
Message-ID: <166796534511.3406.12600577704711076200@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
In-Reply-To: <20221109022201.3205623-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/rps=3A_Query_min/max_freq_from_FW_when_displaying_in_sysf?=
 =?utf-8?q?s?=
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

--===============8194506028559221966==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/rps: Query min/max freq from FW when displaying in sysfs
URL   : https://patchwork.freedesktop.org/series/110685/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12358 -> Patchwork_110685v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (2): fi-hsw-4770 bat-adls-5 
  Missing    (3): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_110685v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_pm_rpm@basic-rte:
    - {bat-adln-1}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-adln-1/igt@i915_pm_rpm@basic-rte.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-adln-1/igt@i915_pm_rpm@basic-rte.html

  
Known issues
------------

  Here are the changes found in Patchwork_110685v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-apl-guc:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#4613]) +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][4] ([fdo#109271]) +9 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-hsw-4770:        NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#3012])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-apl-guc:         NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1072]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@perf_pmu@frequency:
    - fi-ilk-650:         NOTRUN -> [SKIP][9] ([fdo#109271])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-ilk-650/igt@perf_pmu@frequency.html
    - fi-blb-e6850:       NOTRUN -> [SKIP][10] ([fdo#109271])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-blb-e6850/igt@perf_pmu@frequency.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][11] ([fdo#109271])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-bsw-nick/igt@perf_pmu@frequency.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][12] ([fdo#109271])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-bsw-kefka/igt@perf_pmu@frequency.html
    - fi-elk-e7500:       NOTRUN -> [SKIP][13] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-elk-e7500/igt@perf_pmu@frequency.html
    - fi-pnv-d510:        NOTRUN -> [SKIP][14] ([fdo#109271])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-pnv-d510/igt@perf_pmu@frequency.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [INCOMPLETE][15] ([i915#7073]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@fbdev@read:
    - {bat-rpls-2}:       [SKIP][17] ([i915#2582]) -> [PASS][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@fbdev@read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@fbdev@read.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-rpls-2}:       [WARN][19] ([i915#7346]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@i915_pm_rpm@module-reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-skl-6700k2:      [DMESG-FAIL][21] ([i915#5334]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hugepages:
    - {bat-rpls-2}:       [DMESG-WARN][23] ([i915#5278]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@i915_selftest@live@hugepages.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@i915_selftest@live@hugepages.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-rpls-2}:       [SKIP][25] ([i915#1849]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-fence-flip:
    - {bat-rpls-2}:       [SKIP][27] ([fdo#109295] / [i915#1845] / [i915#3708]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5278]: https://gitlab.freedesktop.org/drm/intel/issues/5278
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#6434]: https://gitlab.freedesktop.org/drm/intel/issues/6434
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
  [i915#7346]: https://gitlab.freedesktop.org/drm/intel/issues/7346
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456


Build changes
-------------

  * IGT: IGT_7048 -> IGTPW_8071
  * Linux: CI_DRM_12358 -> Patchwork_110685v1

  CI-20190529: 20190529
  CI_DRM_12358: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_8071: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8071/index.html
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_110685v1: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

e5d8af2c15ae drm/i915/rps: Query min/max freq from FW when displaying in sysfs

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/index.html

--===============8194506028559221966==
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
<tr><td><b>Series:</b></td><td>drm/i915/rps: Query min/max freq from FW when displaying in sysfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/110685/">https://patchwork.freedesktop.org/series/110685/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12358 -&gt; Patchwork_110685v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (2): fi-hsw-4770 bat-adls-5 <br />
  Missing    (3): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_110685v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-adln-1/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-adln-1/igt@i915_pm_rpm@basic-rte.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_110685v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-apl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@i915_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3012">i915#3012</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-apl-guc/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@frequency:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-ilk-650/igt@perf_pmu@frequency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-blb-e6850/igt@perf_pmu@frequency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-bsw-nick/igt@perf_pmu@frequency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-bsw-kefka/igt@perf_pmu@frequency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-elk-e7500:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-elk-e7500/igt@perf_pmu@frequency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-pnv-d510/igt@perf_pmu@frequency.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@fbdev@read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2582">i915#2582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@fbdev@read.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7346">i915#7346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/fi-skl-6700k2/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@i915_selftest@live@hugepages.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5278">i915#5278</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@i915_selftest@live@hugepages.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{bat-rpls-2}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12358/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110685v1/bat-rpls-2/igt@prime_vgem@basic-fence-flip.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_7048 -&gt; IGTPW_8071</li>
<li>Linux: CI_DRM_12358 -&gt; Patchwork_110685v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12358: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_8071: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_8071/index.html<br />
  IGT_7048: 5edd5c539f1fdf1c02157bf43fa1fd22d4ad2c75 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_110685v1: 0ab311f0d9569b14e8f8edf3d4dd77da7dea0075 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>e5d8af2c15ae drm/i915/rps: Query min/max freq from FW when displaying in sysfs</p>

</body>
</html>

--===============8194506028559221966==--
