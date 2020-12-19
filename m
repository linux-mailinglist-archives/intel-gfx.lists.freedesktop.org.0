Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6C02DECCA
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Dec 2020 03:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BC2989E15;
	Sat, 19 Dec 2020 02:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C73AC89E14;
 Sat, 19 Dec 2020 02:59:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B0FFCA0BA8;
 Sat, 19 Dec 2020 02:59:00 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Sat, 19 Dec 2020 02:59:00 -0000
Message-ID: <160834674070.22064.12243806706751644822@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20201219020343.22681-1-chris@chris-wilson.co.uk>
In-Reply-To: <20201219020343.22681-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/2=5D_drm/i915/gt=3A_Split_logical_r?=
 =?utf-8?q?ing_contexts_from_execlist_submission?=
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
Content-Type: multipart/mixed; boundary="===============0379750455=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0379750455==
Content-Type: multipart/alternative;
 boundary="===============6437862066888786892=="

--===============6437862066888786892==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/2] drm/i915/gt: Split logical ring contexts from execlist submission
URL   : https://patchwork.freedesktop.org/series/85105/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9506 -> Patchwork_19184
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19184 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19184, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19184:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-apl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
Known issues
------------

  Here are the changes found in Patchwork_19184 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-apl-guc:         NOTRUN -> [FAIL][3] ([fdo#109271] / [i915#1814] / [i915#2426])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/fi-apl-guc/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426


Participating hosts (43 -> 37)
------------------------------

  Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-tgl-y fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9506 -> Patchwork_19184

  CI-20190529: 20190529
  CI_DRM_9506: fe289d6c234d4e7ed53d0df1b7c7330f195f3689 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5910: 67b56a31dcb10a2301d818c8641b5f6b53b272e7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19184: b9d0ad833b5c6f4e9631d2bc8b752dada65a821a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

b9d0ad833b5c drm/i915/gt: Provide a utility to create a scratch buffer
5dd14c1bb771 drm/i915/gt: Split logical ring contexts from execlist submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/index.html

--===============6437862066888786892==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/2] drm/i915/gt: Split logical ring contexts from execlist submission</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85105/">https://patchwork.freedesktop.org/series/85105/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9506 -&gt; Patchwork_19184</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19184 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19184, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19184:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9506/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/fi-apl-guc/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19184 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19184/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (43 -&gt; 37)</h2>
<p>Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bsw-kefka fi-tgl-y fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9506 -&gt; Patchwork_19184</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9506: fe289d6c234d4e7ed53d0df1b7c7330f195f3689 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5910: 67b56a31dcb10a2301d818c8641b5f6b53b272e7 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19184: b9d0ad833b5c6f4e9631d2bc8b752dada65a821a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>b9d0ad833b5c drm/i915/gt: Provide a utility to create a scratch buffer<br />
5dd14c1bb771 drm/i915/gt: Split logical ring contexts from execlist submission</p>

</body>
</html>

--===============6437862066888786892==--

--===============0379750455==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0379750455==--
