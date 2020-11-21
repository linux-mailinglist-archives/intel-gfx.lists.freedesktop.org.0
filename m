Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 986E22BBB7B
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Nov 2020 02:25:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF9A6E95C;
	Sat, 21 Nov 2020 01:25:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A3FB06E95C;
 Sat, 21 Nov 2020 01:25:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 91123AA916;
 Sat, 21 Nov 2020 01:25:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Sat, 21 Nov 2020 01:25:41 -0000
Message-ID: <160592194156.8550.872299163483546668@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201121003540.24980-1-sean.z.huang@intel.com>
In-Reply-To: <20201121003540.24980-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component?=
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
Content-Type: multipart/mixed; boundary="===============0373617669=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0373617669==
Content-Type: multipart/alternative;
 boundary="===============4925751710632114986=="

--===============4925751710632114986==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component
URL   : https://patchwork.freedesktop.org/series/84136/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9373 -> Patchwork_18954
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18954 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18954, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18954:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-ilk-650:         [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-ilk-650/igt@gem_exec_suspend@basic-s3.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-ilk-650/igt@gem_exec_suspend@basic-s3.html
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-elk-e7500/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-elk-e7500/igt@gem_exec_suspend@basic-s3.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-pnv-d510:        [PASS][5] -> [DMESG-WARN][6] +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-blb-e6850:       [PASS][7] -> [DMESG-WARN][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-blb-e6850/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-blb-e6850/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - fi-bwr-2160:        [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9373 and Patchwork_18954:

### New CI tests (1) ###

  * boot:
    - Statuses : 41 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_18954 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-blb-e6850:       [PASS][11] -> [INCOMPLETE][12] ([i915#2540])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-icl-u2:          [PASS][13] -> [DMESG-WARN][14] ([i915#1982]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-icl-u2/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-icl-u2/igt@i915_module_load@reload.html

  * igt@kms_busy@basic@flip:
    - fi-kbl-soraka:      [PASS][15] -> [DMESG-WARN][16] ([i915#1982])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-kbl-soraka/igt@kms_busy@basic@flip.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-kbl-soraka/igt@kms_busy@basic@flip.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-skl-lmem:        [DMESG-WARN][17] ([i915#2605]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_module_load@reload:
    - fi-bsw-kefka:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-bsw-kefka/igt@i915_module_load@reload.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-bsw-kefka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-guc:         [INCOMPLETE][21] ([i915#1037] / [i915#794]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-kbl-guc/igt@i915_selftest@live@execlists.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2524]: https://gitlab.freedesktop.org/drm/intel/issues/2524
  [i915#2540]: https://gitlab.freedesktop.org/drm/intel/issues/2540
  [i915#2605]: https://gitlab.freedesktop.org/drm/intel/issues/2605
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (45 -> 41)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9373 -> Patchwork_18954

  CI-20190529: 20190529
  CI_DRM_9373: 9cdf0261b50968252f7775f0de5d34ab8f8b4892 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5864: afc0e559615b791d229ba977f792d04de13a37f7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18954: 14de94bae5515db973f16ece128e42199a194f5d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

14de94bae551 drm/i915/pxp: Enable the PXP ioctl for protected session
d9c9356b3f53 drm/i915/pxp: Add plane decryption support
d74f6677492c drm/i915/pxp: User interface for Protected buffer
2c36a9443162 drm/i915/uapi: introduce drm_i915_gem_create_ext
dd4a59bc3c5e mei: pxp: export pavp client to me client bus
a0f54901f637 drm/i915/pxp: Expose session state for display protection flip
328cdbf8a20f drm/i915/pxp: Add i915 trace logs for PXP operations
cf85826129cb drm/i915/pxp: Create the arbitrary session after boot
8fd3a79e52de drm/i915/pxp: Implement ioctl action to send TEE commands
e12ec2580683 drm/i915/pxp: Implement funcs to create the TEE channel
9f5a2c10293e drm/i915/pxp: Enable PXP power management
8080d375bd2a drm/i915/pxp: Termiante the session upon app crash
118c80a692a7 drm/i915/pxp: Destroy all type0 sessions upon teardown
8e1b6914f853 drm/i915/pxp: Enable ioctl action to query PXP tag
9f49e0a6312c drm/i915/pxp: Implement ioctl action to terminate the session
494076c52cd8 drm/i915/pxp: Func to send hardware session termination
815493587215 drm/i915/pxp: Implement ioctl action to set session in play
51b583b84185 drm/i915/pxp: Implement ioctl action to reserve session slot
73fd2ab098a8 drm/i915/pxp: Implement funcs to get/set PXP tag
30b4635f97f3 drm/i915/pxp: Read register to check hardware session state
0a0399386f35 drm/i915/pxp: Add PXP-related registers into allowlist
988e5cd6442d drm/i915/pxp: Implement ioctl action to set the user space context
d4b812189d1a drm/i915/pxp: set KCR reg init during the boot time
a901ec3e7f21 drm/i915/pxp: Add PXP context for logical hardware states.
7df24529d3bb drm/i915/pxp: Enable PXP irq worker and callback stub
66b76da7fe5d drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/index.html

--===============4925751710632114986==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84136/">https://patchwork.freedesktop.org/series/84136/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9373 -&gt; Patchwork_18954</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18954 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18954, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18954:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-ilk-650/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-ilk-650/igt@gem_exec_suspend@basic-s3.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-elk-e7500/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-elk-e7500/igt@gem_exec_suspend@basic-s3.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-pnv-d510/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-blb-e6850/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-blb-e6850/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> +2 similar issues</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9373 and Patchwork_18954:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 41 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18954 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-blb-e6850/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2540">i915#2540</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-icl-u2/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-icl-u2/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-kbl-soraka/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-kbl-soraka/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-skl-lmem:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2605">i915#2605</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-skl-lmem/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9373/fi-kbl-guc/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18954/fi-kbl-guc/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Additional (1): fi-tgl-y <br />
  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9373 -&gt; Patchwork_18954</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9373: 9cdf0261b50968252f7775f0de5d34ab8f8b4892 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5864: afc0e559615b791d229ba977f792d04de13a37f7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18954: 14de94bae5515db973f16ece128e42199a194f5d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>14de94bae551 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
d9c9356b3f53 drm/i915/pxp: Add plane decryption support<br />
d74f6677492c drm/i915/pxp: User interface for Protected buffer<br />
2c36a9443162 drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
dd4a59bc3c5e mei: pxp: export pavp client to me client bus<br />
a0f54901f637 drm/i915/pxp: Expose session state for display protection flip<br />
328cdbf8a20f drm/i915/pxp: Add i915 trace logs for PXP operations<br />
cf85826129cb drm/i915/pxp: Create the arbitrary session after boot<br />
8fd3a79e52de drm/i915/pxp: Implement ioctl action to send TEE commands<br />
e12ec2580683 drm/i915/pxp: Implement funcs to create the TEE channel<br />
9f5a2c10293e drm/i915/pxp: Enable PXP power management<br />
8080d375bd2a drm/i915/pxp: Termiante the session upon app crash<br />
118c80a692a7 drm/i915/pxp: Destroy all type0 sessions upon teardown<br />
8e1b6914f853 drm/i915/pxp: Enable ioctl action to query PXP tag<br />
9f49e0a6312c drm/i915/pxp: Implement ioctl action to terminate the session<br />
494076c52cd8 drm/i915/pxp: Func to send hardware session termination<br />
815493587215 drm/i915/pxp: Implement ioctl action to set session in play<br />
51b583b84185 drm/i915/pxp: Implement ioctl action to reserve session slot<br />
73fd2ab098a8 drm/i915/pxp: Implement funcs to get/set PXP tag<br />
30b4635f97f3 drm/i915/pxp: Read register to check hardware session state<br />
0a0399386f35 drm/i915/pxp: Add PXP-related registers into allowlist<br />
988e5cd6442d drm/i915/pxp: Implement ioctl action to set the user space context<br />
d4b812189d1a drm/i915/pxp: set KCR reg init during the boot time<br />
a901ec3e7f21 drm/i915/pxp: Add PXP context for logical hardware states.<br />
7df24529d3bb drm/i915/pxp: Enable PXP irq worker and callback stub<br />
66b76da7fe5d drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============4925751710632114986==--

--===============0373617669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0373617669==--
