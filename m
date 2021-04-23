Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C200F369D36
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 01:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 814496ECAF;
	Fri, 23 Apr 2021 23:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3748A6ECAF;
 Fri, 23 Apr 2021 23:16:51 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 317EBA9A43;
 Fri, 23 Apr 2021 23:16:51 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 23 Apr 2021 23:16:51 -0000
Message-ID: <161921981119.2793.8255868799927510503@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423223131.879208-1-jason@jlekstrand.net>
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_ioctl_clean-ups?=
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
Content-Type: multipart/mixed; boundary="===============1236697887=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1236697887==
Content-Type: multipart/alternative;
 boundary="===============9184008596827065165=="

--===============9184008596827065165==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: ioctl clean-ups
URL   : https://patchwork.freedesktop.org/series/89443/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10005 -> Patchwork_19984
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html

Known issues
------------

  Here are the changes found in Patchwork_19984 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][1] ([fdo#109271]) +17 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-u2:          [PASS][2] -> [FAIL][3] ([i915#1888])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][4] ([i915#2782]) -> [PASS][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3276]: https://gitlab.freedesktop.org/drm/intel/issues/3276
  [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (43 -> 40)
------------------------------

  Additional (1): fi-rkl-11500t 
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6074 -> IGTPW_5761
  * Linux: CI_DRM_10005 -> Patchwork_19984

  CI-20190529: 20190529
  CI_DRM_10005: 7a27cb7ac19a95d801c391044cea5274677e7744 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5761: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5761/index.html
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19984: 0c4562693de593aacfbe5dd6b27e69bd89403c15 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0c4562693de5 drm/i915/gem: Roll all of context creation together
e1c0a99c4bc6 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
1694fd69838b drm/i915/selftests: Take a VM in kernel_context()
9bd5fd34f557 drm/i915/gem: Don't allow changing the engine set on running contexts
40c7b0f86bc0 drm/i915/gem: Don't allow changing the VM on running contexts
6fce8cf246ee drm/i915/gem: Delay context creation
d0f063d4604e drm/i915/gt: Drop i915_address_space::file
70451a1734a2 drm/i915/gem: Return an error ptr from context_lookup
c50f4dd9ee3f drm/i915/gem: Add an intermediate proto_context struct
fa138a73374c drm/i915/gem: Add a separate validate_priority helper
ab3620b9adb5 drm/i915: Stop manually RCU banging in reset_stats_ioctl
b6ef4a4c6f47 drm/i915/request: Remove the hook from await_execution
21cb51520e4b drm/i915/gem: Disallow creating contexts with too many engines
d3ad59ed0a22 drm/i915/gem: Disallow bonding of virtual engines
65796fb10e50 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
ebe52e477467 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v3)
4b9a8e315c1c drm/i915: Drop the CONTEXT_CLONE API
53f030af52d4 drm/i915/gem: Return void from context_apply_all
31e3478abfe0 drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem
79a91e982ff7 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
468456983a83 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html

--===============9184008596827065165==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: ioctl clean-ups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89443/">https://patchwork.freedesktop.org/series/89443/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10005 -&gt; Patchwork_19984</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19984 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/fi-tgl-u2/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Additional (1): fi-rkl-11500t <br />
  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6074 -&gt; IGTPW_5761</li>
<li>Linux: CI_DRM_10005 -&gt; Patchwork_19984</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10005: 7a27cb7ac19a95d801c391044cea5274677e7744 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5761: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5761/index.html<br />
  IGT_6074: 3f43ae9fd22dc5a517786b984dc3aa717997664f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19984: 0c4562693de593aacfbe5dd6b27e69bd89403c15 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>0c4562693de5 drm/i915/gem: Roll all of context creation together<br />
e1c0a99c4bc6 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec<br />
1694fd69838b drm/i915/selftests: Take a VM in kernel_context()<br />
9bd5fd34f557 drm/i915/gem: Don't allow changing the engine set on running contexts<br />
40c7b0f86bc0 drm/i915/gem: Don't allow changing the VM on running contexts<br />
6fce8cf246ee drm/i915/gem: Delay context creation<br />
d0f063d4604e drm/i915/gt: Drop i915_address_space::file<br />
70451a1734a2 drm/i915/gem: Return an error ptr from context_lookup<br />
c50f4dd9ee3f drm/i915/gem: Add an intermediate proto_context struct<br />
fa138a73374c drm/i915/gem: Add a separate validate_priority helper<br />
ab3620b9adb5 drm/i915: Stop manually RCU banging in reset_stats_ioctl<br />
b6ef4a4c6f47 drm/i915/request: Remove the hook from await_execution<br />
21cb51520e4b drm/i915/gem: Disallow creating contexts with too many engines<br />
d3ad59ed0a22 drm/i915/gem: Disallow bonding of virtual engines<br />
65796fb10e50 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES<br />
ebe52e477467 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v3)<br />
4b9a8e315c1c drm/i915: Drop the CONTEXT_CLONE API<br />
53f030af52d4 drm/i915/gem: Return void from context_apply_all<br />
31e3478abfe0 drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem<br />
79a91e982ff7 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP<br />
468456983a83 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE</p>

</body>
</html>

--===============9184008596827065165==--

--===============1236697887==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1236697887==--
