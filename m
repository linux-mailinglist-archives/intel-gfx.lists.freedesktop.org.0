Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBA21BE836
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 22:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B49896F400;
	Wed, 29 Apr 2020 20:14:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4F9946F3FE;
 Wed, 29 Apr 2020 20:14:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 27A84A0BC6;
 Wed, 29 Apr 2020 20:14:20 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 29 Apr 2020 20:14:20 -0000
Message-ID: <158819126015.6699.7873568062662342434@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200429183046.6643-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200429183046.6643-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Stop_holding_onto_the_pinned=5Fdefault=5Fstate?=
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

Series: drm/i915/gt: Stop holding onto the pinned_default_state
URL   : https://patchwork.freedesktop.org/series/76738/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8394 -> Patchwork_17519
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17519/index.html


Changes
-------

  No changes found


Participating hosts (48 -> 42)
------------------------------

  Missing    (6): fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7500u fi-ctg-p8600 fi-byt-clapper 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8394 -> Patchwork_17519

  CI-20190529: 20190529
  CI_DRM_8394: 532afb6da86a1c6ae10469908814f7a4f46afd88 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5615: 7605cfd9463a6778ebb7ebae294a97c5779a6c7f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17519: 2ba2bfb32a60c6827baf866612143cdc170f1da6 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

2ba2bfb32a60 drm/i915/gt: Stop holding onto the pinned_default_state

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17519/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
