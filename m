Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E94467F3DCA
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Nov 2023 06:57:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0A1910E101;
	Wed, 22 Nov 2023 05:57:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id C2B1A10E101;
 Wed, 22 Nov 2023 05:57:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF23EAADD2;
 Wed, 22 Nov 2023 05:57:11 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3453949888684519870=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Shekhar Chauhan" <shekhar.chauhan@intel.com>
Date: Wed, 22 Nov 2023 05:57:11 -0000
Message-ID: <170063263177.4726.10881454892361570826@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
In-Reply-To: <20231122050206.3249424-1-shekhar.chauhan@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/mtl=3A_Fix_Wa=5F22016670082?=
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

--===============3453949888684519870==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/mtl: Fix Wa_22016670082
URL   : https://patchwork.freedesktop.org/series/126740/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13909 -> Patchwork_126740v1
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/index.html

Participating hosts (32 -> 30)
------------------------------

  Missing    (2): fi-tgl-1115g4 fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_126740v1 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][1] ([i915#8668]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13909/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  * {igt@kms_psr@psr_primary_page_flip@edp-1}:
    - bat-jsl-1:          [SKIP][3] ([i915#9648]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13909/bat-jsl-1/igt@kms_psr@psr_primary_page_flip@edp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/bat-jsl-1/igt@kms_psr@psr_primary_page_flip@edp-1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#7359]: https://gitlab.freedesktop.org/drm/intel/issues/7359
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8981]: https://gitlab.freedesktop.org/drm/intel/issues/8981
  [i915#9648]: https://gitlab.freedesktop.org/drm/intel/issues/9648


Build changes
-------------

  * Linux: CI_DRM_13909 -> Patchwork_126740v1

  CI-20190529: 20190529
  CI_DRM_13909: cd560a69c56be9eb8db94a5f35fa51b21928be86 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_126740v1: cd560a69c56be9eb8db94a5f35fa51b21928be86 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

fda7b2fb946d drm/i915/mtl: Fix Wa_22016670082

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/index.html

--===============3453949888684519870==
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
<tr><td><b>Series:</b></td><td>drm/i915/mtl: Fix Wa_22016670082</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/126740/">https://patchwork.freedesktop.org/series/126740/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13909 -&gt; Patchwork_126740v1</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/index.html</p>
<h2>Participating hosts (32 -&gt; 30)</h2>
<p>Missing    (2): fi-tgl-1115g4 fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_126740v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13909/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_psr@psr_primary_page_flip@edp-1}:</p>
<ul>
<li>bat-jsl-1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13909/bat-jsl-1/igt@kms_psr@psr_primary_page_flip@edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/9648">i915#9648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126740v1/bat-jsl-1/igt@kms_psr@psr_primary_page_flip@edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13909 -&gt; Patchwork_126740v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13909: cd560a69c56be9eb8db94a5f35fa51b21928be86 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7595: cfa00d99b1dfa0621ea552d1ed54907798da1a1a @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_126740v1: cd560a69c56be9eb8db94a5f35fa51b21928be86 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>fda7b2fb946d drm/i915/mtl: Fix Wa_22016670082</p>

</body>
</html>

--===============3453949888684519870==--
