Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8F589D70D
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 12:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E10A112C96;
	Tue,  9 Apr 2024 10:35:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D3AA112C97;
 Tue,  9 Apr 2024 10:35:05 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4678609393735559874=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_Fi=2ECI=2EBAT=3A_success_for_drm/=7Bi915=2Cxe=7D=3A_Conv?=
 =?utf-8?q?ert_fbdev_to_DRM_client?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thomas Zimmermann" <tzimmermann@suse.de>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Apr 2024 10:35:05 -0000
Message-ID: <171265890564.1300822.16611817481941097804@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240409081029.17843-1-tzimmermann@suse.de>
In-Reply-To: <20240409081029.17843-1-tzimmermann@suse.de>
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

--===============4678609393735559874==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/{i915,xe}: Convert fbdev to DRM client
URL   : https://patchwork.freedesktop.org/series/132192/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_14547 -> Patchwork_132192v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/index.html

Participating hosts (39 -> 35)
------------------------------

  Missing    (4): fi-kbl-7567u bat-dg2-11 bat-arls-2 fi-apl-guc 

Known issues
------------

  Here are the changes found in Patchwork_132192v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@guc:
    - bat-dg2-9:          [PASS][1] -> [ABORT][2] ([i915#10366])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14547/bat-dg2-9/igt@i915_selftest@live@guc.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/bat-dg2-9/igt@i915_selftest@live@guc.html

  
  [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366


Build changes
-------------

  * Linux: CI_DRM_14547 -> Patchwork_132192v1

  CI-20190529: 20190529
  CI_DRM_14547: eea58bf00b72f3fd0abdf5fb144f988c23056b8d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7802: 7802
  Patchwork_132192v1: eea58bf00b72f3fd0abdf5fb144f988c23056b8d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6f1e6f6801ab drm/{i915, xe}: Implement fbdev emulation as in-kernel client
cae72ae91663 drm/{i915,xe}: Implement fbdev client callbacks
365a666ee721 drm/{i915,xe}: Unregister in-kernel clients
75222f8089f3 drm/i915: Initialize fbdev DRM client with callback functions
b899d0b04211 drm/i915: Move fbdev functions
b2e8d51dace4 drm/client: Export drm_client_dev_unregister()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/index.html

--===============4678609393735559874==
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
<tr><td><b>Series:</b></td><td>drm/{i915,xe}: Convert fbdev to DRM client</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/132192/">https://patchwork.freedesktop.org/series/132192/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_14547 -&gt; Patchwork_132192v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/index.html</p>
<h2>Participating hosts (39 -&gt; 35)</h2>
<p>Missing    (4): fi-kbl-7567u bat-dg2-11 bat-arls-2 fi-apl-guc </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_132192v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14547/bat-dg2-9/igt@i915_selftest@live@guc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132192v1/bat-dg2-9/igt@i915_selftest@live@guc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/10366">i915#10366</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_14547 -&gt; Patchwork_132192v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_14547: eea58bf00b72f3fd0abdf5fb144f988c23056b8d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7802: 7802<br />
  Patchwork_132192v1: eea58bf00b72f3fd0abdf5fb144f988c23056b8d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6f1e6f6801ab drm/{i915, xe}: Implement fbdev emulation as in-kernel client<br />
cae72ae91663 drm/{i915,xe}: Implement fbdev client callbacks<br />
365a666ee721 drm/{i915,xe}: Unregister in-kernel clients<br />
75222f8089f3 drm/i915: Initialize fbdev DRM client with callback functions<br />
b899d0b04211 drm/i915: Move fbdev functions<br />
b2e8d51dace4 drm/client: Export drm_client_dev_unregister()</p>

</body>
</html>

--===============4678609393735559874==--
