Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE33C1948AC
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 21:19:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0E86E353;
	Thu, 26 Mar 2020 20:19:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 40F266E2EC;
 Thu, 26 Mar 2020 20:19:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 39092A00E6;
 Thu, 26 Mar 2020 20:19:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 26 Mar 2020 20:19:25 -0000
Message-ID: <158525396520.23002.5231800953749830673@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200326145159.27431-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200326145159.27431-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/12=5D_drm/i915/selftests=3A_Add_request?=
 =?utf-8?q?_throughput_measurement_to_perf?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [01/12] drm/i915/selftests: Add request throughput measurement to perf
URL   : https://patchwork.freedesktop.org/series/75124/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8195 -> Patchwork_17099
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17099 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17099, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17099:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@execlists:
    - fi-skl-lmem:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-lmem/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-skl-lmem/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-guc/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-cfl-guc/igt@i915_selftest@live@execlists.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8195 and Patchwork_17099:

### New IGT tests (2) ###

  * igt@dmabuf@all@dma_fence_chain:
    - Statuses : 18 pass(s)
    - Exec time: [7.35, 29.18] s

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 18 pass(s)
    - Exec time: [0.03, 0.07] s

  

Known issues
------------

  Here are the changes found in Patchwork_17099 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-apl-guc:         [PASS][7] -> [INCOMPLETE][8] ([fdo#103927] / [fdo#112175])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-apl-guc/igt@i915_selftest@live@execlists.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-apl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       [PASS][9] -> [INCOMPLETE][10] ([fdo#112259])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           [PASS][11] -> [INCOMPLETE][12] ([i915#283])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-cml-s/igt@i915_selftest@live@execlists.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-6700k2:      [PASS][13] -> [INCOMPLETE][14] ([fdo#112175])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-skl-6700k2/igt@i915_selftest@live@execlists.html
    - fi-cml-u2:          [PASS][15] -> [INCOMPLETE][16] ([fdo#112175] / [i915#283])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-cml-u2/igt@i915_selftest@live@execlists.html
    - fi-kbl-guc:         [PASS][17] -> [INCOMPLETE][18] ([CI#80] / [fdo#112175] / [fdo#112259])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-guc/igt@i915_selftest@live@execlists.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-kbl-guc/igt@i915_selftest@live@execlists.html
    - fi-kbl-7500u:       [PASS][19] -> [INCOMPLETE][20] ([fdo#112175] / [fdo#112259])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-kbl-7500u/igt@i915_selftest@live@execlists.html
    - fi-kbl-8809g:       [PASS][21] -> [INCOMPLETE][22] ([CI#80] / [fdo#112175] / [fdo#112259])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-8809g/igt@i915_selftest@live@execlists.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-kbl-8809g/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@requests:
    - fi-icl-guc:         [PASS][23] -> [INCOMPLETE][24] ([fdo#109644] / [fdo#110464])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-guc/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-icl-guc/igt@i915_selftest@live@requests.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-icl-u2:          [PASS][25] -> [FAIL][26] ([i915#976])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-icl-u2/igt@kms_chamelium@dp-edid-read.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-u2:          [INCOMPLETE][27] ([fdo#108569]) -> [PASS][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-u2/igt@i915_selftest@live@hangcheck.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-icl-u2/igt@i915_selftest@live@hangcheck.html

  
#### Warnings ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-dsi:         [DMESG-FAIL][29] ([fdo#108569]) -> [INCOMPLETE][30] ([i915#140])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-icl-dsi/igt@i915_selftest@live@execlists.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-icl-dsi/igt@i915_selftest@live@execlists.html

  * igt@runner@aborted:
    - fi-kbl-8809g:       [FAIL][31] ([i915#1209]) -> [FAIL][32] ([i915#1485] / [i915#656])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8195/fi-kbl-8809g/igt@runner@aborted.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/fi-kbl-8809g/igt@runner@aborted.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109644]: https://bugs.freedesktop.org/show_bug.cgi?id=109644
  [fdo#110464]: https://bugs.freedesktop.org/show_bug.cgi?id=110464
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [i915#1209]: https://gitlab.freedesktop.org/drm/intel/issues/1209
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#1485]: https://gitlab.freedesktop.org/drm/intel/issues/1485
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (49 -> 32)
------------------------------

  Missing    (17): fi-kbl-soraka fi-ilk-m540 fi-bsw-n3050 fi-byt-j1900 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-snb-2520m fi-ctg-p8600 fi-gdg-551 fi-kbl-7560u fi-byt-n2820 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8195 -> Patchwork_17099

  CI-20190529: 20190529
  CI_DRM_8195: bcb3db890b651ee74ca510bbc4dacebdaa65d311 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5539: e7aae12e37771a8b7796ba252574eb832a5839c3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17099: 275b5d3e7247d9a695bc7a2341994784c94ff9bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

275b5d3e7247 drm/i915/gt: Declare when we enabled timeslicing
70343118e687 drm/i915/gt: Yield the timeslice if caught waiting on a user semaphore
92ebe33e0de7 drm/i915/gem: Allow combining submit-fences with syncobj
399608cd52b2 drm/i915/gem: Teach execbuf how to wait on future syncobj
68a0bad1f9b4 drm/syncobj: Allow use of dma-fence-proxy
864706ced80d dma-buf: Proxy fence, an unsignaled fence placeholder
cb7a78a6b34e dma-buf: Exercise dma-fence-chain under selftests
e25810547705 dma-buf: Report signaled links inside dma-fence-chain
c63b2aff058b dma-buf: Prettify typecasts for dma-fence-chain
20bb84d17d20 drm/i915/perf: Schedule oa_config after modifying the contexts
b7ab7a745aca drm/i915: Wrap i915_active in a simple kreffed struct
1d8f9dafbff4 drm/i915/selftests: Add request throughput measurement to perf

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17099/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
