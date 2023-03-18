Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFA56BFD0A
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Mar 2023 23:32:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8A0110E04E;
	Sat, 18 Mar 2023 22:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C367310E04E;
 Sat, 18 Mar 2023 22:32:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B94A6A0169;
 Sat, 18 Mar 2023 22:32:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2850494569930926686=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Sat, 18 Mar 2023 22:32:49 -0000
Message-ID: <167917876972.6191.13531774070163746419@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230318203616.183765-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230318203616.183765-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgU29t?=
 =?utf-8?q?e_debugfs_refactoring_and_improvements_=28rev3=29?=
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

--===============2850494569930926686==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Some debugfs refactoring and improvements (rev3)
URL   : https://patchwork.freedesktop.org/series/114510/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12879 -> Patchwork_114510v3
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_114510v3 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_114510v3, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/index.html

Participating hosts (35 -> 35)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_114510v3:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@gt_mocs:
    - bat-dg2-11:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html

  
Known issues
------------

  Here are the changes found in Patchwork_114510v3 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#7913])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-kbl-soraka:      [PASS][5] -> [DMESG-FAIL][6] ([i915#5334] / [i915#7872])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@late_gt_pm:
    - fi-glk-j4005:       [PASS][7] -> [ABORT][8] ([i915#6217])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-1:         NOTRUN -> [DMESG-FAIL][9] ([i915#6367] / [i915#6997])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-adln-1:         [PASS][10] -> [DMESG-WARN][11] ([i915#2867])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - bat-rpls-1:         NOTRUN -> [SKIP][12] ([i915#7828])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][13] ([i915#5354]) +2 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - bat-rpls-1:         NOTRUN -> [SKIP][14] ([i915#1845])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html

  
#### Possible fixes ####

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          [SKIP][15] ([i915#6621]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg1-7/igt@i915_pm_rps@basic-api.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-adlp-9:         [SKIP][17] ([i915#6621]) -> [PASS][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adlp-9/igt@i915_pm_rps@basic-api.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adlp-9/igt@i915_pm_rps@basic-api.html
    - bat-rplp-1:         [SKIP][19] ([i915#6621]) -> [PASS][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-rplp-1/igt@i915_pm_rps@basic-api.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html
    - bat-dg1-5:          [SKIP][21] ([i915#6621]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg1-5/igt@i915_pm_rps@basic-api.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg1-5/igt@i915_pm_rps@basic-api.html
    - bat-dg2-9:          [SKIP][23] ([i915#6621]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-9/igt@i915_pm_rps@basic-api.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-9/igt@i915_pm_rps@basic-api.html
    - bat-dg2-11:         [SKIP][25] ([i915#6621]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-11/igt@i915_pm_rps@basic-api.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-11/igt@i915_pm_rps@basic-api.html
    - bat-adln-1:         [SKIP][27] ([i915#6621]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adln-1/igt@i915_pm_rps@basic-api.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adln-1/igt@i915_pm_rps@basic-api.html
    - bat-dg2-8:          [SKIP][29] ([i915#6621]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-8/igt@i915_pm_rps@basic-api.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html
    - bat-rpls-1:         [SKIP][31] ([i915#6621]) -> [PASS][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-rpls-1/igt@i915_pm_rps@basic-api.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live@requests:
    - bat-rpls-1:         [ABORT][33] ([i915#7911]) -> [PASS][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-rpls-1/igt@i915_selftest@live@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@i915_selftest@live@requests.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:
    - bat-adlp-9:         [DMESG-WARN][35] ([i915#2867]) -> [PASS][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adlp-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adlp-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [INCOMPLETE][37] ([i915#6972] / [i915#7913]) -> [ABORT][38] ([i915#7911] / [i915#7913])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6217]: https://gitlab.freedesktop.org/drm/intel/issues/6217
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6972]: https://gitlab.freedesktop.org/drm/intel/issues/6972
  [i915#6997]: https://gitlab.freedesktop.org/drm/intel/issues/6997
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7872]: https://gitlab.freedesktop.org/drm/intel/issues/7872
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913


Build changes
-------------

  * Linux: CI_DRM_12879 -> Patchwork_114510v3

  CI-20190529: 20190529
  CI_DRM_12879: b101ddfdc98728b7ea5c8f9f6cbac5a5e5d64572 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7205: 0d4bf61a38c7751cf7c92751c4bb64f95c9ffbe2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_114510v3: b101ddfdc98728b7ea5c8f9f6cbac5a5e5d64572 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

4346629fc90a drm/i915/debugfs: Enable upper layer interfaces to act on all gt's
cc38f00f757c drm/i915/gt: Create per-gt debugfs files

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/index.html

--===============2850494569930926686==
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
<tr><td><b>Series:</b></td><td>Some debugfs refactoring and improvements (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/114510/">https://patchwork.freedesktop.org/series/114510/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12879 -&gt; Patchwork_114510v3</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_114510v3 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_114510v3, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/index.html</p>
<h2>Participating hosts (35 -&gt; 35)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_114510v3:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@gt_mocs:<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-11/igt@i915_selftest@live@gt_mocs.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_114510v3 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-kbl-soraka/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7872">i915#7872</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@late_gt_pm:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-glk-j4005/igt@i915_selftest@live@late_gt_pm.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6217">i915#6217</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6997">i915#6997</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adln-1/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@kms_pipe_crc_basic@suspend-read-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>
<p>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg1-7/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adlp-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adlp-9/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-rplp-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rplp-1/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg1-5/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg1-5/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-9/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-9/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-11/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-11/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-adln-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adln-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adln-1/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-dg2-8/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-dg2-8/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-rpls-1/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@i915_pm_rps@basic-api.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-rpls-1/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-rpls-1/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1:</p>
<ul>
<li>bat-adlp-9:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/bat-adlp-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/bat-adlp-9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-c-dp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@execlists:<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12879/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6972">i915#6972</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114510v3/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12879 -&gt; Patchwork_114510v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12879: b101ddfdc98728b7ea5c8f9f6cbac5a5e5d64572 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7205: 0d4bf61a38c7751cf7c92751c4bb64f95c9ffbe2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_114510v3: b101ddfdc98728b7ea5c8f9f6cbac5a5e5d64572 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>4346629fc90a drm/i915/debugfs: Enable upper layer interfaces to act on all gt's<br />
cc38f00f757c drm/i915/gt: Create per-gt debugfs files</p>

</body>
</html>

--===============2850494569930926686==--
