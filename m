Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D688DB5B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 11:38:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6A9C10E918;
	Wed, 27 Mar 2024 10:38:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5340D10E918;
 Wed, 27 Mar 2024 10:38:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4298254917625245774=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gt=3A_Report_full_?=
 =?utf-8?q?vm_address_range_=28rev5=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Mar 2024 10:38:19 -0000
Message-ID: <171153589934.1055670.16649888814988906657@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240321151726.207866-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240321151726.207866-1-andi.shyti@linux.intel.com>
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

--===============4298254917625245774==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Report full vm address range (rev5)
URL   : https://patchwork.freedesktop.org/series/131095/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14489 -> Patchwork_131095v5
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_131095v5 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_131095v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/index.html

Participating hosts (38 -> 35)
------------------------------

  Additional (1): fi-blb-e6850 
  Missing    (4): bat-arls-4 bat-kbl-2 fi-bsw-nick fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_131095v5:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@busy@all-engines:
    - fi-blb-e6850:       NOTRUN -> [ABORT][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-blb-e6850/igt@gem_busy@busy@all-engines.html
    - fi-pnv-d510:        [PASS][2] -> [ABORT][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-pnv-d510/igt@gem_busy@busy@all-engines.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-pnv-d510/igt@gem_busy@busy@all-engines.html
    - fi-ivb-3770:        [PASS][4] -> [ABORT][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-ivb-3770/igt@gem_busy@busy@all-engines.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-ivb-3770/igt@gem_busy@busy@all-engines.html
    - fi-elk-e7500:       [PASS][6] -> [ABORT][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-elk-e7500/igt@gem_busy@busy@all-engines.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-elk-e7500/igt@gem_busy@busy@all-engines.html
    - fi-ilk-650:         [PASS][8] -> [ABORT][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-ilk-650/igt@gem_busy@busy@all-engines.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-ilk-650/igt@gem_busy@busy@all-engines.html

  * igt@gem_softpin@allocator-basic:
    - bat-dg2-14:         [PASS][10] -> [FAIL][11] +3 other tests fail
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@gem_softpin@allocator-basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-14/igt@gem_softpin@allocator-basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - bat-atsm-1:         [PASS][12] -> [FAIL][13] +2 other tests fail
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-9:          [PASS][14] -> [FAIL][15] +2 other tests fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html
    - bat-dg2-8:          [PASS][16] -> [FAIL][17] +2 other tests fail
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html

  
Known issues
------------

  Here are the changes found in Patchwork_131095v5 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - fi-blb-e6850:       NOTRUN -> [SKIP][18]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-blb-e6850/igt@debugfs_test@basic-hwmon.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@ring_submission:
    - bat-dg2-14:         [ABORT][19] ([i915#10366]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@i915_selftest@live@ring_submission.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-14/igt@i915_selftest@live@ring_submission.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366


Build changes
-------------

  * Linux: CI_DRM_14489 -> Patchwork_131095v5

  CI-20190529: 20190529
  CI_DRM_14489: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7785: 7785
  Patchwork_131095v5: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

65268abd84f6 drm/i915/gt: Report full vm address range

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/index.html

--===============4298254917625245774==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Report full vm address range (rev5)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/131095/">https://patchwork.freedesktop.org/series/131095/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14489 -&gt; Patchwork_131095v5</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_131095v5 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_131095v5, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/index.html</p>
<h2>Participating hosts (38 -&gt; 35)</h2>
<p>Additional (1): fi-blb-e6850 <br />
  Missing    (4): bat-arls-4 bat-kbl-2 fi-bsw-nick fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_131095v5:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_busy@busy@all-engines:</p>
<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-blb-e6850/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-pnv-d510/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-pnv-d510/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-ivb-3770/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-ivb-3770/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-elk-e7500/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-elk-e7500/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/fi-ilk-650/igt@gem_busy@busy@all-engines.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-ilk-650/igt@gem_busy@busy@all-engines.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic:</p>
<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@gem_softpin@allocator-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-14/igt@gem_softpin@allocator-basic.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-atsm-1/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-9/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-8/igt@gem_softpin@allocator-basic-reserve.html">FAIL</a> +2 other tests fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_131095v5 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@debugfs_test@basic-hwmon:<ul>
<li>fi-blb-e6850:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/fi-blb-e6850/igt@debugfs_test@basic-hwmon.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14489/bat-dg2-14/igt@i915_selftest@live@ring_submission.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131095v5/bat-dg2-14/igt@i915_selftest@live@ring_submission.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14489 -&gt; Patchwork_131095v5</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14489: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7785: 7785<br />
  Patchwork_131095v5: f9c56f1a03b5c35488671e4ffe61e28b12ffe163 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>65268abd84f6 drm/i915/gt: Report full vm address range</p>

</body>
</html>

--===============4298254917625245774==--
