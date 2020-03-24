Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE8F9190E3A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 13:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CCB96E47B;
	Tue, 24 Mar 2020 12:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E2C876E479;
 Tue, 24 Mar 2020 12:57:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DBBA2A47E1;
 Tue, 24 Mar 2020 12:57:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 24 Mar 2020 12:57:25 -0000
Message-ID: <158505464586.5747.1624177153565860767@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200324120718.977-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200324120718.977-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915/execlists=3A_Pull_tasklet_?=
 =?utf-8?q?interrupt-bh_local_to_direct_submission?=
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

Series: series starting with [1/2] drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission
URL   : https://patchwork.freedesktop.org/series/75008/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8182 -> Patchwork_17065
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/index.html

Known issues
------------

  Here are the changes found in Patchwork_17065 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cml-u2:          [PASS][1] -> [INCOMPLETE][2] ([i915#283] / [i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-cml-u2/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@hangcheck:
    - fi-icl-guc:         [PASS][3] -> [INCOMPLETE][4] ([fdo#108569])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-icl-guc/igt@i915_selftest@live@hangcheck.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-icl-guc/igt@i915_selftest@live@hangcheck.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][5] -> [FAIL][6] ([i915#217])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-pnv-d510:        [PASS][7] -> [FAIL][8] ([i915#34])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-8700k:       [DMESG-FAIL][9] ([i915#481]) -> [PASS][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-cfl-8700k/igt@i915_selftest@live@gem_contexts.html
    - fi-cml-s:           [DMESG-FAIL][11] ([i915#877]) -> [PASS][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-cml-s/igt@i915_selftest@live@gem_contexts.html
    - fi-cfl-guc:         [DMESG-FAIL][13] ([i915#481]) -> [PASS][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [INCOMPLETE][15] ([i915#424]) -> [PASS][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@kms_chamelium@vga-edid-read:
    - fi-kbl-7500u:       [SKIP][17] ([fdo#109271]) -> [FAIL][18] ([i915#217])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8182/fi-kbl-7500u/igt@kms_chamelium@vga-edid-read.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/fi-kbl-7500u/igt@kms_chamelium@vga-edid-read.html

  
  [fdo#108569]: https://bugs.freedesktop.org/show_bug.cgi?id=108569
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#217]: https://gitlab.freedesktop.org/drm/intel/issues/217
  [i915#283]: https://gitlab.freedesktop.org/drm/intel/issues/283
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#481]: https://gitlab.freedesktop.org/drm/intel/issues/481
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656
  [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877


Participating hosts (51 -> 40)
------------------------------

  Missing    (11): fi-ilk-m540 fi-hsw-4200u fi-skl-6770hq fi-glk-dsi fi-byt-squawks fi-bwr-2160 fi-bsw-cyan fi-ctg-p8600 fi-elk-e7500 fi-blb-e6850 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8182 -> Patchwork_17065

  CI-20190529: 20190529
  CI_DRM_8182: e5245084567cd7f6f93b07baaebf8a2b4d914620 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5531: 79e7382202c104b247a672c61a6186d1f51e4958 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17065: 6cfb39892bf9c0b2cfa57708bb6ae3276f9179fa @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

6cfb39892bf9 drm/i915: Immediately execute the fenced work
1b776cbb8e68 drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17065/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
