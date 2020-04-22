Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 182BF1B39B8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 10:12:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64D576E358;
	Wed, 22 Apr 2020 08:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A36946E357;
 Wed, 22 Apr 2020 08:12:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9CE4FA47EA;
 Wed, 22 Apr 2020 08:12:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 22 Apr 2020 08:12:33 -0000
Message-ID: <158754315363.5179.7132465744420359803@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200422072037.17163-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200422072037.17163-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Hold_obj-=3Evma=2Elock_over_for=5Feach=5Fggtt=5Fvm?=
 =?utf-8?b?YSgpIChyZXYyKQ==?=
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

Series: drm/i915/gem: Hold obj->vma.lock over for_each_ggtt_vma() (rev2)
URL   : https://patchwork.freedesktop.org/series/76309/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8347 -> Patchwork_17413
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17413/index.html

Known issues
------------

  Here are the changes found in Patchwork_17413 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@active:
    - fi-skl-lmem:        [PASS][1] -> [DMESG-FAIL][2] ([i915#666])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-skl-lmem/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17413/fi-skl-lmem/igt@i915_selftest@live@active.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-icl-y:           [DMESG-FAIL][3] ([i915#1314]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8347/fi-icl-y/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17413/fi-icl-y/igt@i915_selftest@live@execlists.html

  
  [i915#1314]: https://gitlab.freedesktop.org/drm/intel/issues/1314
  [i915#666]: https://gitlab.freedesktop.org/drm/intel/issues/666


Participating hosts (49 -> 43)
------------------------------

  Missing    (6): fi-cml-u2 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8347 -> Patchwork_17413

  CI-20190529: 20190529
  CI_DRM_8347: 4acd2fd67fbcfe23e07130bab11a47d4b43d0bd4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5604: 18cc19ece602ba552a8386222b49e7e82820f9aa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17413: de20c07a5fce12bd62692b8df4c4de8f8c3fa1fc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

de20c07a5fce drm/i915/gem: Hold obj->vma.lock over for_each_ggtt_vma()

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17413/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
