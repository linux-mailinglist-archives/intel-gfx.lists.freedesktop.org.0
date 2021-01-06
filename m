Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC3A2EC402
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 20:36:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101DA89DC0;
	Wed,  6 Jan 2021 19:36:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8AD2989DB4;
 Wed,  6 Jan 2021 19:36:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7A643A363B;
 Wed,  6 Jan 2021 19:36:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lyude Paul" <lyude@redhat.com>
Date: Wed, 06 Jan 2021 19:36:01 -0000
Message-ID: <160996176146.18710.3106207804545946872@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210106013408.271217-1-lyude@redhat.com>
In-Reply-To: <20210106013408.271217-1-lyude@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_Intel=27s_eDP_backlight_controls_=28re?=
 =?utf-8?b?djcp?=
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
Content-Type: multipart/mixed; boundary="===============1336924569=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1336924569==
Content-Type: multipart/alternative;
 boundary="===============2934524227167967767=="

--===============2934524227167967767==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add support for Intel's eDP backlight controls (rev7)
URL   : https://patchwork.freedesktop.org/series/81702/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9554 -> Patchwork_19272
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19272 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19272, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19272:

### IGT changes ###

#### Possible regressions ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-bsw-kefka/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19272 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][2] -> [DMESG-WARN][3] ([i915#2411] / [i915#402])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_flink_basic@flink-lifetime:
    - fi-tgl-y:           [PASS][4] -> [DMESG-WARN][5] ([i915#402]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][6] ([i915#579]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [DMESG-WARN][8] ([i915#402]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9554 -> Patchwork_19272

  CI-20190529: 20190529
  CI_DRM_9554: 4786f2a4c7e280974d0b46ca9e30a156eb528d59 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5945: f0ad1a564956d6796d9ff09182c48d78fb00eefe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19272: 74a4b209e1757b994ecfb6309dfd5257cf01c3ee @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

74a4b209e175 drm/dp: Revert "drm/dp: Introduce EDID-based quirks"
34119292a8b4 drm/i915/dp: Allow forcing specific interfaces through enable_dpcd_backlight
032bad0af7a4 drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)
1b13d103ba78 drm/i915: Keep track of pwm-related backlight hooks separately

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/index.html

--===============2934524227167967767==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add support for Intel&#39;s eDP backlight controls (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/81702/">https://patchwork.freedesktop.org/series/81702/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9554 -&gt; Patchwork_19272</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19272 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19272, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19272:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19272 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-tgl-y/igt@gem_flink_basic@flink-lifetime.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19272/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9554 -&gt; Patchwork_19272</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9554: 4786f2a4c7e280974d0b46ca9e30a156eb528d59 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5945: f0ad1a564956d6796d9ff09182c48d78fb00eefe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19272: 74a4b209e1757b994ecfb6309dfd5257cf01c3ee @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>74a4b209e175 drm/dp: Revert "drm/dp: Introduce EDID-based quirks"<br />
34119292a8b4 drm/i915/dp: Allow forcing specific interfaces through enable_dpcd_backlight<br />
032bad0af7a4 drm/i915/dp: Enable Intel's HDR backlight interface (only SDR for now)<br />
1b13d103ba78 drm/i915: Keep track of pwm-related backlight hooks separately</p>

</body>
</html>

--===============2934524227167967767==--

--===============1336924569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1336924569==--
