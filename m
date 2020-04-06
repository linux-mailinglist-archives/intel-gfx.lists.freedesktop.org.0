Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D8019F6BC
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C75E6E3BB;
	Mon,  6 Apr 2020 13:19:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 02E8B6E3B8;
 Mon,  6 Apr 2020 13:19:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F00F5A00C7;
 Mon,  6 Apr 2020 13:19:29 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 06 Apr 2020 13:19:29 -0000
Message-ID: <158617916997.4192.5264506597432983823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200406123616.7334-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200406123616.7334-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Take_DBG=5FFORCE=5FRELOC_into_account_prior_to_usi?=
 =?utf-8?q?ng_reloc=5Fgpu?=
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

Series: drm/i915/gem: Take DBG_FORCE_RELOC into account prior to using reloc_gpu
URL   : https://patchwork.freedesktop.org/series/75546/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8259 -> Patchwork_17218
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17218/index.html

Known issues
------------

  Here are the changes found in Patchwork_17218 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_tiled_fence_blits@basic:
    - fi-blb-e6850:       [PASS][1] -> [DMESG-WARN][2] ([i915#1612])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17218/fi-blb-e6850/igt@gem_tiled_fence_blits@basic.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cml-u2:          [PASS][3] -> [FAIL][4] ([i915#976])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17218/fi-cml-u2/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][5] -> [SKIP][6] ([fdo#109271]) +24 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8259/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17218/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#1612]: https://gitlab.freedesktop.org/drm/intel/issues/1612
  [i915#976]: https://gitlab.freedesktop.org/drm/intel/issues/976


Participating hosts (53 -> 46)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8259 -> Patchwork_17218

  CI-20190529: 20190529
  CI_DRM_8259: 450fc86b62651336f9b5fde79c068df7b4c95aa4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5571: da79d5fa2ebed237f0561a54b4b63bae6f21503a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17218: ba343fe4ed968ea92207838b69dd79c8e09f9b53 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ba343fe4ed96 drm/i915/gem: Take DBG_FORCE_RELOC into account prior to using reloc_gpu

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17218/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
