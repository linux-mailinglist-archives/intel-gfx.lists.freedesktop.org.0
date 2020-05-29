Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FE61E8BBF
	for <lists+intel-gfx@lfdr.de>; Sat, 30 May 2020 01:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1BE6E986;
	Fri, 29 May 2020 23:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9C8436E986;
 Fri, 29 May 2020 23:07:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 96B35A0BC6;
 Fri, 29 May 2020 23:07:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.aiemd@gmail.com>
Date: Fri, 29 May 2020 23:07:28 -0000
Message-ID: <159079364859.3331.16558261407505252053@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200529163351.5228-1-nirmoy.das@amd.com>
In-Reply-To: <20200529163351.5228-1-nirmoy.das@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BRFC=2C1/1=5D_drm/mm=3A_add_ig=5Ffrag_selft?=
 =?utf-8?q?est?=
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

Series: series starting with [RFC,1/1] drm/mm: add ig_frag selftest
URL   : https://patchwork.freedesktop.org/series/77803/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8556 -> Patchwork_17823
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/index.html

Known issues
------------

  Here are the changes found in Patchwork_17823 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@active:
    - fi-bsw-n3050:       [DMESG-FAIL][1] ([i915#541]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8556/fi-bsw-n3050/igt@i915_selftest@live@active.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/fi-bsw-n3050/igt@i915_selftest@live@active.html

  
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (50 -> 43)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8556 -> Patchwork_17823

  CI-20190529: 20190529
  CI_DRM_8556: a12abc504361cc53eeb53c2948aebbd88709a901 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5684: bd399f5eb8263bb4a84ae6a5bb1a13d329e0515d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17823: 320cc6810801929affc6303c2481c0d2b735414e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

320cc6810801 drm/mm: add ig_frag selftest

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17823/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
