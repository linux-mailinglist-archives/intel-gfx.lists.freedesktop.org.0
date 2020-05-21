Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A821DC87E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 10:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BC06E916;
	Thu, 21 May 2020 08:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EAEA96E915;
 Thu, 21 May 2020 08:29:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4D42A00FD;
 Thu, 21 May 2020 08:29:42 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 21 May 2020 08:29:42 -0000
Message-ID: <159004978290.4442.2910863192856827384@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200521071059.31726-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200521071059.31726-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Measure_CS=5FTIMESTAMP_=28rev5=29?=
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

Series: drm/i915/selftests: Measure CS_TIMESTAMP (rev5)
URL   : https://patchwork.freedesktop.org/series/77320/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8516 -> Patchwork_17744
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17744/index.html

Known issues
------------

  Here are the changes found in Patchwork_17744 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gt_engines:
    - fi-bwr-2160:        [PASS][1] -> [INCOMPLETE][2] ([i915#489])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8516/fi-bwr-2160/igt@i915_selftest@live@gt_engines.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17744/fi-bwr-2160/igt@i915_selftest@live@gt_engines.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (46 -> 42)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8516 -> Patchwork_17744

  CI-20190529: 20190529
  CI_DRM_8516: 5db9df14788c0a6038aa05e180cde8065d724e43 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5665: c5e5b0ce26fc321591a6d0235c639a1e8ec3cdfa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17744: f49741c693787f2bf8cadf68d744a0dcb55813ac @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f49741c69378 drm/i915/selftests: Measure CS_TIMESTAMP

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17744/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
