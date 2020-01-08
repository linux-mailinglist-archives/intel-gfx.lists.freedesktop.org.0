Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E04B133FC3
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 11:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DD896E886;
	Wed,  8 Jan 2020 10:59:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EFF246E1B9;
 Wed,  8 Jan 2020 10:59:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E40C4A00FD;
 Wed,  8 Jan 2020 10:59:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Wed, 08 Jan 2020 10:59:39 -0000
Message-ID: <157848117990.23224.12951318978393661043@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200108104539.3422768-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200108104539.3422768-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915=3A_Pin_the_context_?=
 =?utf-8?q?as_we_work_on_it?=
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

Series: series starting with [1/4] drm/i915: Pin the context as we work on it
URL   : https://patchwork.freedesktop.org/series/71755/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
5472c92edbce drm/i915: Pin the context as we work on it
0ceabcc14ba7 drm/i915: Replace vma parking with a clock aging algorithm
-:272: CHECK:UNCOMMENTED_DEFINITION: spinlock_t definition without comment
#272: FILE: drivers/gpu/drm/i915/i915_vma.h:383:
+	spinlock_t lock;

total: 0 errors, 0 warnings, 1 checks, 226 lines checked
1a5b2bec4372 drm/i915/gt: Always reset the timeslice after a context switch
c85c8ced9310 drm/i915/gt: Yield the timeslice if waiting on a semaphore

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
