Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7D3307B26
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jan 2021 17:41:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B88CD6E983;
	Thu, 28 Jan 2021 16:41:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 479E66E22C;
 Thu, 28 Jan 2021 16:41:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1F2BDA8169;
 Thu, 28 Jan 2021 16:41:10 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 28 Jan 2021 16:41:10 -0000
Message-ID: <161185207009.13618.7218631250233819930@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210128155948.13678-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915=3A_Skip_vswing_programming?=
 =?utf-8?q?_for_TBT?=
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
Content-Type: multipart/mixed; boundary="===============1450424091=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1450424091==
Content-Type: multipart/alternative;
 boundary="===============8245076888372108824=="

--===============8245076888372108824==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915: Skip vswing programming for TBT
URL   : https://patchwork.freedesktop.org/series/86402/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9694 -> Patchwork_19529
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19529 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19529, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19529:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_19529 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#402])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-tgl-y/igt@gem_linear_blits@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-tgl-y/igt@gem_linear_blits@basic.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][5] -> [DMESG-FAIL][6] ([i915#2601])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  
#### Possible fixes ####

  * igt@gem_ringfill@basic-all:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-tgl-y/igt@gem_ringfill@basic-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-tgl-y/igt@gem_ringfill@basic-all.html

  * igt@i915_module_load@reload:
    - fi-kbl-7500u:       [DMESG-WARN][9] ([i915#2605]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-kbl-7500u/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-kbl-7500u/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#3014]: https://gitlab.freedesktop.org/drm/intel/issues/3014
  [i915#3015]: https://gitlab.freedesktop.org/drm/intel/issues/3015
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 39)
------------------------------

  Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9694 -> Patchwork_19529

  CI-20190529: 20190529
  CI_DRM_9694: 5f3b05c083d511d2d9e2b6a27eaec6a7cd1df842 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5976: 1d3b7bde430dd7ea946682d1df46a483b6a93272 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19529: 36dc93369a4c35ad575002de267bae94ec22154d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

36dc93369a4c drm/i915: Don't check tc_mode unless dealing with a TC PHY
a0d3bbb9ac43 drm/i915: Move HDMI vswing programming to the right place
eedf3240b968 drm/i915: Power up combo PHY lanes for for HDMI as well
bd419ba25d70 drm/i915: Extract intel_ddi_power_up_lanes()
d44689e35b85 drm/i915: Skip vswing programming for TBT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/index.html

--===============8245076888372108824==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915: Skip vswing programming for TBT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86402/">https://patchwork.freedesktop.org/series/86402/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9694 -&gt; Patchwork_19529</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19529 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19529, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19529:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19529 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-tgl-y/igt@gem_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-tgl-y/igt@gem_linear_blits@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ringfill@basic-all:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-tgl-y/igt@gem_ringfill@basic-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-tgl-y/igt@gem_ringfill@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9694/fi-kbl-7500u/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19529/fi-kbl-7500u/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Missing    (5): fi-jsl-1 fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9694 -&gt; Patchwork_19529</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9694: 5f3b05c083d511d2d9e2b6a27eaec6a7cd1df842 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5976: 1d3b7bde430dd7ea946682d1df46a483b6a93272 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19529: 36dc93369a4c35ad575002de267bae94ec22154d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>36dc93369a4c drm/i915: Don't check tc_mode unless dealing with a TC PHY<br />
a0d3bbb9ac43 drm/i915: Move HDMI vswing programming to the right place<br />
eedf3240b968 drm/i915: Power up combo PHY lanes for for HDMI as well<br />
bd419ba25d70 drm/i915: Extract intel_ddi_power_up_lanes()<br />
d44689e35b85 drm/i915: Skip vswing programming for TBT</p>

</body>
</html>

--===============8245076888372108824==--

--===============1450424091==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1450424091==--
