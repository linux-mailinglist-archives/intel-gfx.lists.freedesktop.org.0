Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C82E7013D8
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 04:00:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B114B10E71A;
	Sat, 13 May 2023 02:00:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4E3EB10E71A;
 Sat, 13 May 2023 02:00:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 47109AA917;
 Sat, 13 May 2023 02:00:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4436197532430581186=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Yan Zhao" <yan.y.zhao@intel.com>
Date: Sat, 13 May 2023 02:00:49 -0000
Message-ID: <168394324925.18761.7680391723691477019@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230513003600.818142-1-seanjc@google.com>
In-Reply-To: <20230513003600.818142-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_=28rev8?=
 =?utf-8?q?=29?=
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

--===============4436197532430581186==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev8)
URL   : https://patchwork.freedesktop.org/series/112196/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13143 -> Patchwork_112196v8
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112196v8 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112196v8, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/index.html

Participating hosts (38 -> 36)
------------------------------

  Missing    (2): bat-rpls-2 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112196v8:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@dmabuf:
    - bat-adls-5:         [PASS][1] -> [DMESG-WARN][2] +19 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-adls-5/igt@i915_selftest@live@dmabuf.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-adls-5/igt@i915_selftest@live@dmabuf.html

  
Known issues
------------

  Here are the changes found in Patchwork_112196v8 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_pm_backlight@basic-brightness@edp-1:
    - bat-rplp-1:         NOTRUN -> [ABORT][3] ([i915#7077])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html

  * igt@i915_selftest@live@migrate:
    - bat-dg2-11:         [PASS][4] -> [DMESG-WARN][5] ([i915#7699] / [i915#7953])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-dg2-11/igt@i915_selftest@live@migrate.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-dg2-11/igt@i915_selftest@live@migrate.html

  * igt@i915_suspend@basic-s3-without-i915:
    - bat-rpls-1:         NOTRUN -> [ABORT][6] ([i915#6687] / [i915#7953] / [i915#7978])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
    - bat-dg2-11:         NOTRUN -> [SKIP][7] ([i915#1845] / [i915#5354]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-apl-guc:         [DMESG-FAIL][8] ([i915#5334]) -> [PASS][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-mtlp-8}:       [ABORT][10] ([i915#4983] / [i915#7920] / [i915#7953]) -> [PASS][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@reset:
    - bat-rpls-1:         [ABORT][12] ([i915#4983] / [i915#7461] / [i915#7953] / [i915#8347] / [i915#8384]) -> [PASS][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rpls-1/igt@i915_selftest@live@reset.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rpls-1/igt@i915_selftest@live@reset.html

  
#### Warnings ####

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-rplp-1:         [ABORT][14] ([i915#4579] / [i915#8260]) -> [SKIP][15] ([i915#3555] / [i915#4579])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#4579]: https://gitlab.freedesktop.org/drm/intel/issues/4579
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6645]: https://gitlab.freedesktop.org/drm/intel/issues/6645
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#7077]: https://gitlab.freedesktop.org/drm/intel/issues/7077
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7920]: https://gitlab.freedesktop.org/drm/intel/issues/7920
  [i915#7953]: https://gitlab.freedesktop.org/drm/intel/issues/7953
  [i915#7978]: https://gitlab.freedesktop.org/drm/intel/issues/7978
  [i915#8260]: https://gitlab.freedesktop.org/drm/intel/issues/8260
  [i915#8347]: https://gitlab.freedesktop.org/drm/intel/issues/8347
  [i915#8384]: https://gitlab.freedesktop.org/drm/intel/issues/8384


Build changes
-------------

  * Linux: CI_DRM_13143 -> Patchwork_112196v8

  CI-20190529: 20190529
  CI_DRM_13143: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112196v8: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

6dd35b812a60 drm/i915/gvt: Drop final dependencies on KVM internal details
ce182f5a4e8d KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers
6ef2fe25e1e7 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs
8687b24b2d31 KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled
3bc5606a1530 KVM: x86/mmu: Assert that correct locks are held for page write-tracking
95cf5a24c761 KVM: x86/mmu: Rename page-track APIs to reflect the new reality
c59bc5c4faec KVM: x86/mmu: Drop infrastructure for multiple page-track modes
1ab839205738 KVM: x86/mmu: Use page-track notifiers iff there are external users
8144255d2ef9 KVM: x86/mmu: Move KVM-only page-track declarations to internal header
5f1e23aa0b37 KVM: x86: Remove the unused page-track hook track_flush_slot()
c06e42752a11 drm/i915/gvt: switch from ->track_flush_slot() to ->track_remove_region()
f85fad4f4ebd KVM: x86: Add a new page-track hook to handle memslot deletion
17d1708c953d drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot
2af557d1bb28 KVM: x86: Reject memslot MOVE operations if KVMGT is attached
f0accfb5d4ba KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
7400cc3d0cde KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
d8e835b07b1a KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
768dccb1b7d5 KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c
e964eda4d28f drm/i915/gvt: Protect gfn hash table with vgpu_lock
163c49208b55 drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
8a4136d492ae drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
285da8c76036 drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
4baba3d68f21 drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type
ab99fe9fdb06 drm/i915/gvt: Explicitly check that vGPU is attached before shadowing
26ed9603ea21 drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
d710d9fee0d4 drm/i915/gvt: Verify hugepages are contiguous in physical address space
d02eb2471acd drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
dc1e8a276471 drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/index.html

--===============4436197532430581186==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev8)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112196/">https://patchwork.freedesktop.org/series/112196/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13143 -&gt; Patchwork_112196v8</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112196v8 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112196v8, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/index.html</p>
<h2>Participating hosts (38 -&gt; 36)</h2>
<p>Missing    (2): bat-rpls-2 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112196v8:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_selftest@live@dmabuf:<ul>
<li>bat-adls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-adls-5/igt@i915_selftest@live@dmabuf.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-adls-5/igt@i915_selftest@live@dmabuf.html">DMESG-WARN</a> +19 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112196v8 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_pm_backlight@basic-brightness@edp-1:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rplp-1/igt@i915_pm_backlight@basic-brightness@edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7077">i915#7077</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@migrate:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-dg2-11/igt@i915_selftest@live@migrate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-dg2-11/igt@i915_selftest@live@migrate.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7699">i915#7699</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>bat-rpls-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rpls-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7978">i915#7978</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
<ul>
<li>bat-dg2-11:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5334">i915#5334</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/fi-apl-guc/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-mtlp-8}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-mtlp-8/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7920">i915#7920</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@reset:</p>
<ul>
<li>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rpls-1/igt@i915_selftest@live@reset.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4983</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7461">i915#7461</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7953">i915#7953</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8347">i915#8347</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8384">i915#8384</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rpls-1/igt@i915_selftest@live@reset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_setmode@basic-clone-single-crtc:<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13143/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8260">i915#8260</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v8/bat-rplp-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4579">i915#4579</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13143 -&gt; Patchwork_112196v8</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13143: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7286: a482779488f11c432d7ddcb1980691ab1603f356 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112196v8: 222ff19f23b0bd6aca0b52001d69699f78f5a206 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>6dd35b812a60 drm/i915/gvt: Drop final dependencies on KVM internal details<br />
ce182f5a4e8d KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers<br />
6ef2fe25e1e7 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs<br />
8687b24b2d31 KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled<br />
3bc5606a1530 KVM: x86/mmu: Assert that correct locks are held for page write-tracking<br />
95cf5a24c761 KVM: x86/mmu: Rename page-track APIs to reflect the new reality<br />
c59bc5c4faec KVM: x86/mmu: Drop infrastructure for multiple page-track modes<br />
1ab839205738 KVM: x86/mmu: Use page-track notifiers iff there are external users<br />
8144255d2ef9 KVM: x86/mmu: Move KVM-only page-track declarations to internal header<br />
5f1e23aa0b37 KVM: x86: Remove the unused page-track hook track_flush_slot()<br />
c06e42752a11 drm/i915/gvt: switch from -&gt;track_flush_slot() to -&gt;track_remove_region()<br />
f85fad4f4ebd KVM: x86: Add a new page-track hook to handle memslot deletion<br />
17d1708c953d drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot<br />
2af557d1bb28 KVM: x86: Reject memslot MOVE operations if KVMGT is attached<br />
f0accfb5d4ba KVM: drm/i915/gvt: Drop @vcpu from KVM's -&gt;track_write() hook<br />
7400cc3d0cde KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs<br />
d8e835b07b1a KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change<br />
768dccb1b7d5 KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c<br />
e964eda4d28f drm/i915/gvt: Protect gfn hash table with vgpu_lock<br />
163c49208b55 drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()<br />
8a4136d492ae drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns<br />
285da8c76036 drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT<br />
4baba3d68f21 drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type<br />
ab99fe9fdb06 drm/i915/gvt: Explicitly check that vGPU is attached before shadowing<br />
26ed9603ea21 drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()<br />
d710d9fee0d4 drm/i915/gvt: Verify hugepages are contiguous in physical address space<br />
d02eb2471acd drm/i915/gvt: remove interface intel_gvt_is_valid_gfn<br />
dc1e8a276471 drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"</p>

</body>
</html>

--===============4436197532430581186==--
