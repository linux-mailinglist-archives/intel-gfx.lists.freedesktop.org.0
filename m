Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F0346D5505
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 00:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A5F610E05F;
	Mon,  3 Apr 2023 22:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id BE79F10E05F;
 Mon,  3 Apr 2023 22:57:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B9C15AADE3;
 Mon,  3 Apr 2023 22:57:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3568125958066247050=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Mon, 03 Apr 2023 22:57:54 -0000
Message-ID: <168056267475.24310.11046956784898079382@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230403213334.1655239-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230403213334.1655239-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Don=27t_capture_Gen8_regs_on_Gen12_devices?=
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

--===============3568125958066247050==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Don't capture Gen8 regs on Gen12 devices
URL   : https://patchwork.freedesktop.org/series/116051/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12961 -> Patchwork_116051v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_116051v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_116051v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/index.html

Participating hosts (36 -> 36)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (1): fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_116051v1:

### IGT changes ###

#### Possible regressions ####

  * igt@dmabuf@all-tests@dma_fence:
    - fi-glk-j4005:       [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html

  
Known issues
------------

  Here are the changes found in Patchwork_116051v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@sanitycheck:
    - fi-glk-j4005:       [PASS][3] -> [ABORT][4] ([i915#8143])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-2:         [PASS][5] -> [ABORT][6] ([i915#7913] / [i915#7982])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-2/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-2/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         [PASS][7] -> [ABORT][8] ([i915#6687] / [i915#7978])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:
    - bat-dg2-8:          [PASS][9] -> [FAIL][10] ([i915#7932])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html

  * igt@kms_psr@primary_page_flip:
    - fi-pnv-d510:        NOTRUN -> [SKIP][11] ([fdo#109271]) +38 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg2-11:         [FAIL][12] ([i915#8308]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@gt_pm:
    - bat-rpls-2:         [DMESG-FAIL][14] ([i915#4258]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-2/igt@i915_selftest@live@gt_pm.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         [DMESG-FAIL][16] ([i915#6367]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-1/igt@i915_selftest@live@slpc.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7932]: https://gitlab.freedesktop.org/drm/intel/issues/7932
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8143]: https://gitlab.freedesktop.org/drm/intel/issues/8143
  [i915#8308]: https://gitlab.freedesktop.org/drm/intel/issues/8308


Build changes
-------------

  * Linux: CI_DRM_12961 -> Patchwork_116051v1

  CI-20190529: 20190529
  CI_DRM_12961: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7233: 716520b469a2745e1882780f2aabbc88eb19332c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_116051v1: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

89f2ba64d435 drm/i915/guc: Don't capture Gen8 regs on Gen12 devices

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/index.html

--===============3568125958066247050==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Don&#39;t capture Gen8 regs on Gen12 devices</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/116051/">https://patchwork.freedesktop.org/series/116051/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12961 -&gt; Patchwork_116051v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_116051v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_116051v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/index.html</p>
<h2>Participating hosts (36 -&gt; 36)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (1): fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_116051v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@dmabuf@all-tests@dma_fence:<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/fi-glk-j4005/igt@dmabuf@all-tests@dma_fence.html">DMESG-FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_116051v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@sanitycheck:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/fi-glk-j4005/igt@dmabuf@all-tests@sanitycheck.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8143">i915#8143</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-2/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-c-dp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932">i915#7932</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +38 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-dg2-11/igt@i915_pm_rps@basic-api.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8308">i915#8308</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4258">i915#4258</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-2/igt@i915_selftest@live@gt_pm.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12961/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116051v1/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12961 -&gt; Patchwork_116051v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12961: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7233: 716520b469a2745e1882780f2aabbc88eb19332c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_116051v1: 82f1e99798a184af2c21c9c8748f3fba4bdc4556 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>89f2ba64d435 drm/i915/guc: Don't capture Gen8 regs on Gen12 devices</p>

</body>
</html>

--===============3568125958066247050==--
