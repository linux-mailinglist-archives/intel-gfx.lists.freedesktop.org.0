Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDCB3ECB16
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 23:15:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A6DCA89B95;
	Sun, 15 Aug 2021 21:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E85F89B95;
 Sun, 15 Aug 2021 21:15:32 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA062A01BB;
 Sun, 15 Aug 2021 21:15:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8163500514375679368=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sun, 15 Aug 2021 21:15:31 -0000
Message-ID: <162906213192.6205.13761410296264336605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210815201559.1150-1-matthew.brost@intel.com>
In-Reply-To: <20210815201559.1150-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgQ2xl?=
 =?utf-8?q?an_up_GuC_CI_failures=2C_simplify_locking=2C_and_kernel_DOC?=
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

--===============8163500514375679368==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Clean up GuC CI failures, simplify locking, and kernel DOC
URL   : https://patchwork.freedesktop.org/series/93704/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10484 -> Patchwork_20826
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20826 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20826, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20826:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@requests:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-guc/igt@i915_selftest@live@requests.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cfl-guc/igt@i915_selftest@live@requests.html
    - fi-kbl-soraka:      [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-soraka/igt@i915_selftest@live@requests.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-soraka/igt@i915_selftest@live@requests.html
    - fi-bxt-dsi:         [PASS][5] -> [DMESG-FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bxt-dsi/igt@i915_selftest@live@requests.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bxt-dsi/igt@i915_selftest@live@requests.html
    - fi-tgl-1115g4:      [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-1115g4/igt@i915_selftest@live@requests.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-tgl-1115g4/igt@i915_selftest@live@requests.html
    - fi-cml-u2:          [PASS][9] -> [DMESG-FAIL][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cml-u2/igt@i915_selftest@live@requests.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cml-u2/igt@i915_selftest@live@requests.html
    - fi-kbl-8809g:       [PASS][11] -> [DMESG-FAIL][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-8809g/igt@i915_selftest@live@requests.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-8809g/igt@i915_selftest@live@requests.html
    - fi-cfl-8700k:       [PASS][13] -> [DMESG-FAIL][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8700k/igt@i915_selftest@live@requests.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cfl-8700k/igt@i915_selftest@live@requests.html
    - fi-cfl-8109u:       [PASS][15] -> [DMESG-FAIL][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8109u/igt@i915_selftest@live@requests.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cfl-8109u/igt@i915_selftest@live@requests.html
    - fi-icl-u2:          [PASS][17] -> [DMESG-FAIL][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-u2/igt@i915_selftest@live@requests.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-icl-u2/igt@i915_selftest@live@requests.html
    - fi-kbl-7500u:       [PASS][19] -> [DMESG-FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-7500u/igt@i915_selftest@live@requests.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-7500u/igt@i915_selftest@live@requests.html
    - fi-bsw-nick:        [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bsw-nick/igt@i915_selftest@live@requests.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bsw-nick/igt@i915_selftest@live@requests.html
    - fi-icl-y:           [PASS][23] -> [DMESG-FAIL][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-y/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-icl-y/igt@i915_selftest@live@requests.html
    - fi-kbl-guc:         [PASS][25] -> [DMESG-FAIL][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-guc/igt@i915_selftest@live@requests.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-guc/igt@i915_selftest@live@requests.html
    - fi-kbl-7567u:       [PASS][27] -> [DMESG-FAIL][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-7567u/igt@i915_selftest@live@requests.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-7567u/igt@i915_selftest@live@requests.html
    - fi-skl-guc:         [PASS][29] -> [DMESG-FAIL][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-guc/igt@i915_selftest@live@requests.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-skl-guc/igt@i915_selftest@live@requests.html
    - fi-bdw-5557u:       [PASS][31] -> [DMESG-FAIL][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bdw-5557u/igt@i915_selftest@live@requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bdw-5557u/igt@i915_selftest@live@requests.html
    - fi-glk-dsi:         [PASS][33] -> [DMESG-FAIL][34]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-glk-dsi/igt@i915_selftest@live@requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-glk-dsi/igt@i915_selftest@live@requests.html
    - fi-bsw-kefka:       [PASS][35] -> [DMESG-FAIL][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bsw-kefka/igt@i915_selftest@live@requests.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bsw-kefka/igt@i915_selftest@live@requests.html
    - fi-skl-6700k2:      [PASS][37] -> [DMESG-FAIL][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-6700k2/igt@i915_selftest@live@requests.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-skl-6700k2/igt@i915_selftest@live@requests.html

  
#### Warnings ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [DMESG-FAIL][39] ([i915#3928]) -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@live@requests:
    - {fi-tgl-dsi}:       [PASS][41] -> [DMESG-FAIL][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_selftest@live@requests.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-tgl-dsi/igt@i915_selftest@live@requests.html
    - {fi-jsl-1}:         [PASS][43] -> [DMESG-FAIL][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-jsl-1/igt@i915_selftest@live@requests.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-jsl-1/igt@i915_selftest@live@requests.html
    - {fi-ehl-2}:         [PASS][45] -> [DMESG-FAIL][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-ehl-2/igt@i915_selftest@live@requests.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-ehl-2/igt@i915_selftest@live@requests.html

  
New tests
---------

  New tests have been introduced between CI_DRM_10484 and Patchwork_20826:

### New IGT tests (1) ###

  * igt@i915_selftest@live@guc:
    - Statuses : 30 pass(s)
    - Exec time: [0.42, 5.06] s

  

Known issues
------------

  Here are the changes found in Patchwork_20826 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_module_load@reload:
    - fi-kbl-soraka:      [PASS][47] -> [DMESG-WARN][48] ([i915#1982])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-soraka/igt@i915_module_load@reload.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-soraka/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [PASS][49] -> [DMESG-FAIL][50] ([i915#1993])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-y/igt@i915_selftest@live@execlists.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-icl-y/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_module_load@reload:
    - {fi-tgl-dsi}:       [DMESG-WARN][51] ([i915#1982] / [k.org#205379]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_module_load@reload.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-tgl-dsi/igt@i915_module_load@reload.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#1993]: https://gitlab.freedesktop.org/drm/intel/issues/1993
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928
  [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379


Participating hosts (37 -> 34)
------------------------------

  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10484 -> Patchwork_20826

  CI-20190529: 20190529
  CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20826: f7ff315bfe3a76713c1f0a16cd92b0908d28e4c6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f7ff315bfe3a drm/i915/guc: Add GuC kernel doc
af14e3698d19 drm/i915/guc: Move GuC priority fields in context under guc_active
eb8a352e7c1f drm/i915/guc: Drop pin count check trick between sched_disable and re-pin
7057a0daff8c drm/i915/guc: Proper xarray usage for contexts_lookup
d97ab34c8bac drm/i915/guc: Rework and simplify locking
4c980575f7af drm/i915/guc: Move guc_blocked fence to struct guc_state
1c2b4c0ac62a drm/i915/guc: Release submit fence from an IRQ
14dc302536e1 drm/i915/guc: Flush G2H work queue during reset
c0ad63d810e6 drm/i915: Allocate error capture in atomic context
6c1c488a3654 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV
025e88fa74d3 drm/i915/guc: Don't touch guc_state.sched_state without a lock
b929abcf3b59 drm/i915/guc: Take context ref when cancelling request
b5e8c08dff35 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H
cddf94c9bda0 drm/i915/selftests: Fix memory corruption in live_lrc_isolation
c18da32e671c drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered
0c0928ba1ba8 drm/i915/selftests: Add a cancel request selftest that triggers a reset
8ec967ce47da drm/i915/guc: Workaround reset G2H is received after schedule done G2H
2739b8f8966f drm/i915/guc: Don't drop ce->guc_active.lock when unwinding context
1d414637d838 drm/i915/guc: Unwind context requests in reverse order
7fe738f56abc drm/i915/guc: outstanding G2H accounting
c9f3859e5dce drm/i915/guc: Fix blocked context accounting

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/index.html

--===============8163500514375679368==
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
<tr><td><b>Series:</b></td><td>Clean up GuC CI failures, simplify locking, and kernel DOC</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93704/">https://patchwork.freedesktop.org/series/93704/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10484 -&gt; Patchwork_20826</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20826 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20826, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20826:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cfl-guc/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-soraka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-soraka/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bxt-dsi/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bxt-dsi/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-1115g4/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-tgl-1115g4/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cml-u2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cml-u2/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-8809g/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-8809g/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8700k/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cfl-8700k/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-cfl-8109u/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-cfl-8109u/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-u2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-icl-u2/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-7500u/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-7500u/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bsw-nick/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bsw-nick/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-y/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-icl-y/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-guc/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-7567u/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-7567u/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-guc/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-skl-guc/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bdw-5557u/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bdw-5557u/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-glk-dsi/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-glk-dsi/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-bsw-kefka/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-bsw-kefka/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-skl-6700k2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-skl-6700k2/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@workarounds:<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>
<p>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-tgl-dsi/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-jsl-1/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-jsl-1/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-ehl-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-ehl-2/igt@i915_selftest@live@requests.html">DMESG-FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_10484 and Patchwork_20826:</p>
<h3>New IGT tests (1)</h3>
<ul>
<li>igt@i915_selftest@live@guc:<ul>
<li>Statuses : 30 pass(s)</li>
<li>Exec time: [0.42, 5.06] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20826 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-kbl-soraka/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-kbl-soraka/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-icl-y/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-icl-y/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1993">i915#1993</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@i915_module_load@reload:<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10484/fi-tgl-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=205379">k.org#205379</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20826/fi-tgl-dsi/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (37 -&gt; 34)</h2>
<p>Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10484 -&gt; Patchwork_20826</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10484: 7de02d5cb1f35bd3f068237444063844dea47ddc @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20826: f7ff315bfe3a76713c1f0a16cd92b0908d28e4c6 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>f7ff315bfe3a drm/i915/guc: Add GuC kernel doc<br />
af14e3698d19 drm/i915/guc: Move GuC priority fields in context under guc_active<br />
eb8a352e7c1f drm/i915/guc: Drop pin count check trick between sched_disable and re-pin<br />
7057a0daff8c drm/i915/guc: Proper xarray usage for contexts_lookup<br />
d97ab34c8bac drm/i915/guc: Rework and simplify locking<br />
4c980575f7af drm/i915/guc: Move guc_blocked fence to struct guc_state<br />
1c2b4c0ac62a drm/i915/guc: Release submit fence from an IRQ<br />
14dc302536e1 drm/i915/guc: Flush G2H work queue during reset<br />
c0ad63d810e6 drm/i915: Allocate error capture in atomic context<br />
6c1c488a3654 drm/i915/guc: Reset LRC descriptor if register returns -ENODEV<br />
025e88fa74d3 drm/i915/guc: Don't touch guc_state.sched_state without a lock<br />
b929abcf3b59 drm/i915/guc: Take context ref when cancelling request<br />
b5e8c08dff35 drm/i915/selftests: Add initial GuC selftest for scrubbing lost G2H<br />
cddf94c9bda0 drm/i915/selftests: Fix memory corruption in live_lrc_isolation<br />
c18da32e671c drm/i915/guc: Don't enable scheduling on a banned context, guc_id invalid, not registered<br />
0c0928ba1ba8 drm/i915/selftests: Add a cancel request selftest that triggers a reset<br />
8ec967ce47da drm/i915/guc: Workaround reset G2H is received after schedule done G2H<br />
2739b8f8966f drm/i915/guc: Don't drop ce-&gt;guc_active.lock when unwinding context<br />
1d414637d838 drm/i915/guc: Unwind context requests in reverse order<br />
7fe738f56abc drm/i915/guc: outstanding G2H accounting<br />
c9f3859e5dce drm/i915/guc: Fix blocked context accounting</p>

</body>
</html>

--===============8163500514375679368==--
