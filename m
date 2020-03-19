Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E91A118C238
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 22:24:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4186EA86;
	Thu, 19 Mar 2020 21:23:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9130B6EA86;
 Thu, 19 Mar 2020 21:23:57 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8CB7CA47DF;
 Thu, 19 Mar 2020 21:23:57 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Thu, 19 Mar 2020 21:23:57 -0000
Message-ID: <158465303757.17933.13489178808273571755@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgVGVz?=
 =?utf-8?q?t_over_32k_long_stride_length_on_icl+_=28rev2=29?=
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

Series: Test over 32k long stride length on icl+ (rev2)
URL   : https://patchwork.freedesktop.org/series/74884/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8160 -> Patchwork_17028
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/index.html

Known issues
------------

  Here are the changes found in Patchwork_17028 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@gem_contexts:
    - fi-cfl-guc:         [PASS][1] -> [DMESG-FAIL][2] ([i915#623])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/fi-cfl-guc/igt@i915_selftest@live@gem_contexts.html
    - fi-skl-lmem:        [PASS][3] -> [INCOMPLETE][4] ([i915#424])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/fi-skl-lmem/igt@i915_selftest@live@gem_contexts.html

  
  [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
  [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623


Participating hosts (37 -> 35)
------------------------------

  Additional (5): fi-bsw-n3050 fi-byt-j1900 fi-cfl-8109u fi-bsw-nick fi-skl-6700k2 
  Missing    (7): fi-bdw-5557u fi-byt-squawks fi-bsw-cyan fi-bwr-2160 fi-ivb-3770 fi-byt-clapper fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5523 -> IGTPW_4331
  * Linux: CI_DRM_8160 -> Patchwork_17028

  CI-20190529: 20190529
  CI_DRM_8160: 6ba1729e5025761ab74914f6b8aa3288f493e9c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4331: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4331/index.html
  IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17028: 62029b8972b3d3b275d26d3c634edc115d739f9a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

62029b8972b3 drm/i915: Allow gen11 to use over 32k long strides

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
