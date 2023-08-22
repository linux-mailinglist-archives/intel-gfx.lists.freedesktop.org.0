Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A39784222
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 15:35:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF25A10E062;
	Tue, 22 Aug 2023 13:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6AAC010E062;
 Tue, 22 Aug 2023 13:35:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 542E8A47DF;
 Tue, 22 Aug 2023 13:35:02 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0759007921919221416=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 22 Aug 2023 13:35:02 -0000
Message-ID: <169271130231.20551.2130474690886140093@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1692705543.git.jani.nikula@intel.com>
In-Reply-To: <cover.1692705543.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/amd/display=3A_stop_using_drm=5Fedid=5Foverride=5Fconnector=5F?=
 =?utf-8?q?update=28=29?=
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

--===============0759007921919221416==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/amd/display: stop using drm_edid_override_connector_update()
URL   : https://patchwork.freedesktop.org/series/122739/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13543 -> Patchwork_122739v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_122739v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_122739v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/index.html

Participating hosts (41 -> 13)
------------------------------

  ERROR: It appears as if the changes made in Patchwork_122739v1 prevented too many machines from booting.

  Missing    (28): fi-kbl-soraka fi-rkl-11600 bat-adls-5 bat-dg1-5 fi-apl-guc fi-snb-2520m fi-pnv-d510 bat-rpls-1 fi-bsw-n3050 bat-adlm-1 bat-dg2-9 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 bat-kbl-2 bat-adlp-9 fi-skl-guc fi-glk-j4005 bat-mtlp-8 bat-jsl-1 bat-mtlp-6 fi-kbl-guc fi-cfl-8109u fi-kbl-8809g bat-dg2-14 

Known issues
------------

  Here are the changes found in Patchwork_122739v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-2:         [PASS][1] -> [ABORT][2] ([i915#7978] / [i915#8668])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13543/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@migrate:
    - bat-atsm-1:         [DMESG-FAIL][3] ([i915#7699] / [i915#7913]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13543/bat-atsm-1/igt@i915_selftest@live@migrate.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/bat-atsm-1/igt@i915_selftest@live@migrate.html

  
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668


Build changes
-------------

  * Linux: CI_DRM_13543 -> Patchwork_122739v1

  CI-20190529: 20190529
  CI_DRM_13543: f450aa57b6725458339a934f474d5a0e5cb2dce0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7448: 84aa6d50648d9349fb4f1520f37e5374908c9f4d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_122739v1: f450aa57b6725458339a934f474d5a0e5cb2dce0 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

c5ebb77a1a8a Revert "drm/amd/display: implement force function in amdgpu_dm_connector_funcs"
35f6a108d8c0 Revert "drm/amd/display: mark amdgpu_dm_connector_funcs_force static"
fe7e98185e75 Revert "drm/amd/display: assign edid_blob_ptr with edid from debugfs"
a6ad35907d63 Revert "drm/amd/display: drop unused count variable in create_eml_sink()"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/index.html

--===============0759007921919221416==
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
<tr><td><b>Series:</b></td><td>drm/amd/display: stop using drm_edid_override_connector_update()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/122739/">https://patchwork.freedesktop.org/series/122739/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13543 -&gt; Patchwork_122739v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_122739v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_122739v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/index.html</p>
<h2>Participating hosts (41 -&gt; 13)</h2>
<p>ERROR: It appears as if the changes made in Patchwork_122739v1 prevented too many machines from booting.</p>
<p>Missing    (28): fi-kbl-soraka fi-rkl-11600 bat-adls-5 bat-dg1-5 fi-apl-guc fi-snb-2520m fi-pnv-d510 bat-rpls-1 fi-bsw-n3050 bat-adlm-1 bat-dg2-9 fi-ilk-650 fi-hsw-4770 bat-adln-1 fi-ivb-3770 bat-jsl-3 bat-rplp-1 bat-kbl-2 bat-adlp-9 fi-skl-guc fi-glk-j4005 bat-mtlp-8 bat-jsl-1 bat-mtlp-6 fi-kbl-guc fi-cfl-8109u fi-kbl-8809g bat-dg2-14 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_122739v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>igt@i915_suspend@basic-s3-without-i915:<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13543/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/bat-rpls-2/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@migrate:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13543/bat-atsm-1/igt@i915_selftest@live@migrate.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_122739v1/bat-atsm-1/igt@i915_selftest@live@migrate.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13543 -&gt; Patchwork_122739v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13543: f450aa57b6725458339a934f474d5a0e5cb2dce0 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7448: 84aa6d50648d9349fb4f1520f37e5374908c9f4d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_122739v1: f450aa57b6725458339a934f474d5a0e5cb2dce0 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>c5ebb77a1a8a Revert "drm/amd/display: implement force function in amdgpu_dm_connector_funcs"<br />
35f6a108d8c0 Revert "drm/amd/display: mark amdgpu_dm_connector_funcs_force static"<br />
fe7e98185e75 Revert "drm/amd/display: assign edid_blob_ptr with edid from debugfs"<br />
a6ad35907d63 Revert "drm/amd/display: drop unused count variable in create_eml_sink()"</p>

</body>
</html>

--===============0759007921919221416==--
