Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC0E1E157E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 May 2020 23:06:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF9D89C1C;
	Mon, 25 May 2020 21:06:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DC2B989C1B;
 Mon, 25 May 2020 21:06:50 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5EC3A3C0D;
 Mon, 25 May 2020 21:06:50 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 May 2020 21:06:50 -0000
Message-ID: <159044081084.4526.88621505694209511@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200525202901.32244-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200525202901.32244-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/4=5D_drm/i915/gt=3A_Do_not_schedule_norm?=
 =?utf-8?q?al_requests_immediately_along_virtual?=
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

Series: series starting with [1/4] drm/i915/gt: Do not schedule normal requests immediately along virtual
URL   : https://patchwork.freedesktop.org/series/77639/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8534 -> Patchwork_17774
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17774/index.html


Changes
-------

  No changes found


Participating hosts (51 -> 44)
------------------------------

  Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-bsw-cyan fi-kbl-7560u fi-byt-clapper fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_8534 -> Patchwork_17774

  CI-20190529: 20190529
  CI_DRM_8534: d02a49f2ac2b37477b38ef18e52c6f9ed9c233a4 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5678: c1f30ee09ac2e7eb3e8e90245239731a169a6050 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17774: dd8619c7ae09ac5895021d6eceb7cf454fa2b66d @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

dd8619c7ae09 drm/i915/gt: Resubmit the virtual engine on schedule-out
72eff06423bb drm/i915/gt: Decouple inflight virtual engines
5f957b4ecf25 drm/i915/gt: Use virtual_engine during execlists_dequeue
c1575607629c drm/i915/gt: Do not schedule normal requests immediately along virtual

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17774/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
