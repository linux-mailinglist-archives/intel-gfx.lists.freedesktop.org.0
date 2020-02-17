Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B67F161C2F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 21:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9595F6E9AB;
	Mon, 17 Feb 2020 20:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 161996E9AB;
 Mon, 17 Feb 2020 20:16:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0524BA0099;
 Mon, 17 Feb 2020 20:16:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Mon, 17 Feb 2020 20:16:04 -0000
Message-ID: <158197056499.16572.3728376912762328496@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200217184219.15325-1-jani.nikula@intel.com>
In-Reply-To: <20200217184219.15325-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_use_spinlock=5Ft_instead_of_struct_spinlock?=
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

Series: drm/i915/gem: use spinlock_t instead of struct spinlock
URL   : https://patchwork.freedesktop.org/series/73546/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7957 -> Patchwork_16595
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16595/index.html

Known issues
------------

  Here are the changes found in Patchwork_16595 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live_gtt:
    - fi-kbl-7500u:       [TIMEOUT][1] ([fdo#112271]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7957/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16595/fi-kbl-7500u/igt@i915_selftest@live_gtt.html
    - fi-icl-u3:          [TIMEOUT][3] ([fdo#112271]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7957/fi-icl-u3/igt@i915_selftest@live_gtt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16595/fi-icl-u3/igt@i915_selftest@live_gtt.html

  
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271


Participating hosts (46 -> 44)
------------------------------

  Additional (5): fi-skl-6770hq fi-bdw-gvtdvm fi-cfl-8109u fi-skl-lmem fi-skl-6600u 
  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bsw-nick fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7957 -> Patchwork_16595

  CI-20190529: 20190529
  CI_DRM_7957: 3ceb00d5a5d62566c5979edcbf06df2c15b62b80 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5445: 21e523814d692978d6d04ba85eadd67fcbd88b7e @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16595: 7042c07be74c22b04bbf232e1ae8c4fe4693456b @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

7042c07be74c drm/i915/gem: use spinlock_t instead of struct spinlock

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16595/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
