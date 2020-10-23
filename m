Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E933829731B
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 18:03:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7296F8B6;
	Fri, 23 Oct 2020 16:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5A26B6F8B4;
 Fri, 23 Oct 2020 16:03:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 51F80A66C9;
 Fri, 23 Oct 2020 16:03:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 23 Oct 2020 16:03:25 -0000
Message-ID: <160346900532.1405.7635533653787302380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Futher_cleanup_around_hpd_pins_and_port_identfiers_=28?=
 =?utf-8?q?rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============0511930129=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0511930129==
Content-Type: multipart/alternative;
 boundary="===============6965996388661962659=="

--===============6965996388661962659==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Futher cleanup around hpd pins and port identfiers (rev4)
URL   : https://patchwork.freedesktop.org/series/82411/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9191 -> Patchwork_18775
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/index.html

Known issues
------------

  Here are the changes found in Patchwork_18775 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Possible fixes ####

  * igt@gem_close_race@basic-threads:
    - fi-apl-guc:         [INCOMPLETE][3] ([i915#1635]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-apl-guc/igt@gem_close_race@basic-threads.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-apl-guc/igt@gem_close_race@basic-threads.html

  * igt@i915_pm_rpm@module-reload:
    - fi-byt-j1900:       [DMESG-WARN][5] ([i915#1982]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [DMESG-WARN][7] ([i915#165]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-7500u:       [DMESG-WARN][9] ([i915#2203]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - {fi-kbl-7560u}:     [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-bsw-kefka:       [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-icl-u2:          [DMESG-WARN][15] ([i915#1982]) -> [PASS][16] +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2203]: https://gitlab.freedesktop.org/drm/intel/issues/2203
  [i915#2524]: https://gitlab.freedesktop.org/drm/intel/issues/2524


Participating hosts (46 -> 38)
------------------------------

  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9191 -> Patchwork_18775

  CI-20190529: 20190529
  CI_DRM_9191: 4b693bbb9b41fda404b5cd081bf5cd8dba240468 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5823: 7dd2fe99bd9dde00456cc5abf7e5ef0c8d7d6118 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18775: c0d3fbb554ac4d111912719d4ad1f3b117d4a5cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c0d3fbb554ac drm/i915: Get rid of ibx_irq_pre_postinstall()
6acc0868abc8 drm/i915: Use GEN3_IRQ_INIT() to init south interrupts in icp+
f2a3021982b7 drm/i915: Enable hpd logic only for ports that are present
4364c2eaf6c4 drm/i915: Remove the per-plaform IIR HPD masking
21d78326f417 drm/i915: Rename 'tmp_mask'
f36dbae0ea38 drm/i915: Don't enable hpd detection logic from irq_postinstall()
d06518d8d0b5 drm/i915: Split gen11_hpd_detection_setup() into tc vs. tbt variants
d6c5f3bf0f23 drm/i915: Relocate intel_hpd_{enabled, hotplug}_irqs()
7f72a54b085a drm/i915: s/tc_port/hpd_pin/ in icp+ TC hotplug bits
9fd957b4f19b drm/i915: s/tc_port/hpd_pin/ in GEN11_{TC, TBT}_HOTPLUG()
1686173cf0ce drm/i915: s/port/hpd_pin/ for icp+ ddi hpd bits
58b8d2bd5fc4 drm/i915: Introduce GEN8_DE_PORT_HOTPLUG()
e35d8538c985 drm/i915: Parametrize BXT_DE_PORT_HP_DDI with hpd_pin
4baf80bbf14f drm/i915: Use AUX_CH_USBCn for the RKL VBT AUX CH setup
b47a0d1c69ad drm/i915: Pimp AUX CH names
7a4e10ddcf5c drm/i915: Introduce AUX_CH_USBCn
30dc6119360c drm/i915: Give DDI encoders even better names
23b37640a408 drm/i915: Add PORT_TCn aliases to enum port
477637bc8e28 drm/i915: s/PORT_TC/TC_PORT_/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/index.html

--===============6965996388661962659==
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
<tr><td><b>Series:</b></td><td>drm/i915: Futher cleanup around hpd pins and port identfiers (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/82411/">https://patchwork.freedesktop.org/series/82411/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9191 -&gt; Patchwork_18775</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18775 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-apl-guc/igt@gem_close_race@basic-threads.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-apl-guc/igt@gem_close_race@basic-threads.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-byt-j1900/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/165">i915#165</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2203">i915#2203</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-kbl-7500u/igt@kms_chamelium@hdmi-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>{fi-kbl-7560u}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-kbl-7560u/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-bsw-kefka/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9191/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18775/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 38)</h2>
<p>Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9191 -&gt; Patchwork_18775</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9191: 4b693bbb9b41fda404b5cd081bf5cd8dba240468 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5823: 7dd2fe99bd9dde00456cc5abf7e5ef0c8d7d6118 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18775: c0d3fbb554ac4d111912719d4ad1f3b117d4a5cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c0d3fbb554ac drm/i915: Get rid of ibx_irq_pre_postinstall()<br />
6acc0868abc8 drm/i915: Use GEN3_IRQ_INIT() to init south interrupts in icp+<br />
f2a3021982b7 drm/i915: Enable hpd logic only for ports that are present<br />
4364c2eaf6c4 drm/i915: Remove the per-plaform IIR HPD masking<br />
21d78326f417 drm/i915: Rename 'tmp_mask'<br />
f36dbae0ea38 drm/i915: Don't enable hpd detection logic from irq_postinstall()<br />
d06518d8d0b5 drm/i915: Split gen11_hpd_detection_setup() into tc vs. tbt variants<br />
d6c5f3bf0f23 drm/i915: Relocate intel_hpd_{enabled, hotplug}<em>irqs()<br />
7f72a54b085a drm/i915: s/tc_port/hpd_pin/ in icp+ TC hotplug bits<br />
9fd957b4f19b drm/i915: s/tc_port/hpd_pin/ in GEN11</em>{TC, TBT}<em>HOTPLUG()<br />
1686173cf0ce drm/i915: s/port/hpd_pin/ for icp+ ddi hpd bits<br />
58b8d2bd5fc4 drm/i915: Introduce GEN8_DE_PORT_HOTPLUG()<br />
e35d8538c985 drm/i915: Parametrize BXT_DE_PORT_HP_DDI with hpd_pin<br />
4baf80bbf14f drm/i915: Use AUX_CH_USBCn for the RKL VBT AUX CH setup<br />
b47a0d1c69ad drm/i915: Pimp AUX CH names<br />
7a4e10ddcf5c drm/i915: Introduce AUX_CH_USBCn<br />
30dc6119360c drm/i915: Give DDI encoders even better names<br />
23b37640a408 drm/i915: Add PORT_TCn aliases to enum port<br />
477637bc8e28 drm/i915: s/PORT_TC/TC_PORT</em>/</p>

</body>
</html>

--===============6965996388661962659==--

--===============0511930129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0511930129==--
