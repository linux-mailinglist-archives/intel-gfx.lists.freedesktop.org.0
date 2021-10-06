Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 118E742433C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 18:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAF626EDBE;
	Wed,  6 Oct 2021 16:46:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2BA966E52A;
 Wed,  6 Oct 2021 16:46:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 23714A47EB;
 Wed,  6 Oct 2021 16:46:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1270758880268361940=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Oct 2021 16:46:31 -0000
Message-ID: <163353879110.5959.14286647055548749579@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211006024018.320394-1-lyude@redhat.com>
In-Reply-To: <20211006024018.320394-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=2C_drm/i915=3A_Finish_basic_PWM_support_for_VESA_backlight_?=
 =?utf-8?q?helpers_=28rev5=29?=
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

--===============1270758880268361940==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (rev5)
URL   : https://patchwork.freedesktop.org/series/95127/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10689 -> Patchwork_21267
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/index.html

Known issues
------------

  Here are the changes found in Patchwork_21267 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271]) +17 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-u2:          NOTRUN -> [INCOMPLETE][3] ([i915#4006])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-u2:          [INCOMPLETE][4] -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [INCOMPLETE][6] ([i915#2940]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][8] ([i915#3921]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][10] ([i915#1372]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-tgl-u2:          [FAIL][12] ([i915#1602] / [i915#2722]) -> [FAIL][13] ([i915#2722])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-tgl-u2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-tgl-u2/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2940]: https://gitlab.freedesktop.org/drm/intel/issues/2940
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4006]: https://gitlab.freedesktop.org/drm/intel/issues/4006


Participating hosts (44 -> 37)
------------------------------

  Missing    (7): fi-kbl-soraka fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10689 -> Patchwork_21267

  CI-20190529: 20190529
  CI_DRM_10689: 6e9dcd4e975288c683c9299de5abb64c5e96215f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6233: a2e7a4583f0f68218c53cfe7b0ea8cc34b49cae9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21267: f51a923f93d21bbc92ba27b7f1f84610287ee37c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f51a923f93d2 drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()
7bcf2107bcf5 drm/dp, drm/i915: Add support for VESA backlights using PWM for brightness control
142c962f919b drm/dp: Disable unsupported features in DP_EDP_BACKLIGHT_MODE_SET_REGISTER
0280cb0414f7 drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux enable/brightness
5e774b93872f drm/i915: Add support for panels with VESA backlights with PWM enable/disable

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/index.html

--===============1270758880268361940==
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
<tr><td><b>Series:</b></td><td>drm/dp, drm/i915: Finish basic PWM support for VESA backlight helpers (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95127/">https://patchwork.freedesktop.org/series/95127/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10689 -&gt; Patchwork_21267</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21267 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-bsw-nick/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-tgl-u2/igt@i915_pm_rpm@module-reload.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4006">i915#4006</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-tgl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2940">i915#2940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10689/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21267/fi-tgl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 37)</h2>
<p>Missing    (7): fi-kbl-soraka fi-ilk-m540 bat-dg1-6 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10689 -&gt; Patchwork_21267</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10689: 6e9dcd4e975288c683c9299de5abb64c5e96215f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6233: a2e7a4583f0f68218c53cfe7b0ea8cc34b49cae9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21267: f51a923f93d21bbc92ba27b7f1f84610287ee37c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f51a923f93d2 drm/i915: Clarify probing order in intel_dp_aux_init_backlight_funcs()<br />
7bcf2107bcf5 drm/dp, drm/i915: Add support for VESA backlights using PWM for brightness control<br />
142c962f919b drm/dp: Disable unsupported features in DP_EDP_BACKLIGHT_MODE_SET_REGISTER<br />
0280cb0414f7 drm/nouveau/kms/nv50-: Explicitly check DPCD backlights for aux enable/brightness<br />
5e774b93872f drm/i915: Add support for panels with VESA backlights with PWM enable/disable</p>

</body>
</html>

--===============1270758880268361940==--
