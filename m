Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31CC62F5513
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 00:05:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9820C6EC99;
	Wed, 13 Jan 2021 23:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 17F106EC99;
 Wed, 13 Jan 2021 23:05:21 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0917AA8836;
 Wed, 13 Jan 2021 23:05:21 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 13 Jan 2021 23:05:21 -0000
Message-ID: <161057912103.11120.15132925242072691327@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210113220935.4151-1-manasi.d.navare@intel.com>
In-Reply-To: <20210113220935.4151-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVlJS?=
 =?utf-8?q?/Adaptive_Sync_Enabling_on_DP/eDP_for_TGL+?=
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
Content-Type: multipart/mixed; boundary="===============1140963423=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1140963423==
Content-Type: multipart/alternative;
 boundary="===============0556332382030317100=="

--===============0556332382030317100==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: VRR/Adaptive Sync Enabling on DP/eDP for TGL+
URL   : https://patchwork.freedesktop.org/series/85831/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9603 -> Patchwork_19345
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19345 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19345, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19345:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_chamelium@common-hpd-after-suspend:
    - fi-icl-u2:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-userptr:
    - {fi-ehl-1}:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-ehl-1/igt@prime_vgem@basic-userptr.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-ehl-1/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-dsi/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19345 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][6] -> [DMESG-WARN][7] ([i915#402]) +2 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@fbdev@read.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@fbdev@read.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-y:           [PASS][8] -> [DMESG-WARN][9] ([i915#2411] / [i915#402])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [PASS][10] -> [FAIL][11] ([i915#579])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-tgl-y:           [PASS][12] -> [DMESG-FAIL][13] ([i915#2601])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][14] ([fdo#109271]) +30 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-snb-2600:        NOTRUN -> [SKIP][15] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-snb-2600:        [DMESG-WARN][16] ([i915#2772]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [DMESG-FAIL][18] ([i915#2291] / [i915#541]) -> [PASS][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_vgem@basic-userptr:
    - fi-tgl-y:           [DMESG-WARN][20] ([i915#402]) -> [PASS][21] +2 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@prime_vgem@basic-userptr.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@prime_vgem@basic-userptr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2601]: https://gitlab.freedesktop.org/drm/intel/issues/2601
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2772]: https://gitlab.freedesktop.org/drm/intel/issues/2772
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (43 -> 38)
------------------------------

  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9603 -> Patchwork_19345

  CI-20190529: 20190529
  CI_DRM_9603: 4e758db4f1c2fd3dcfa7bf1cd33a0863978f555c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19345: ac9c147c77da7f5d478f76e0e192bb0c3d747ef6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ac9c147c77da drm/i915: Fix vblank evasion with vrr
96df6e91917c drm/i915: Fix vblank timestamps with VRR
6a48576a1fa4 drm/i915: Add vrr state dump
6185d7835cbe drm/i915/display: Helpers for VRR vblank min and max start
b857d16e4dd6 drm/i915/display: Add HW state readout for VRR
510a51a72bed drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink
259a9c3dcc00 drm/i915/display/vrr: Disable VRR in modeset disable path
31bb5d8efd39 drm/i915/display/vrr: Send VRR push to flip the frame
1e53166817ac drm/i915/display/vrr: Configure and enable VRR in modeset enable
5729930e732b drm/i915: Rename VRR_CTL reg fields
0061e69b29f3 drm/i915/display: VRR + DRRS cannot be enabled together
6bea0561c8ab drm/i915/display/dp: Do not enable PSR if VRR is enabled
a07503674c3c drm/i915/display/dp: Compute VRR state in atomic_check
762167321220 drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()
7caaca7f5a5d drm/i915: Extract intel_mode_vblank_start()
e42f3141b758 drm/i915: Store framestart_delay in dev_priv
be5b431abcca drm/i915/display/dp: Attach and set drm connector VRR property
9d81944ab3b3 drm/i915/display/vrr: Create VRR file and add VRR capability check

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/index.html

--===============0556332382030317100==
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
<tr><td><b>Series:</b></td><td>VRR/Adaptive Sync Enabling on DP/eDP for TGL+</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85831/">https://patchwork.freedesktop.org/series/85831/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9603 -&gt; Patchwork_19345</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19345 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19345, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19345:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_chamelium@common-hpd-after-suspend:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-icl-u2/igt@kms_chamelium@common-hpd-after-suspend.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>{fi-ehl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-ehl-1/igt@prime_vgem@basic-userptr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-ehl-1/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-dsi/igt@runner@aborted.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19345 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@read:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2411">i915#2411</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2601">i915#2601</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2772">i915#2772</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-snb-2600/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9603/fi-tgl-y/igt@prime_vgem@basic-userptr.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19345/fi-tgl-y/igt@prime_vgem@basic-userptr.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 38)</h2>
<p>Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-cml-drallion fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9603 -&gt; Patchwork_19345</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9603: 4e758db4f1c2fd3dcfa7bf1cd33a0863978f555c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5957: 2a2b3418f7458dfa1fac255cc5c71603f617690a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19345: ac9c147c77da7f5d478f76e0e192bb0c3d747ef6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>ac9c147c77da drm/i915: Fix vblank evasion with vrr<br />
96df6e91917c drm/i915: Fix vblank timestamps with VRR<br />
6a48576a1fa4 drm/i915: Add vrr state dump<br />
6185d7835cbe drm/i915/display: Helpers for VRR vblank min and max start<br />
b857d16e4dd6 drm/i915/display: Add HW state readout for VRR<br />
510a51a72bed drm/i915/display/vrr: Set IGNORE_MSA_PAR state in DP Sink<br />
259a9c3dcc00 drm/i915/display/vrr: Disable VRR in modeset disable path<br />
31bb5d8efd39 drm/i915/display/vrr: Send VRR push to flip the frame<br />
1e53166817ac drm/i915/display/vrr: Configure and enable VRR in modeset enable<br />
5729930e732b drm/i915: Rename VRR_CTL reg fields<br />
0061e69b29f3 drm/i915/display: VRR + DRRS cannot be enabled together<br />
6bea0561c8ab drm/i915/display/dp: Do not enable PSR if VRR is enabled<br />
a07503674c3c drm/i915/display/dp: Compute VRR state in atomic_check<br />
762167321220 drm/i915: Extract intel_crtc_scanlines_since_frame_timestamp()<br />
7caaca7f5a5d drm/i915: Extract intel_mode_vblank_start()<br />
e42f3141b758 drm/i915: Store framestart_delay in dev_priv<br />
be5b431abcca drm/i915/display/dp: Attach and set drm connector VRR property<br />
9d81944ab3b3 drm/i915/display/vrr: Create VRR file and add VRR capability check</p>

</body>
</html>

--===============0556332382030317100==--

--===============1140963423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1140963423==--
