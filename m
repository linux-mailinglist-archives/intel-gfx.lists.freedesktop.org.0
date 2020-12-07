Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0102D08BE
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 02:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 945EB89F97;
	Mon,  7 Dec 2020 01:15:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A697F89D60;
 Mon,  7 Dec 2020 01:15:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9562AA00E6;
 Mon,  7 Dec 2020 01:15:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Huang, Sean Z" <sean.z.huang@intel.com>
Date: Mon, 07 Dec 2020 01:15:09 -0000
Message-ID: <160730370958.8717.11573510863056941176@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201207002134.13731-1-sean.z.huang@intel.com>
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgSW50?=
 =?utf-8?q?roduce_Intel_PXP_component_-_Mesa_single_session?=
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
Content-Type: multipart/mixed; boundary="===============0008491122=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0008491122==
Content-Type: multipart/alternative;
 boundary="===============0999069704549505468=="

--===============0999069704549505468==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Introduce Intel PXP component - Mesa single session
URL   : https://patchwork.freedesktop.org/series/84620/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9451 -> Patchwork_19073
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/index.html

New tests
---------

  New tests have been introduced between CI_DRM_9451 and Patchwork_19073:

### New CI tests (1) ###

  * boot:
    - Statuses : 1 fail(s) 38 pass(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_19073 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-7500u:       [PASS][3] -> [INCOMPLETE][4] ([i915#1037] / [i915#794])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-kbl-7500u/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@gem_ctx_exec@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@gem_ctx_exec@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#2411] / [i915#402]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][9] ([i915#579]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [DMESG-FAIL][11] ([i915#2601]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#794]: https://gitlab.freedesktop.org/drm/intel/issues/794


Participating hosts (43 -> 39)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9451 -> Patchwork_19073

  CI-20190529: 20190529
  CI_DRM_9451: e5d4ddd912799f4fdaeadfc50507b3150e1ae9e8 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5882: 47f770e8e544831ae5a984b2083df73f71067762 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19073: 2c2a5ec977c5c0462ecd664e07527d1017464105 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2c2a5ec977c5 drm/i915/pxp: Add plane decryption support
835fa00f2104 drm/i915/pxp: User interface for Protected buffer
cb5b82433cec drm/i915/uapi: introduce drm_i915_gem_create_ext
ad81178c888f mei: pxp: export pavp client to me client bus
61c300f2e8e9 drm/i915/pxp: Expose session state for display protection flip
f363d53b2c55 drm/i915/pxp: Enable PXP power management
8d1a900379e7 drm/i915/pxp: Destroy arb session upon teardown
f3d2af9143ce drm/i915/pxp: Func to send hardware session termination
dce0eab4952c drm/i915/pxp: Create the arbitrary session after boot
6535c3768f7b drm/i915/pxp: Implement funcs to create the TEE channel
21ed306a5303 drm/i915/pxp: Implement funcs to get/set PXP tag
1f58bdf3d44d drm/i915/pxp: Read register to check hardware session state
dbe74e292313 drm/i915/pxp: set KCR reg init during the boot time
a44a71ee8f7a drm/i915/pxp: Add PXP context for logical hardware states.
900074c203b4 drm/i915/pxp: Enable PXP irq worker and callback stub
56ffa1e5dc43 drm/i915/pxp: Introduce Intel PXP component

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/index.html

--===============0999069704549505468==
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
<tr><td><b>Series:</b></td><td>Introduce Intel PXP component - Mesa single session</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84620/">https://patchwork.freedesktop.org/series/84620/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9451 -&gt; Patchwork_19073</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9451 and Patchwork_19073:</p>
<h3>New CI tests (1)</h3>
<ul>
<li>boot:<ul>
<li>Statuses : 1 fail(s) 38 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19073 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-kbl-7500u/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/794">i915#794</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@gem_ctx_exec@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@gem_ctx_exec@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9451/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19073/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 39)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9451 -&gt; Patchwork_19073</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9451: e5d4ddd912799f4fdaeadfc50507b3150e1ae9e8 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5882: 47f770e8e544831ae5a984b2083df73f71067762 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19073: 2c2a5ec977c5c0462ecd664e07527d1017464105 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>2c2a5ec977c5 drm/i915/pxp: Add plane decryption support<br />
835fa00f2104 drm/i915/pxp: User interface for Protected buffer<br />
cb5b82433cec drm/i915/uapi: introduce drm_i915_gem_create_ext<br />
ad81178c888f mei: pxp: export pavp client to me client bus<br />
61c300f2e8e9 drm/i915/pxp: Expose session state for display protection flip<br />
f363d53b2c55 drm/i915/pxp: Enable PXP power management<br />
8d1a900379e7 drm/i915/pxp: Destroy arb session upon teardown<br />
f3d2af9143ce drm/i915/pxp: Func to send hardware session termination<br />
dce0eab4952c drm/i915/pxp: Create the arbitrary session after boot<br />
6535c3768f7b drm/i915/pxp: Implement funcs to create the TEE channel<br />
21ed306a5303 drm/i915/pxp: Implement funcs to get/set PXP tag<br />
1f58bdf3d44d drm/i915/pxp: Read register to check hardware session state<br />
dbe74e292313 drm/i915/pxp: set KCR reg init during the boot time<br />
a44a71ee8f7a drm/i915/pxp: Add PXP context for logical hardware states.<br />
900074c203b4 drm/i915/pxp: Enable PXP irq worker and callback stub<br />
56ffa1e5dc43 drm/i915/pxp: Introduce Intel PXP component</p>

</body>
</html>

--===============0999069704549505468==--

--===============0008491122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0008491122==--
