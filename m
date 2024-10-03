Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E1A98F932
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 23:49:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C361B10E976;
	Thu,  3 Oct 2024 21:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4842210E976;
 Thu,  3 Oct 2024 21:49:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0913201239292589067=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/client=3A_Stop_using_le?=
 =?utf-8?q?gacy_crtc-=3Emode_and_a_bunch_of_cleanups_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 03 Oct 2024 21:49:02 -0000
Message-ID: <172799214228.1171416.16945531725440440687@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20241003113304.11700-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20241003113304.11700-1-ville.syrjala@linux.intel.com>
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

--===============0913201239292589067==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/client: Stop using legacy crtc->mode and a bunch of cleanups (rev4)
URL   : https://patchwork.freedesktop.org/series/139493/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_15483 -> Patchwork_139493v4
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_139493v4 need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_139493v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/index.html

Participating hosts (43 -> 41)
------------------------------

  Missing    (2): bat-rpls-4 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_139493v4:

### IGT changes ###

#### Warnings ####

  * igt@i915_selftest@live@gem:
    - bat-arls-5:         [DMESG-WARN][1] ([i915#11637]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-arls-5/igt@i915_selftest@live@gem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-arls-5/igt@i915_selftest@live@gem.html

  
Known issues
------------

  Here are the changes found in Patchwork_139493v4 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live:
    - bat-adlp-6:         [PASS][3] -> [INCOMPLETE][4] ([i915#9413])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-adlp-6/igt@i915_selftest@live.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-adlp-6/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gt_lrc:
    - bat-adlp-6:         [PASS][5] -> [INCOMPLETE][6] ([i915#10886] / [i915#9413])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html

  * igt@runner@aborted:
    - bat-dg2-13:         NOTRUN -> [FAIL][7] ([i915#12292])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-dg2-13/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-hsw-4770:        [DMESG-WARN][8] ([i915#12310]) -> [PASS][9] +1 other test pass
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/fi-hsw-4770/igt@i915_selftest@live.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/fi-hsw-4770/igt@i915_selftest@live.html
    - bat-mtlp-6:         [DMESG-FAIL][10] ([i915#10341] / [i915#9500]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-mtlp-6/igt@i915_selftest@live.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-mtlp-6/igt@i915_selftest@live.html
    - bat-dg2-11:         [ABORT][12] ([i915#12133]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-dg2-11/igt@i915_selftest@live.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-dg2-11/igt@i915_selftest@live.html

  * igt@i915_selftest@live@active:
    - bat-dg2-11:         [ABORT][14] ([i915#12305]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-dg2-11/igt@i915_selftest@live@active.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-dg2-11/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-6:         [DMESG-FAIL][16] ([i915#9500]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-arls-5:         [DMESG-WARN][18] ([i915#10341] / [i915#12133]) -> [INCOMPLETE][19] ([i915#10341] / [i915#12133])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-arls-5/igt@i915_selftest@live.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-arls-5/igt@i915_selftest@live.html

  
  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341
  [i915#10886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886
  [i915#11637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637
  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133
  [i915#12292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12292
  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305
  [i915#12310]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12310
  [i915#9413]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
  [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500


Build changes
-------------

  * Linux: CI_DRM_15483 -> Patchwork_139493v4

  CI-20190529: 20190529
  CI_DRM_15483: b147208bee50e8d141c39532f8d2c467b3d1df7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8051: c2efcb5f207eebb0c19106f27b310f61ded6f11d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_139493v4: b147208bee50e8d141c39532f8d2c467b3d1df7f @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/index.html

--===============0913201239292589067==
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
<tr><td><b>Series:</b></td><td>drm/client: Stop using legacy crtc-&gt;mode and a bunch of cleanups (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/139493/">https://patchwork.freedesktop.org/series/139493/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15483 -&gt; Patchwork_139493v4</h1>
<h2>Summary</h2>
<p><strong>WARNING</strong></p>
<p>Minor unknown changes coming with Patchwork_139493v4 need to be verified<br />
  manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_139493v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/index.html</p>
<h2>Participating hosts (43 -&gt; 41)</h2>
<p>Missing    (2): bat-rpls-4 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_139493v4:</p>
<h3>IGT changes</h3>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gem:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-arls-5/igt@i915_selftest@live@gem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11637">i915#11637</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-arls-5/igt@i915_selftest@live@gem.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_139493v4 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-adlp-6/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-adlp-6/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_lrc:</p>
<ul>
<li>bat-adlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-adlp-6/igt@i915_selftest@live@gt_lrc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10886">i915#10886</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413">i915#9413</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>bat-dg2-13:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-dg2-13/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12292">i915#12292</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/fi-hsw-4770/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12310">i915#12310</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/fi-hsw-4770/igt@i915_selftest@live.html">PASS</a> +1 other test pass</li>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-mtlp-6/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-mtlp-6/igt@i915_selftest@live.html">PASS</a></li>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-dg2-11/igt@i915_selftest@live.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-dg2-11/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-dg2-11/igt@i915_selftest@live@active.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12305">i915#12305</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-dg2-11/igt@i915_selftest@live@active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500">i915#9500</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-mtlp-6/igt@i915_selftest@live@gt_mocs.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15483/bat-arls-5/igt@i915_selftest@live.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_139493v4/bat-arls-5/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10341">i915#10341</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12133">i915#12133</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_15483 -&gt; Patchwork_139493v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_15483: b147208bee50e8d141c39532f8d2c467b3d1df7f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8051: c2efcb5f207eebb0c19106f27b310f61ded6f11d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_139493v4: b147208bee50e8d141c39532f8d2c467b3d1df7f @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============0913201239292589067==--
