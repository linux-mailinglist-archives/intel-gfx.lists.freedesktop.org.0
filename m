Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE2751BC872
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 20:33:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF806E8B0;
	Tue, 28 Apr 2020 18:33:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C8D186E8B0;
 Tue, 28 Apr 2020 18:33:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C1E82A0BCB;
 Tue, 28 Apr 2020 18:33:43 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?TWljaGHFgiBPcnplxYI=?= <michalorzel.eng@gmail.com>
Date: Tue, 28 Apr 2020 18:33:43 -0000
Message-ID: <158809882376.17773.7567947960426992466@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1588093804-30446-1-git-send-email-michalorzel.eng@gmail.com>
In-Reply-To: <1588093804-30446-1-git-send-email-michalorzel.eng@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?=3A_Replace_drm=5Fmodeset=5Flock/unlock=5Fall_with_DRM=5FMODESE?=
 =?utf-8?b?VF9MT0NLX0FMTF8qIGhlbHBlcnMgKHJldjIp?=
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

Series: drm: Replace drm_modeset_lock/unlock_all with DRM_MODESET_LOCK_ALL_* helpers (rev2)
URL   : https://patchwork.freedesktop.org/series/76671/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8384 -> Patchwork_17496
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/index.html

Known issues
------------

  Here are the changes found in Patchwork_17496 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-kbl-soraka:      [PASS][1] -> [INCOMPLETE][2] ([CI#80])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/fi-kbl-soraka/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/fi-kbl-soraka/igt@i915_selftest@live@execlists.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@perf:
    - fi-bwr-2160:        [INCOMPLETE][3] ([i915#489]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8384/fi-bwr-2160/igt@i915_selftest@live@perf.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/fi-bwr-2160/igt@i915_selftest@live@perf.html

  
  [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (49 -> 42)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8384 -> Patchwork_17496

  CI-20190529: 20190529
  CI_DRM_8384: 513c18c3d94d97a584c40998d2666f5e1390ac66 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5614: d095827add11d4e8158b87683971ee659749d9a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17496: a9abedc6ec4fba47e6d5cf17c849e32901bedb63 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

a9abedc6ec4f drm: Replace drm_modeset_lock/unlock_all with DRM_MODESET_LOCK_ALL_* helpers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17496/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
