Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE281C3E99
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 17:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539E26E424;
	Mon,  4 May 2020 15:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 23D7089B06;
 Mon,  4 May 2020 15:34:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1D7B3A00CC;
 Mon,  4 May 2020 15:34:18 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 04 May 2020 15:34:18 -0000
Message-ID: <158860645811.5817.12518024648324215277@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200504140629.28240-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200504140629.28240-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Implement_legacy_MI=5FSTORE=5FDATA=5FIMM_=28rev2?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gem: Implement legacy MI_STORE_DATA_IMM (rev2)
URL   : https://patchwork.freedesktop.org/series/76866/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8419 -> Patchwork_17570
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17570/index.html

New tests
---------

  New tests have been introduced between CI_DRM_8419 and Patchwork_17570:

### New IGT tests (1) ###

  * igt@i915_selftest@live@gem_execbuf:
    - Statuses : 41 pass(s)
    - Exec time: [0.46, 2.62] s

  

Known issues
------------

  Here are the changes found in Patchwork_17570 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [FAIL][1] ([i915#262]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8419/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17570/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  * {igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1}:
    - fi-pnv-d510:        [FAIL][3] ([i915#34]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8419/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17570/fi-pnv-d510/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8419 -> Patchwork_17570

  CI-20190529: 20190529
  CI_DRM_8419: 4331ff197d0a7330c311830569aee90bab940694 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5628: 652a3fd8966345fa5498904ce80a2027a6782783 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17570: ff32ff0a01797ee7c806f0f18b0da8d4be57366b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ff32ff0a0179 drm/i915/gem: Implement legacy MI_STORE_DATA_IMM

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17570/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
