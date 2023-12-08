Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7239D80AB92
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 19:04:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEB6310EAEC;
	Fri,  8 Dec 2023 18:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB5CD10EAE7;
 Fri,  8 Dec 2023 18:04:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E45A4AA3D8;
 Fri,  8 Dec 2023 18:04:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5450289478344209545=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EBAT=3A_failure_for_drm/i915/gem=3A_Atomically_?=
 =?utf-8?q?invalidate_userptr_on_mmu-notifier_=28rev7=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jonathan Cavitt" <jonathan.cavitt@intel.com>
Date: Fri, 08 Dec 2023 18:04:19 -0000
Message-ID: <170205865993.7327.2693484259064951920@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
In-Reply-To: <20231128162505.3493942-1-jonathan.cavitt@intel.com>
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

--===============5450289478344209545==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Atomically invalidate userptr on mmu-notifier (rev7)
URL   : https://patchwork.freedesktop.org/series/126998/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_14000 -> Patchwork_126998v7
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_126998v7 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_126998v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/index.html

Participating hosts (35 -> 33)
------------------------------

  Missing    (2): bat-dg2-9 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_126998v7:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-dp6:
    - bat-adlp-11:        [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp6.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp6.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-7:
    - bat-adlp-11:        NOTRUN -> [DMESG-FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-7.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-7:
    - bat-adlp-11:        NOTRUN -> [FAIL][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-7.html

  
Known issues
------------

  Here are the changes found in Patchwork_126998v7 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:
    - bat-adlp-11:        [PASS][5] -> [FAIL][6] ([i915#6121]) +1 other test fail
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-5:
    - bat-adlp-11:        [PASS][7] -> [ABORT][8] ([i915#8668])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-5.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-5.html

  
  [i915#6121]: https://gitlab.freedesktop.org/drm/intel/issues/6121
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_14000 -> Patchwork_126998v7

  CI-20190529: 20190529
  CI_DRM_14000: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7629: 1dd73105a01e092da7954f9552ec0c67ed8a9f4e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126998v7: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ca02a6b3ed11 drm/i915/gem: Atomically invalidate userptr on mmu-notifier

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/index.html

--===============5450289478344209545==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Atomically invalidate userptr on mmu-notifier (rev7)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126998/">https://patchwork.freedesktop.org/series/126998/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14000 -&gt; Patchwork_126998v7</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_126998v7 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_126998v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/index.html</p>
<h2>Participating hosts (35 -&gt; 33)</h2>
<p>Missing    (2): bat-dg2-9 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_126998v7:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@b-dp6.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-7:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-dp-7.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-7:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-dp-7.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126998v7 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6121">i915#6121</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-5:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14000/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126998v7/bat-adlp-11/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-5.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14000 -&gt; Patchwork_126998v7</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14000: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7629: 1dd73105a01e092da7954f9552ec0c67ed8a9f4e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126998v7: 49f3163775ad99ba15de59607435e367328329fa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ca02a6b3ed11 drm/i915/gem: Atomically invalidate userptr on mmu-notifier</p>

</body>
</html>

--===============5450289478344209545==--
