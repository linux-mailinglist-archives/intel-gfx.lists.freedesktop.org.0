Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D14458D3EE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Aug 2022 08:39:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09149C7EC5;
	Tue,  9 Aug 2022 06:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5BEF78DE32;
 Tue,  9 Aug 2022 06:39:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2F1EBA9932;
 Tue,  9 Aug 2022 06:39:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0456614806314687742=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lee Shawn C" <shawn.c.lee@intel.com>
Date: Tue, 09 Aug 2022 06:39:10 -0000
Message-ID: <166002715016.12843.4644004924599187624@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220802153103.26653-1-shawn.c.lee@intel.com>
In-Reply-To: <20220802153103.26653-1-shawn.c.lee@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_avoid_abnormal_pixel_output_when_turn_eDP_disp?=
 =?utf-8?q?lay_off_=28rev2=29?=
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

--===============0456614806314687742==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: avoid abnormal pixel output when turn eDP display off (rev2)
URL   : https://patchwork.freedesktop.org/series/106910/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11975 -> Patchwork_106910v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_106910v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_106910v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/index.html

Participating hosts (42 -> 38)
------------------------------

  Missing    (4): fi-kbl-soraka bat-rpls-2 fi-bdw-samus bat-adlp-4 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_106910v2:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - fi-adl-ddr5:        [PASS][1] -> [DMESG-WARN][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-cfl-8109u:       [PASS][3] -> [DMESG-WARN][4] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-apl-guc:         [PASS][5] -> [DMESG-WARN][6] +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-rkl-guc:         [PASS][7] -> [DMESG-WARN][8] +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
    - fi-cfl-8700k:       [PASS][9] -> [DMESG-WARN][10] +3 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - fi-cfl-guc:         [PASS][11] -> [DMESG-WARN][12] +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - bat-dg1-6:          [PASS][13] -> [DMESG-WARN][14] +55 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_module_load@load:
    - {bat-dg2-10}:       [PASS][15] -> [DMESG-WARN][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg2-10/igt@i915_module_load@load.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg2-10/igt@i915_module_load@load.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - {fi-ehl-2}:         [PASS][17] -> [DMESG-WARN][18] +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - {bat-rplp-1}:       [PASS][19] -> [DMESG-WARN][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - {fi-jsl-1}:         [PASS][21] -> [DMESG-WARN][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - {bat-jsl-3}:        [PASS][23] -> [DMESG-WARN][24] +34 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-jsl-1}:        [PASS][25] -> [DMESG-WARN][26] +33 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-1/igt@kms_force_connector_basic@force-connector-state.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_frontbuffer_tracking@basic:
    - {bat-dg2-9}:        [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:
    - {bat-jsl-3}:        [PASS][29] -> [DMESG-FAIL][30] +11 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - {bat-jsl-1}:        [PASS][31] -> [DMESG-FAIL][32] +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:
    - {bat-dg2-9}:        [PASS][33] -> [DMESG-WARN][34] +4 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html

  
Known issues
------------

  Here are the changes found in Patchwork_106910v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - bat-dg1-5:          [PASS][35] -> [INCOMPLETE][36] ([i915#4418])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg1-5/igt@i915_selftest@live@gt_engines.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg1-5/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@requests:
    - fi-blb-e6850:       [PASS][37] -> [DMESG-FAIL][38] ([i915#4528])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-blb-e6850/igt@i915_selftest@live@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-blb-e6850/igt@i915_selftest@live@requests.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:
    - fi-skl-6600u:       [PASS][39] -> [DMESG-WARN][40] ([i915#118]) +4 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - fi-glk-j4005:       [PASS][41] -> [DMESG-WARN][42] ([i915#118]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-skl-6700k2:      [PASS][43] -> [DMESG-WARN][44] ([i915#118]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-adlm-1}:       [DMESG-WARN][45] ([i915#2867]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3576]: https://gitlab.freedesktop.org/drm/intel/issues/3576
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4528]: https://gitlab.freedesktop.org/drm/intel/issues/4528
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5087]: https://gitlab.freedesktop.org/drm/intel/issues/5087
  [i915#5828]: https://gitlab.freedesktop.org/drm/intel/issues/5828
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6257]: https://gitlab.freedesktop.org/drm/intel/issues/6257


Build changes
-------------

  * Linux: CI_DRM_11975 -> Patchwork_106910v2

  CI-20190529: 20190529
  CI_DRM_11975: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6617: 22fa5ae83a8854f32e28b2c2a8581f4e36f78288 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106910v2: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c7751012c403 drm/i915/display: avoid abnormal pixel output when turn eDP display off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/index.html

--===============0456614806314687742==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: avoid abnormal pixel output when turn eDP display off (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106910/">https://patchwork.freedesktop.org/series/106910/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11975 -&gt; Patchwork_106910v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_106910v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_106910v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/index.html</p>
<h2>Participating hosts (42 -&gt; 38)</h2>
<p>Missing    (4): fi-kbl-soraka bat-rpls-2 fi-bdw-samus bat-adlp-4 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_106910v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-adl-ddr5/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +4 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-rkl-guc/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">DMESG-WARN</a> +55 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>{bat-dg2-10}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg2-10/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg2-10/igt@i915_module_load@load.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-ehl-2/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-rplp-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">DMESG-WARN</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-jsl-1/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">DMESG-WARN</a> +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a> +33 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg2-9/igt@kms_frontbuffer_tracking@basic.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-3/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">DMESG-FAIL</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:</p>
<ul>
<li>{bat-jsl-1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">DMESG-FAIL</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg2-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-3.html">DMESG-WARN</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106910v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-dg1-5/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-blb-e6850/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-blb-e6850/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4528">i915#4528</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-skl-6600u/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/fi-skl-6700k2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a>) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11975/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106910v2/bat-adlm-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11975 -&gt; Patchwork_106910v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11975: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6617: 22fa5ae83a8854f32e28b2c2a8581f4e36f78288 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106910v2: 5b5ad12f8d971a9feeb54a3f3d58b48de8978ad2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c7751012c403 drm/i915/display: avoid abnormal pixel output when turn eDP display off</p>

</body>
</html>

--===============0456614806314687742==--
