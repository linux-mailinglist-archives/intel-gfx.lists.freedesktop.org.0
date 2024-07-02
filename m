Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C93292471C
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 20:13:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F8A10E276;
	Tue,  2 Jul 2024 18:13:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1045710E276;
 Tue,  2 Jul 2024 18:13:45 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0161638062056696195=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915=3A_Dump_DSC_state_?=
 =?utf-8?q?to_dmesg/debugfs_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Jul 2024 18:13:45 -0000
Message-ID: <171994402506.21588.16524126273502415648@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240628164451.1177612-1-imre.deak@intel.com>
In-Reply-To: <20240628164451.1177612-1-imre.deak@intel.com>
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

--===============0161638062056696195==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Dump DSC state to dmesg/debugfs (rev3)
URL   : https://patchwork.freedesktop.org/series/134906/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15013 -> Patchwork_134906v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_134906v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_134906v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html

Participating hosts (42 -> 39)
------------------------------

  Additional (1): bat-twl-2 
  Missing    (4): bat-adln-1 bat-jsl-3 fi-snb-2520m fi-elk-e7500 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_134906v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gem_migrate:
    - bat-arlh-2:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html

  
Known issues
------------

  Here are the changes found in Patchwork_134906v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium_edid@dp-edid-read:
    - bat-dg2-13:         [PASS][5] -> [ABORT][6] ([i915#11552])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [PASS][7] -> [DMESG-WARN][8] ([i915#7507])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-7567u:       [DMESG-WARN][9] ([i915#11328]) -> [PASS][10] +33 other tests pass
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][11] ([i915#9500]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
  [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
  [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
  [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
  [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
  [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
  [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
  [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
  [i915#11328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328
  [i915#11552]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11552
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
  [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
  [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500
  [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886


Build changes
-------------

  * Linux: CI_DRM_15013 -> Patchwork_134906v3

  CI-20190529: 20190529
  CI_DRM_15013: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7906: ae91ba26f657bf11264f64bd2dc21f471a5d18f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_134906v3: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html

--===============0161638062056696195==
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
<tr><td><b>Series:</b></td><td>drm/i915: Dump DSC state to dmesg/debugfs (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/134906/">https://patchwork.freedesktop.org/series/134906/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15013 -&gt; Patchwork_134906v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_134906v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_134906v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/index.html</p>
<h2>Participating hosts (42 -&gt; 39)</h2>
<p>Additional (1): bat-twl-2 <br />
  Missing    (4): bat-adln-1 bat-jsl-3 fi-snb-2520m fi-elk-e7500 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_134906v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_migrate:</p>
<ul>
<li>bat-arlh-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-arlh-2/igt@i915_selftest@live@gem_migrate.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_134906v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>bat-dg2-13:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-dg2-13/igt@kms_chamelium_edid@dp-edid-read.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11552">i915#11552</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328">i915#11328</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/fi-kbl-7567u/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134906v3/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15013 -&gt; Patchwork_134906v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15013: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7906: ae91ba26f657bf11264f64bd2dc21f471a5d18f5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_134906v3: 0318a12ff6fb8c321458aa2b373e9322896ee951 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0161638062056696195==--
