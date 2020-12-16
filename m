Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAED02DC14B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Dec 2020 14:30:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABE8A6E170;
	Wed, 16 Dec 2020 13:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A73E56E15E;
 Wed, 16 Dec 2020 13:30:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A1EF2A8169;
 Wed, 16 Dec 2020 13:30:32 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>
Date: Wed, 16 Dec 2020 13:30:32 -0000
Message-ID: <160812543263.16511.8942827285638683384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201216053121.18819-1-ankit.k.nautiyal@intel.com>
In-Reply-To: <20201216053121.18819-1-ankit.k.nautiyal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgQWRk?=
 =?utf-8?q?_support_for_DP-HDMI2=2E1_PCON_=28rev8=29?=
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
Content-Type: multipart/mixed; boundary="===============0263682280=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0263682280==
Content-Type: multipart/alternative;
 boundary="===============7649038653452077333=="

--===============7649038653452077333==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add support for DP-HDMI2.1 PCON (rev8)
URL   : https://patchwork.freedesktop.org/series/82098/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9491 -> Patchwork_19157
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/index.html

Known issues
------------

  Here are the changes found in Patchwork_19157 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] ([i915#62])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@debugfs_test@read_all_entries.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#180] / [i915#62])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html

  * igt@prime_self_import@basic-with_two_bos:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html

  
#### Possible fixes ####

  * igt@i915_getparams_basic@basic-subslice-total:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [DMESG-WARN][9] ([i915#1037]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_mocs:
    - fi-apl-guc:         [DMESG-WARN][11] -> [PASS][12] +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@i915_selftest@live@gt_mocs.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@ring_submission:
    - fi-apl-guc:         [DMESG-WARN][13] ([i915#203]) -> [PASS][14] +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@i915_selftest@live@ring_submission.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@i915_selftest@live@ring_submission.html

  
#### Warnings ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [SKIP][15] ([fdo#109271]) -> [FAIL][16] ([i915#579])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#203]: https://gitlab.freedesktop.org/drm/intel/issues/203
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9491 -> Patchwork_19157

  CI-20190529: 20190529
  CI_DRM_9491: e616452578fec8ec2a04faf0090404a40ce1811c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5904: 2e5ad6b45c20c5b354325e0c818e25ba6087ecc2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19157: 6953c88c22dd6f2025a9fa2f3a64f8e81496cf04 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6953c88c22dd drm/i915/display: Let PCON convert from RGB to YUV if it can
5f7ef5bbd279 drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding
343952426988 drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
79aff77eff33 drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
6e91e5eb0f05 drm/i915: Add support for enabling link status and recovery
c3405b235b18 drm/i915: Check for FRL training before DP Link training
1f49f0cf119a drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
f6125fc4c21a drm/i915: Capture max frl rate for PCON in dfp cap structure
5729fded5d67 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion
45f9245e08cd drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
6645c462c8e2 drm/dp_helper: Add support for link failure detection
74c9de49e2e1 drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
554bf7295147 drm/edid: Parse DSC1.2 cap fields from HFVSDB block
50d2dfdc992e drm/edid: Parse MAX_FRL field from HFVSDB block
fd6d0019c12b drm/edid: Add additional HFVSDB fields for HDMI2.1

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/index.html

--===============7649038653452077333==
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
<tr><td><b>Series:</b></td><td>Add support for DP-HDMI2.1 PCON (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82098/">https://patchwork.freedesktop.org/series/82098/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9491 -&gt; Patchwork_19157</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19157 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@gem_exec_suspend@basic-s0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-tgl-y/igt@prime_self_import@basic-with_two_bos.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-tgl-y/igt@i915_getparams_basic@basic-subslice-total.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@i915_selftest@live@gt_mocs.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@i915_selftest@live@gt_mocs.html">PASS</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-apl-guc/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/203">i915#203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-apl-guc/igt@i915_selftest@live@ring_submission.html">PASS</a> +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_pm_rpm@basic-rte:<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9491/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19157/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9491 -&gt; Patchwork_19157</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9491: e616452578fec8ec2a04faf0090404a40ce1811c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5904: 2e5ad6b45c20c5b354325e0c818e25ba6087ecc2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19157: 6953c88c22dd6f2025a9fa2f3a64f8e81496cf04 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6953c88c22dd drm/i915/display: Let PCON convert from RGB to YUV if it can<br />
5f7ef5bbd279 drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding<br />
343952426988 drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1<br />
79aff77eff33 drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder<br />
6e91e5eb0f05 drm/i915: Add support for enabling link status and recovery<br />
c3405b235b18 drm/i915: Check for FRL training before DP Link training<br />
1f49f0cf119a drm/i915: Add support for starting FRL training for HDMI2.1 via PCON<br />
f6125fc4c21a drm/i915: Capture max frl rate for PCON in dfp cap structure<br />
5729fded5d67 drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion<br />
45f9245e08cd drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon<br />
6645c462c8e2 drm/dp_helper: Add support for link failure detection<br />
74c9de49e2e1 drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON<br />
554bf7295147 drm/edid: Parse DSC1.2 cap fields from HFVSDB block<br />
50d2dfdc992e drm/edid: Parse MAX_FRL field from HFVSDB block<br />
fd6d0019c12b drm/edid: Add additional HFVSDB fields for HDMI2.1</p>

</body>
</html>

--===============7649038653452077333==--

--===============0263682280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0263682280==--
