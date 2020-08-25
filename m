Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDBBA2521D3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 22:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49F0C6E9A8;
	Tue, 25 Aug 2020 20:19:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8C96E6E5C0;
 Tue, 25 Aug 2020 20:19:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8345BAA3D7;
 Tue, 25 Aug 2020 20:19:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Tue, 25 Aug 2020 20:19:41 -0000
Message-ID: <159838678150.23677.4715091809102335976@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200825195027.74681-1-lyude@redhat.com>
In-Reply-To: <20200825195027.74681-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_i915=2C_nouveau=3A_Cleanup_nouveau_HPD_and_add_DP_featur?=
 =?utf-8?q?es_from_i915_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1442526450=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1442526450==
Content-Type: multipart/alternative;
 boundary="===============3719911599996321419=="

--===============3719911599996321419==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from i915 (rev6)
URL   : https://patchwork.freedesktop.org/series/80542/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8924 -> Patchwork_18400
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18400 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18400, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18400:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-kbl-7500u:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-7500u/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_18400 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_parallel@engines@fds:
    - fi-kbl-guc:         [PASS][2] -> [INCOMPLETE][3] ([i915#794])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-x1275:       [PASS][4] -> [DMESG-WARN][5] ([i915#62] / [i915#92] / [i915#95])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_busy@basic@flip.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@kms_busy@basic@flip.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [PASS][6] -> [DMESG-WARN][7] ([i915#1982]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
#### Possible fixes ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-n3050:       [DMESG-WARN][8] ([i915#1982]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-byt-j1900:       [DMESG-WARN][10] ([i915#1982]) -> [PASS][11] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][12] ([i915#1982]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-apl-guc:         [INCOMPLETE][14] ([i915#1635] / [i915#337]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-kbl-x1275:       [DMESG-WARN][16] ([i915#62] / [i915#92]) -> [DMESG-WARN][17] ([i915#1982] / [i915#62] / [i915#92] / [i915#95])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-kbl-x1275:       [DMESG-WARN][18] ([i915#62] / [i915#92] / [i915#95]) -> [DMESG-WARN][19] ([i915#1982] / [i915#62] / [i915#92] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-x1275:       [DMESG-FAIL][20] ([i915#62] / [i915#95]) -> [DMESG-FAIL][21] ([i915#62])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - fi-kbl-x1275:       [DMESG-WARN][22] ([i915#62] / [i915#92]) -> [DMESG-WARN][23] ([i915#62] / [i915#92] / [i915#95]) +3 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#337]: https://gitlab.freedesktop.org/drm/intel/issues/337
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan 


Build changes
-------------

  * Linux: CI_DRM_8924 -> Patchwork_18400

  CI-20190529: 20190529
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18400: 14b3532be864e204aa07bf7e37e53ff40c2cb576 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14b3532be864 drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()
016677842b85 drm/i915/dp: Extract drm_dp_read_dpcd_caps()
774099851b4b drm/nouveau/kms: Don't change EDID when it hasn't actually changed
390fb4de03ef drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT
05083fd03635 drm/i915/dp: Extract drm_dp_get_sink_count()
31c957b672ab drm/i915/dp: Extract drm_dp_has_sink_count()
cca56ef60b60 drm/nouveau/kms/nv50-: Use downstream DP clock limits for mode validation
41fcfb67337b drm/i915/dp: Extract drm_dp_downstream_read_info()
a122aee25a76 drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths
a6246286cc09 drm/nouveau/kms: Move drm_dp_cec_unset_edid() into nouveau_connector_detect()
fc79d4524d15 drm/nouveau/kms: Use new drm_dp_has_mst() helper for checking MST caps
fd0c71a5229b drm/i915/dp: Extract drm_dp_has_mst()
7a508e1c0b76 drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling
09f88a09f081 drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in nv50_sor_disable()
8f57184d747b drm/nouveau/kms: Search for encoders' connectors properly
8f3b7f3b21f2 drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in nv50_mstm_new()
e43e30c39e26 drm/nouveau/kms/nv50-: Use macros for DP registers in nouveau_dp.c
8759e1743599 drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in nouveau_dp.c
72930d9382f6 drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()
eb602825d26c drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/index.html

--===============3719911599996321419==
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
<tr><td><b>Series:</b></td><td>drm/dp, i915, nouveau: Cleanup nouveau HPD and add DP features from i915 (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/80542/">https://patchwork.freedesktop.org/series/80542/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8924 -&gt; Patchwork_18400</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18400 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18400, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18400:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-kbl-7500u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18400 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_parallel@engines@fds:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-guc/igt@gem_exec_parallel@engines@fds.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-bsw-n3050/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/337">i915#337</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@i915_pm_rpm@module-reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8924/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18400/fi-kbl-x1275/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/92">i915#92</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-byt-clapper fi-byt-squawks fi-bsw-cyan </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8924 -&gt; Patchwork_18400</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8924: a8c0611e412aab46eab5475b0117d074892b96e2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5770: f1d0c240ea2e631dfb9f493f37f8fb61cb2b1cf2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18400: 14b3532be864e204aa07bf7e37e53ff40c2cb576 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>14b3532be864 drm/nouveau/kms: Start using drm_dp_read_dpcd_caps()<br />
016677842b85 drm/i915/dp: Extract drm_dp_read_dpcd_caps()<br />
774099851b4b drm/nouveau/kms: Don't change EDID when it hasn't actually changed<br />
390fb4de03ef drm/nouveau/kms/nv50-: Add support for DP_SINK_COUNT<br />
05083fd03635 drm/i915/dp: Extract drm_dp_get_sink_count()<br />
31c957b672ab drm/i915/dp: Extract drm_dp_has_sink_count()<br />
cca56ef60b60 drm/nouveau/kms/nv50-: Use downstream DP clock limits for mode validation<br />
41fcfb67337b drm/i915/dp: Extract drm_dp_downstream_read_info()<br />
a122aee25a76 drm/nouveau/kms: Only use hpd_work for reprobing in HPD paths<br />
a6246286cc09 drm/nouveau/kms: Move drm_dp_cec_unset_edid() into nouveau_connector_detect()<br />
fc79d4524d15 drm/nouveau/kms: Use new drm_dp_has_mst() helper for checking MST caps<br />
fd0c71a5229b drm/i915/dp: Extract drm_dp_has_mst()<br />
7a508e1c0b76 drm/nouveau/kms/nv50-: Refactor and cleanup DP HPD handling<br />
09f88a09f081 drm/nouveau/kms/nv50-: Use drm_dp_dpcd_(readb|writeb)() in nv50_sor_disable()<br />
8f57184d747b drm/nouveau/kms: Search for encoders' connectors properly<br />
8f3b7f3b21f2 drm/nouveau/kms: Don't clear DP_MST_CTRL DPCD in nv50_mstm_new()<br />
e43e30c39e26 drm/nouveau/kms/nv50-: Use macros for DP registers in nouveau_dp.c<br />
8759e1743599 drm/nouveau/kms/nv50-: Just use drm_dp_dpcd_read() in nouveau_dp.c<br />
72930d9382f6 drm/nouveau/kms/nv50-: Remove open-coded drm_dp_read_desc()<br />
eb602825d26c drm/nouveau/kms: Fix some indenting in nouveau_dp_detect()</p>

</body>
</html>

--===============3719911599996321419==--

--===============1442526450==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1442526450==--
