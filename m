Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD70D3A0C3F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 08:15:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45AF86E0DF;
	Wed,  9 Jun 2021 06:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2DE86E02E;
 Wed,  9 Jun 2021 06:15:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA821A47DB;
 Wed,  9 Jun 2021 06:15:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Wed, 09 Jun 2021 06:15:53 -0000
Message-ID: <162321935395.27476.2435082098076418611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210609043613.102962-1-jason@jlekstrand.net>
In-Reply-To: <20210609043613.102962-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_ioctl_clean-ups_=28rev6=29?=
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
Content-Type: multipart/mixed; boundary="===============1095162505=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1095162505==
Content-Type: multipart/alternative;
 boundary="===============9104788071287885342=="

--===============9104788071287885342==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: ioctl clean-ups (rev6)
URL   : https://patchwork.freedesktop.org/series/89443/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10194 -> Patchwork_20316
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20316:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fence@nb-await:
    - {fi-rkl-11500t}:    [SKIP][1] ([i915#3539]) -> [FAIL][2] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-rkl-11500t/igt@gem_exec_fence@nb-await.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-rkl-11500t/igt@gem_exec_fence@nb-await.html

  
Known issues
------------

  Here are the changes found in Patchwork_20316 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - fi-snb-2600:        NOTRUN -> [SKIP][3] ([fdo#109271]) +17 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-u2:          [PASS][4] -> [FAIL][5] ([i915#1888])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-y:           [PASS][6] -> [INCOMPLETE][7] ([i915#2782])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-icl-y/igt@i915_selftest@live@hangcheck.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-icl-y/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][8] -> [FAIL][9] ([i915#1372])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
    - fi-kbl-soraka:      [PASS][10] -> [FAIL][11] ([i915#2122])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-snb-2600:        [INCOMPLETE][12] ([i915#2782]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-snb-2600/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-u2:          [INCOMPLETE][14] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][15] ([i915#3462])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-icl-u2/igt@i915_selftest@live@execlists.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-icl-u2/igt@i915_selftest@live@execlists.html
    - fi-tgl-u2:          [INCOMPLETE][16] ([i915#3462]) -> [DMESG-FAIL][17] ([i915#3462])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-skl-6600u:       [FAIL][18] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][19] ([i915#1436] / [i915#3363])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-skl-6600u/igt@runner@aborted.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          [FAIL][20] ([i915#2782] / [i915#3363]) -> [FAIL][21] ([i915#2426] / [i915#2782] / [i915#3363])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-icl-u2/igt@runner@aborted.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-icl-u2/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][22] ([i915#2426] / [i915#3363] / [k.org#202321]) -> [FAIL][23] ([i915#3363] / [k.org#202321])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-glk-dsi/igt@runner@aborted.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-glk-dsi/igt@runner@aborted.html
    - fi-bdw-5557u:       [FAIL][24] ([i915#2426] / [i915#3462]) -> [FAIL][25] ([i915#3462])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-bdw-5557u/igt@runner@aborted.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-bdw-5557u/igt@runner@aborted.html
    - fi-kbl-guc:         [FAIL][26] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][27] ([i915#1436] / [i915#3363])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-kbl-guc/igt@runner@aborted.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-kbl-guc/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][28] ([i915#2082] / [i915#2426] / [i915#3363] / [i915#3462]) -> [FAIL][29] ([i915#3363] / [i915#3462])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-cml-u2/igt@runner@aborted.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-cml-u2/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][30] ([i915#2426] / [i915#3363]) -> [FAIL][31] ([i915#3363])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-bxt-dsi/igt@runner@aborted.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-bxt-dsi/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1372]: https://gitlab.freedesktop.org/drm/intel/issues/1372
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Participating hosts (46 -> 42)
------------------------------

  Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u 


Build changes
-------------

  * IGT: IGT_6102 -> IGTPW_5902
  * Linux: CI_DRM_10194 -> Patchwork_20316

  CI-20190529: 20190529
  CI_DRM_10194: 08ac6453e0060df3adc8e95e0d6850414bc24fad @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_5902: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5902/index.html
  IGT_6102: 6e67969bf93dda8f22773ccae362f757fce25c3d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20316: 5d88c5acb5a76e1a4eb196a1abf4571d4476241d @ git://anongit.freedesktop.org/gfx-ci/linux


== Kernel 32bit build ==

Warning: Kernel 32bit buildtest failed:
https://intel-gfx-ci.01.org/Patchwork_20316/build_32bit.log

  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  CHK     include/generated/compile.h
Kernel: arch/x86/boot/bzImage is ready  (#1)
  MODPOST modules-only.symvers
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed
make[1]: *** [modules-only.symvers] Error 1
make[1]: *** Deleting file 'modules-only.symvers'
Makefile:1759: recipe for target 'modules' failed
make: *** [modules] Error 2


== Linux commits ==

5d88c5acb5a7 drm/i915: Drop some RCU usage around context VMs
cebbfc1e7a57 drm/i915: Finalize contexts in GEM_CONTEXT_CREATE on version 13+
a44b64394c89 drm/i915/gem: Roll all of context creation together
fdef01939517 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec
d7367f2713d1 drm/i915/selftests: Take a VM in kernel_context()
1fa13abc7009 drm/i915/gem: Don't allow changing the engine set on running contexts (v2)
e68bf5e2b2d3 drm/i915/gem: Don't allow changing the VM on running contexts (v2)
c201ac1b1cac drm/i915/gem: Delay context creation (v2)
c66b333bcf0d drm/i915/gt: Drop i915_address_space::file (v2)
8d3126761267 drm/i915/gem: Return an error ptr from context_lookup
c2ee5d981222 drm/i915/gem: Use the proto-context to handle create parameters (v3)
abdf4766d581 drm/i915/gem: Make an alignment check more sensible
ce5911d9f97c drm/i915: Add an i915_gem_vm_lookup helper
cfe2616bb981 drm/i915/gem: Optionally set SSEU in intel_context_set_gem
9ba4bec35eb8 drm/i915/gem: Rework error handling in default_engines
92cb528d35f6 drm/i915/gem: Add an intermediate proto_context struct (v4)
ebec0e49d883 drm/i915: Add gem/i915_gem_context.h to the docs
93a5d3ac059d drm/i915/gem: Add a separate validate_priority helper
a7a8f8d5ff55 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)
f5928334153d drm/i915/gem: Disallow creating contexts with too many engines
6fe842590232 drm/i915/request: Remove the hook from await_execution
054b1f8e7432 drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT (v2)
7ca2359062f7 drm/i915/gem: Disallow bonding of virtual engines (v3)
6b3e766c7441 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES
e3f2ad211e12 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)
f3f668886b95 drm/i915: Drop the CONTEXT_CLONE API (v2)
9128ae468d28 drm/i915/gem: Return void from context_apply_all
d15967a05b62 drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)
30643107eda9 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP
bcc3d9296cf1 drm/i915: Stop storing the ring size in the ring pointer (v2)
9bed855e16a0 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html

--===============9104788071287885342==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: ioctl clean-ups (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89443/">https://patchwork.freedesktop.org/series/89443/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10194 -&gt; Patchwork_20316</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20316:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_fence@nb-await:<ul>
<li>{fi-rkl-11500t}:    <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-rkl-11500t/igt@gem_exec_fence@nb-await.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3539">i915#3539</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-rkl-11500t/igt@gem_exec_fence@nb-await.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20316 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-snb-2600/igt@amdgpu/amd_cs_nop@sync-fork-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-tgl-u2/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-icl-y/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-icl-y/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1372">i915#1372</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_selftest@live@hangcheck:<ul>
<li>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-snb-2600/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-icl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-icl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2782">i915#2782</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-kbl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20316/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (46 -&gt; 42)</h2>
<p>Missing    (4): fi-ilk-m540 fi-bsw-cyan fi-bdw-samus fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_6102 -&gt; IGTPW_5902</li>
<li>Linux: CI_DRM_10194 -&gt; Patchwork_20316</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10194: 08ac6453e0060df3adc8e95e0d6850414bc24fad @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_5902: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5902/index.html<br />
  IGT_6102: 6e67969bf93dda8f22773ccae362f757fce25c3d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20316: 5d88c5acb5a76e1a4eb196a1abf4571d4476241d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Kernel 32bit build ==</p>
<p>Warning: Kernel 32bit buildtest failed:<br />
https://intel-gfx-ci.01.org/Patchwork_20316/build_32bit.log</p>
<p>CALL    scripts/checksyscalls.sh<br />
  CALL    scripts/atomic/check-atomics.sh<br />
  CHK     include/generated/compile.h<br />
Kernel: arch/x86/boot/bzImage is ready  (#1)<br />
  MODPOST modules-only.symvers<br />
ERROR: modpost: "__udivdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
ERROR: modpost: "__divdi3" [drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!<br />
scripts/Makefile.modpost:150: recipe for target 'modules-only.symvers' failed<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-rkl-11500t/igt@gem_exec_fence@nb-await.html">1</a>: <strong><em> [modules-only.symvers] Error 1<br />
make<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10194/fi-rkl-11500t/igt@gem_exec_fence@nb-await.html">1</a>: </em></strong> Deleting file 'modules-only.symvers'<br />
Makefile:1759: recipe for target 'modules' failed<br />
make: *** [modules] Error 2</p>
<p>== Linux commits ==</p>
<p>5d88c5acb5a7 drm/i915: Drop some RCU usage around context VMs<br />
cebbfc1e7a57 drm/i915: Finalize contexts in GEM_CONTEXT_CREATE on version 13+<br />
a44b64394c89 drm/i915/gem: Roll all of context creation together<br />
fdef01939517 i915/gem/selftests: Assign the VM at context creation in igt_shared_ctx_exec<br />
d7367f2713d1 drm/i915/selftests: Take a VM in kernel_context()<br />
1fa13abc7009 drm/i915/gem: Don't allow changing the engine set on running contexts (v2)<br />
e68bf5e2b2d3 drm/i915/gem: Don't allow changing the VM on running contexts (v2)<br />
c201ac1b1cac drm/i915/gem: Delay context creation (v2)<br />
c66b333bcf0d drm/i915/gt: Drop i915_address_space::file (v2)<br />
8d3126761267 drm/i915/gem: Return an error ptr from context_lookup<br />
c2ee5d981222 drm/i915/gem: Use the proto-context to handle create parameters (v3)<br />
abdf4766d581 drm/i915/gem: Make an alignment check more sensible<br />
ce5911d9f97c drm/i915: Add an i915_gem_vm_lookup helper<br />
cfe2616bb981 drm/i915/gem: Optionally set SSEU in intel_context_set_gem<br />
9ba4bec35eb8 drm/i915/gem: Rework error handling in default_engines<br />
92cb528d35f6 drm/i915/gem: Add an intermediate proto_context struct (v4)<br />
ebec0e49d883 drm/i915: Add gem/i915_gem_context.h to the docs<br />
93a5d3ac059d drm/i915/gem: Add a separate validate_priority helper<br />
a7a8f8d5ff55 drm/i915: Stop manually RCU banging in reset_stats_ioctl (v2)<br />
f5928334153d drm/i915/gem: Disallow creating contexts with too many engines<br />
6fe842590232 drm/i915/request: Remove the hook from await_execution<br />
054b1f8e7432 drm/i915/gem: Remove engine auto-magic with FENCE_SUBMIT (v2)<br />
7ca2359062f7 drm/i915/gem: Disallow bonding of virtual engines (v3)<br />
6b3e766c7441 drm/i915: Drop getparam support for I915_CONTEXT_PARAM_ENGINES<br />
e3f2ad211e12 drm/i915: Implement SINGLE_TIMELINE with a syncobj (v4)<br />
f3f668886b95 drm/i915: Drop the CONTEXT_CLONE API (v2)<br />
9128ae468d28 drm/i915/gem: Return void from context_apply_all<br />
d15967a05b62 drm/i915/gem: Set the watchdog timeout directly in intel_context_set_gem (v2)<br />
30643107eda9 drm/i915: Drop I915_CONTEXT_PARAM_NO_ZEROMAP<br />
bcc3d9296cf1 drm/i915: Stop storing the ring size in the ring pointer (v2)<br />
9bed855e16a0 drm/i915: Drop I915_CONTEXT_PARAM_RINGSIZE</p>

</body>
</html>

--===============9104788071287885342==--

--===============1095162505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1095162505==--
