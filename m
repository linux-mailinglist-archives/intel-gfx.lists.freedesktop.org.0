Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2708C1DFB04
	for <lists+intel-gfx@lfdr.de>; Sat, 23 May 2020 22:34:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B2846E213;
	Sat, 23 May 2020 20:34:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 61D7B6E213;
 Sat, 23 May 2020 20:34:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5F470A0099;
 Sat, 23 May 2020 20:34:28 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Hubbard" <jhubbard@nvidia.com>
Date: Sat, 23 May 2020 20:34:28 -0000
Message-ID: <159026606838.11803.3453645350173818615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522051931.54191-1-jhubbard@nvidia.com>
In-Reply-To: <20200522051931.54191-1-jhubbard@nvidia.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgbW0v?=
 =?utf-8?q?gup=2C_drm/i915=3A_refactor_gup=5Ffast=2C_convert_to_pin=5Fuser?=
 =?utf-8?b?X3BhZ2VzKCk=?=
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

Series: mm/gup, drm/i915: refactor gup_fast, convert to pin_user_pages()
URL   : https://patchwork.freedesktop.org/series/77598/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8529 -> Patchwork_17765
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/index.html

Known issues
------------

  Here are the changes found in Patchwork_17765 that come from known issues:

### IGT changes ###

#### Possible fixes ####

  * igt@i915_selftest@live@coherency:
    - fi-bwr-2160:        [INCOMPLETE][1] ([i915#489]) -> [PASS][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8529/fi-bwr-2160/igt@i915_selftest@live@coherency.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/fi-bwr-2160/igt@i915_selftest@live@coherency.html

  
  [i915#489]: https://gitlab.freedesktop.org/drm/intel/issues/489


Participating hosts (45 -> 38)
------------------------------

  Missing    (7): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-cfl-8700k fi-skl-lmem fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8529 -> Patchwork_17765

  CI-20190529: 20190529
  CI_DRM_8529: 9ae23ae1b437ee0d75ed2153eca05ecbd8c417bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5676: ff03d458f708583c8f9296f97c38df312055651a @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17765: d301b652c2daccd5d53d400be39d95579c590701 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d301b652c2da drm/i915: convert get_user_pages() --> pin_user_pages()
05e416e56b00 mm/gup: introduce pin_user_pages_fast_only()
1241c3f40226 mm/gup: refactor and de-duplicate gup_fast() code
cda3a034f4d1 mm/gup: move __get_user_pages_fast() down a few lines in gup.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17765/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
