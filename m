Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF3C06FE868
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 02:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0378310E579;
	Thu, 11 May 2023 00:16:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E094610E578;
 Thu, 11 May 2023 00:16:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D7CC6A73C7;
 Thu, 11 May 2023 00:16:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8687782708834471406=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Date: Thu, 11 May 2023 00:16:19 -0000
Message-ID: <168376417984.29010.9658581854461034057@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
In-Reply-To: <20230510174550.986965-1-alan.previn.teres.alexis@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Add_MTL_PXP_Support_=28rev10=29?=
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

--===============8687782708834471406==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Add MTL PXP Support (rev10)
URL   : https://patchwork.freedesktop.org/series/112647/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13131 -> Patchwork_112647v10
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112647v10 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112647v10, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/index.html

Participating hosts (40 -> 40)
------------------------------

  Additional (1): bat-mtlp-6 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112647v10:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - fi-apl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] +5 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@kms_frontbuffer_tracking@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_psr@cursor_plane_move:
    - fi-kbl-soraka:      [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html

  
Known issues
------------

  Here are the changes found in Patchwork_112647v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [PASS][7] -> [DMESG-WARN][8] ([i915#62] / [i915#7634]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - bat-jsl-3:          [PASS][9] -> [ABORT][10] ([i915#5122])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@i915_module_load@reload:
    - fi-apl-guc:         [PASS][11] -> [DMESG-WARN][12] ([i915#62] / [i915#7634] / [i915#8189])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@i915_module_load@reload.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@module-reload:
    - fi-apl-guc:         [PASS][13] -> [DMESG-WARN][14] ([i915#1982] / [i915#62] / [i915#7634])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@i915_pm_rpm@module-reload.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][15] -> [DMESG-FAIL][16] ([i915#5334] / [i915#7872])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@reset:
    - fi-apl-guc:         [PASS][17] -> [DMESG-WARN][18] ([i915#7634]) +33 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@i915_selftest@live@reset.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@i915_selftest@live@reset.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-jsl-3:          [PASS][19] -> [FAIL][20] ([fdo#103375])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-apl-guc:         [PASS][21] -> [DMESG-FAIL][22] ([i915#62])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:
    - fi-apl-guc:         [PASS][23] -> [DMESG-WARN][24] ([i915#1982] / [i915#62])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
    - fi-apl-guc:         [PASS][25] -> [DMESG-WARN][26] ([i915#62]) +19 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][27] ([i915#1845] / [i915#5354]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
    - bat-adlp-9:         NOTRUN -> [SKIP][28] ([i915#3546]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - fi-kbl-7567u:       [DMESG-FAIL][29] -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html

  * igt@dmabuf@all-tests@sanitycheck:
    - fi-kbl-7567u:       [ABORT][31] -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_hangman@error-state-basic:
    - fi-kbl-soraka:      [INCOMPLETE][33] -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][35] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/bat-mtlp-8/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][37] ([i915#4983] / [i915#7461] / [i915#7953] / [i915#7981] / [i915#8347] / [i915#8384]) -> [ABORT][38] ([i915#4983] / [i915#7461] / [i915#7953] / [i915#8347] / [i915#8384])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13131/bat-rpls-1/igt@i915_selftest@live@reset.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/bat-rpls-1/igt@i915_selftest@live@reset.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
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
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7634]: https://gitlab.freedesktop.org/drm/intel/issues/7634
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7981]: https://gitlab.freedesktop.org/drm/intel/issues/7981
  [i915#8189]: https://gitlab.freedesktop.org/drm/intel/issues/8189
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8368]: https://gitlab.freedesktop.org/drm/intel/issues/8368
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13131 -> Patchwork_112647v10

  CI-20190529: 20190529
  CI_DRM_13131: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112647v10: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

409a11d2dc91 drm/i915/pxp: Enable PXP with MTL-GSC-CS
e1a96b3b8c81 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee component
cace8307789e drm/i915/uapi/pxp: Add a GET_PARAM for PXP
7e0fbcd5ac8a drm/i915/pxp: Add ARB session creation and cleanup
86afd78ea567 drm/i915/pxp: Add GSC-CS backend to send GSC fw messages
5e099f033658 drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC
201b621f2bd9 drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation
47b04ffb6521 drm/i915/pxp: Add GSC-CS back-end resource init and cleanup

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/index.html

--===============8687782708834471406==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable


<!DOCTYPE html>
<html xmlns=3D"http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-8"/>
  <title>Project List - Patchwork</title>
  <style id=3D"css-table-select" type=3D"text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Add MTL PXP Support (rev10)</t=
d></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/112647/">https://patchwork.freedesktop.org/series/112647/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_112647v10/index.html">https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_112647v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13131 -&gt; Patchwork_112647v10</h=
1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112647v10 absolutely need =
to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_112647v10, please notify your bug team to allow t=
hem<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v=
10/index.html</p>
<h2>Participating hosts (40 -&gt; 40)</h2>
<p>Additional (1): bat-mtlp-6 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
112647v10:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
12647v10/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">DMESG-FA=
IL</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@kms_frontbuffer_tracking@basic.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v=
10/fi-apl-guc/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> +5 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-kbl-soraka:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10=
/fi-kbl-soraka/igt@kms_psr@cursor_plane_move.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112647v10 that come from known i=
ssues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10=
/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>bat-jsl-3:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v1=
0/bat-jsl-3/igt@gem_exec_suspend@basic-s0@smem.html">ABORT</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5122">i915#5122</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@i915_module_load@reload.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-a=
pl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8189">i915#8189</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi=
-apl-guc/igt@i915_pm_rpm@module-reload.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915#62</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112=
647v10/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5=
334</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7872">=
i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@i915_selftest@live@reset.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647v10/fi-=
apl-guc/igt@i915_selftest@live@reset.html">DMESG-WARN</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/7634">i915#7634</a>) +33 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-jsl-3:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1126=
47v10/bat-jsl-3/igt@i915_suspend@basic-s3-without-i915.html">FAIL</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
12647v10/fi-apl-guc/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/62">i915=
#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_112647v10/fi-apl-guc/igt@kms_flip@basic-flip-vs-wf_vblank@a-dp1.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/62">i915#62</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:</p>
<ul>
<li>fi-apl-guc:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_112647v10/fi-apl-guc/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-=
1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/62">i915#62</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112647v10/bat-dg2-11/igt@kms_pipe_crc_basic@nonbloc=
king-crc-frame-sequence.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/1845">i915#1845</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence:</p>
<ul>
<li>bat-adlp-9:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112647v10/bat-adlp-9/igt@kms_pipe_crc_basic@read-cr=
c-frame-sequence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence:</p>
<ul>
<li>fi-kbl-7567u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112=
647v10/fi-kbl-7567u/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112647=
v10/fi-kbl-7567u/igt@dmabuf@all-tests@sanitycheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>fi-kbl-soraka:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">INCOMP=
LETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_112647v10/fi-kbl-soraka/igt@i915_hangman@error-state-basic.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#=
7920</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7953"=
>i915#7953</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_112647v10/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@reset:<ul>
<li>bat-rpls-1:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13131/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#746=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7953">i9=
15#7953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79=
81">i915#7981</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/8347">i915#8347</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8384">i915#8384</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_112647v10/bat-rpls-1/igt@i915_selftest@live@reset.h=
tml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4983">i915#4983</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7461">i915#7461</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/7953">i915#7953</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/8347">i915#8347</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/8384">i915#8384</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13131 -&gt; Patchwork_112647v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13131: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7285: d1cbf2bad9c2664ab8bd3bd0946510a52800912f @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112647v10: 92b7f1c42fc99ff1bad5e18d6b1aaa585f134d47 @ git://ano=
ngit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>409a11d2dc91 drm/i915/pxp: Enable PXP with MTL-GSC-CS<br />
e1a96b3b8c81 drm/i915/pxp: On MTL, KCR enabling doesn't wait on tee compone=
nt<br />
cace8307789e drm/i915/uapi/pxp: Add a GET_PARAM for PXP<br />
7e0fbcd5ac8a drm/i915/pxp: Add ARB session creation and cleanup<br />
86afd78ea567 drm/i915/pxp: Add GSC-CS backend to send GSC fw messages<br />
5e099f033658 drm/i915/pxp: Add MTL helpers to submit Heci-Cmd-Packet to GSC=
<br />
201b621f2bd9 drm/i915/pxp: Add MTL hw-plumbing enabling for KCR operation<b=
r />
47b04ffb6521 drm/i915/pxp: Add GSC-CS back-end resource init and cleanup</p>

</body>
</html>

--===============8687782708834471406==--
