Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED93764B547
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Dec 2022 13:38:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEA510E1B8;
	Tue, 13 Dec 2022 12:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FD5710E1B8;
 Tue, 13 Dec 2022 12:38:12 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97D68A882E;
 Tue, 13 Dec 2022 12:38:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6541017302613000053=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Tue, 13 Dec 2022 12:38:12 -0000
Message-ID: <167093509258.25536.10145346417484136453@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221213120010.5857-1-nirmoy.das@intel.com>
In-Reply-To: <20221213120010.5857-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Remove_hardcoded_value_with_a_macro?=
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

--===============6541017302613000053==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/selftests: Remove hardcoded value with a macro
URL   : https://patchwork.freedesktop.org/series/111891/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12501 -> Patchwork_111891v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_111891v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_111891v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html

Participating hosts (38 -> 19)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_111891v1 prevented too many machines from booting.

  Additional (1): fi-skl-guc 
  Missing    (20): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bwr-2160 bat-adln-1 bat-atsm-1 bat-jsl-3 bat-rplp-1 bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-adlp-4 

Known issues
------------

  Here are the changes found in Patchwork_111891v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - fi-skl-guc:         NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#4613]) +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html

  * igt@i915_suspend@basic-s3-without-i915:
    - fi-rkl-11600:       [PASS][2] -> [INCOMPLETE][3] ([i915#4817])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][4] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-guc:         NOTRUN -> [SKIP][5] ([fdo#109271]) +9 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Possible fixes ####

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [FAIL][6] ([i915#7229]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229


Build changes
-------------

  * Linux: CI_DRM_12501 -> Patchwork_111891v1

  CI-20190529: 20190529
  CI_DRM_12501: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_111891v1: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

eaf43d121582 drm/i915/selftests: Remove hardcoded value with a macro

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html

--===============6541017302613000053==
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
<tr><td><b>Series:</b></td><td>drm/i915/selftests: Remove hardcoded value with a macro</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/111891/">https://patchwork.freedesktop.org/series/111891/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12501 -&gt; Patchwork_111891v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_111891v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_111891v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/index.html</p>
<h2>Participating hosts (38 -&gt; 19)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_111891v1 prevented too many machines from booting.</p>
<p>Additional (1): fi-skl-guc <br />
  Missing    (20): fi-kbl-soraka bat-dg1-6 bat-dg1-5 bat-adlp-6 fi-skl-6600u fi-bsw-n3050 bat-dg2-8 bat-adlm-1 bat-dg2-9 fi-bwr-2160 bat-adln-1 bat-atsm-1 bat-jsl-3 bat-rplp-1 bat-dg2-11 fi-bsw-nick bat-dg1-7 bat-kbl-2 bat-adlp-9 bat-adlp-4 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_111891v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@gem_lmem_swapping@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-rkl-11600/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-skl-guc/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +9 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_gttfill@basic:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12501/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_111891v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12501 -&gt; Patchwork_111891v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12501: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7091: b8015f920c9f469d3733854263cb878373c1df51 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_111891v1: 1b38b5a419ab3d838b6ac95d22f1fe057fc8889d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>eaf43d121582 drm/i915/selftests: Remove hardcoded value with a macro</p>

</body>
</html>

--===============6541017302613000053==--
