Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCCFD665BA3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 13:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1518D10E71B;
	Wed, 11 Jan 2023 12:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 79EBE10E71B;
 Wed, 11 Jan 2023 12:41:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5D42EAADD2;
 Wed, 11 Jan 2023 12:41:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5287653735529070939=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Date: Wed, 11 Jan 2023 12:41:43 -0000
Message-ID: <167344090335.20084.13733469959354780567@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230111104447.338136-1-andi.shyti@linux.intel.com>
In-Reply-To: <20230111104447.338136-1-andi.shyti@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pcode=3A_Wait_10_seconds_for_pcode_to_settle?=
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

--===============5287653735529070939==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pcode: Wait 10 seconds for pcode to settle
URL   : https://patchwork.freedesktop.org/series/112666/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12572 -> Patchwork_112666v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112666v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112666v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/index.html

Participating hosts (40 -> 35)
------------------------------

  Additional (1): fi-bsw-kefka 
  Missing    (6): bat-dg1-7 bat-dg1-6 fi-snb-2520m bat-adln-1 bat-rpls-1 bat-rpls-2 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112666v1:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@slpc:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12572/fi-kbl-soraka/igt@i915_selftest@live@slpc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-kbl-soraka/igt@i915_selftest@live@slpc.html

  
Known issues
------------

  Here are the changes found in Patchwork_112666v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-cfl-guc:         [PASS][3] -> [DMESG-FAIL][4] ([i915#5334])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12572/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][5] ([fdo#109271]) +26 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@dmabuf@all-tests@dma_fence:
    - fi-elk-e7500:       [FAIL][6] -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12572/fi-elk-e7500/igt@dmabuf@all-tests@dma_fence.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-elk-e7500/igt@dmabuf@all-tests@dma_fence.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334


Build changes
-------------

  * Linux: CI_DRM_12572 -> Patchwork_112666v1

  CI-20190529: 20190529
  CI_DRM_12572: 1d81095ce0a981d0c0b5979bf4b75fe6cf871973 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7115: c162d70b00c6f4cf6a0ba1ca7a7e2ad8f7190646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112666v1: 1d81095ce0a981d0c0b5979bf4b75fe6cf871973 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

a8fb3da8f21c drm/i915/pcode: Wait 10 seconds for pcode to settle

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/index.html

--===============5287653735529070939==
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
<tr><td><b>Series:</b></td><td>drm/i915/pcode: Wait 10 seconds for pcode to settle</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112666/">https://patchwork.freedesktop.org/series/112666/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12572 -&gt; Patchwork_112666v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112666v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112666v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/index.html</p>
<h2>Participating hosts (40 -&gt; 35)</h2>
<p>Additional (1): fi-bsw-kefka <br />
  Missing    (6): bat-dg1-7 bat-dg1-6 fi-snb-2520m bat-adln-1 bat-rpls-1 bat-rpls-2 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112666v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@slpc:<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12572/fi-kbl-soraka/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-kbl-soraka/igt@i915_selftest@live@slpc.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112666v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12572/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-cfl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-bsw-kefka/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@dmabuf@all-tests@dma_fence:<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12572/fi-elk-e7500/igt@dmabuf@all-tests@dma_fence.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112666v1/fi-elk-e7500/igt@dmabuf@all-tests@dma_fence.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12572 -&gt; Patchwork_112666v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12572: 1d81095ce0a981d0c0b5979bf4b75fe6cf871973 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7115: c162d70b00c6f4cf6a0ba1ca7a7e2ad8f7190646 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112666v1: 1d81095ce0a981d0c0b5979bf4b75fe6cf871973 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>a8fb3da8f21c drm/i915/pcode: Wait 10 seconds for pcode to settle</p>

</body>
</html>

--===============5287653735529070939==--
