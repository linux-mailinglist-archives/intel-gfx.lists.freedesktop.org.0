Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C3E1928A3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2020 13:42:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEAF6E15A;
	Wed, 25 Mar 2020 12:42:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DD1EB6E143;
 Wed, 25 Mar 2020 12:42:07 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D9D2BA47E8;
 Wed, 25 Mar 2020 12:42:07 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 25 Mar 2020 12:42:07 -0000
Message-ID: <158514012788.29636.414731602498724662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200325120227.8044-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200325120227.8044-1-chris@chris-wilson.co.uk>
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
URL   : https://patchwork.freedesktop.org/series/75068/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8186 -> Patchwork_17083
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17083/index.html

Known issues
------------

  Here are the changes found in Patchwork_17083 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [DMESG-FAIL][1] ([i915#730] / [i915#933]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8186/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17083/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html

  
  [i915#730]: https://gitlab.freedesktop.org/drm/intel/issues/730
  [i915#933]: https://gitlab.freedesktop.org/drm/intel/issues/933


Participating hosts (44 -> 39)
------------------------------

  Additional (4): fi-skl-lmem fi-bwr-2160 fi-skl-6600u fi-snb-2600 
  Missing    (9): fi-bdw-5557u fi-hsw-4200u fi-byt-j1900 fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-elk-e7500 fi-blb-e6850 fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8186 -> Patchwork_17083

  CI-20190529: 20190529
  CI_DRM_8186: 1abdd8c4027177dd054471cf58a5e9ec3f2df46d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5537: 190245120758e754813d76b2c6c613413a0dba29 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17083: 0eba3cb69652551e1a54e32cad9c830e932d7683 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

0eba3cb69652 drm/i915: Immediately execute the fenced work
7a0b5667f8c9 drm/i915/execlists: Pull tasklet interrupt-bh local to direct submission

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17083/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
