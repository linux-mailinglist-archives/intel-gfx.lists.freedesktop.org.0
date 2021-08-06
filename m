Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4AC3E2349
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Aug 2021 08:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 105956EA86;
	Fri,  6 Aug 2021 06:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id BBAC36E50E;
 Fri,  6 Aug 2021 06:32:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AC3A8AA3D8;
 Fri,  6 Aug 2021 06:32:54 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8592050289107752178=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Niranjana Vishwanathapura" <niranjana.vishwanathapura@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Aug 2021 06:32:54 -0000
Message-ID: <162823157468.27548.970341557447996731@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210806053032.2462-1-niranjana.vishwanathapura@intel.com>
In-Reply-To: <20210806053032.2462-1-niranjana.vishwanathapura@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/doc/rfc=3A_i915_VM=5FBIND_feature_design_+_uapi?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============8592050289107752178==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/doc/rfc: i915 VM_BIND feature design + uapi
URL   : https://patchwork.freedesktop.org/series/93447/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10454 -> Patchwork_20780
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20780 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20780, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20780:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-rkl-guc:         [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10454/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html

  
Known issues
------------

  Here are the changes found in Patchwork_20780 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][3] ([i915#1602])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/fi-rkl-guc/igt@runner@aborted.html

  
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10454 -> Patchwork_20780

  CI-20190529: 20190529
  CI_DRM_10454: 224f5b80ba7d0caf6c4899e30d13cabde980bf49 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20780: dd0b34c891dddd111cbe130d60b465fb03827a77 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dd0b34c891dd drm/doc/rfc: VM_BIND uapi definition
4bebdd1fc544 drm/doc/rfc: VM_BIND feature design document

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/index.html

--===============8592050289107752178==
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
<tr><td><b>Series:</b></td><td>drm/doc/rfc: i915 VM_BIND feature design + uapi</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93447/">https://patchwork.freedesktop.org/series/93447/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10454 -&gt; Patchwork_20780</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20780 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20780, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20780:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@core_hotunplug@unbind-rebind:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10454/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20780 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20780/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10454 -&gt; Patchwork_20780</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10454: 224f5b80ba7d0caf6c4899e30d13cabde980bf49 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6160: 4287344dd6a39d9036c5fb9a047a7d8f10bee981 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20780: dd0b34c891dddd111cbe130d60b465fb03827a77 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>dd0b34c891dd drm/doc/rfc: VM_BIND uapi definition<br />
4bebdd1fc544 drm/doc/rfc: VM_BIND feature design document</p>

</body>
</html>

--===============8592050289107752178==--
