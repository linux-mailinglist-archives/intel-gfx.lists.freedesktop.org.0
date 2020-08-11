Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3E824195B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Aug 2020 12:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64E1E6E1A5;
	Tue, 11 Aug 2020 10:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 943026E4FF;
 Tue, 11 Aug 2020 10:03:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 8F62DA008A;
 Tue, 11 Aug 2020 10:03:04 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 11 Aug 2020 10:03:04 -0000
Message-ID: <159714018456.3768.2018464375032365188@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200811091726.21784-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200811091726.21784-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/selftests=3A_Confirm_RING=5FTIMESTAMP_/_CTX=5FTIME?=
 =?utf-8?q?STAMP_share_a_clock_=28rev2=29?=
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

Series: drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock (rev2)
URL   : https://patchwork.freedesktop.org/series/80475/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6f2c2821cb2d drm/i915/selftests: Confirm RING_TIMESTAMP / CTX_TIMESTAMP share a clock
-:70: WARNING:MEMORY_BARRIER: memory barrier without comment
#70: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:51:
+	wmb();

-:123: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#123: FILE: drivers/gpu/drm/i915/gt/selftest_engine_pm.c:104:
+	udelay(100);

total: 0 errors, 1 warnings, 1 checks, 175 lines checked


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
