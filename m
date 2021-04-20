Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD54336608D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 22:02:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1206E8C6;
	Tue, 20 Apr 2021 20:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 759E66E8C4;
 Tue, 20 Apr 2021 20:02:41 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6B8E6A0019;
 Tue, 20 Apr 2021 20:02:41 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Tue, 20 Apr 2021 20:02:41 -0000
Message-ID: <161894896141.28023.15213297571625124314@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
In-Reply-To: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Let=27s_abstract_the_dmc_path=2E?=
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
Content-Type: multipart/mixed; boundary="===============1014487135=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1014487135==
Content-Type: multipart/alternative;
 boundary="===============3554288264461981867=="

--===============3554288264461981867==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Let's abstract the dmc path.
URL   : https://patchwork.freedesktop.org/series/89275/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9988 -> Patchwork_19957
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/index.html

Known issues
------------

  Here are the changes found in Patchwork_19957 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_prime@amd-to-i915:
    - fi-tgl-y:           NOTRUN -> [SKIP][1] ([fdo#109315] / [i915#2575])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [PASS][2] -> [INCOMPLETE][3] ([i915#2782])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-icl-u2:          [PASS][4] -> [DMESG-WARN][5] ([i915#1226])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782


Participating hosts (41 -> 39)
------------------------------

  Missing    (2): fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_9988 -> Patchwork_19957

  CI-20190529: 20190529
  CI_DRM_9988: 431bd0cbb466ae58900e298116cda861dd7fd860 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6071: d293ad78a035dcf681345ca15e0256e0c3b1e7bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19957: da8ade7b5d5563b73f66dcbec0fec17d26260d8e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

da8ade7b5d55 drm/i915/dmc: Let's abstract the dmc path.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/index.html

--===============3554288264461981867==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Let&#39;s abstract the dmc path.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89275/">https://patchwork.freedesktop.org/series/89275/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9988 -&gt; Patchwork_19957</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19957 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>fi-tgl-y:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/fi-icl-u2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>)</li>
</ul>
</li>
</ul>
<h2>Participating hosts (41 -&gt; 39)</h2>
<p>Missing    (2): fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9988 -&gt; Patchwork_19957</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9988: 431bd0cbb466ae58900e298116cda861dd7fd860 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6071: d293ad78a035dcf681345ca15e0256e0c3b1e7bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19957: da8ade7b5d5563b73f66dcbec0fec17d26260d8e @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>da8ade7b5d55 drm/i915/dmc: Let's abstract the dmc path.</p>

</body>
</html>

--===============3554288264461981867==--

--===============1014487135==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1014487135==--
