Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2D492D28D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2024 15:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0B7710E057;
	Wed, 10 Jul 2024 13:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB4E310E798;
 Wed, 10 Jul 2024 13:15:30 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1604228624332432871=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915=3A_Fix_readout_deg?=
 =?utf-8?q?amma=5Flut_mismatch_on_ilk/snb?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2024 13:15:30 -0000
Message-ID: <172061733075.105381.17492397608262607140@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240710124137.16773-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240710124137.16773-1-ville.syrjala@linux.intel.com>
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

--===============1604228624332432871==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix readout degamma_lut mismatch on ilk/snb
URL   : https://patchwork.freedesktop.org/series/135939/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15057 -> Patchwork_135939v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/index.html

Participating hosts (42 -> 40)
------------------------------

  Missing    (2): fi-snb-2520m fi-bsw-n3050 

Known issues
------------

  Here are the changes found in Patchwork_135939v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_addfb_basic@invalid-set-prop:
    - bat-apl-1:          [PASS][1] -> [DMESG-WARN][2] ([i915#11328]) +41 other tests dmesg-warn
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html

  * igt@kms_busy@basic@flip:
    - bat-apl-1:          [PASS][3] -> [DMESG-WARN][4] ([i915#180] / [i915#1982]) +2 other tests dmesg-warn
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - bat-apl-1:          [PASS][5] -> [DMESG-WARN][6] ([i915#10062] / [i915#180]) +1 other test dmesg-warn
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - bat-apl-1:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +31 other tests dmesg-warn
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-arls-2:         [PASS][9] -> [DMESG-WARN][10] ([i915#7507])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - bat-arls-1:         [DMESG-WARN][11] ([i915#10341] / [i915#11570]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-arls-1/igt@i915_selftest@live@gt_heartbeat.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-arls-1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@objects:
    - bat-arls-1:         [DMESG-FAIL][13] ([i915#10262]) -> [PASS][14] +26 other tests pass
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-arls-1/igt@i915_selftest@live@objects.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-arls-1/igt@i915_selftest@live@objects.html

  
  [i915#10062]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10062
  [i915#10262]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#11328]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328
  [i915#11570]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11570
  [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
  [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
  [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507


Build changes
-------------

  * Linux: CI_DRM_15057 -> Patchwork_135939v1

  CI-20190529: 20190529
  CI_DRM_15057: dcbd1ba3189efd3be0e0dacfdc37cada014c38eb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7921: f547de980dca43c6630ced36e98af7f2a9c70ae7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_135939v1: dcbd1ba3189efd3be0e0dacfdc37cada014c38eb @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/index.html

--===============1604228624332432871==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix readout degamma_lut mismatch on ilk/snb</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/135939/">https://patchwork.freedesktop.org/series/135939/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15057 -&gt; Patchwork_135939v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/index.html</p>
<h2>Participating hosts (42 -&gt; 40)</h2>
<p>Missing    (2): fi-snb-2520m fi-bsw-n3050 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_135939v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_addfb_basic@invalid-set-prop.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11328">i915#11328</a>) +41 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_busy@basic@flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982">i915#1982</a>) +2 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10062">i915#10062</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>bat-apl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-apl-1/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180">i915#180</a>) +31 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-arls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507">i915#7507</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-arls-1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11570">i915#11570</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-arls-1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>bat-arls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15057/bat-arls-1/igt@i915_selftest@live@objects.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10262">i915#10262</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135939v1/bat-arls-1/igt@i915_selftest@live@objects.html">PASS</a> +26 other tests pass</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15057 -&gt; Patchwork_135939v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15057: dcbd1ba3189efd3be0e0dacfdc37cada014c38eb @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7921: f547de980dca43c6630ced36e98af7f2a9c70ae7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_135939v1: dcbd1ba3189efd3be0e0dacfdc37cada014c38eb @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============1604228624332432871==--
