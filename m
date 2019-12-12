Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 776FB11CB84
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 11:56:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE0B6ED15;
	Thu, 12 Dec 2019 10:56:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DB21C6E0C2;
 Thu, 12 Dec 2019 10:56:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2BC6A47DA;
 Thu, 12 Dec 2019 10:56:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 12 Dec 2019 10:56:37 -0000
Message-ID: <157614819783.32010.15825464381664817694@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20191212014629.854076-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191212014629.854076-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/3=5D_drm/i915=3A_Use_EAGAIN_for_t?=
 =?utf-8?q?rylock_failures_=28rev2=29?=
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

Series: series starting with [1/3] drm/i915: Use EAGAIN for trylock failures (rev2)
URL   : https://patchwork.freedesktop.org/series/70797/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
7cc1145add17 drm/i915: Use EAGAIN for trylock failures
42ce7636983b drm/i915/gt: Pull intel_timeline.requests list under a spinlock
-:44: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#44: FILE: drivers/gpu/drm/i915/gt/intel_timeline_types.h:60:
+	spinlock_t request_lock;

total: 0 errors, 0 warnings, 1 checks, 112 lines checked
712c967a25f9 drm/i915/gt: Eliminate the trylock for reading a timeline's hwsp

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
