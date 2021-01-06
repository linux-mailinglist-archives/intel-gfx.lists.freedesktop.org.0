Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 610BA2EC6FE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 00:41:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41DCB6E34B;
	Wed,  6 Jan 2021 23:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2D71A6E34B;
 Wed,  6 Jan 2021 23:41:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 268FAA9932;
 Wed,  6 Jan 2021 23:41:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Paul" <sean@poorly.run>
Date: Wed, 06 Jan 2021 23:41:53 -0000
Message-ID: <160997651313.18711.8327148155766186000@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210106223909.34476-1-sean@poorly.run>
In-Reply-To: <20210106223909.34476-1-sean@poorly.run>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Disable_the_QSES_check_for_HDCP_1=2E4_over_MST?=
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
Content-Type: multipart/mixed; boundary="===============0818271642=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0818271642==
Content-Type: multipart/alternative;
 boundary="===============4542386265820693328=="

--===============4542386265820693328==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST
URL   : https://patchwork.freedesktop.org/series/85555/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9554 -> Patchwork_19275
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/index.html

Known issues
------------

  Here are the changes found in Patchwork_19275 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@fbdev@read:
    - fi-tgl-y:           [PASS][1] -> [DMESG-WARN][2] ([i915#402]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@fbdev@read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/fi-tgl-y/igt@fbdev@read.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@module-reload:
    - fi-kbl-guc:         [FAIL][3] ([i915#579]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html

  * igt@vgem_basic@dmabuf-fence:
    - fi-tgl-y:           [DMESG-WARN][5] ([i915#402]) -> [PASS][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html

  
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579


Participating hosts (42 -> 37)
------------------------------

  Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9554 -> Patchwork_19275

  CI-20190529: 20190529
  CI_DRM_9554: 4786f2a4c7e280974d0b46ca9e30a156eb528d59 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5945: f0ad1a564956d6796d9ff09182c48d78fb00eefe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19275: bd6eed3a74e7aef1dde724eacb490413d8b3ee79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

bd6eed3a74e7 drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/index.html

--===============4542386265820693328==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/85555/">https://patchwork.freedesktop.org/series/85555/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9554 -&gt; Patchwork_19275</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19275 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@fbdev@read:<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@fbdev@read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/fi-tgl-y/igt@fbdev@read.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/579">i915#579</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/fi-kbl-guc/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9554/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19275/fi-tgl-y/igt@vgem_basic@dmabuf-fence.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Participating hosts (42 -&gt; 37)</h2>
<p>Missing    (5): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-ctg-p8600 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9554 -&gt; Patchwork_19275</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9554: 4786f2a4c7e280974d0b46ca9e30a156eb528d59 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5945: f0ad1a564956d6796d9ff09182c48d78fb00eefe @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19275: bd6eed3a74e7aef1dde724eacb490413d8b3ee79 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>bd6eed3a74e7 drm/i915/hdcp: Disable the QSES check for HDCP 1.4 over MST</p>

</body>
</html>

--===============4542386265820693328==--

--===============0818271642==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0818271642==--
