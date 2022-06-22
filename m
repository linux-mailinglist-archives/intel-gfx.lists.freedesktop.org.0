Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31505556E27
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 23:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0325610F7AB;
	Wed, 22 Jun 2022 21:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 242FE10EC15;
 Wed, 22 Jun 2022 21:59:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 19F15A77A5;
 Wed, 22 Jun 2022 21:59:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8739675594104744853=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 22 Jun 2022 21:59:50 -0000
Message-ID: <165593519007.15062.12076442492240015185@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1655895388.git.jani.nikula@intel.com>
In-Reply-To: <cover.1655895388.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/edid=3A_expand_on_struct_drm=5Fedid_usage_=28rev4=29?=
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

--===============8739675594104744853==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid: expand on struct drm_edid usage (rev4)
URL   : https://patchwork.freedesktop.org/series/104309/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11794 -> Patchwork_104309v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): fi-cml-u2 fi-bdw-samus bat-dg2-8 

Known issues
------------

  Here are the changes found in Patchwork_104309v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-icl-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#4890])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-icl-u2/igt@i915_pm_rpm@module-reload.html
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] ([i915#62]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gem:
    - fi-blb-e6850:       NOTRUN -> [DMESG-FAIL][5] ([i915#4528])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-blb-e6850/igt@i915_selftest@live@gem.html

  * igt@i915_selftest@live@hangcheck:
    - bat-dg1-6:          NOTRUN -> [DMESG-FAIL][6] ([i915#4494] / [i915#4957])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-dg1-6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-cfl-8109u:       [PASS][7] -> [DMESG-WARN][8] ([i915#5904]) +34 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - fi-cfl-8109u:       [PASS][9] -> [DMESG-WARN][10] ([i915#5904] / [i915#62]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html
    - bat-dg1-6:          NOTRUN -> [INCOMPLETE][11] ([i915#6011])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-rkl-11600:       NOTRUN -> [SKIP][12] ([fdo#111827])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-tgl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#402])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-plain-flip@c-dp2:
    - fi-cfl-8109u:       [PASS][15] -> [DMESG-WARN][16] ([i915#165])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][17] -> [DMESG-WARN][18] ([i915#165] / [i915#62]) +6 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-u2:          NOTRUN -> [SKIP][19] ([fdo#109295] / [i915#3301])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-tgl-u2/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-icl-u2:          NOTRUN -> [FAIL][20] ([i915#3690] / [i915#4312])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-icl-u2/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s0@smem:
    - {fi-ehl-2}:         [DMESG-WARN][21] ([i915#5122]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-6:          [INCOMPLETE][23] ([i915#4418]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/bat-dg1-6/igt@i915_selftest@live@gt_engines.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-dg1-6/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [DMESG-FAIL][25] ([i915#4528]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [INCOMPLETE][27] ([i915#5982]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - fi-kbl-soraka:      [INCOMPLETE][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_busy@basic@flip:
    - fi-tgl-u2:          [DMESG-WARN][31] ([i915#402]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-tgl-u2/igt@kms_busy@basic@flip.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-tgl-u2/igt@kms_busy@basic@flip.html

  * {igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size}:
    - fi-bsw-kefka:       [FAIL][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - {bat-adlp-6}:       [DMESG-WARN][35] ([i915#3576]) -> [PASS][36] +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4890]: https://gitlab.freedesktop.org/drm/intel/issues/4890
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#5982]: https://gitlab.freedesktop.org/drm/intel/issues/5982
  [i915#6011]: https://gitlab.freedesktop.org/drm/intel/issues/6011
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Build changes
-------------

  * Linux: CI_DRM_11794 -> Patchwork_104309v4

  CI-20190529: 20190529
  CI_DRM_11794: 529f44f159dbe70ba69b6f730280d5db9b7338bc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6539: c39caed3b207e058409f5e2b548a4f940b6283c6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104309v4: 529f44f159dbe70ba69b6f730280d5db9b7338bc @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eabd48e200a9 drm/todo: add entry for converting the subsystem to struct drm_edid
d8904124d1b2 drm/edid: take HF-EEODB extension count into account
abc3939ff824 drm/edid: add HF-EEODB support to EDID read and allocation
40d2c0dc9528 drm/edid: do invalid block filtering in-place
8347449e864d drm/i915/bios: convert intel_bios_init_panel() to drm_edid
cfa7c166e29e drm/i915/edid: convert DP, HDMI and LVDS to drm_edid
da55239d652e drm/edid: add drm_edid_raw() to access the raw EDID data
71d51c235915 drm/probe-helper: add drm_connector_helper_get_modes()
8064a6e5c2e5 drm/edid: add drm_edid_connector_update()
0fee2767fffe drm/edid: abstract debugfs override EDID set/reset
42c27321d122 drm/edid: clean up connector update error handling and debug logging
a974a0c662ab drm/edid: convert drm_connector_update_edid_property() to struct drm_edid
a30d37426492 drm/edid: move drm_connector_update_edid_property() to drm_edid.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/index.html

--===============8739675594104744853==
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
<tr><td><b>Series:</b></td><td>drm/edid: expand on struct drm_edid usage (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/104309/">https://patchwork.freedesktop.org/series/104309/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11794 -&gt; Patchwork_104309v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): fi-cml-u2 fi-bdw-samus bat-dg2-8 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104309v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-icl-u2/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4890">i915#4890</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-blb-e6850/igt@i915_selftest@live@gem.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-dg1-6/igt@i915_selftest@live@hangcheck.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4494">i915#4494</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4957">i915#4957</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@i915_selftest@live@late_gt_pm.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a>) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@i915_suspend@basic-s2idle-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5904">i915#5904</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +1 similar issue</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-dg1-6/igt@i915_suspend@basic-s2idle-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6011">i915#6011</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-rkl-11600/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-tgl-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp2.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-tgl-u2/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109295">fdo#109295</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3690">i915#3690</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-ehl-2/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-dg1-6/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5982">i915#5982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-kbl-soraka/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-tgl-u2/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-tgl-u2/igt@kms_busy@basic@flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size}:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11794/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3576">i915#3576</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104309v4/bat-adlp-6/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11794 -&gt; Patchwork_104309v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11794: 529f44f159dbe70ba69b6f730280d5db9b7338bc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6539: c39caed3b207e058409f5e2b548a4f940b6283c6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104309v4: 529f44f159dbe70ba69b6f730280d5db9b7338bc @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eabd48e200a9 drm/todo: add entry for converting the subsystem to struct drm_edid<br />
d8904124d1b2 drm/edid: take HF-EEODB extension count into account<br />
abc3939ff824 drm/edid: add HF-EEODB support to EDID read and allocation<br />
40d2c0dc9528 drm/edid: do invalid block filtering in-place<br />
8347449e864d drm/i915/bios: convert intel_bios_init_panel() to drm_edid<br />
cfa7c166e29e drm/i915/edid: convert DP, HDMI and LVDS to drm_edid<br />
da55239d652e drm/edid: add drm_edid_raw() to access the raw EDID data<br />
71d51c235915 drm/probe-helper: add drm_connector_helper_get_modes()<br />
8064a6e5c2e5 drm/edid: add drm_edid_connector_update()<br />
0fee2767fffe drm/edid: abstract debugfs override EDID set/reset<br />
42c27321d122 drm/edid: clean up connector update error handling and debug logging<br />
a974a0c662ab drm/edid: convert drm_connector_update_edid_property() to struct drm_edid<br />
a30d37426492 drm/edid: move drm_connector_update_edid_property() to drm_edid.c</p>

</body>
</html>

--===============8739675594104744853==--
