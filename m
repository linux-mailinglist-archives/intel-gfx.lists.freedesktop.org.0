Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6452240611E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 02:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622E16E951;
	Fri, 10 Sep 2021 00:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6443F6E950;
 Fri, 10 Sep 2021 00:39:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5CC80A01BB;
 Fri, 10 Sep 2021 00:39:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0634984060940332350=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Sep 2021 00:39:31 -0000
Message-ID: <163123437137.14829.18258251334431633587@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210909230725.33735-1-jose.souza@intel.com>
In-Reply-To: <20210909230725.33735-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm/i915/display/adlp=3A_Fix_PSR2?=
 =?utf-8?q?=5FMAN=5FTRK=5FCTL=5FSU=5FREGION=5FEND=5FADDR_calculation?=
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

--===============0634984060940332350==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/5] drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation
URL   : https://patchwork.freedesktop.org/series/94526/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10566 -> Patchwork_21008
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/index.html

Known issues
------------

  Here are the changes found in Patchwork_21008 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-kbl-7567u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@fbdev@write:
    - fi-bdw-gvtdvm:      NOTRUN -> [SKIP][2] ([fdo#109271]) +5 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-bdw-gvtdvm/igt@fbdev@write.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-bdw-gvtdvm:      NOTRUN -> [INCOMPLETE][3] ([i915#146])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - fi-rkl-guc:         [PASS][4] -> [SKIP][5] ([fdo#109308])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10566/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][6] -> [INCOMPLETE][7] ([i915#3921])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10566/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-7567u:       [DMESG-WARN][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10566/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921


Participating hosts (44 -> 39)
------------------------------

  Additional (1): fi-bdw-gvtdvm 
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10566 -> Patchwork_21008

  CI-20190529: 20190529
  CI_DRM_10566: 8c2d4adb2cd72ea1fae0c95562362319406f6d8e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21008: 6a5a62753b84653003695a67a8aea3cf44a2ab05 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6a5a62753b84 drm/i915/display: Workaround cursor left overs with PSR2 selective fetch enabled
cce24682af93 drm/i915/display/psr: Use drm damage helpers to calculate plane damaged area
2c287be2545f drm/i915/display: Wait at least 2 frames before selective update
922da922a44f drm/i915/display/adlp: Add new PSR2 workarounds
f02430c9cb76 drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/index.html

--===============0634984060940332350==
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
<tr><td><b>Series:</b></td><td>series starting with [1/5] drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94526/">https://patchwork.freedesktop.org/series/94526/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10566 -&gt; Patchwork_21008</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21008 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-kbl-7567u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-kbl-7567u/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-bdw-gvtdvm/igt@fbdev@write.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-bdw-gvtdvm:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-bdw-gvtdvm/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/146">i915#146</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10566/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-rkl-guc/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109308">fdo#109308</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10566/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_pm_rpm@module-reload:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10566/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21008/fi-kbl-7567u/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 39)</h2>
<p>Additional (1): fi-bdw-gvtdvm <br />
  Missing    (6): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-adlp-4 fi-bdw-samus bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10566 -&gt; Patchwork_21008</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10566: 8c2d4adb2cd72ea1fae0c95562362319406f6d8e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6203: 64452a46b57ca4ef35eb65a547df8ed1b131e8f0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21008: 6a5a62753b84653003695a67a8aea3cf44a2ab05 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>6a5a62753b84 drm/i915/display: Workaround cursor left overs with PSR2 selective fetch enabled<br />
cce24682af93 drm/i915/display/psr: Use drm damage helpers to calculate plane damaged area<br />
2c287be2545f drm/i915/display: Wait at least 2 frames before selective update<br />
922da922a44f drm/i915/display/adlp: Add new PSR2 workarounds<br />
f02430c9cb76 drm/i915/display/adlp: Fix PSR2_MAN_TRK_CTL_SU_REGION_END_ADDR calculation</p>

</body>
</html>

--===============0634984060940332350==--
