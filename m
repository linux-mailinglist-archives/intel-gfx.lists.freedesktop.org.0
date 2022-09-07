Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD775B0FD4
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 00:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A8C10E8D1;
	Wed,  7 Sep 2022 22:31:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7410110E8D1;
 Wed,  7 Sep 2022 22:31:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B70FAADDE;
 Wed,  7 Sep 2022 22:31:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3329599871554692086=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Date: Wed, 07 Sep 2022 22:31:12 -0000
Message-ID: <166258987240.19837.15657951069455963024@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220907215113.1596567-1-tomas.winkler@intel.com>
In-Reply-To: <20220907215113.1596567-1-tomas.winkler@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgR1ND?=
 =?utf-8?q?_support_for_XeHP_SDV_and_DG2_=28rev5=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============3329599871554692086==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: GSC support for XeHP SDV and DG2 (rev5)
URL   : https://patchwork.freedesktop.org/series/106638/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_12090 -> Patchwork_106638v5
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.html

Participating hosts (43 -> 42)
------------------------------

  Additional (1): fi-snb-2600 
  Missing    (2): fi-icl-u2 fi-bdw-samus 

Known issues
------------

  Here are the changes found in Patchwork_106638v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_rpm@module-reload:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +20 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/fi-snb-2600/igt@i915_pm_rpm@module-reload.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][2] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
    - fi-glk-j4005:       [PASS][3] -> [FAIL][4] ([i915#2122])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/fi-glk-j4005/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/fi-glk-j4005/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rplp-1}:       [DMESG-WARN][5] ([i915#2867]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@live@workarounds:
    - {bat-rpls-1}:       [DMESG-FAIL][7] -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#5153]: https://gitlab.freedesktop.org/drm/intel/issues/5153
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599


Build changes
-------------

  * Linux: CI_DRM_12090 -> Patchwork_106638v5

  CI-20190529: 20190529
  CI_DRM_12090: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_106638v5: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a63803c66a78 HAX: drm/i915: force INTEL_MEI_GSC on for CI
402c3e20cbdd drm/i915/gsc: allocate extended operational memory in LMEM
b25094c8076a mei: debugfs: add pxp mode to devstate in debugfs
11d655b45a5f mei: drop ready bits check after start
45193212b6ee mei: gsc: add transition to PXP mode in resume flow
50fac72d19e9 mei: gsc: setup gsc extended operational memory
2c68ab21d63f mei: mkhi: add memory ready command
234ef1881ac1 mei: bus: export common mkhi definitions into a separate header
25f9cebddf21 mei: extend timeouts on slow devices
70c4474c5e3f mei: gsc: wait for reset thread on stop
2d942f896f65 mei: gsc: use polling instead of interrupts
4527f3b23a42 drm/i915/gsc: add GSC XeHP SDV platform definition
56ebb784089d drm/i915/gsc: add slow_firmware flag to the gsc device definition
2363a6f205dd mei: add slow_firmware flag to the mei auxiliary device
5cd044e2817e mei: add kdoc for struct mei_aux_device
1f01faa03715 drm/i915/gsc: skip irq initialization if using polling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.html

--===============3329599871554692086==
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
<tr><td><b>Series:</b></td><td>GSC support for XeHP SDV and DG2 (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/106638/">https://patchwork.freedesktop.org/series/106638/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12090 -&gt; Patchwork_106638v5</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/index.html</p>
<h2>Participating hosts (43 -&gt; 42)</h2>
<p>Additional (1): fi-snb-2600 <br />
  Missing    (2): fi-icl-u2 fi-bdw-samus </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_106638v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/fi-snb-2600/igt@i915_pm_rpm@module-reload.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/fi-snb-2600/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/fi-glk-j4005/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/fi-glk-j4005/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rplp-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/bat-rplp-1/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12090/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_106638v5/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12090 -&gt; Patchwork_106638v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12090: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_106638v5: 7710b0d1501fc279a2f0e8571a48500017b6a4d3 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a63803c66a78 HAX: drm/i915: force INTEL_MEI_GSC on for CI<br />
402c3e20cbdd drm/i915/gsc: allocate extended operational memory in LMEM<br />
b25094c8076a mei: debugfs: add pxp mode to devstate in debugfs<br />
11d655b45a5f mei: drop ready bits check after start<br />
45193212b6ee mei: gsc: add transition to PXP mode in resume flow<br />
50fac72d19e9 mei: gsc: setup gsc extended operational memory<br />
2c68ab21d63f mei: mkhi: add memory ready command<br />
234ef1881ac1 mei: bus: export common mkhi definitions into a separate header<br />
25f9cebddf21 mei: extend timeouts on slow devices<br />
70c4474c5e3f mei: gsc: wait for reset thread on stop<br />
2d942f896f65 mei: gsc: use polling instead of interrupts<br />
4527f3b23a42 drm/i915/gsc: add GSC XeHP SDV platform definition<br />
56ebb784089d drm/i915/gsc: add slow_firmware flag to the gsc device definition<br />
2363a6f205dd mei: add slow_firmware flag to the mei auxiliary device<br />
5cd044e2817e mei: add kdoc for struct mei_aux_device<br />
1f01faa03715 drm/i915/gsc: skip irq initialization if using polling</p>

</body>
</html>

--===============3329599871554692086==--
