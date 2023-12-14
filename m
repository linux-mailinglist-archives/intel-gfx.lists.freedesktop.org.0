Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B51F8123EB
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 01:31:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD2510E8A2;
	Thu, 14 Dec 2023 00:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B35DA10E8A2;
 Thu, 14 Dec 2023 00:31:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9A813AADDA;
 Thu, 14 Dec 2023 00:31:40 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3242137919633263043=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_series_starting_with_=5Bv4?=
 =?utf-8?q?=2C1/3=5D_drm/i915/dp=3A_Use_LINK=5FQUAL=5FPATTERN=5F*_Phy_test_p?=
 =?utf-8?q?attern_names?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Khaled Almahallawy" <khaled.almahallawy@intel.com>
Date: Thu, 14 Dec 2023 00:31:40 -0000
Message-ID: <170251390060.19958.14998077756732750506@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
In-Reply-To: <20231213211542.3585105-1-khaled.almahallawy@intel.com>
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

--===============3242137919633263043==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v4,1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names
URL   : https://patchwork.freedesktop.org/series/127768/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14017 -> Patchwork_127768v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/index.html

Participating hosts (37 -> 35)
------------------------------

  Additional (1): bat-kbl-2 
  Missing    (3): bat-mtlp-8 bat-adlp-6 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_127768v1:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2:
    - {bat-rpls-3}:       [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-rpls-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-rpls-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_127768v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@info:
    - bat-kbl-2:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1849])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-kbl-2/igt@fbdev@info.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-kbl-2:          NOTRUN -> [SKIP][4] ([fdo#109271]) +36 other tests skip
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [PASS][5] -> [ABORT][6] ([i915#8668])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981


Build changes
-------------

  * Linux: CI_DRM_14017 -> Patchwork_127768v1

  CI-20190529: 20190529
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_127768v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

420a21cb0684 drm/i915/dp: Fix passing the correct DPCD_REV for drm_dp_set_phy_test_pattern
85e2186501b4 drm/i915/dp: Add TPS4 PHY test pattern support
adaa7fbf6e09 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/index.html

--===============3242137919633263043==
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
<tr><td><b>Series:</b></td><td>series starting with [v4,1/3] drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/127768/">https://patchwork.freedesktop.org/series/127768/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14017 -&gt; Patchwork_127768v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/index.html</p>
<h2>Participating hosts (37 -&gt; 35)</h2>
<p>Additional (1): bat-kbl-2 <br />
  Missing    (3): bat-mtlp-8 bat-adlp-6 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_127768v1:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2:<ul>
<li>{bat-rpls-3}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-rpls-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-rpls-3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-2.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_127768v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-kbl-2/igt@fbdev@info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1849">i915#1849</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-kbl-2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-kbl-2/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14017/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127768v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14017 -&gt; Patchwork_127768v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14017: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7639: 18afc09e362b605a3c88c000331708f105d2c23a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_127768v1: 58ac4ffc75b62e6007e85ae6777820e77c113b01 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>420a21cb0684 drm/i915/dp: Fix passing the correct DPCD_REV for drm_dp_set_phy_test_pattern<br />
85e2186501b4 drm/i915/dp: Add TPS4 PHY test pattern support<br />
adaa7fbf6e09 drm/i915/dp: Use LINK_QUAL_PATTERN_* Phy test pattern names</p>

</body>
</html>

--===============3242137919633263043==--
