Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C72C6712D81
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 21:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20C3310E069;
	Fri, 26 May 2023 19:30:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AB5510E069;
 Fri, 26 May 2023 19:30:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6504FAADD5;
 Fri, 26 May 2023 19:30:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0302937499664325466=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Fri, 26 May 2023 19:30:20 -0000
Message-ID: <168512942040.32386.3915004804064916028@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1685119006.git.jani.nikula@intel.com>
In-Reply-To: <cover.1685119006.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_re-enable_-Wunused-but-set-variable_=28rev2=29?=
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

--===============0302937499664325466==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: re-enable -Wunused-but-set-variable (rev2)
URL   : https://patchwork.freedesktop.org/series/118439/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13196 -> Patchwork_118439v2
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_118439v2 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_118439v2, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/index.html

Participating hosts (39 -> 37)
------------------------------

  Additional (1): bat-mtlp-6 
  Missing    (3): fi-kbl-soraka bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_118439v2:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_suspend@basic-s3@smem:
    - fi-kbl-7567u:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13196/fi-kbl-7567u/igt@gem_exec_suspend@basic-s3@smem.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/fi-kbl-7567u/igt@gem_exec_suspend@basic-s3@smem.html

  
Known issues
------------

  Here are the changes found in Patchwork_118439v2 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_pipe_crc_basic@read-crc:
    - bat-adlp-9:         NOTRUN -> [SKIP][3] ([i915#3546]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#6]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/6
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3595]: https://gitlab.freedesktop.org/drm/intel/issues/3595
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
  [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497


Build changes
-------------

  * Linux: CI_DRM_13196 -> Patchwork_118439v2

  CI-20190529: 20190529
  CI_DRM_13196: 9e0c716f834ec17dbf96c47c8b5a2b32c4f483cd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7307: f0714273cd896c637759b3790f485308c4c97008 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_118439v2: 9e0c716f834ec17dbf96c47c8b5a2b32c4f483cd @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

3ef9c8c74ec9 drm/i915: re-enable -Wunused-but-set-variable
9b1a4adb1b4e drm/i915/gvt: annotate maybe unused gma_bottom variables
8b28c0135913 drm/i915: annotate maybe unused but set intel_crtc_state variables
1caf639aaf5b drm/i915: annotate maybe unused but set intel_plane_state variables
e8eaaab78575 drm/i915/selftest: annotate maybe unused but set variable unused
490b1b022a65 drm/i915/gem: annotate maybe unused but set variable c
bb8796b1c2d0 drm/i915/gem: drop unused but set variable unpinned
ff36790f4842 drm/i915/gt/uc: drop unused but set variable sseu
ffc92a428946 drm/i915/irq: drop unused but set variable tmp
a8ccf96d01b8 drm/i915/fb: drop unused but set variable cpp
74b50481ad7a drm/i915/dpll: drop unused but set variables bestn and bestm1
1c18cd00d3a1 drm/i915/dsi: drop unused but set variable vbp
00848cc2cce8 drm/i915/dsi: drop unused but set variable data
acf88ad05a5f drm/i915/ddi: drop unused but set variable intel_dp
1a721d3357cb drm/i915/plane: warn on non-zero plane offset

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/index.html

--===============0302937499664325466==
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
<tr><td><b>Series:</b></td><td>drm/i915: re-enable -Wunused-but-set-variable (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/118439/">https://patchwork.freedesktop.org/series/118439/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13196 -&gt; Patchwork_118439v2</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_118439v2 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_118439v2, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/index.html</p>
<h2>Participating hosts (39 -&gt; 37)</h2>
<p>Additional (1): bat-mtlp-6 <br />
  Missing    (3): fi-kbl-soraka bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_118439v2:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3@smem:<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13196/fi-kbl-7567u/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/fi-kbl-7567u/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_118439v2 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@kms_pipe_crc_basic@read-crc:<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_118439v2/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13196 -&gt; Patchwork_118439v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13196: 9e0c716f834ec17dbf96c47c8b5a2b32c4f483cd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7307: f0714273cd896c637759b3790f485308c4c97008 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_118439v2: 9e0c716f834ec17dbf96c47c8b5a2b32c4f483cd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>3ef9c8c74ec9 drm/i915: re-enable -Wunused-but-set-variable<br />
9b1a4adb1b4e drm/i915/gvt: annotate maybe unused gma_bottom variables<br />
8b28c0135913 drm/i915: annotate maybe unused but set intel_crtc_state variables<br />
1caf639aaf5b drm/i915: annotate maybe unused but set intel_plane_state variables<br />
e8eaaab78575 drm/i915/selftest: annotate maybe unused but set variable unused<br />
490b1b022a65 drm/i915/gem: annotate maybe unused but set variable c<br />
bb8796b1c2d0 drm/i915/gem: drop unused but set variable unpinned<br />
ff36790f4842 drm/i915/gt/uc: drop unused but set variable sseu<br />
ffc92a428946 drm/i915/irq: drop unused but set variable tmp<br />
a8ccf96d01b8 drm/i915/fb: drop unused but set variable cpp<br />
74b50481ad7a drm/i915/dpll: drop unused but set variables bestn and bestm1<br />
1c18cd00d3a1 drm/i915/dsi: drop unused but set variable vbp<br />
00848cc2cce8 drm/i915/dsi: drop unused but set variable data<br />
acf88ad05a5f drm/i915/ddi: drop unused but set variable intel_dp<br />
1a721d3357cb drm/i915/plane: warn on non-zero plane offset</p>

</body>
</html>

--===============0302937499664325466==--
