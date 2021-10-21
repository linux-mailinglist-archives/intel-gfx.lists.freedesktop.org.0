Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 941F243602F
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Oct 2021 13:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72EE96E433;
	Thu, 21 Oct 2021 11:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CEAA76E432;
 Thu, 21 Oct 2021 11:27:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BF21AA0169;
 Thu, 21 Oct 2021 11:27:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6628779286460310332=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 21 Oct 2021 11:27:10 -0000
Message-ID: <163481563075.20178.7894547031370992135@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211021103605.735002-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/28=5D_drm/i915=3A_Fix_i915=5Frequest_fe?=
 =?utf-8?q?nce_wait_semantics?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============6628779286460310332==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [01/28] drm/i915: Fix i915_request fence wait semantics
URL   : https://patchwork.freedesktop.org/series/96115/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10768 -> Patchwork_21402
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21402:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_frontbuffer_tracking@basic:
    - {fi-hsw-gt1}:       [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html

  
Known issues
------------

  Here are the changes found in Patchwork_21402 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_huc_copy@huc-copy:
    - fi-glk-dsi:         NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#2190])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html

  * igt@gem_tiled_blits@basic:
    - fi-pnv-d510:        [PASS][4] -> [INCOMPLETE][5] ([i915#299])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-pnv-d510/igt@gem_tiled_blits@basic.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-pnv-d510/igt@gem_tiled_blits@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][6] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-glk-dsi:         NOTRUN -> [SKIP][7] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cfl-8109u:       [PASS][8] -> [FAIL][9] ([i915#2546])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-glk-dsi:         NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#533])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_psr@primary_page_flip:
    - fi-glk-dsi:         NOTRUN -> [SKIP][11] ([fdo#109271]) +30 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@kms_psr@primary_page_flip.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][12] ([fdo#109271]) +63 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  * igt@runner@aborted:
    - fi-pnv-d510:        NOTRUN -> [FAIL][13] ([i915#2403] / [i915#4312])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-pnv-d510/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - {fi-hsw-gt1}:       [DMESG-WARN][14] ([i915#3303]) -> [PASS][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-cml-u2:          [DMESG-WARN][16] ([i915#4269]) -> [PASS][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
  [i915#299]: https://gitlab.freedesktop.org/drm/intel/issues/299
  [i915#3303]: https://gitlab.freedesktop.org/drm/intel/issues/3303
  [i915#4269]: https://gitlab.freedesktop.org/drm/intel/issues/4269
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533


Participating hosts (41 -> 35)
------------------------------

  Additional (2): fi-glk-dsi fi-bsw-nick 
  Missing    (8): fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-snb-2600 


Build changes
-------------

  * Linux: CI_DRM_10768 -> Patchwork_21402

  CI-20190529: 20190529
  CI_DRM_10768: 0e1c99720e0793390c9758dc1b4eedd7395b1382 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21402: cb7d236df1b36083cc90723c0699ac14c252adaa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

cb7d236df1b3 drm/i915: Remove short-term pins from execbuf, v4.
deb3047c26f8 drm/i915: Remove support for unlocked i915_vma unbind
40aa9c364286 drm/i915: Remove assert_object_held_shared
2608631d4a65 drm/i915: Require object lock when freeing pages during destruction
5845081d8530 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind
d80031a5a1fa drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors
1752c3fdca53 drm/i915: Make i915_gem_evict_vm work correctly for already locked objects
9ffbca093c70 drm/i915: Drain the ttm delayed workqueue too
83936045aeae drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.
65bb798433f5 drm/i915: Pass trylock context to callers
b30510e7c7a5 drm/i915: Take trylock during eviction, v2.
12aa1adab3a1 drm/i915: Ensure gem_contexts selftests work with unbind changes.
1893beb58bd2 drm/i915: Rework context handling in hugepages selftests
6af62101e38d drm/i915: Add lock for unbinding to i915_gem_object_ggtt_pin_ww
9ca977d4ea2d drm/i915: Take object lock in i915_ggtt_pin if ww is not set
971bfcf716db drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members
494b7f7d1d07 drm/i915: Remove resv from i915_vma
5b0d3b29f3ce drm/i915/pm: Move CONTEXT_VALID_BIT check
3324301339ce drm/i915: Change shrink ordering to use locking around unbinding.
c56256b7900b drm/i915: vma is always backed by an object.
5fa1e4d967c0 drm/i915: Create a full object for mock_ring, v2.
e22208d09f16 drm/i915: Create a dummy object for gen6 ppgtt
ce8a62bcaae3 drm/i915: Remove gen6_ppgtt_unpin_all
ec8de168f667 drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling, v2.
1740df189181 drm/i915: Remove unused bits of i915_vma/active api
6df3a2f9c58a drm/i915: Remove dma_resv_prune
0c036c1715f3 drm/i915: use new iterator in i915_gem_object_wait_reservation
ddb763fd10e7 drm/i915: Fix i915_request fence wait semantics

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html

--===============6628779286460310332==
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
<tr><td><b>Series:</b></td><td>series starting with [01/28] drm/i915: Fix i915_request fence wait semantics</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/96115/">https://patchwork.freedesktop.org/series/96115/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10768 -&gt; Patchwork_21402</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21402:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_frontbuffer_tracking@basic:<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-hsw-gt1/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21402 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-pnv-d510/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-pnv-d510/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/299">i915#299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-cfl-8109u/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2546">i915#2546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-glk-dsi:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-glk-dsi/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +63 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-pnv-d510/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3303">i915#3303</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-hsw-gt1/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10768/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4269">i915#4269</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21402/fi-cml-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (41 -&gt; 35)</h2>
<p>Additional (2): fi-glk-dsi fi-bsw-nick <br />
  Missing    (8): fi-bdw-5557u bat-dg1-6 bat-dg1-5 fi-hsw-4200u fi-bsw-cyan bat-adlp-4 fi-ctg-p8600 fi-snb-2600 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10768 -&gt; Patchwork_21402</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10768: 0e1c99720e0793390c9758dc1b4eedd7395b1382 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6258: 4c80c71d7dec29b6376846ae96bd04dc0b6e34d9 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21402: cb7d236df1b36083cc90723c0699ac14c252adaa @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>cb7d236df1b3 drm/i915: Remove short-term pins from execbuf, v4.<br />
deb3047c26f8 drm/i915: Remove support for unlocked i915_vma unbind<br />
40aa9c364286 drm/i915: Remove assert_object_held_shared<br />
2608631d4a65 drm/i915: Require object lock when freeing pages during destruction<br />
5845081d8530 drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind<br />
d80031a5a1fa drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors<br />
1752c3fdca53 drm/i915: Make i915_gem_evict_vm work correctly for already locked objects<br />
9ffbca093c70 drm/i915: Drain the ttm delayed workqueue too<br />
83936045aeae drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.<br />
65bb798433f5 drm/i915: Pass trylock context to callers<br />
b30510e7c7a5 drm/i915: Take trylock during eviction, v2.<br />
12aa1adab3a1 drm/i915: Ensure gem_contexts selftests work with unbind changes.<br />
1893beb58bd2 drm/i915: Rework context handling in hugepages selftests<br />
6af62101e38d drm/i915: Add lock for unbinding to i915_gem_object_ggtt_pin_ww<br />
9ca977d4ea2d drm/i915: Take object lock in i915_ggtt_pin if ww is not set<br />
971bfcf716db drm/i915: Remove pages_mutex and intel_gtt-&gt;vma_ops.set/clear_pages members<br />
494b7f7d1d07 drm/i915: Remove resv from i915_vma<br />
5b0d3b29f3ce drm/i915/pm: Move CONTEXT_VALID_BIT check<br />
3324301339ce drm/i915: Change shrink ordering to use locking around unbinding.<br />
c56256b7900b drm/i915: vma is always backed by an object.<br />
5fa1e4d967c0 drm/i915: Create a full object for mock_ring, v2.<br />
e22208d09f16 drm/i915: Create a dummy object for gen6 ppgtt<br />
ce8a62bcaae3 drm/i915: Remove gen6_ppgtt_unpin_all<br />
ec8de168f667 drm/i915: Slightly rework EXEC_OBJECT_CAPTURE handling, v2.<br />
1740df189181 drm/i915: Remove unused bits of i915_vma/active api<br />
6df3a2f9c58a drm/i915: Remove dma_resv_prune<br />
0c036c1715f3 drm/i915: use new iterator in i915_gem_object_wait_reservation<br />
ddb763fd10e7 drm/i915: Fix i915_request fence wait semantics</p>

</body>
</html>

--===============6628779286460310332==--
