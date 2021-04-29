Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4908036F1BD
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 23:15:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57CBC6F4C0;
	Thu, 29 Apr 2021 21:15:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC7266F4BF;
 Thu, 29 Apr 2021 21:15:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA189A47EB;
 Thu, 29 Apr 2021 21:15:34 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Thu, 29 Apr 2021 21:15:34 -0000
Message-ID: <161973093479.20425.10933173010401749745@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210429190340.1555632-1-jason@jlekstrand.net>
In-Reply-To: <20210429190340.1555632-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_ioctl_clean-ups_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0972533143=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0972533143==
Content-Type: multipart/alternative;
 boundary="===============0159431013726262297=="

--===============0159431013726262297==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: ioctl clean-ups (rev3)
URL   : https://patchwork.freedesktop.org/series/89443/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10028 -> Patchwork_20040
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/index.html

Known issues
------------

  Here are the changes found in Patchwork_20040 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@semaphore:
    - fi-bdw-5557u:       NOTRUN -> [SKIP][1] ([fdo#109271]) +27 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html

  * igt@core_hotunplug@unbind-rebind:
    - fi-bdw-5557u:       NOTRUN -> [WARN][2] ([i915#2283])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][3] -> [FAIL][4] ([i915#1372])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
    - fi-bdw-5557u:       NOTRUN -> [SKIP][5] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][6] ([i915#3303]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - fi-cml-s:           [DMESG-FAIL][8] -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-cml-s/igt@i915_selftest@live@requests.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-cml-s/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@kms_chamelium@vga-edid-read:
    - fi-icl-u2:          [SKIP][10] -> [SKIP][11] ([fdo#109309]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303


Participating hosts (44 -> 40)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6077 -> IGTPW_5761
  * Linux: CI_DRM_10028 -> Patchwork_20040

  CI-20190529: 20190529
  CI_DRM_10028: d6c61ca97601e774c28aa62b1a84158294d3ec57 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5761: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5761/index.html
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20040: aa50b01a89944f2123fbb4d1387a4224d0fc837f @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

aa50b01a8994 drm/i915/gem: Roll all of context creation together
d712c48a36e6 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
0c2f94037518 drm/i915/selftests: Take a VM in kernel_context()
df6523539e0a drm/i915/gem: Don't allow changing the engine set on running contexts
335760197fdf drm/i915/gem: Don't allow changing the VM on running contexts
bb2549ed6345 drm/i915/gem: Delay context creation
db39672ae812 drm/i915/gt: Drop i915_address_space::file (v2)
33e918dfd45f drm/i915/gem: Return an error ptr from context_lookup
79c016fa10e5 drm/i915/gem: Use the proto-context to handle create parameters
4919dd9c07a4 drm/i915/gem: Add an intermediate proto_context struct
026ab9b0e512 drm/i915: Add gem/i915_gem_context.h to the docs
9a52948d264c drm/i915/gem: Add a separate validate_priority helper
1d13e2571078 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)
c55c0fc1bc06 drm/i915/gem: Disallow creating contexts with too many engines
9f6c3071c818 drm/i915/request: Remove the hook from await_execution
46e724b65b3c drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT
058f1057bf1d drm/i915/gem: Disallow bonding of virtual engines (v3)
a9a28d64b5bc drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
07ba0d24a10a drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
3743384e9f0e drm/i915: Drop the CONTEXT_CLONE API
54566d236033 drm/i915/gem: Return void from context_apply_all
6b665f0d251c drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
b99187a9b6a9 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
f6aea3cd1da2 drm/i915: Stop storing the ring size in the ring pointer
d568c0fd97a3 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/index.html

--===============0159431013726262297==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: ioctl clean-ups (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89443/">https://patchwork.freedesktop.org/series/89443/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10028 -&gt; Patchwork_20040</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20040 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-bdw-5557u/igt@amdgpu/amd_basic@semaphore.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-bdw-5557u/igt@core_hotunplug@unbind-rebind.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2283">i915#2283</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-bdw-5557u/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>fi-cml-s:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-cml-s/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-cml-s/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_chamelium@vga-edid-read:<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10028/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20040/fi-icl-u2/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109309">fdo#109309</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (44 -&gt; 40)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6077 -&gt; IGTPW_5761</li>
<li>Linux: CI_DRM_10028 -&gt; Patchwork_20040</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10028: d6c61ca97601e774c28aa62b1a84158294d3ec57 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5761: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5761/index.html<br />
  IGT_6077: 126a3f6fc0e97786e2819085efc84e741093aed5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20040: aa50b01a89944f2123fbb4d1387a4224d0fc837f @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>aa50b01a8994 drm/i915/gem: Roll all of context creation together<br />
d712c48a36e6 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec<br />
0c2f94037518 drm/i915/selftests: Take a VM in kernel_context()<br />
df6523539e0a drm/i915/gem: Don't allow changing the engine set on running contexts<br />
335760197fdf drm/i915/gem: Don't allow changing the VM on running contexts<br />
bb2549ed6345 drm/i915/gem: Delay context creation<br />
db39672ae812 drm/i915/gt: Drop i915_address_space::file (v2)<br />
33e918dfd45f drm/i915/gem: Return an error ptr from context_lookup<br />
79c016fa10e5 drm/i915/gem: Use the proto-context to handle create parameters<br />
4919dd9c07a4 drm/i915/gem: Add an intermediate proto_context struct<br />
026ab9b0e512 drm/i915: Add gem/i915_gem_context.h to the docs<br />
9a52948d264c drm/i915/gem: Add a separate validate_priority helper<br />
1d13e2571078 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)<br />
c55c0fc1bc06 drm/i915/gem: Disallow creating contexts with too many engines<br />
9f6c3071c818 drm/i915/request: Remove the hook from await_execution<br />
46e724b65b3c drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT<br />
058f1057bf1d drm/i915/gem: Disallow bonding of virtual engines (v3)<br />
a9a28d64b5bc drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES<br />
07ba0d24a10a drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)<br />
3743384e9f0e drm/i915: Drop the CONTEXT_CLONE API<br />
54566d236033 drm/i915/gem: Return void from context_apply_all<br />
6b665f0d251c drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)<br />
b99187a9b6a9 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP<br />
f6aea3cd1da2 drm/i915: Stop storing the ring size in the ring pointer<br />
d568c0fd97a3 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE</p>

</body>
</html>

--===============0159431013726262297==--

--===============0972533143==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0972533143==--
