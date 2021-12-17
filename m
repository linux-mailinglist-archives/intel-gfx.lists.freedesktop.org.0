Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F25224786C5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 10:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3858010FA47;
	Fri, 17 Dec 2021 09:10:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF46010FA47;
 Fri, 17 Dec 2021 09:10:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4CE3A9932;
 Fri, 17 Dec 2021 09:10:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7419552102025682425=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Fri, 17 Dec 2021 09:10:22 -0000
Message-ID: <163973222278.10413.12070559165269947218@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211216142749.1966107-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Remove_short_term_pins_from_execbuf_by_requiring_lock_?=
 =?utf-8?q?to_unbind=2E?=
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

--===============7419552102025682425==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Remove short term pins from execbuf by requiring lock to unbind.
URL   : https://patchwork.freedesktop.org/series/98137/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11009 -> Patchwork_21861
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/index.html

Participating hosts (43 -> 34)
------------------------------

  Additional (1): fi-pnv-d510 
  Missing    (10): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Known issues
------------

  Here are the changes found in Patchwork_21861 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_suspend@basic-s0:
    - fi-tgl-1115g4:      [PASS][1] -> [FAIL][2] ([i915#1888])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11009/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-skl-6600u:       [PASS][3] -> [INCOMPLETE][4] ([i915#4547])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11009/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html

  * igt@prime_vgem@basic-userptr:
    - fi-pnv-d510:        NOTRUN -> [SKIP][5] ([fdo#109271]) +57 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-pnv-d510/igt@prime_vgem@basic-userptr.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][6] ([i915#1888]) -> [PASS][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11009/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547


Build changes
-------------

  * Linux: CI_DRM_11009 -> Patchwork_21861

  CI-20190529: 20190529
  CI_DRM_11009: 9efbfd937cc876674559ddf8fb1897a00c10019b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6313: 1793ed798cc09966c27bf478781e0c1d6bb23bad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_21861: c54bb29dd0de9657c0becea36437f5bcca1b36fd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

c54bb29dd0de drm/i915: Remove short-term pins from execbuf, v5.
d5c98a7587ba drm/i915: Remove support for unlocked i915_vma unbind
ece7fb471984 drm/i915: Remove assert_object_held_shared
d2242714f33e drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.
8b8d9bb4ffaa drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something
44fc65c4b062 drm/i915: Add locking to i915_gem_evict_vm()
97cc19bfa2a0 drm/i915: Add ww ctx to i915_gem_object_trylock
d1406f612444 drm/i915: Require object lock when freeing pages during destruction
1631c2059017 drm/i915: Trylock the object when shrinking
cc5dd7eac42f drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors
c9892c726d3c drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.
e7fbd118c9b2 drm/i915: Ensure gem_contexts selftests work with unbind changes, v2.
c293606bcd36 drm/i915: Force ww lock for i915_gem_object_ggtt_pin_ww, v2.
9d385c135ad3 drm/i915: Take object lock in i915_ggtt_pin if ww is not set
316d336c98ea drm/i915: Remove pages_mutex and intel_gtt->vma_ops.set/clear_pages members, v3.
91bcecf270f0 drm/i915: Change shrink ordering to use locking around unbinding.
bc08f58eeb3f drm/i915: Remove unused bits of i915_vma/active api

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/index.html

--===============7419552102025682425==
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
<tr><td><b>Series:</b></td><td>drm/i915: Remove short term pins from execbuf by requiring lock to unbind.</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98137/">https://patchwork.freedesktop.org/series/98137/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11009 -&gt; Patchwork_21861</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/index.html</p>
<h2>Participating hosts (43 -&gt; 34)</h2>
<p>Additional (1): fi-pnv-d510 <br />
  Missing    (10): fi-kbl-soraka bat-dg1-6 bat-dg1-5 fi-icl-u2 fi-bsw-cyan bat-adlp-6 bat-adlp-4 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21861 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11009/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11009/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-skl-6600u/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-pnv-d510:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-pnv-d510/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11009/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21861/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11009 -&gt; Patchwork_21861</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11009: 9efbfd937cc876674559ddf8fb1897a00c10019b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6313: 1793ed798cc09966c27bf478781e0c1d6bb23bad @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_21861: c54bb29dd0de9657c0becea36437f5bcca1b36fd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>c54bb29dd0de drm/i915: Remove short-term pins from execbuf, v5.<br />
d5c98a7587ba drm/i915: Remove support for unlocked i915_vma unbind<br />
ece7fb471984 drm/i915: Remove assert_object_held_shared<br />
d2242714f33e drm/i915: Add i915_vma_unbind_unlocked, and take obj lock for i915_vma_unbind, v2.<br />
8b8d9bb4ffaa drm/i915: Add object locking to i915_gem_evict_for_node and i915_gem_evict_something<br />
44fc65c4b062 drm/i915: Add locking to i915_gem_evict_vm()<br />
97cc19bfa2a0 drm/i915: Add ww ctx to i915_gem_object_trylock<br />
d1406f612444 drm/i915: Require object lock when freeing pages during destruction<br />
1631c2059017 drm/i915: Trylock the object when shrinking<br />
cc5dd7eac42f drm/i915: Call i915_gem_evict_vm in vm_fault_gtt to prevent new ENOSPC errors<br />
c9892c726d3c drm/i915: Ensure i915_vma tests do not get -ENOSPC with the locking changes.<br />
e7fbd118c9b2 drm/i915: Ensure gem_contexts selftests work with unbind changes, v2.<br />
c293606bcd36 drm/i915: Force ww lock for i915_gem_object_ggtt_pin_ww, v2.<br />
9d385c135ad3 drm/i915: Take object lock in i915_ggtt_pin if ww is not set<br />
316d336c98ea drm/i915: Remove pages_mutex and intel_gtt-&gt;vma_ops.set/clear_pages members, v3.<br />
91bcecf270f0 drm/i915: Change shrink ordering to use locking around unbinding.<br />
bc08f58eeb3f drm/i915: Remove unused bits of i915_vma/active api</p>

</body>
</html>

--===============7419552102025682425==--
