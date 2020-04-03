Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAE019CE51
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Apr 2020 03:47:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B52FA6EAE5;
	Fri,  3 Apr 2020 01:47:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2721F6EAE4;
 Fri,  3 Apr 2020 01:47:34 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id F3425A47DF;
 Fri,  3 Apr 2020 01:47:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Fri, 03 Apr 2020 01:47:33 -0000
Message-ID: <158587845396.13350.16117959594965124638@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200403010120.3067-1-ashutosh.dixit@intel.com>
In-Reply-To: <20200403010120.3067-1-ashutosh.dixit@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/perf=3A_Do_not_clear_pollin_for_small_user_read_buffers_?=
 =?utf-8?b?KHJldjcp?=
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

Series: drm/i915/perf: Do not clear pollin for small user read buffers (rev7)
URL   : https://patchwork.freedesktop.org/series/75085/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8242 -> Patchwork_17191
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/index.html


Changes
-------

  No changes found


Participating hosts (47 -> 37)
------------------------------

  Missing    (10): fi-ilk-m540 fi-hsw-4200u fi-hsw-peppy fi-byt-squawks fi-bwr-2160 fi-gdg-551 fi-cfl-8109u fi-kbl-7560u fi-bdw-samus fi-snb-2600 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_8242 -> Patchwork_17191

  CI-20190529: 20190529
  CI_DRM_8242: 07d20020ec328dc9858680651366425afa51cd59 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5560: 213062c7dcf0cbc8069cbb5f91acbc494def33fd @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17191: 474c470267ad8965e4f82037aa367c5c025e88b2 @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

474c470267ad drm/i915/perf: Do not clear pollin for small user read buffers

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17191/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
