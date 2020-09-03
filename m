Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFFB25C0D8
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Sep 2020 14:21:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F756E1F4;
	Thu,  3 Sep 2020 12:21:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 970D16E1D6;
 Thu,  3 Sep 2020 12:21:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8E84EA73C7;
 Thu,  3 Sep 2020 12:21:30 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Thu, 03 Sep 2020 12:21:30 -0000
Message-ID: <159913569055.15504.17074323516830676631@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200903112337.4113-1-hdegoede@redhat.com>
In-Reply-To: <20200903112337.4113-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgYWNw?=
 =?utf-8?q?i/pwm/i915=3A_Convert_pwm-crc_and_i915_driver=27s_PWM_code_to_u?=
 =?utf-8?q?se_the_atomic_PWM_API?=
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
Content-Type: multipart/mixed; boundary="===============0526476802=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0526476802==
Content-Type: multipart/alternative;
 boundary="===============4495265191803998956=="

--===============4495265191803998956==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: acpi/pwm/i915: Convert pwm-crc and i915 driver's PWM code to use the atomic PWM API
URL   : https://patchwork.freedesktop.org/series/81287/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8957 -> Patchwork_18437
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/index.html

Known issues
------------

  Here are the changes found in Patchwork_18437 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-bsw-kefka:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-cfl-8109u:       [TIMEOUT][5] -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_parallel@engines@contexts:
    - fi-cfl-8109u:       [INCOMPLETE][7] ([i915#2398]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html

  * igt@i915_module_load@reload:
    - fi-tgl-u2:          [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-tgl-u2/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-tgl-u2/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-bsw-kefka:       [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:
    - fi-icl-u2:          [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398


Participating hosts (38 -> 33)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper 


Build changes
-------------

  * Linux: CI_DRM_8957 -> Patchwork_18437

  CI-20190529: 20190529
  CI_DRM_8957: c3355f060f0d6b1c45f456c4cdb995edfd496603 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5777: c240b5c00d58860e376b012cc3c883c17ae63f37 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18437: 5f2ad76ad27d083865972d2c36d0c928b5117e75 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

5f2ad76ad27d drm/i915: panel: Use atomic PWM API for devs with an external PWM controller
7e1d6106ba3a drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller
d1aacec4e432 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller
240678c00b3d drm/i915: panel: Add get_vbt_pwm_freq() helper
ad30d11970a4 pwm: crc: Implement get_state() method
88ea19297024 pwm: crc: Implement apply() method to support the new atomic PWM API
f29b5d035a49 pwm: crc: Enable/disable PWM output on enable/disable
666a424bb1a8 pwm: crc: Fix period changes not having any effect
0b9d965a728a pwm: crc: Fix off-by-one error in the clock-divider calculations
247ad837e2cd pwm: crc: Fix period / duty_cycle times being off by a factor of 256
48f37ff234b3 pwm: lpss: Remove suspend/resume handlers
b6ce0150e736 pwm: lpss: Make pwm_lpss_apply() not rely on existing hardware state
94a41c16c5ba pwm: lpss: Add pwm_lpss_prepare_enable() helper
2e7faec371d2 pwm: lpss: Add range limit check for the base_unit register value
97b4a9aebcb4 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()
49747f4e3a9e ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)
1168abd5ce8d ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/index.html

--===============4495265191803998956==
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
<tr><td><b>Series:</b></td><td>acpi/pwm/i915: Convert pwm-crc and i915 driver&#39;s PWM code to use the atomic PWM API</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81287/">https://patchwork.freedesktop.org/series/81287/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8957 -&gt; Patchwork_18437</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18437 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-bsw-kefka/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-cfl-8109u/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@engines@contexts:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2398">i915#2398</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-cfl-8109u/igt@gem_exec_parallel@engines@contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-tgl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-tgl-u2/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8957/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18437/fi-icl-u2/igt@kms_flip@basic-flip-vs-wf_vblank@c-edp1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8957 -&gt; Patchwork_18437</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8957: c3355f060f0d6b1c45f456c4cdb995edfd496603 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5777: c240b5c00d58860e376b012cc3c883c17ae63f37 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18437: 5f2ad76ad27d083865972d2c36d0c928b5117e75 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>5f2ad76ad27d drm/i915: panel: Use atomic PWM API for devs with an external PWM controller<br />
7e1d6106ba3a drm/i915: panel: Honor the VBT PWM min setting for devs with an external PWM controller<br />
d1aacec4e432 drm/i915: panel: Honor the VBT PWM frequency for devs with an external PWM controller<br />
240678c00b3d drm/i915: panel: Add get_vbt_pwm_freq() helper<br />
ad30d11970a4 pwm: crc: Implement get_state() method<br />
88ea19297024 pwm: crc: Implement apply() method to support the new atomic PWM API<br />
f29b5d035a49 pwm: crc: Enable/disable PWM output on enable/disable<br />
666a424bb1a8 pwm: crc: Fix period changes not having any effect<br />
0b9d965a728a pwm: crc: Fix off-by-one error in the clock-divider calculations<br />
247ad837e2cd pwm: crc: Fix period / duty_cycle times being off by a factor of 256<br />
48f37ff234b3 pwm: lpss: Remove suspend/resume handlers<br />
b6ce0150e736 pwm: lpss: Make pwm_lpss_apply() not rely on existing hardware state<br />
94a41c16c5ba pwm: lpss: Add pwm_lpss_prepare_enable() helper<br />
2e7faec371d2 pwm: lpss: Add range limit check for the base_unit register value<br />
97b4a9aebcb4 pwm: lpss: Fix off by one error in base_unit math in pwm_lpss_prepare()<br />
49747f4e3a9e ACPI / LPSS: Save Cherry Trail PWM ctx registers only once (at activation)<br />
1168abd5ce8d ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase</p>

</body>
</html>

--===============4495265191803998956==--

--===============0526476802==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0526476802==--
