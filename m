Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAD387CD50
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 13:34:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D00112204;
	Fri, 15 Mar 2024 12:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FBF112204;
 Fri, 15 Mar 2024 12:34:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5122045259976237192=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/i915/display=3A_Fixed_a?=
 =?utf-8?q?_screen_flickering_when_turning_on_display_from_off_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: gareth.yu@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 15 Mar 2024 12:34:08 -0000
Message-ID: <171050604827.795787.10607432029160786551@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306031348.1344034-1-gareth.yu@intel.com>
In-Reply-To: <20240306031348.1344034-1-gareth.yu@intel.com>
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

--===============5122045259976237192==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Fixed a screen flickering when turning on display from off (rev4)
URL   : https://patchwork.freedesktop.org/series/130780/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14438 -> Patchwork_130780v4
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/index.html

Participating hosts (38 -> 33)
------------------------------

  Additional (2): fi-apl-guc bat-arls-3 
  Missing    (7): bat-mtlp-8 bat-kbl-2 fi-snb-2520m fi-kbl-8809g fi-blb-e6850 bat-dg2-11 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_130780v4 that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - bat-arls-3:         NOTRUN -> [FAIL][1] ([i915#10234])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/bat-arls-3/boot.html
    - fi-apl-guc:         NOTRUN -> [FAIL][2] ([i915#8293])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/fi-apl-guc/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][3] -> [DMESG-WARN][4] ([i915#5591])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_pm:
    - bat-dg2-9:          [ABORT][5] ([i915#10366]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-dg2-9/igt@i915_selftest@live@gt_pm.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/bat-dg2-9/igt@i915_selftest@live@gt_pm.html

  
  [i915#10234]: https://gitlab.freedesktop.org/drm/intel/issues/10234
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#8293]: https://gitlab.freedesktop.org/drm/intel/issues/8293


Build changes
-------------

  * Linux: CI_DRM_14438 -> Patchwork_130780v4

  CI-20190529: 20190529
  CI_DRM_14438: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7768: 7768
  Patchwork_130780v4: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

84b1e64330f7 drm/i915/display: Fixed a screen flickering when turning on display from off

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/index.html

--===============5122045259976237192==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Fixed a screen flickering when turning on display from off (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/130780/">https://patchwork.freedesktop.org/series/130780/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14438 -&gt; Patchwork_130780v4</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/index.html</p>
<h2>Participating hosts (38 -&gt; 33)</h2>
<p>Additional (2): fi-apl-guc bat-arls-3 <br />
  Missing    (7): bat-mtlp-8 bat-kbl-2 fi-snb-2520m fi-kbl-8809g fi-blb-e6850 bat-dg2-11 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_130780v4 that come from known issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>bat-arls-3:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/bat-arls-3/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10234">i915#10234</a>)</li>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/fi-apl-guc/boot.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8293">i915#8293</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@gt_pm:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14438/bat-dg2-9/igt@i915_selftest@live@gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130780v4/bat-dg2-9/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14438 -&gt; Patchwork_130780v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14438: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7768: 7768<br />
  Patchwork_130780v4: 601f578c8c069e990adab2f8a6d94c549d7d0fe1 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>84b1e64330f7 drm/i915/display: Fixed a screen flickering when turning on display from off</p>

</body>
</html>

--===============5122045259976237192==--
