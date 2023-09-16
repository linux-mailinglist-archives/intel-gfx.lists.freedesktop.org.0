Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F23427A30CA
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Sep 2023 16:01:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD97F10E11D;
	Sat, 16 Sep 2023 14:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB38010E028;
 Sat, 16 Sep 2023 14:01:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E795CAADE3;
 Sat, 16 Sep 2023 14:01:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8156392360697415593=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Sat, 16 Sep 2023 14:01:29 -0000
Message-ID: <169487288991.10847.1910174811788309569@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230916125455.237325-1-hdegoede@redhat.com>
In-Reply-To: <20230916125455.237325-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vlv=5Fdsi=3A_Add_quirks_for_x86_android_tablets_=28v2=29?=
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

--===============8156392360697415593==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vlv_dsi: Add quirks for x86 android tablets (v2)
URL   : https://patchwork.freedesktop.org/series/123826/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13643 -> Patchwork_123826v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123826v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123826v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/index.html

Participating hosts (40 -> 39)
------------------------------

  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123826v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@load:
    - bat-mtlp-8:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-mtlp-8/igt@i915_module_load@load.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-mtlp-8/igt@i915_module_load@load.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - {bat-dg2-13}:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-dg2-13/igt@kms_chamelium_frames@hdmi-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-dg2-13/igt@kms_chamelium_frames@hdmi-crc-fast.html

  
Known issues
------------

  Here are the changes found in Patchwork_123826v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@mman:
    - bat-rpls-1:         [PASS][5] -> [TIMEOUT][6] ([i915#6794] / [i915#7392])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-rpls-1/igt@i915_selftest@live@mman.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-rpls-1/igt@i915_selftest@live@mman.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - bat-rpls-1:         [PASS][7] -> [WARN][8] ([i915#8747])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          [DMESG-FAIL][9] ([i915#7913]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-dg2-9/igt@i915_selftest@live@workarounds.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][11] ([i915#8668]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#6794]: https://gitlab.freedesktop.org/drm/intel/issues/6794
  [i915#7392]: https://gitlab.freedesktop.org/drm/intel/issues/7392
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7952]: https://gitlab.freedesktop.org/drm/intel/issues/7952
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8747]: https://gitlab.freedesktop.org/drm/intel/issues/8747


Build changes
-------------

  * Linux: CI_DRM_13643 -> Patchwork_123826v1

  CI-20190529: 20190529
  CI_DRM_13643: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7490: 7490
  Patchwork_123826v1: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

1fd832f82809 drm/i915/dsi: Add some debug logging to mipi_exec_i2c (v2)
d1af722e97db drm/i915/vlv_dsi: Add DMI quirk for backlight control issues on Lenovo Yoga Tab 3
a25f44eb5899 drm/i915/vlv_dsi: Add DMI quirk for wrong I2C bus and panel size on Lenovo Yoga Tablet 2 series (v2)
fd2337e4cd66 drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on Asus TF103C (v2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/index.html

--===============8156392360697415593==
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
<tr><td><b>Series:</b></td><td>drm/i915/vlv_dsi: Add quirks for x86 android tablets (v2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/123826/">https://patchwork.freedesktop.org/series/123826/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13643 -&gt; Patchwork_123826v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123826v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_123826v1, please notify your bug team (lgci.bug.filing@intel.com) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/index.html</p>
<h2>Participating hosts (40 -&gt; 39)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_123826v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_module_load@load:<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-mtlp-8/igt@i915_module_load@load.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-mtlp-8/igt@i915_module_load@load.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_chamelium_frames@hdmi-crc-fast:<ul>
<li>{bat-dg2-13}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-dg2-13/igt@kms_chamelium_frames@hdmi-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-dg2-13/igt@kms_chamelium_frames@hdmi-crc-fast.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123826v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-rpls-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-rpls-1/igt@i915_selftest@live@mman.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6794">i915#6794</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7392">i915#7392</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-rpls-1/igt@i915_suspend@basic-s2idle-without-i915.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8747">i915#8747</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13643/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123826v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13643 -&gt; Patchwork_123826v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13643: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7490: 7490<br />
  Patchwork_123826v1: dc4cd6e4e53d46211952fe7c0e408fce3e212993 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>1fd832f82809 drm/i915/dsi: Add some debug logging to mipi_exec_i2c (v2)<br />
d1af722e97db drm/i915/vlv_dsi: Add DMI quirk for backlight control issues on Lenovo Yoga Tab 3<br />
a25f44eb5899 drm/i915/vlv_dsi: Add DMI quirk for wrong I2C bus and panel size on Lenovo Yoga Tablet 2 series (v2)<br />
fd2337e4cd66 drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on Asus TF103C (v2)</p>

</body>
</html>

--===============8156392360697415593==--
