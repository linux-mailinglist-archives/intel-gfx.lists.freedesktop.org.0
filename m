Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 089BF19DFBC
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 22:43:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C0E6EC9D;
	Fri,  3 Apr 2020 20:43:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 36BFD6EC86;
 Fri,  3 Apr 2020 20:43:49 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3146BA00FD;
 Fri,  3 Apr 2020 20:43:49 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 03 Apr 2020 20:43:49 -0000
Message-ID: <158594662917.13352.6417668588267614090@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403190209.21818-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200403190209.21818-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/selftests=3A_Wait_until_we_start_timeslicing_after_a_subm?=
 =?utf-8?q?it?=
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

Series: drm/i915/selftests: Wait until we start timeslicing after a submit
URL   : https://patchwork.freedesktop.org/series/75479/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8251 -> Patchwork_17206
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/index.html

Known issues
------------

  Here are the changes found in Patchwork_17206 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@kms_flip@basic-flip-vs-dpms:
    - fi-skl-6770hq:      [PASS][1] -> [SKIP][2] ([fdo#109271]) +24 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/fi-skl-6770hq/igt@kms_flip@basic-flip-vs-dpms.html

  
#### Possible fixes ####

  * igt@i915_selftest@live@execlists:
    - fi-bxt-dsi:         [INCOMPLETE][3] ([i915#656]) -> [PASS][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8251/fi-bxt-dsi/igt@i915_selftest@live@execlists.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/fi-bxt-dsi/igt@i915_selftest@live@execlists.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (50 -> 43)
------------------------------

  Additional (1): fi-kbl-7560u 
  Missing    (8): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-bsw-kefka fi-byt-n2820 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8251 -> Patchwork_17206

  CI-20190529: 20190529
  CI_DRM_8251: 06ddf8dd059d59bc27c24b09a6e500809e619982 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5563: 7ab7807727262b7ed7e12197b78e867287a17ef6 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17206: f4b4d95a71b90b41b333fab5fd92683386ee0f79 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

f4b4d95a71b9 drm/i915/selftests: Wait until we start timeslicing after a submit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17206/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
