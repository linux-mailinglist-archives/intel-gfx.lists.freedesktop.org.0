Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CLriD7IIC2r4/QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 14:40:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 625C556CD97
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 14:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 436B310E305;
	Mon, 18 May 2026 12:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5ab824fced77 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9177910E800;
 Mon, 18 May 2026 12:40:14 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8214108230727958603=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Fix_wakere?=
 =?utf-8?q?f_underflow_on_device_hotplug_rebind?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Brzezinka" <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 May 2026 12:40:14 -0000
Message-ID: <177910801458.78652.14044079952613926573@5ab824fced77>
X-Patchwork-Hint: ignore
References: <20260518102444.5406-1-sebastian.brzezinka@intel.com>
In-Reply-To: <20260518102444.5406-1-sebastian.brzezinka@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 625C556CD97
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Action: no action

--===============8214108230727958603==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Fix wakeref underflow on device hotplug rebind
URL   : https://patchwork.freedesktop.org/series/166762/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18505 -> Patchwork_166762v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_166762v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_166762v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/index.html

Participating hosts (42 -> 39)
------------------------------

  Missing    (3): bat-dg2-13 bat-adlp-11 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_166762v1:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-ivb-3770:        [PASS][1] -> [TIMEOUT][2] +4 other tests timeout
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-ivb-3770/igt@gem_tiled_fence_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-ivb-3770/igt@gem_tiled_fence_blits@basic.html

  * igt@i915_selftest@live:
    - fi-bsw-n3050:       [PASS][3] -> [ABORT][4] +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-bsw-n3050/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-bsw-n3050/igt@i915_selftest@live.html
    - fi-kbl-7567u:       [PASS][5] -> [ABORT][6] +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-kbl-7567u/igt@i915_selftest@live.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-kbl-7567u/igt@i915_selftest@live.html
    - bat-jsl-5:          [PASS][7] -> [ABORT][8] +1 other test abort
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-jsl-5/igt@i915_selftest@live.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-jsl-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-rkl-11600:       [PASS][9] -> [ABORT][10] +1 other test abort
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-rkl-11600/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-rkl-11600/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@perf:
    - bat-kbl-2:          [PASS][11] -> [ABORT][12] +1 other test abort
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-kbl-2/igt@i915_selftest@live@perf.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-kbl-2/igt@i915_selftest@live@perf.html

  * igt@kms_addfb_basic@addfb25-4-tiled:
    - fi-hsw-4770:        [PASS][13] -> [TIMEOUT][14] +2 other tests timeout
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-hsw-4770/igt@kms_addfb_basic@addfb25-4-tiled.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-4-tiled.html

  * igt@kms_busy@basic:
    - fi-ilk-650:         [PASS][15] -> [TIMEOUT][16] +5 other tests timeout
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-ilk-650/igt@kms_busy@basic.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-ilk-650/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-elk-e7500:       [PASS][17] -> [TIMEOUT][18] +5 other tests timeout
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-pnv-d510:        [PASS][19] -> [TIMEOUT][20] +2 other tests timeout
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
#### Warnings ####

  * igt@intel_hwmon@hwmon-read:
    - fi-hsw-4770:        [SKIP][21] -> [TIMEOUT][22] +1 other test timeout
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-hsw-4770/igt@intel_hwmon@hwmon-read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-hsw-4770/igt@intel_hwmon@hwmon-read.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - fi-pnv-d510:        [SKIP][23] -> [TIMEOUT][24] +2 other tests timeout
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html

  
Known issues
------------

  Here are the changes found in Patchwork_166762v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-mtlp-8:         [PASS][25] -> [DMESG-FAIL][26] ([i915#12061]) +1 other test dmesg-fail
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-mtlp-8/igt@i915_selftest@live.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [PASS][27] -> [DMESG-FAIL][28] ([i915#12061]) +1 other test dmesg-fail
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - bat-dg2-8:          [DMESG-FAIL][29] ([i915#12061]) -> [PASS][30] +1 other test pass
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-dg2-8/igt@i915_selftest@live.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [DMESG-FAIL][31] ([i915#12061]) -> [PASS][32] +1 other test pass
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html

  
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061


Build changes
-------------

  * Linux: CI_DRM_18505 -> Patchwork_166762v1

  CI-20190529: 20190529
  CI_DRM_18505: 4a64e92e2b244c93c99832a0850204ed2ddca5b2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8917: 65d691069f26fc2a42c79e2364241320b85d48bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_166762v1: 4a64e92e2b244c93c99832a0850204ed2ddca5b2 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/index.html

--===============8214108230727958603==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Fix wakeref underflow on device hotplug rebind</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/166762/">https://patchwork.freedesktop.org/series/166762/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18505 -&gt; Patchwork_166762v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_166762v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_166762v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Missing    (3): bat-dg2-13 bat-adlp-11 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_166762v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-ivb-3770/igt@gem_tiled_fence_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-ivb-3770/igt@gem_tiled_fence_blits@basic.html">TIMEOUT</a> +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-bsw-n3050/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-bsw-n3050/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-kbl-7567u/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-kbl-7567u/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-jsl-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-jsl-5/igt@i915_selftest@live.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-rkl-11600/igt@i915_selftest@live@gem_contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-rkl-11600/igt@i915_selftest@live@gem_contexts.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@perf:</p>
<ul>
<li>bat-kbl-2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-kbl-2/igt@i915_selftest@live@perf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-kbl-2/igt@i915_selftest@live@perf.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-4-tiled:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-hsw-4770/igt@kms_addfb_basic@addfb25-4-tiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-hsw-4770/igt@kms_addfb_basic@addfb25-4-tiled.html">TIMEOUT</a> +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-ilk-650/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-ilk-650/igt@kms_busy@basic.html">TIMEOUT</a> +5 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">TIMEOUT</a> +5 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-pnv-d510/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">TIMEOUT</a> +2 other tests timeout</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-hsw-4770/igt@intel_hwmon@hwmon-read.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-hsw-4770/igt@intel_hwmon@hwmon-read.html">TIMEOUT</a> +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/fi-pnv-d510/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html">TIMEOUT</a> +2 other tests timeout</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_166762v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-mtlp-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-mtlp-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18505/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_166762v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18505 -&gt; Patchwork_166762v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18505: 4a64e92e2b244c93c99832a0850204ed2ddca5b2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8917: 65d691069f26fc2a42c79e2364241320b85d48bc @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_166762v1: 4a64e92e2b244c93c99832a0850204ed2ddca5b2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============8214108230727958603==--
