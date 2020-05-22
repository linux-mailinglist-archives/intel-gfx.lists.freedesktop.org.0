Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 574CA1DEF2A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 20:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE8286EA26;
	Fri, 22 May 2020 18:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F2B3F6E0E6;
 Fri, 22 May 2020 18:29:24 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EC240A7DFA;
 Fri, 22 May 2020 18:29:24 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 18:29:24 -0000
Message-ID: <159017216493.3045.16034444031078097380@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522174209.8885-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522174209.8885-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_mm/gup=3A_move_=5F=5Fget=5Fuse?=
 =?utf-8?q?r=5Fpages=5Ffast=28=29_down_a_few_lines_in_gup=2Ec?=
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

Series: series starting with [CI,1/4] mm/gup: move __get_user_pages_fast() down a few lines in gup.c
URL   : https://patchwork.freedesktop.org/series/77566/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8526 -> Patchwork_17761
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17761 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17761, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17761/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17761:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@hangcheck:
    - fi-cml-s:           [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8526/fi-cml-s/igt@i915_selftest@live@hangcheck.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17761/fi-cml-s/igt@i915_selftest@live@hangcheck.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1}:
    - fi-elk-e7500:       [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8526/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17761/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a1.html

  
Known issues
------------

  Here are the changes found in Patchwork_17761 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-kbl-7500u:       [PASS][5] -> [FAIL][6] ([i915#262])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8526/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17761/fi-kbl-7500u/igt@kms_chamelium@dp-crc-fast.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@sanitycheck:
    - fi-bwr-2160:        [INCOMPLETE][7] ([i915#489]) -> [PASS][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8526/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17761/fi-bwr-2160/igt@i915_selftest@live@sanitycheck.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8526 -> Patchwork_17761

  CI-20190529: 20190529
  CI_DRM_8526: 9592ac944021f6ace6a96f17001c0531fb538d7f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5675: 74f7488fe4f8acf901b18fc9c6c4d45a972dcad5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17761: 2324b68859350bafca08bab5980a48d2185b90b6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2324b6885935 drm/i915: convert get_user_pages() --> pin_user_pages()
25611799150b mm/gup: introduce pin_user_pages_fast_only()
8f94b0b105bb mm/gup: refactor and de-duplicate gup_fast() code
48c15b755cba mm/gup: move __get_user_pages_fast() down a few lines in gup.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17761/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
