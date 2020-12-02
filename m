Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 188682CB1B0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 01:49:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25CD66E9AA;
	Wed,  2 Dec 2020 00:49:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C5F7F6E9A8;
 Wed,  2 Dec 2020 00:49:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BC02EA00E6;
 Wed,  2 Dec 2020 00:49:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Wed, 02 Dec 2020 00:49:05 -0000
Message-ID: <160687014573.4090.8504141768465435472@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201201235747.26017-1-sean.z.huang@intel.com>
In-Reply-To: <20201201235747.26017-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1482522447=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1482522447==
Content-Type: multipart/alternative;
 boundary="===============2452101214687424245=="

--===============2452101214687424245==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component (rev3)
URL   : https://patchwork.freedesktop.org/series/84136/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9417 -> Patchwork_19032
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9417 and Patchwork_19032:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 40 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19032 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_selftest@live@client:
    - fi-glk-dsi:         [PASS][3] -> [INCOMPLETE][4] ([i915#2295])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-glk-dsi/igt@i915_selftest@live@client.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-glk-dsi/igt@i915_selftest@live@client.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-apl-guc:         [PASS][5] -> [DMESG-WARN][6] ([i915#1982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-byt-j1900:       [DMESG-WARN][7] ([i915#1982]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-byt-j1900/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-byt-j1900/igt@i915_module_load@reload.html
    - fi-apl-guc:         [DMESG-WARN][9] ([i915#1982]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-apl-guc/igt@i915_module_load@reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-apl-guc/igt@i915_module_load@reload.html
    - fi-bsw-kefka:       [DMESG-WARN][11] ([i915#1982]) -> [PASS][12] +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-bsw-kefka/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-bsw-kefka/igt@i915_module_load@reload.html
    - fi-icl-y:           [DMESG-WARN][13] ([i915#1982]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-icl-y/igt@i915_module_load@reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-icl-y/igt@i915_module_load@reload.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - fi-icl-u2:          [DMESG-WARN][15] ([i915#1982]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2295]: https://gitlab.freedesktop.org/drm/intel/issues/2295


Participating hosts (44 -> 41)
------------------------------

  Additional (1): fi-tgl-y 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9417 -> Patchwork_19032

  CI-20190529: 20190529
  CI_DRM_9417: 4cefeded9d6f34004d7d308c1f5da960ac008b42 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19032: 2ad13facf75553b6f701a5a518bd94caedad3dce @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2ad13facf755 drm/i915/pxp: Enable the PXP ioctl for protected session
c628ce58ddad drm/i915/pxp: Add plane decryption support
8dce7e4a0d14 drm/i915/pxp: User interface for Protected buffer
6ab0923220aa drm/i915/uapi: introduce drm_i915_gem_create_ext
9234896f9459 mei: pxp: export pavp client to me client bus
58c13fd7fa7e drm/i915/pxp: Expose session state for display protection flip
238e0ba78e55 drm/i915/pxp: Add i915 trace logs for PXP operations
e94ca0a06781 drm/i915/pxp: Create the arbitrary session after boot
87ae0e821c19 drm/i915/pxp: Implement ioctl action to send TEE commands
7bcd0a050a79 drm/i915/pxp: Implement funcs to create the TEE channel
10673f769fdf drm/i915/pxp: Enable PXP power management
d3ba4faedc76 drm/i915/pxp: Termiante the session upon app crash
52f58641d883 drm/i915/pxp: Destroy all type0 sessions upon teardown
dcd6babb3ad0 drm/i915/pxp: Enable ioctl action to query PXP tag
a186a1cf0606 drm/i915/pxp: Implement ioctl action to terminate the session
fec46c3feb3a drm/i915/pxp: Func to send hardware session termination
82abf04c1c90 drm/i915/pxp: Implement ioctl action to set session in play
de1fa18ac54d drm/i915/pxp: Implement ioctl action to reserve session slot
3d2a9b3fe991 drm/i915/pxp: Implement funcs to get/set PXP tag
40dfea10f6eb drm/i915/pxp: Read register to check hardware session state
82c8c6ffcfde drm/i915/pxp: Add PXP-related registers into allowlist
a92dc1eecb57 drm/i915/pxp: Implement ioctl action to set the user space context
502781bb247f drm/i915/pxp: set KCR reg init during the boot time
207c2ab536f6 drm/i915/pxp: Add PXP context for logical hardware states.
e76458295026 drm/i915/pxp: Enable PXP irq worker and callback stub
9a5d8af908af drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/index.html

--===============2452101214687424245==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84136/">https://patchwork.freedesktop.org/series/84136/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9417 -&gt; Patchwork_19032</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9417 and Patchwork_19032:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 40 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19032 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-glk-dsi/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-glk-dsi/igt@i915_selftest@live@client.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2295">i915#2295</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-apl-guc/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-byt-j1900:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-byt-j1900/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-byt-j1900/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-apl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-bsw-kefka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-bsw-kefka/igt@i915_module_load@reload.html">PASS</a> +1 similar issue</p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-icl-y/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-icl-y/igt@i915_module_load@reload.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9417/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19032/fi-icl-u2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 41)</h2>
<p>Additional (1): fi-tgl-y <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9417 -&gt; Patchwork_19032</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9417: 4cefeded9d6f34004d7d308c1f5da960ac008b42 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5878: e96c0d8e6952d892bcbbcdf004999880a4dfb42e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19032: 2ad13facf75553b6f701a5a518bd94caedad3dce @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2ad13facf755 drm/i915/pxp: Enable the PXP ioctl for protected session<br />
c628ce58ddad drm/i915/pxp: Add plane decryption support<br />
8dce7e4a0d14 drm/i915/pxp: User interface for Protected buffer<br />
6ab0923220aa drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
9234896f9459 mei: pxp: export pavp client to me client bus<br />
58c13fd7fa7e drm/i915/pxp: Expose session state for display protection flip<br />
238e0ba78e55 drm/i915/pxp: Add i915 trace logs for PXP operations<br />
e94ca0a06781 drm/i915/pxp: Create the arbitrary session after boot<br />
87ae0e821c19 drm/i915/pxp: Implement ioctl action to send TEE commands<br />
7bcd0a050a79 drm/i915/pxp: Implement funcs to create the TEE channel<br />
10673f769fdf drm/i915/pxp: Enable PXP power management<br />
d3ba4faedc76 drm/i915/pxp: Termiante the session upon app crash<br />
52f58641d883 drm/i915/pxp: Destroy all type0 sessions upon teardown<br />
dcd6babb3ad0 drm/i915/pxp: Enable ioctl action to query PXP tag<br />
a186a1cf0606 drm/i915/pxp: Implement ioctl action to terminate the session<br />
fec46c3feb3a drm/i915/pxp: Func to send hardware session termination<br />
82abf04c1c90 drm/i915/pxp: Implement ioctl action to set session in play<br />
de1fa18ac54d drm/i915/pxp: Implement ioctl action to reserve session slot<br />
3d2a9b3fe991 drm/i915/pxp: Implement funcs to get/set PXP tag<br />
40dfea10f6eb drm/i915/pxp: Read register to check hardware session state<br />
82c8c6ffcfde drm/i915/pxp: Add PXP-related registers into allowlist<br />
a92dc1eecb57 drm/i915/pxp: Implement ioctl action to set the user space context<br />
502781bb247f drm/i915/pxp: set KCR reg init during the boot time<br />
207c2ab536f6 drm/i915/pxp: Add PXP context for logical hardware states.<br />
e76458295026 drm/i915/pxp: Enable PXP irq worker and callback stub<br />
9a5d8af908af drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============2452101214687424245==--

--===============1482522447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1482522447==--
