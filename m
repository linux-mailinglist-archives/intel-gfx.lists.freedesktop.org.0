Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B75876C142
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 01:54:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7286B10E00C;
	Tue,  1 Aug 2023 23:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 37A5710E00C;
 Tue,  1 Aug 2023 23:54:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2C7E6AADDD;
 Tue,  1 Aug 2023 23:54:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3722102328278950592=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sean Christopherson" <seanjc@google.com>
Date: Tue, 01 Aug 2023 23:54:42 -0000
Message-ID: <169093408214.10125.14003785073821556556@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230729013535.1070024-1-seanjc@google.com>
In-Reply-To: <20230729013535.1070024-1-seanjc@google.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_KVM=3A_KVMGT_fixes_and_page-track_cleanups_=28rev1?=
 =?utf-8?q?0=29?=
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

--===============3722102328278950592==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev10)
URL   : https://patchwork.freedesktop.org/series/112196/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_13457 -> Patchwork_112196v10
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/index.html

Participating hosts (39 -> 38)
------------------------------

  Missing    (1): fi-snb-2520m 

Known issues
------------

  Here are the changes found in Patchwork_112196v10 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_auth@basic-auth:
    - bat-adlp-11:        NOTRUN -> [ABORT][1] ([i915#8011])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-adlp-11/igt@core_auth@basic-auth.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-guc:         [PASS][2] -> [FAIL][3] ([i915#8843])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][4] -> [INCOMPLETE][5] ([i915#7913])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_mocs:
    - bat-mtlp-8:         [PASS][6] -> [DMESG-FAIL][7] ([i915#7059])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@hangcheck:
    - bat-atsm-1:         [PASS][8] -> [INCOMPLETE][9] ([i915#7349] / [i915#7913])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-atsm-1/igt@i915_selftest@live@hangcheck.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-atsm-1/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-8:         [PASS][10] -> [DMESG-FAIL][11] ([i915#8497])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-8/igt@i915_selftest@live@requests.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-8/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@slpc:
    - bat-mtlp-8:         [PASS][12] -> [DMESG-WARN][13] ([i915#6367])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-8/igt@i915_selftest@live@slpc.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-8/igt@i915_selftest@live@slpc.html
    - bat-rpls-1:         [PASS][14] -> [DMESG-WARN][15] ([i915#6367])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-rpls-1/igt@i915_selftest@live@slpc.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rpls-1/igt@i915_selftest@live@slpc.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][16] ([fdo#109271])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-bsw-n3050/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_psr@primary_mmap_gtt:
    - bat-rplp-1:         NOTRUN -> [ABORT][17] ([i915#8434] / [i915#8442] / [i915#8668])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - bat-rplp-1:         NOTRUN -> [SKIP][18] ([i915#1072]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rplp-1/igt@kms_psr@primary_page_flip.html

  
#### Possible fixes ####

  * igt@i915_pm_rpm@basic-rte:
    - fi-cfl-8109u:       [FAIL][19] ([i915#7940]) -> [PASS][20] +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@module-reload:
    - fi-tgl-1115g4:      [FAIL][21] ([i915#7940]) -> [PASS][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-n3050:       [ABORT][23] ([i915#7911] / [i915#7913]) -> [PASS][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-bsw-n3050/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@slpc:
    - bat-rpls-2:         [DMESG-WARN][25] ([i915#6367]) -> [PASS][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-rpls-2/igt@i915_selftest@live@slpc.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rpls-2/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-11:         [DMESG-FAIL][27] ([i915#7913]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-dg2-11/igt@i915_selftest@live@workarounds.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:
    - bat-rplp-1:         [ABORT][29] ([i915#8442] / [i915#8668]) -> [PASS][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@i915_module_load@load:
    - bat-adlp-11:        [ABORT][31] ([i915#4423]) -> [DMESG-WARN][32] ([i915#4423])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-adlp-11/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-adlp-11/igt@i915_module_load@load.html

  * igt@i915_selftest@live@requests:
    - bat-mtlp-6:         [DMESG-FAIL][33] ([i915#8497]) -> [ABORT][34] ([i915#7982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-6/igt@i915_selftest@live@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-6/igt@i915_selftest@live@requests.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7349]: https://gitlab.freedesktop.org/drm/intel/issues/7349
  [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
  [i915#7913]: https://gitlab.freedesktop.org/drm/intel/issues/7913
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#7982]: https://gitlab.freedesktop.org/drm/intel/issues/7982
  [i915#8011]: https://gitlab.freedesktop.org/drm/intel/issues/8011
  [i915#8434]: https://gitlab.freedesktop.org/drm/intel/issues/8434
  [i915#8442]: https://gitlab.freedesktop.org/drm/intel/issues/8442
  [i915#8497]: https://gitlab.freedesktop.org/drm/intel/issues/8497
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8843]: https://gitlab.freedesktop.org/drm/intel/issues/8843


Build changes
-------------

  * Linux: CI_DRM_13457 -> Patchwork_112196v10

  CI-20190529: 20190529
  CI_DRM_13457: 3e077570e831cc4ab9184fa015f9bfab34a8b99d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7411: 7411
  Patchwork_112196v10: 3e077570e831cc4ab9184fa015f9bfab34a8b99d @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ee5eed4234c5 drm/i915/gvt: Drop final dependencies on KVM internal details
c970be979ecd KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers
f4cd9dd10337 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs
622aa9f05836 KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled
20f9479c205b KVM: x86/mmu: Assert that correct locks are held for page write-tracking
f5bc8f080210 KVM: x86/mmu: Rename page-track APIs to reflect the new reality
f1ea119e03e9 KVM: x86/mmu: Drop infrastructure for multiple page-track modes
52b962ad8a67 KVM: x86/mmu: Use page-track notifiers iff there are external users
db638a92d3e6 KVM: x86/mmu: Move KVM-only page-track declarations to internal header
db73d3175594 KVM: x86: Remove the unused page-track hook track_flush_slot()
296319696c92 drm/i915/gvt: switch from ->track_flush_slot() to ->track_remove_region()
7948234f996a KVM: x86: Add a new page-track hook to handle memslot deletion
16e9f10554aa drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot
dc30d5a606c9 KVM: x86: Reject memslot MOVE operations if KVMGT is attached
2831021e65c7 KVM: drm/i915/gvt: Drop @vcpu from KVM's ->track_write() hook
7216d4c814cc KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs
4b8e0a0281e0 KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change
dc54becdca08 KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c
fb9df13904fe drm/i915/gvt: Protect gfn hash table with vgpu_lock
b84a678ef1fd drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()
0e4e646b2844 drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns
6eb0a11cf498 drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT
a1deed2e3c9b drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type
880d0f0df9f6 drm/i915/gvt: Explicitly check that vGPU is attached before shadowing
fd1b2b7c512e drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()
154270fd8c87 drm/i915/gvt: Don't try to unpin an empty page range
743161a18776 drm/i915/gvt: Verify hugepages are contiguous in physical address space
89a9b336814f drm/i915/gvt: remove interface intel_gvt_is_valid_gfn
f4445c85cc5a drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/index.html

--===============3722102328278950592==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: KVM: KVMGT fixes and page-track cleanups (rev10)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112196/">https://patchwork.freedesktop.org/series/112196/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13457 -&gt; Patchwork_112196v10</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/index.html</p>
<h2>Participating hosts (39 -&gt; 38)</h2>
<p>Missing    (1): fi-snb-2520m </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112196v10 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>bat-adlp-11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-adlp-11/igt@core_auth@basic-auth.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8011">i915#8011</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-kbl-guc/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8843">i915#8843</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-8/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-atsm-1/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7349">i915#7349</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-8/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-8/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>
<p>bat-mtlp-8:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-8/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-8/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
<li>
<p>bat-rpls-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-rpls-1/igt@i915_selftest@live@slpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rpls-1/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-bsw-n3050/igt@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rplp-1/igt@kms_psr@primary_mmap_gtt.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8434">i915#8434</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>bat-rplp-1:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rplp-1/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-cfl-8109u/igt@i915_pm_rpm@basic-rte.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7911">i915#7911</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/fi-bsw-n3050/igt@i915_selftest@live@execlists.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>bat-rpls-2:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-rpls-2/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rpls-2/igt@i915_selftest@live@slpc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-11:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-dg2-11/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7913">i915#7913</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-dg2-11/igt@i915_selftest@live@workarounds.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1:</p>
<ul>
<li>bat-rplp-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8442">i915#8442</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8668">i915#8668</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-rplp-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-d-edp-1.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>bat-adlp-11:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-adlp-11/igt@i915_module_load@load.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-adlp-11/igt@i915_module_load@load.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>bat-mtlp-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13457/bat-mtlp-6/igt@i915_selftest@live@requests.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8497">i915#8497</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112196v10/bat-mtlp-6/igt@i915_selftest@live@requests.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7982">i915#7982</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13457 -&gt; Patchwork_112196v10</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13457: 3e077570e831cc4ab9184fa015f9bfab34a8b99d @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7411: 7411<br />
  Patchwork_112196v10: 3e077570e831cc4ab9184fa015f9bfab34a8b99d @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ee5eed4234c5 drm/i915/gvt: Drop final dependencies on KVM internal details<br />
c970be979ecd KVM: x86/mmu: Handle KVM bookkeeping in page-track APIs, not callers<br />
f4cd9dd10337 KVM: x86/mmu: Drop @slot param from exported/external page-track APIs<br />
622aa9f05836 KVM: x86/mmu: Bug the VM if write-tracking is used but not enabled<br />
20f9479c205b KVM: x86/mmu: Assert that correct locks are held for page write-tracking<br />
f5bc8f080210 KVM: x86/mmu: Rename page-track APIs to reflect the new reality<br />
f1ea119e03e9 KVM: x86/mmu: Drop infrastructure for multiple page-track modes<br />
52b962ad8a67 KVM: x86/mmu: Use page-track notifiers iff there are external users<br />
db638a92d3e6 KVM: x86/mmu: Move KVM-only page-track declarations to internal header<br />
db73d3175594 KVM: x86: Remove the unused page-track hook track_flush_slot()<br />
296319696c92 drm/i915/gvt: switch from -&gt;track_flush_slot() to -&gt;track_remove_region()<br />
7948234f996a KVM: x86: Add a new page-track hook to handle memslot deletion<br />
16e9f10554aa drm/i915/gvt: Don't bother removing write-protection on to-be-deleted slot<br />
dc30d5a606c9 KVM: x86: Reject memslot MOVE operations if KVMGT is attached<br />
2831021e65c7 KVM: drm/i915/gvt: Drop @vcpu from KVM's -&gt;track_write() hook<br />
7216d4c814cc KVM: x86/mmu: Don't bounce through page-track mechanism for guest PTEs<br />
4b8e0a0281e0 KVM: x86/mmu: Don't rely on page-track mechanism to flush on memslot change<br />
dc54becdca08 KVM: x86/mmu: Move kvm_arch_flush_shadow_{all, memslot}() to mmu.c<br />
fb9df13904fe drm/i915/gvt: Protect gfn hash table with vgpu_lock<br />
b84a678ef1fd drm/i915/gvt: Drop unused helper intel_vgpu_reset_gtt()<br />
0e4e646b2844 drm/i915/gvt: Use an "unsigned long" to iterate over memslot gfns<br />
6eb0a11cf498 drm/i915/gvt: Don't rely on KVM's gfn_to_pfn() to query possible 2M GTT<br />
a1deed2e3c9b drm/i915/gvt: Error out on an attempt to shadowing an unknown GTT entry type<br />
880d0f0df9f6 drm/i915/gvt: Explicitly check that vGPU is attached before shadowing<br />
fd1b2b7c512e drm/i915/gvt: Put the page reference obtained by KVM's gfn_to_pfn()<br />
154270fd8c87 drm/i915/gvt: Don't try to unpin an empty page range<br />
743161a18776 drm/i915/gvt: Verify hugepages are contiguous in physical address space<br />
89a9b336814f drm/i915/gvt: remove interface intel_gvt_is_valid_gfn<br />
f4445c85cc5a drm/i915/gvt: Verify pfn is "valid" before dereferencing "struct page"</p>

</body>
</html>

--===============3722102328278950592==--
