Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD415885794
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Mar 2024 11:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154BB10E631;
	Thu, 21 Mar 2024 10:41:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D8710E631;
 Thu, 21 Mar 2024 10:41:50 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3483848282128769793=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/edid_=26_drm/display_he?=
 =?utf-8?q?ader_spring_cleaning?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Mar 2024 10:41:50 -0000
Message-ID: <171101771034.939783.2232089410319784146@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <cover.1711014272.git.jani.nikula@intel.com>
In-Reply-To: <cover.1711014272.git.jani.nikula@intel.com>
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

--===============3483848282128769793==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/edid & drm/display header spring cleaning
URL   : https://patchwork.freedesktop.org/series/131412/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14461 -> Patchwork_131412v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131412v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131412v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/index.html

Participating hosts (40 -> 38)
------------------------------

  Additional (1): fi-glk-j4005 
  Missing    (3): bat-kbl-2 fi-snb-2520m fi-kbl-8809g 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131412v1:

### CI changes ###

#### Possible regressions ####

  * boot:
    - bat-dg2-11:         [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-dg2-11/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-dg2-11/boot.html

  
Known issues
------------

  Here are the changes found in Patchwork_131412v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-j4005:       NOTRUN -> [SKIP][3] ([i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@basic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][5] -> [ABORT][6] ([i915#9662])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-adln-1:         [PASS][7] -> [INCOMPLETE][8] ([i915#10072])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-adln-1/igt@i915_selftest@live@gt_mocs.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-adln-1/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - bat-rpls-3:         [PASS][9] -> [DMESG-WARN][10] ([i915#5591])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-rpls-3/igt@i915_selftest@live@hangcheck.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@hugepages:
    - bat-dg2-14:         [PASS][11] -> [ABORT][12] ([i915#10366])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-dg2-14/igt@i915_selftest@live@hugepages.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-dg2-14/igt@i915_selftest@live@hugepages.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-glk-j4005:       NOTRUN -> [SKIP][13] +10 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - bat-adls-6:         [DMESG-WARN][14] ([i915#5591]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-adls-6/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html

  
  [i915#10072]: https://gitlab.freedesktop.org/drm/intel/issues/10072
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
  [i915#9662]: https://gitlab.freedesktop.org/drm/intel/issues/9662


Build changes
-------------

  * Linux: CI_DRM_14461 -> Patchwork_131412v1

  CI-20190529: 20190529
  CI_DRM_14461: 971a18d8ed1d2022dcd268b5bb27b54bf450baa2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7773: 7773
  Patchwork_131412v1: 971a18d8ed1d2022dcd268b5bb27b54bf450baa2 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

15b2dc6aa152 drm/edid: group struct drm_edid based declarations together
571bcce8ff80 drm/edid: move all internal declarations to drm_crtc_internal.h
6df5ef98d838 drm/displayid: move drm_displayid.h to drm_displayd_internal.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/index.html

--===============3483848282128769793==
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
<tr><td><b>Series:</b></td><td>drm/edid &amp; drm/display header spring cleaning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131412/">https://patchwork.freedesktop.org/series/131412/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14461 -&gt; Patchwork_131412v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131412v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131412v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/index.html</p>
<h2>Participating hosts (40 -&gt; 38)</h2>
<p>Additional (1): fi-glk-j4005 <br />
  Missing    (3): bat-kbl-2 fi-snb-2520m fi-kbl-8809g </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131412v1:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-dg2-11/boot.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-dg2-11/boot.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131412v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-glk-j4005/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9662">i915#9662</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-adln-1/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-adln-1/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10072">i915#10072</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-rpls-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-rpls-3/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hugepages:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-dg2-14/igt@i915_selftest@live@hugepages.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-dg2-14/igt@i915_selftest@live@hugepages.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> +10 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>bat-adls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14461/bat-adls-6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5591">i915#5591</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131412v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14461 -&gt; Patchwork_131412v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14461: 971a18d8ed1d2022dcd268b5bb27b54bf450baa2 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7773: 7773<br />
  Patchwork_131412v1: 971a18d8ed1d2022dcd268b5bb27b54bf450baa2 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>15b2dc6aa152 drm/edid: group struct drm_edid based declarations together<br />
571bcce8ff80 drm/edid: move all internal declarations to drm_crtc_internal.h<br />
6df5ef98d838 drm/displayid: move drm_displayid.h to drm_displayd_internal.h</p>

</body>
</html>

--===============3483848282128769793==--
