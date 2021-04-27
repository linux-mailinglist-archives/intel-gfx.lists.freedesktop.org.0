Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 783D836C213
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 11:50:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 768F96E935;
	Tue, 27 Apr 2021 09:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2E5EA6E935;
 Tue, 27 Apr 2021 09:49:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 25694A363D;
 Tue, 27 Apr 2021 09:49:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 27 Apr 2021 09:49:53 -0000
Message-ID: <161951699312.17486.16017758636118026699@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210427085417.120246-1-matthew.auld@intel.com>
In-Reply-To: <20210427085417.120246-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/7=5D_drm/i915/dg1=3A_Fix_mapping_ty?=
 =?utf-8?q?pe_for_default_state_object?=
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
Content-Type: multipart/mixed; boundary="===============0730168515=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0730168515==
Content-Type: multipart/alternative;
 boundary="===============3154969599021443460=="

--===============3154969599021443460==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/7] drm/i915/dg1: Fix mapping type for default state object
URL   : https://patchwork.freedesktop.org/series/89529/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10014 -> Patchwork_19998
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/index.html

Known issues
------------

  Here are the changes found in Patchwork_19998 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][1] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][2] ([fdo#109271]) +63 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283


Participating hosts (39 -> 38)
------------------------------

  Additional (1): fi-bsw-nick 
  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10014 -> Patchwork_19998

  CI-20190529: 20190529
  CI_DRM_10014: 7b75f7fa1e7155cfeb6f928895ed259aaf6b4c8e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19998: e85d70bf7f2a2fd27c51c52bd6817a214b4c9d4c @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

e85d70bf7f2a drm/i915: Return error value when bo not in LMEM for discrete
4c20b10e9301 drm/i915/lmem: Bypass aperture when lmem is available
87f851fc9c27 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete
81f1a39eb04c drm/i915/gtt/dgfx: place the PD in LMEM
f501307a51b0 drm/i915/gtt: map the PD up front
6170c13d83ab drm/i915: Update the helper to set correct mapping
c40331cdc349 drm/i915/dg1: Fix mapping type for default state object

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/index.html

--===============3154969599021443460==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/7] drm/i915/dg1: Fix mapping type for default state object</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89529/">https://patchwork.freedesktop.org/series/89529/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10014 -&gt; Patchwork_19998</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19998 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19998/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +63 similar issues</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Additional (1): fi-bsw-nick <br />
  Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10014 -&gt; Patchwork_19998</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10014: 7b75f7fa1e7155cfeb6f928895ed259aaf6b4c8e @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6075: ccf602c569257291045415ff504a6d2460986c28 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19998: e85d70bf7f2a2fd27c51c52bd6817a214b4c9d4c @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>e85d70bf7f2a drm/i915: Return error value when bo not in LMEM for discrete<br />
4c20b10e9301 drm/i915/lmem: Bypass aperture when lmem is available<br />
87f851fc9c27 drm/i915/fbdev: Use lmem physical addresses for fb_mmap() on discrete<br />
81f1a39eb04c drm/i915/gtt/dgfx: place the PD in LMEM<br />
f501307a51b0 drm/i915/gtt: map the PD up front<br />
6170c13d83ab drm/i915: Update the helper to set correct mapping<br />
c40331cdc349 drm/i915/dg1: Fix mapping type for default state object</p>

</body>
</html>

--===============3154969599021443460==--

--===============0730168515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0730168515==--
