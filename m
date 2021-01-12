Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B77AB2F2452
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 01:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B34678966B;
	Tue, 12 Jan 2021 00:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE91B89C09;
 Tue, 12 Jan 2021 00:45:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B759DA7DFB;
 Tue, 12 Jan 2021 00:45:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 12 Jan 2021 00:45:55 -0000
Message-ID: <161041235571.1917.845257988116109687@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210111225220.3483-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210111225220.3483-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/3=5D_drm/i915/gt=3A_Limit_VFE_threa?=
 =?utf-8?q?ds_based_on_GT?=
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
Content-Type: multipart/mixed; boundary="===============1735367257=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1735367257==
Content-Type: multipart/alternative;
 boundary="===============5450681300273758291=="

--===============5450681300273758291==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/3] drm/i915/gt: Limit VFE threads based on GT
URL   : https://patchwork.freedesktop.org/series/85726/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9584 -> Patchwork_19318
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_19318 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19318, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19318:

### IGT changes ###

#### Warnings ####

  * igt@i915_hangman@error-state-basic:
    - fi-apl-guc:         [DMESG-WARN][1] ([i915#1610]) -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-apl-guc/igt@i915_hangman@error-state-basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-apl-guc/igt@i915_hangman@error-state-basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_19318 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][3] -> [DMESG-FAIL][4] ([i915#2601])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@vgem_basic@dmabuf-fence-before:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - fi-ilk-650:         [DMESG-WARN][7] ([i915#164]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-ilk-650/igt@i915_module_load@reload.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-ilk-650/igt@i915_module_load@reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [FAIL][9] ([i915#1161] / [i915#262]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-bsw-kefka:       [FAIL][11] ([i915#2122]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@prime_vgem@basic-read:
    - fi-tgl-y:           [DMESG-WARN][13] ([i915#402]) -> [PASS][14] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-tgl-y/igt@prime_vgem@basic-read.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-tgl-y/igt@prime_vgem@basic-read.html

  
  [i915#1161]: https://gitlab.freedesktop.org/drm/intel/issues/1161
  [i915#1610]: https://gitlab.freedesktop.org/drm/intel/issues/1610
  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 38)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9584 -> Patchwork_19318

  CI-20190529: 20190529
  CI_DRM_9584: 5f4b4c2999912cde385b40395f78925950b1fb00 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5954: 2763c0977004bed596ee876c755b0768187ea9ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19318: 8d67e886d81701a12ab6c2e7588987c7bf2b3388 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

8d67e886d817 drm/i915: Allow the sysadmin to override security mitigations
5c4e9fc2dcd5 drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail
e2979c887600 drm/i915/gt: Limit VFE threads based on GT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/index.html

--===============5450681300273758291==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/3] drm/i915/gt: Limit VFE threads based on GT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85726/">https://patchwork.freedesktop.org/series/85726/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9584 -&gt; Patchwork_19318</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_19318 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19318, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19318:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_hangman@error-state-basic:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1610">i915#1610</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-apl-guc/igt@i915_hangman@error-state-basic.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19318 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence-before:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-tgl-y/igt@vgem_basic@dmabuf-fence-before.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-ilk-650/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-ilk-650/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1161">i915#1161</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/262">i915#262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9584/fi-tgl-y/igt@prime_vgem@basic-read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19318/fi-tgl-y/igt@prime_vgem@basic-read.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 38)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9584 -&gt; Patchwork_19318</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9584: 5f4b4c2999912cde385b40395f78925950b1fb00 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5954: 2763c0977004bed596ee876c755b0768187ea9ab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19318: 8d67e886d81701a12ab6c2e7588987c7bf2b3388 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>8d67e886d817 drm/i915: Allow the sysadmin to override security mitigations<br />
5c4e9fc2dcd5 drm/i915/gt: Restore clear-residual mitigations for Ivybridge, Baytrail<br />
e2979c887600 drm/i915/gt: Limit VFE threads based on GT</p>

</body>
</html>

--===============5450681300273758291==--

--===============1735367257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1735367257==--
