Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D41661D8D10
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 03:20:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 464026E239;
	Tue, 19 May 2020 01:20:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 935326E239;
 Tue, 19 May 2020 01:20:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 84203A47DB;
 Tue, 19 May 2020 01:20:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Hubbard" <jhubbard@nvidia.com>
Date: Tue, 19 May 2020 01:20:33 -0000
Message-ID: <158985123351.31239.10766458886430429630@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200519002124.2025955-1-jhubbard@nvidia.com>
In-Reply-To: <20200519002124.2025955-1-jhubbard@nvidia.com>
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
URL   : https://patchwork.freedesktop.org/series/77381/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8498 -> Patchwork_17704
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/index.html

Known issues
------------

  Here are the changes found in Patchwork_17704 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@execlists:
    - fi-cfl-8700k:       [PASS][1] -> [INCOMPLETE][2] ([i915#656])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/fi-cfl-8700k/igt@i915_selftest@live@execlists.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/fi-cfl-8700k/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-cml-u2:          [PASS][3] -> [FAIL][4] ([i915#262])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8498/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/fi-cml-u2/igt@kms_chamelium@dp-crc-fast.html

  
  [i915#262]: https://gitlab.freedesktop.org/drm/intel/issues/262
  [i915#656]: https://gitlab.freedesktop.org/drm/intel/issues/656


Participating hosts (52 -> 45)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8498 -> Patchwork_17704

  CI-20190529: 20190529
  CI_DRM_8498: 1493c649ae92207a758afa50a639275bd6c80e2e @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5659: 66ab5e42811fee3dea8c21ab29e70e323a0650de @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17704: ace503a8f42c4de5395983002282f6d0302543bc @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

ace503a8f42c drm/i915: convert get_user_pages() --> pin_user_pages()
d8a6c141995a mm/gup: introduce pin_user_pages_fast_only()
4bab9b886ef9 mm/gup: refactor and de-duplicate gup_fast() code
5dd288837ad8 mm/gup: move __get_user_pages_fast() down a few lines in gup.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17704/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
