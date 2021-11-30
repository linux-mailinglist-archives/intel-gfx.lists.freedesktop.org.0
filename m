Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E9A463626
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 15:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23B7F6E5BB;
	Tue, 30 Nov 2021 14:10:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74CE96E999;
 Tue, 30 Nov 2021 14:10:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F998AADDC;
 Tue, 30 Nov 2021 14:10:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5908361859259134339=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Tue, 30 Nov 2021 14:10:09 -0000
Message-ID: <163828140936.20410.14059648894505668513@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211130132005.6305-1-anshuman.gupta@intel.com>
In-Reply-To: <20211130132005.6305-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftest=3A_Disable_IRQ_for_timestamp_calculation_=28rev3?=
 =?utf-8?q?=29?=
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

--===============5908361859259134339==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftest: Disable IRQ for timestamp calculation (rev3)
URL   : https://patchwork.freedesktop.org/series/96853/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10943 -> Patchwork_21701
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/index.html

Participating hosts (38 -> 33)
------------------------------

  Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21701 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][1] ([fdo#109315]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-soraka:      [PASS][2] -> [DMESG-WARN][3] ([i915#1982])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#4269])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [INCOMPLETE][6] ([i915#4432]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4432]: https://gitlab.freedesktop.org/drm/intel/issues/4432


Build changes
-------------

  * Linux: CI_DRM_10943 -> Patchwork_21701

  CI-20190529: 20190529
  CI_DRM_10943: f506b61984977c7785a54b8860720bfb5334aa08 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6295: 2d7f671b872ed856a97957051098974be2380019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21701: cf5015ce5beee9fb7f992684a23719f344335c60 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cf5015ce5bee drm/i915/selftest: Disable IRQ for timestamp calculation

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/index.html

--===============5908361859259134339==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftest: Disable IRQ for timestamp calculation (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96853/">https://patchwork.freedesktop.org/series/96853/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10943 -&gt; Patchwork_21701</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/index.html</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Missing    (5): bat-dg1-6 bat-dg1-5 fi-bsw-cyan bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21701 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-kbl-soraka/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_engines:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10943/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4432">i915#4432</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21701/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10943 -&gt; Patchwork_21701</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10943: f506b61984977c7785a54b8860720bfb5334aa08 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6295: 2d7f671b872ed856a97957051098974be2380019 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21701: cf5015ce5beee9fb7f992684a23719f344335c60 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cf5015ce5bee drm/i915/selftest: Disable IRQ for timestamp calculation</p>

</body>
</html>

--===============5908361859259134339==--
