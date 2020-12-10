Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 121BF2D6936
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 21:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 077D06EB52;
	Thu, 10 Dec 2020 20:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B65EC6EB28;
 Thu, 10 Dec 2020 20:56:29 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A87C6A7DFB;
 Thu, 10 Dec 2020 20:56:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Date: Thu, 10 Dec 2020 20:56:29 -0000
Message-ID: <160763378965.19119.650781200113500980@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201210173545.1508568-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20201210173545.1508568-1-tvrtko.ursulin@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pmu=3A_Stop_peeking_at_kernel_internals_for_counting_inte?=
 =?utf-8?q?rrupts?=
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
Content-Type: multipart/mixed; boundary="===============1129123660=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1129123660==
Content-Type: multipart/alternative;
 boundary="===============7691587737579699212=="

--===============7691587737579699212==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pmu: Stop peeking at kernel internals for counting interrupts
URL   : https://patchwork.freedesktop.org/series/84800/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9472 -> Patchwork_19114
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19114 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19114, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19114:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@ring_submission:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2] +13 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-apl-guc/igt@i915_selftest@live@ring_submission.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-apl-guc/igt@i915_selftest@live@ring_submission.html

  
Known issues
------------

  Here are the changes found in Patchwork_19114 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][3] -> [DMESG-WARN][4] ([i915#1037])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-apl-guc/igt@i915_selftest@live@execlists.html

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - fi-tgl-y:           [PASS][5] -> [DMESG-WARN][6] ([i915#402]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries:
    - fi-tgl-y:           [DMESG-WARN][7] ([i915#402]) -> [PASS][8] +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-tgl-y/igt@debugfs_test@read_all_entries.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-tgl-y/igt@debugfs_test@read_all_entries.html

  
  [i915#1037]: https://gitlab.freedesktop.org/drm/intel/issues/1037
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9472 -> Patchwork_19114

  CI-20190529: 20190529
  CI_DRM_9472: 661399b277bad4b274f9c7dc8ee8a967f5353cb5 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19114: fe77a262404fb4e2128ee608bd14ac219764a669 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

fe77a262404f drm/i915/pmu: Stop peeking at kernel internals for counting interrupts

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/index.html

--===============7691587737579699212==
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
<tr><td><b>Series:</b></td><td>drm/i915/pmu: Stop peeking at kernel internals for counting interrupts</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/84800/">https://patchwork.freedesktop.org/series/84800/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9472 -&gt; Patchwork_19114</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19114 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19114, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19114:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@ring_submission:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-apl-guc/igt@i915_selftest@live@ring_submission.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-apl-guc/igt@i915_selftest@live@ring_submission.html">DMESG-WARN</a> +13 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19114 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-apl-guc/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-apl-guc/igt@i915_selftest@live@execlists.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1037">i915#1037</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-modifier-no-flag:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-tgl-y/igt@kms_addfb_basic@addfb25-modifier-no-flag.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@debugfs_test@read_all_entries:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9472/fi-tgl-y/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19114/fi-tgl-y/igt@debugfs_test@read_all_entries.html">PASS</a> +2 similar issues</li>
</ul>
</li>
</ul>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9472 -&gt; Patchwork_19114</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9472: 661399b277bad4b274f9c7dc8ee8a967f5353cb5 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5888: c79d4e88f4162905da400360b6fa4940122f3a2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19114: fe77a262404fb4e2128ee608bd14ac219764a669 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>fe77a262404f drm/i915/pmu: Stop peeking at kernel internals for counting interrupts</p>

</body>
</html>

--===============7691587737579699212==--

--===============1129123660==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1129123660==--
