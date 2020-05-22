Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B81DEFE9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2020 21:21:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24016E0E9;
	Fri, 22 May 2020 19:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8D02F6E0B9;
 Fri, 22 May 2020 19:20:58 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 85771A0019;
 Fri, 22 May 2020 19:20:58 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 22 May 2020 19:20:58 -0000
Message-ID: <159017525851.3046.15088055034244401182@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200522174209.8885-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200522174209.8885-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_mm/gup=3A_move_=5F=5Fget=5Fuse?=
 =?utf-8?q?r=5Fpages=5Ffast=28=29_down_a_few_lines_in_gup=2Ec_=28rev2=29?=
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

Series: series starting with [CI,1/4] mm/gup: move __get_user_pages_fast() down a few lines in gup.c (rev2)
URL   : https://patchwork.freedesktop.org/series/77566/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8527 -> Patchwork_17762
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/index.html


Changes
-------

  No changes found


Participating hosts (45 -> 40)
------------------------------

  Missing    (5): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8527 -> Patchwork_17762

  CI-20190529: 20190529
  CI_DRM_8527: 5931295af1b8254640f0defa759a7363f6c896f0 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5675: 74f7488fe4f8acf901b18fc9c6c4d45a972dcad5 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17762: dbcf6ddb68af341343e3bad85d876ce8aa22a15e @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dbcf6ddb68af drm/i915: convert get_user_pages() --> pin_user_pages()
cd6f28206a07 mm/gup: introduce pin_user_pages_fast_only()
315ca35393cd mm/gup: refactor and de-duplicate gup_fast() code
eeb23485305d mm/gup: move __get_user_pages_fast() down a few lines in gup.c

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17762/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
