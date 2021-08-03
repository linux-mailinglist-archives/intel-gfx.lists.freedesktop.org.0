Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6129D3DF84E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 01:19:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2768D89F2A;
	Tue,  3 Aug 2021 23:19:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 15E4D89F2A;
 Tue,  3 Aug 2021 23:19:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0D4E1A47E2;
 Tue,  3 Aug 2021 23:19:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0263241900050668549=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Aug 2021 23:19:39 -0000
Message-ID: <162803277902.9816.8887383765254014017@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210803222943.27686-1-matthew.brost@intel.com>
In-Reply-To: <20210803222943.27686-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUGFy?=
 =?utf-8?q?allel_submission_aka_multi-bb_execbuf_=28rev2=29?=
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

--===============0263241900050668549==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Parallel submission aka multi-bb execbuf (rev2)
URL   : https://patchwork.freedesktop.org/series/92789/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10442 -> Patchwork_20767
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20767/index.html

New tests
---------

  New tests have been introduced between CI_DRM_10442 and Patchwork_20767:

### New IGT tests (2) ###

  * igt@i915_selftest@live@guc_flow_control:
    - Statuses : 28 pass(s)
    - Exec time: [0.39, 4.85] s

  * igt@i915_selftest@live@guc_multi_lrc:
    - Statuses : 28 pass(s)
    - Exec time: [0.39, 5.20] s

  


Changes
-------

  No changes found


Participating hosts (37 -> 33)
------------------------------

  Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_10442 -> Patchwork_20767

  CI-20190529: 20190529
  CI_DRM_10442: d3816ffe379da79a69188424318fe2b5d458347b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20767: 31f37bf214eb7f2a01feb3f13802662fc4b1d1d6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

31f37bf214eb drm/i915/guc: Add delay before disabling scheduling on contexts
fe8d1a1c8b89 drm/i915/execlists: Weak parallel submission support for execlists
dd80d82c5c4f drm/i915: Enable multi-bb execbuf
be69dbafd8a5 drm/i915/guc: Handle errors in multi-lrc requests
692205dd3cff drm/i915: Hold all parallel requests until last request, properly handle error
3e6d8fb0d85c drm/i915: Eliminate unnecessary VMA calls for multi-BB submission
77d80c169b21 drm/i915: Multi-batch execbuffer2
e159516409c6 drm/i915: Force parallel contexts to use copy engine for reloc
b48c4d1c82fb drm/i915: Only track object dependencies on first request
53e1b9709de9 drm/i915: Teach execbuf there can be more than one batch in the objects list
e092e2a0aa4a drm/i915: Allow callers of i915_gem_do_execbuffer to override the batch index
866efe3b7b62 drm/i915: Store batch index in struct i915_execbuffer
ca7de92f4b87 drm/i915: Return output fence from i915_gem_do_execbuffer
866830d7b8df drm/i915: Move output fence handling to i915_gem_execbuffer2
722cabe63be0 drm/i915: Move input/exec fence handling to i915_gem_execbuffer2
94ba50b6aaae drm/i915: Move secure execbuf check to execbuf2
87f926fb4e0e drm/i915/guc: Implement no mid batch preemption for multi-lrc
f04f2fb6c221 drm/i915/guc: Extend GuC flow control selftest for multi-lrc
1e623d060bfa drm/i915/guc: Add basic GuC multi-lrc selftest
f5b94aff1055 drm/i915/doc: Update parallel submit doc to point to i915_drm.h
d70a91bd7039 drm/i915: Connect UAPI to GuC multi-lrc interface
e278330f18d8 drm/i915/guc: Update debugfs for GuC multi-lrc
e99b23e86490 drm/i915/guc: Implement multi-lrc reset
b48693c26c56 drm/i915/guc: Insert submit fences between requests in parent-child relationship
dae43b9ae4ca drm/i915/guc: Implement multi-lrc submission
dac8e22d9b0f drm/i915/guc: Add guc_child_context_destroy
1e00caa2078b drm/i915/guc: Add hang check to GuC submit engine
affe37a98124 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids
9b9cf89ec1fa drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts
de52a524ffff drm/i915/guc: Add multi-lrc context registration
ffe691bcda89 drm/i915/guc: Implement GuC parent-child context pin / unpin functions
fa22d6168e5d drm/i915/guc: Introduce context parent-child relationship
4fc6c6ac891e drm/i915: Expose logical engine instance to user
a00a22e7333d drm/i915: Add logical engine mapping
d89645be64e8 drm/i915/guc: Selftest for GuC flow control
da629af1ed2d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission
68d99ae2054b drm/i915/guc: Take engine PM when a context is pinned with GuC submission
8c650cfb86b5 drm/i915: Add GT PM unpark worker
ac6f010842ee drm/i915/guc: Take GT PM ref when deregistering context
f482b6e988b8 drm/i915/guc: Non-static lrc descriptor registration buffer
889784d21320 drm/i915/guc: Check return of __xa_store when registering a context
112dd7286938 drm/i915/guc: Introduce guc_submit_engine object
9a569e392672 drm/i915/guc: Don't allow requests not ready to consume all guc_ids
314754bac86b drm/i915/guc: Don't return -EAGAIN to user when guc_ids exhausted
27bc3be5a17a drm/i915/guc: Connect the number of guc_ids to debugfs
5e27ca906d33 drm/i915/guc: Allow flexible number of context ids

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20767/index.html

--===============0263241900050668549==
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
<tr><td><b>Series:</b></td><td>Parallel submission aka multi-bb execbuf (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92789/">https://patchwork.freedesktop.org/series/92789/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20767/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20767/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10442 -&gt; Patchwork_20767</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20767/index.html</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10442 and Patchwork_20767:</p>
<h3>New IGT tests (2)</h3>
<ul>
<li>
<p>igt@i915_selftest@live@guc_flow_control:</p>
<ul>
<li>Statuses : 28 pass(s)</li>
<li>Exec time: [0.39, 4.85] s</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@guc_multi_lrc:</p>
<ul>
<li>Statuses : 28 pass(s)</li>
<li>Exec time: [0.39, 5.20] s</li>
</ul>
</li>
</ul>
<h2>Changes</h2>
<p>No changes found</p>
<h2>Participating hosts (37 -&gt; 33)</h2>
<p>Missing    (4): fi-bdw-samus fi-bsw-cyan bat-jsl-1 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10442 -&gt; Patchwork_20767</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10442: d3816ffe379da79a69188424318fe2b5d458347b @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6159: 6135b9cc319ed965e3aafb5b2ae2abf4762a06b2 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20767: 31f37bf214eb7f2a01feb3f13802662fc4b1d1d6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>31f37bf214eb drm/i915/guc: Add delay before disabling scheduling on contexts<br />
fe8d1a1c8b89 drm/i915/execlists: Weak parallel submission support for execlists<br />
dd80d82c5c4f drm/i915: Enable multi-bb execbuf<br />
be69dbafd8a5 drm/i915/guc: Handle errors in multi-lrc requests<br />
692205dd3cff drm/i915: Hold all parallel requests until last request, properly handle error<br />
3e6d8fb0d85c drm/i915: Eliminate unnecessary VMA calls for multi-BB submission<br />
77d80c169b21 drm/i915: Multi-batch execbuffer2<br />
e159516409c6 drm/i915: Force parallel contexts to use copy engine for reloc<br />
b48c4d1c82fb drm/i915: Only track object dependencies on first request<br />
53e1b9709de9 drm/i915: Teach execbuf there can be more than one batch in the objects list<br />
e092e2a0aa4a drm/i915: Allow callers of i915_gem_do_execbuffer to override the batch index<br />
866efe3b7b62 drm/i915: Store batch index in struct i915_execbuffer<br />
ca7de92f4b87 drm/i915: Return output fence from i915_gem_do_execbuffer<br />
866830d7b8df drm/i915: Move output fence handling to i915_gem_execbuffer2<br />
722cabe63be0 drm/i915: Move input/exec fence handling to i915_gem_execbuffer2<br />
94ba50b6aaae drm/i915: Move secure execbuf check to execbuf2<br />
87f926fb4e0e drm/i915/guc: Implement no mid batch preemption for multi-lrc<br />
f04f2fb6c221 drm/i915/guc: Extend GuC flow control selftest for multi-lrc<br />
1e623d060bfa drm/i915/guc: Add basic GuC multi-lrc selftest<br />
f5b94aff1055 drm/i915/doc: Update parallel submit doc to point to i915_drm.h<br />
d70a91bd7039 drm/i915: Connect UAPI to GuC multi-lrc interface<br />
e278330f18d8 drm/i915/guc: Update debugfs for GuC multi-lrc<br />
e99b23e86490 drm/i915/guc: Implement multi-lrc reset<br />
b48693c26c56 drm/i915/guc: Insert submit fences between requests in parent-child relationship<br />
dae43b9ae4ca drm/i915/guc: Implement multi-lrc submission<br />
dac8e22d9b0f drm/i915/guc: Add guc_child_context_destroy<br />
1e00caa2078b drm/i915/guc: Add hang check to GuC submit engine<br />
affe37a98124 drm/i915/guc: Assign contexts in parent-child relationship consecutive guc_ids<br />
9b9cf89ec1fa drm/i915/guc: Ensure GuC schedule operations do not operate on child contexts<br />
de52a524ffff drm/i915/guc: Add multi-lrc context registration<br />
ffe691bcda89 drm/i915/guc: Implement GuC parent-child context pin / unpin functions<br />
fa22d6168e5d drm/i915/guc: Introduce context parent-child relationship<br />
4fc6c6ac891e drm/i915: Expose logical engine instance to user<br />
a00a22e7333d drm/i915: Add logical engine mapping<br />
d89645be64e8 drm/i915/guc: Selftest for GuC flow control<br />
da629af1ed2d drm/i915/guc: Don't call switch_to_kernel_context with GuC submission<br />
68d99ae2054b drm/i915/guc: Take engine PM when a context is pinned with GuC submission<br />
8c650cfb86b5 drm/i915: Add GT PM unpark worker<br />
ac6f010842ee drm/i915/guc: Take GT PM ref when deregistering context<br />
f482b6e988b8 drm/i915/guc: Non-static lrc descriptor registration buffer<br />
889784d21320 drm/i915/guc: Check return of __xa_store when registering a context<br />
112dd7286938 drm/i915/guc: Introduce guc_submit_engine object<br />
9a569e392672 drm/i915/guc: Don't allow requests not ready to consume all guc_ids<br />
314754bac86b drm/i915/guc: Don't return -EAGAIN to user when guc_ids exhausted<br />
27bc3be5a17a drm/i915/guc: Connect the number of guc_ids to debugfs<br />
5e27ca906d33 drm/i915/guc: Allow flexible number of context ids</p>

</body>
</html>

--===============0263241900050668549==--
