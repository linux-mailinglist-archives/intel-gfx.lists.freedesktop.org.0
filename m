Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B33B02CB408
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:48:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A49026EA03;
	Wed,  2 Dec 2020 04:48:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 73D016E9FD;
 Wed,  2 Dec 2020 04:48:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6BABAA363B;
 Wed,  2 Dec 2020 04:48:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Wed, 02 Dec 2020 04:48:21 -0000
Message-ID: <160688450143.4091.16403788791786304286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201202040341.31981-1-sean.z.huang@intel.com>
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_=28rev4=29?=
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
Content-Type: multipart/mixed; boundary="===============1081701837=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1081701837==
Content-Type: multipart/alternative;
 boundary="===============1009677834389777266=="

--===============1009677834389777266==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component (rev4)
URL   : https://patchwork.freedesktop.org/series/84136/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9418 -> Patchwork_19034
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9418 and Patchwork_19034:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19034 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [PASS][1] -> [DMESG-WARN][2] ([i915#1982])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-byt-j1900/igt@i915_module_load@reload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-byt-j1900/igt@i915_module_load@reload.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-y:           [PASS][3] -> [DMESG-WARN][4] ([i915#1982])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
#### Possible fixes ####

  * igt@gem_flink_basic@bad-flink:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@gem_flink_basic@bad-flink.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@gem_flink_basic@bad-flink.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {fi-ehl-1}:         [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][11] ([i915#2291] / [i915#541]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
    - fi-bsw-kefka:       [DMESG-FAIL][13] ([i915#2675] / [i915#541]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_lrc:
    - fi-bsw-n3050:       [DMESG-FAIL][15] ([i915#2675]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [DMESG-WARN][17] ([i915#1982] / [i915#262]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-byt-j1900:       [DMESG-WARN][19] ([i915#1982]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - fi-icl-u2:          [DMESG-WARN][21] ([i915#1982]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Warnings ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][23] ([i915#402]) -> [DMESG-WARN][24] ([i915#1982])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#2675]: https://gitlab.freedesktop.org/drm/intel/issues/2675
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9418 -> Patchwork_19034

  CI-20190529: 20190529
  CI_DRM_9418: 5ef90940f82646746fbc78f3af9cdfa503355ab0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19034: 71c5f649a82e92ae4c5f2990271f458261fd4cd6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

71c5f649a82e drm/i915/pxp: Enable the PXP ioctl for protected session
6de7943d6605 drm/i915/pxp: Add plane decryption support
afcf0d8a5ee0 drm/i915/pxp: User interface for Protected buffer
b730c330356d drm/i915/uapi: introduce drm_i915_gem_create_ext
3f9d21975353 mei: pxp: export pavp client to me client bus
0c225361f287 drm/i915/pxp: Expose session state for display protection flip
3f8d34287fc8 drm/i915/pxp: Add i915 trace logs for PXP operations
0328e28c02df drm/i915/pxp: Create the arbitrary session after boot
87ef8cfabefd drm/i915/pxp: Implement ioctl action to send TEE commands
62932c88f944 drm/i915/pxp: Implement funcs to create the TEE channel
db542427db49 drm/i915/pxp: Enable PXP power management
99e9bd56cb87 drm/i915/pxp: Termiante the session upon app crash
789007105c02 drm/i915/pxp: Destroy all type0 sessions upon teardown
260be06ba629 drm/i915/pxp: Enable ioctl action to query PXP tag
5c9dfa8888d1 drm/i915/pxp: Implement ioctl action to terminate the session
a50087361687 drm/i915/pxp: Func to send hardware session termination
4e64444547d5 drm/i915/pxp: Implement ioctl action to set session in play
89660e95826a drm/i915/pxp: Implement ioctl action to reserve session slot
80f5b789b7aa drm/i915/pxp: Implement funcs to get/set PXP tag
791a4cc06927 drm/i915/pxp: Read register to check hardware session state
b2bf2b5d0e5c drm/i915/pxp: Add PXP-related registers into allowlist
ea5b0b6c33c2 drm/i915/pxp: Implement ioctl action to set the user space context
ac644173c4a0 drm/i915/pxp: set KCR reg init during the boot time
9d93e3de599a drm/i915/pxp: Add PXP context for logical hardware states.
b069e4460363 drm/i915/pxp: Enable PXP irq worker and callback stub
3ce53f7dc704 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/index.html

--===============1009677834389777266==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84136/">https://patchwork.freedesktop.org/series/84136/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9418 -&gt; Patchwork_19034</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9418 and Patchwork_19034:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19034 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@gem_flink_basic@bad-flink.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-ehl-1/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-bsw-kefka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2675">i915#2675</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-bsw-n3050/igt@i915_selftest@live@gt_lrc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-byt-j1900/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9418/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19034/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9418 -&gt; Patchwork_19034</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9418: 5ef90940f82646746fbc78f3af9cdfa503355ab0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19034: 71c5f649a82e92ae4c5f2990271f458261fd4cd6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>71c5f649a82e drm/i915/pxp: Enable the PXP ioctl for protected session<br />
6de7943d6605 drm/i915/pxp: Add plane decryption support<br />
afcf0d8a5ee0 drm/i915/pxp: User interface for Protected buffer<br />
b730c330356d drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
3f9d21975353 mei: pxp: export pavp client to me client bus<br />
0c225361f287 drm/i915/pxp: Expose session state for display protection flip<br />
3f8d34287fc8 drm/i915/pxp: Add i915 trace logs for PXP operations<br />
0328e28c02df drm/i915/pxp: Create the arbitrary session after boot<br />
87ef8cfabefd drm/i915/pxp: Implement ioctl action to send TEE commands<br />
62932c88f944 drm/i915/pxp: Implement funcs to create the TEE channel<br />
db542427db49 drm/i915/pxp: Enable PXP power management<br />
99e9bd56cb87 drm/i915/pxp: Termiante the session upon app crash<br />
789007105c02 drm/i915/pxp: Destroy all type0 sessions upon teardown<br />
260be06ba629 drm/i915/pxp: Enable ioctl action to query PXP tag<br />
5c9dfa8888d1 drm/i915/pxp: Implement ioctl action to terminate the session<br />
a50087361687 drm/i915/pxp: Func to send hardware session termination<br />
4e64444547d5 drm/i915/pxp: Implement ioctl action to set session in play<br />
89660e95826a drm/i915/pxp: Implement ioctl action to reserve session slot<br />
80f5b789b7aa drm/i915/pxp: Implement funcs to get/set PXP tag<br />
791a4cc06927 drm/i915/pxp: Read register to check hardware session state<br />
b2bf2b5d0e5c drm/i915/pxp: Add PXP-related registers into allowlist<br />
ea5b0b6c33c2 drm/i915/pxp: Implement ioctl action to set the user space context<br />
ac644173c4a0 drm/i915/pxp: set KCR reg init during the boot time<br />
9d93e3de599a drm/i915/pxp: Add PXP context for logical hardware states.<br />
b069e4460363 drm/i915/pxp: Enable PXP irq worker and callback stub<br />
3ce53f7dc704 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============1009677834389777266==--

--===============1081701837==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1081701837==--
