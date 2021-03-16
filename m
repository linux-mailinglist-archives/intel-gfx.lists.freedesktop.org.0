Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B0E33CE0F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Mar 2021 07:45:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC1176E21C;
	Tue, 16 Mar 2021 06:45:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B17276E21C;
 Tue, 16 Mar 2021 06:45:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AACC1A0091;
 Tue, 16 Mar 2021 06:45:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Tue, 16 Mar 2021 06:45:19 -0000
Message-ID: <161587711967.23909.3000338414446836670@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1615872114.git.ashutosh.dixit@intel.com>
In-Reply-To: <cover.1615872114.git.ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Drop_legacy_IOCTLs_on_new_HW_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============1492365128=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1492365128==
Content-Type: multipart/alternative;
 boundary="===============7841599547186498700=="

--===============7841599547186498700==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Drop legacy IOCTLs on new HW (rev2)
URL   : https://patchwork.freedesktop.org/series/87980/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9858 -> Patchwork_19793
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19793:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@prime_vgem@basic-read:
    - {fi-rkl-11500t}:    [PASS][1] -> [SKIP][2] +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-rkl-11500t/igt@prime_vgem@basic-read.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-rkl-11500t/igt@prime_vgem@basic-read.html

  
Known issues
------------

  Here are the changes found in Patchwork_19793 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_gttfill@basic:
    - fi-kbl-8809g:       [PASS][4] -> [TIMEOUT][5] ([i915#3145])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][6] ([i915#2782]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [DMESG-WARN][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3145]: https://gitlab.freedesktop.org/drm/intel/issues/3145


Participating hosts (45 -> 41)
------------------------------

  Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus 


Build changes
-------------

  * IGT: IGT_6032 -> IGTPW_5603
  * Linux: CI_DRM_9858 -> Patchwork_19793

  CI-20190529: 20190529
  CI_DRM_9858: c75d80d8bca97d7aa372155f9cd423b698c75394 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5603: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5603/index.html
  IGT_6032: f3fd2cc23455929d0ef276e05e02416b86a6db91 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19793: 7e363e493cb82027795cc7e4b9e5195cd1237b5b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7e363e493cb8 drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)
e8045cfd1158 drm/i915/gem: Drop relocation support on all new hardware (v5)
5957224f8490 drm/i915/gem: Drop legacy execbuffer support (v2)

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/index.html

--===============7841599547186498700==
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
<tr><td><b>Series:</b></td><td>drm/i915: Drop legacy IOCTLs on new HW (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87980/">https://patchwork.freedesktop.org/series/87980/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9858 -&gt; Patchwork_19793</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19793:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@prime_vgem@basic-read:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-rkl-11500t/igt@prime_vgem@basic-read.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-rkl-11500t/igt@prime_vgem@basic-read.html">SKIP</a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19793 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-kbl-8809g/igt@gem_exec_gttfill@basic.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3145">i915#3145</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9858/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19793/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (45 -&gt; 41)</h2>
<p>Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bsw-cyan fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6032 -&gt; IGTPW_5603</li>
<li>Linux: CI_DRM_9858 -&gt; Patchwork_19793</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9858: c75d80d8bca97d7aa372155f9cd423b698c75394 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5603: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5603/index.html<br />
  IGT_6032: f3fd2cc23455929d0ef276e05e02416b86a6db91 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19793: 7e363e493cb82027795cc7e4b9e5195cd1237b5b @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>7e363e493cb8 drm/i915: Disable pread/pwrite ioctl's for future platforms (v3)<br />
e8045cfd1158 drm/i915/gem: Drop relocation support on all new hardware (v5)<br />
5957224f8490 drm/i915/gem: Drop legacy execbuffer support (v2)</p>

</body>
</html>

--===============7841599547186498700==--

--===============1492365128==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1492365128==--
